package com.ruoyi.framework.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.spring.boot.autoconfigure.DruidDataSourceBuilder;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.config.properties.TableNamesProperties;
//import org.apache.shardingsphere.api.config.sharding.KeyGeneratorConfiguration;
//import org.apache.shardingsphere.api.config.sharding.ShardingRuleConfiguration;
//import org.apache.shardingsphere.api.config.sharding.TableRuleConfiguration;
//import org.apache.shardingsphere.api.config.sharding.strategy.StandardShardingStrategyConfiguration;
//import org.apache.shardingsphere.shardingjdbc.api.ShardingDataSourceFactory;
import org.apache.shardingsphere.broadcast.api.config.BroadcastRuleConfiguration;
import org.apache.shardingsphere.driver.api.ShardingSphereDataSourceFactory;
import org.apache.shardingsphere.infra.config.algorithm.AlgorithmConfiguration;
import org.apache.shardingsphere.infra.config.mode.ModeConfiguration;
import org.apache.shardingsphere.infra.config.rule.RuleConfiguration;
import org.apache.shardingsphere.mode.repository.standalone.StandalonePersistRepositoryConfiguration;
import org.apache.shardingsphere.sharding.api.config.ShardingRuleConfiguration;
import org.apache.shardingsphere.sharding.api.config.rule.ShardingTableRuleConfiguration;
import org.apache.shardingsphere.sharding.api.config.strategy.keygen.KeyGenerateStrategyConfiguration;
import org.apache.shardingsphere.sharding.api.config.strategy.sharding.StandardShardingStrategyConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.*;

@Configuration
// @MapperScan(basePackages = "com.stephen.demo.mapper")
//@EnableAutoConfiguration(exclude = {SpringBootConfiguration.class})
public class ShardingDataSourceConfig {
    @Resource
    private TableNamesProperties tableNamesProperties;
    @Resource
    private DataSource masterDataSource;
    @Bean("shardingDataSource")
    // @Primary
    public DataSource getShardingDataSource() throws SQLException, ReflectiveOperationException {
        String databaseName = "db1"; // Indicate logic database name
        ModeConfiguration modeConfig = createModeConfiguration(); // Build mode configuration
        Map<String, DataSource> dataSourceMap = createDataSources(); // Build actual data sources
        Collection<RuleConfiguration> ruleConfigs = Arrays.asList(createShardingRuleConfiguration()); // Build concentrate rule configurations
//不需要广播 需要的时候去建规则：场景 字典分布式
//        Collection<RuleConfiguration> ruleConfigs = Arrays.asList(createShardingRuleConfiguration(), createBroadcastRuleConfiguration()); // Build concentrate rule configurations

        Properties props = new Properties(); // Build properties
        DataSource dataSource = ShardingSphereDataSourceFactory.createDataSource(databaseName, modeConfig, dataSourceMap, ruleConfigs, props);
        return dataSource;
    }
    private ModeConfiguration createModeConfiguration() {
        return new ModeConfiguration("Standalone", new StandalonePersistRepositoryConfiguration("JDBC", new Properties()));
    }
    private Map<String, DataSource> createDataSources() {
        Map<String, DataSource> dataSourceMap = new HashMap<>();

        // 这里用多种数据源都可以
        // HikariDataSource
        DruidDataSource dataSource = DruidDataSourceBuilder.create().build();
        dataSource.setValidationQuery("SELECT version()");

        String datasourceName = tableNamesProperties.getDatasourceName();
        datasourceName = StringUtils.isBlank(datasourceName) ? "db1" : datasourceName;
        dataSourceMap.put(datasourceName,  masterDataSource);
//         dataSourceMap.put("db1",dataSource2);
        return dataSourceMap;
    }
    //分片规则配置
    private ShardingRuleConfiguration createShardingRuleConfiguration() {
        ShardingRuleConfiguration result = new ShardingRuleConfiguration();
        result.getTables().add(getOrderTableRuleConfiguration());
//  表2：
//  result.getTables().add(getOrderItemTableRuleConfiguration());
result.getTables().add(getTestdHashTableRuleConfiguration());
result.getTables().add(getTestdMonthTableRuleConfiguration());
        //绑定组配置，绑定组指id 关联的（leftjoin查询时） 有需要的配置
//        result.getBindingTableGroups().add(new ShardingTableReferenceRuleConfiguration("foo", "t_order, t_order_item"));

        //分库规则 可以自己继承去实现
//        result.setDefaultDatabaseShardingStrategy(new StandardShardingStrategyConfiguration("id", "inline"));
        Properties props = new Properties();
        //对应算法  自己实现按类
        props.setProperty("algorithm-expression", "indicator_${id % 2 + 1}");
        //INLINE基于行表达式的分片算法 不同类型参考https://shardingsphere.apache.org/document/current/cn/dev-manual/sharding/
        result.getShardingAlgorithms().put("tableShardingAlgorithm", new AlgorithmConfiguration("INLINE", props));

        Properties propsTableHash = new Properties();
        //对应算法  自己实现按类
        propsTableHash.setProperty("algorithm-expression", "testd_hash_${id % 2 + 1}");
        //INLINE基于行表达式的分片算法 不同类型参考https://shardingsphere.apache.org/document/current/cn/dev-manual/sharding/
        result.getShardingAlgorithms().put("tableTestHashShardingAlgorithm", new AlgorithmConfiguration("INLINE", propsTableHash));

        //CLASS_BASED 自定义 为MONTH  property参考官方ClassBasedShardingAlgorithmTest类
        Properties propsTableMonth = new Properties();
        propsTableMonth.setProperty("strategy","standard");
        propsTableMonth.setProperty("algorithmClassName", "com.ruoyi.framework.config.properties.DateShardingAlgorithm");
        result.getShardingAlgorithms().put("tableTestMonthShardingAlgorithm", new AlgorithmConfiguration("CLASS_BASED", propsTableMonth));
//        result.getShardingAlgorithms().put("tableTestMonthShardingAlgorithm", new AlgorithmConfiguration("MONTH", propsTableMonth));
//        result.getShardingAlgorithms().put("standard_test_tbl", new AlgorithmConfiguration("STANDARD_TEST_TBL", new Properties()));
        result.getKeyGenerators().put("snowflake", new AlgorithmConfiguration("SNOWFLAKE", new Properties()));
        //是否需要 审计开启
        result.getAuditors().put("sharding_key_required_auditor", new AlgorithmConfiguration("DML_SHARDING_CONDITIONS", new Properties()));
        return result;

//        参考旧版本配置算法：
        // 配置分库策略
//        orderTableRuleConfig.setDatabaseShardingStrategy(new StandardShardingStrategyConfiguration("user_id", "dbShardingAlgorithm"));
//
//// 配置分表策略
//        orderTableRuleConfig.setTableShardingStrategy(new StandardShardingStrategyConfiguration("order_id", "tableShardingAlgorithm"));
//        // 配置分库算法
//        Properties dbShardingAlgorithmrProps = new Properties();
//        dbShardingAlgorithmrProps.setProperty("algorithm-expression", "ds${user_id % 2}");
//        shardingRuleConfig.getShardingAlgorithms().put("dbShardingAlgorithm", new ShardingSphereAlgorithmConfiguration("INLINE", dbShardingAlgorithmrProps));
//
//// 配置分表算法
//        Properties tableShardingAlgorithmrProps = new Properties();
//        tableShardingAlgorithmrProps.setProperty("algorithm-expression", "t_order${order_id % 2}");
//        shardingRuleConfig.getShardingAlgorithms().put("tableShardingAlgorithm", new ShardingSphereAlgorithmConfiguration("INLINE", tableShardingAlgorithmrProps));
    }
    //分表规则1
    private ShardingTableRuleConfiguration getOrderTableRuleConfiguration() {
//        ShardingTableRuleConfiguration result = new ShardingTableRuleConfiguration("t_order", "demo_ds_${0..1}.t_order_${[0, 1]}");
        ShardingTableRuleConfiguration result = new ShardingTableRuleConfiguration("indicator", "db1.indicator_${1..2}");
        result.setKeyGenerateStrategy(new KeyGenerateStrategyConfiguration("id", "snowflake"));
        result.setTableShardingStrategy(new StandardShardingStrategyConfiguration("id", "tableShardingAlgorithm"));
        //是否需要 审计开启
//        result.setAuditStrategy(new ShardingAuditStrategyConfiguration(Collections.singleton("sharding_key_required_auditor"), true));
        return result;
    }
    //分表规则2
//    private ShardingTableRuleConfiguration getOrderItemTableRuleConfiguration() {
//        ShardingTableRuleConfiguration result = new ShardingTableRuleConfiguration("t_order_item", "demo_ds_${0..1}.t_order_item_${[0, 1]}");
//        result.setKeyGenerateStrategy(new KeyGenerateStrategyConfiguration("order_item_id", "snowflake"));
//        return result;
//    }
    private ShardingTableRuleConfiguration getTestdHashTableRuleConfiguration() {
//        ShardingTableRuleConfiguration result = new ShardingTableRuleConfiguration("t_order", "demo_ds_${0..1}.t_order_${[0, 1]}");
        ShardingTableRuleConfiguration result = new ShardingTableRuleConfiguration("testd_hash", "db1.testd_hash_${1..2}");
        result.setKeyGenerateStrategy(new KeyGenerateStrategyConfiguration("id", "snowflake"));
        result.setTableShardingStrategy(new StandardShardingStrategyConfiguration("id", "tableTestHashShardingAlgorithm"));
        //是否需要 审计开启
//        result.setAuditStrategy(new ShardingAuditStrategyConfiguration(Collections.singleton("sharding_key_required_auditor"), true));
        return result;
    }
    private ShardingTableRuleConfiguration getTestdMonthTableRuleConfiguration() {
//        ShardingTableRuleConfiguration result = new ShardingTableRuleConfiguration("t_order", "demo_ds_${0..1}.t_order_${[0, 1]}");
//        ShardingTableRuleConfiguration result = new ShardingTableRuleConfiguration("testd_month", "db1.testd_month_$->{2021..2025}$->{(1..12).collect(i->i.toString().padLeft(2,'0'))}");
        ShardingTableRuleConfiguration result = new ShardingTableRuleConfiguration("testd_month", "db1.testd_month_$->{2021..2025}$->{(1..12).collect(i->i.toString().padLeft(2,'0'))}");

        result.setKeyGenerateStrategy(new KeyGenerateStrategyConfiguration("id", "snowflake"));
        //分片算法名称 不能使用下划线
        result.setTableShardingStrategy(new StandardShardingStrategyConfiguration("push_time", "tableTestMonthShardingAlgorithm"));
        //是否需要 审计开启
//        result.setAuditStrategy(new ShardingAuditStrategyConfiguration(Collections.singleton("sharding_key_required_auditor"), true));
        return result;
    }

    private BroadcastRuleConfiguration createBroadcastRuleConfiguration() {
        return new BroadcastRuleConfiguration(Collections.singletonList("indicator"));
    }


}
