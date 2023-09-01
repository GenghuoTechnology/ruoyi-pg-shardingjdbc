package com.ruoyi.web.controller.test;

import java.util.*;

import com.ruoyi.common.enums.DataSourceType;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.datasource.DynamicDataSourceContextHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.core.domain.AjaxResult;

import javax.annotation.Resource;

/**
 * 登录验证
 *
 * @author ruoyi
 */
@RestController
@RequestMapping("/test")
public class Test
{

    @Autowired
    private JdbcTemplate jdbcTemplate;
    /**
     * 测试是否可以动态切换数据库
     *
     * @param sql 要执行的sql原生语句
     * @return 结果
     */
    @PostMapping("/oracle/query")
    public AjaxResult queryOracle(@RequestBody String sql)
    {
        //原理参考 https://blog.csdn.net/weixin_44783934/article/details/129340507
        AjaxResult ajax = AjaxResult.success();
        DynamicDataSourceContextHolder.setDataSourceType(DataSourceType.ORACLE.name());
        //获取SqlSession对象
        try {
            //执行原生SQL语句
            List<Map<String, Object>> resultList = jdbcTemplate.queryForList(sql);

            return ajax.put("data",resultList);
        } catch (Exception e){
            ajax = AjaxResult.error(e.getMessage());
            return ajax;

        }


        // 生成令牌

    }
    @PostMapping("/mysql/query")
    public AjaxResult queryMysql(@RequestBody String sql)
    {
        //原理参考 https://blog.csdn.net/weixin_44783934/article/details/129340507
        AjaxResult ajax = AjaxResult.success();
        //获取SqlSession对象

        try {
            //执行原生SQL语句
            List<Map<String, Object>> resultList = jdbcTemplate.queryForList(sql);

            return ajax.put("data",resultList);
        } catch (Exception e){
            ajax = AjaxResult.error(e.getMessage());
            return ajax;

        }

    }

    @Resource
    IBimsTableStructService iBimsTableStructService;
    @PostMapping("/initTableData")
    public AjaxResult initTableData()
    {
        //原理参考 https://blog.csdn.net/weixin_44783934/article/details/129340507
        AjaxResult ajax = AjaxResult.success();
        //获取SqlSession对象
        try {
            //1.获取所有的表命名空间
            //2.遍历命名空间下的所有表
            //3.所有数据取一条>1的并且去除分表后缀数据后留下到公共list
            //4.获取所有的表结构
            //5.数据更新判断
            //6.数据更新
            DynamicDataSourceContextHolder.setDataSourceType(DataSourceType.ORACLE.name());

            String sql ="SELECT TABLESPACE_NAME FROM all_tables WHERE OWNER = 'BIMS' group by TABLESPACE_NAME";
            List<Map<String, Object>> resultListTableNameSpace = jdbcTemplate.queryForList(sql);
            List<String> tableNmeOnlyList = new ArrayList<>();
            for(Map<String,Object> map:resultListTableNameSpace){
                Object obj = map.get("TABLESPACE_NAME");
                if(obj==null){
                    continue;
                }
              String table_name_space =  StringUtils.convertToString(obj);
                //初步过滤字段，临时表不要，行数=0的空表不要
                sql = "SELECT OWNER,TABLE_NAME,TABLESPACE_NAME,NUM_ROWS FROM all_tables WHERE OWNER = 'BIMS' AND  TABLESPACE_NAME = '" +table_name_space +"' and  TEMPORARY !='Y' and NUM_ROWS>0";
                List<Map<String, Object>> resultListTableName = jdbcTemplate.queryForList(sql);
                //分表过滤，过滤hash分表尾缀为_数字或数字的
                for(int i=0;i<resultListTableName.size();i++){
                    String tableName = StringUtils.convertToString(resultListTableName.get(i).get("TABLE_NAME"));
                    String onlyTableName = StringUtils.flitterTableName(tableName);
                    if(tableNmeOnlyList.contains(onlyTableName)){
                        resultListTableName.remove(i);
                    }else {
                        tableNmeOnlyList.add(onlyTableName);
                        //遍历该表下的所有字段
                        sql = "SELECT COLUMN_NAME,DATA_TYPE,DATA_LENGTH FROM ALL_TAB_COLUMNS WHERE TABLE_NAME = '"+tableName+"'";
                        List<Map<String, Object>> resultListColumnName = jdbcTemplate.queryForList(sql);
                        for(Map mapC:resultListColumnName){
                            BimsTableStruct bimsTableStruct = new BimsTableStruct();
                            bimsTableStruct.setTablespaceName(table_name_space);
                            bimsTableStruct.setTableName(tableName);
                            bimsTableStruct.setColumnName(StringUtils.convertToString(mapC.get("COLUMN_NAME")));
                            bimsTableStruct.setColumnType(StringUtils.convertToString(mapC.get("DATA_TYPE")));
                            bimsTableStruct.setColumnLength(Long.valueOf(StringUtils.convertToString( mapC.get("DATA_LENGTH"))));
                            DynamicDataSourceContextHolder.setDataSourceType(DataSourceType.POSTGRES.name());

                            iBimsTableStructService.insertBimsTableStruct(bimsTableStruct);
                        }
                        DynamicDataSourceContextHolder.setDataSourceType(DataSourceType.ORACLE.name());


                    }

                }

            }
            return ajax.put("data",null);
        } catch (Exception e){
            ajax = AjaxResult.error(e.getMessage());
            return ajax;

        }


        // 生成令牌

    }


    @PostMapping("/initTable")
    public AjaxResult initTable(@RequestBody String name)
    {
        //原理参考 https://blog.csdn.net/weixin_44783934/article/details/129340507
        AjaxResult ajax = AjaxResult.success();
        //获取SqlSession对象
        try {
            //1.获取所有的表命名空间
            //2.遍历命名空间下的所有表
            //3.所有数据取一条>1的并且去除分表后缀数据后留下到公共list
            //4.获取所有的表结构
            //5.数据更新判断
            //6.数据更新
            DynamicDataSourceContextHolder.setDataSourceType(DataSourceType.ORACLE.name());

            String sql ="SELECT TABLESPACE_NAME FROM all_tables WHERE OWNER = 'BIMS' group by TABLESPACE_NAME";
            List<Map<String, Object>> resultListTableNameSpace = jdbcTemplate.queryForList(sql);
            List<String> tableNmeOnlyList = new ArrayList<>();
            for(Map<String,Object> map:resultListTableNameSpace){
                Object obj = map.get("TABLESPACE_NAME");
                if(obj==null){
                    continue;
                }
                String table_name_space =  StringUtils.convertToString(obj);
                //初步过滤字段，临时表不要，行数=0的空表不要
                sql = "SELECT OWNER,TABLE_NAME,TABLESPACE_NAME,NUM_ROWS FROM all_tables WHERE OWNER = 'BIMS' AND  TABLESPACE_NAME = '" +table_name_space +"' and  TEMPORARY !='Y' and NUM_ROWS>0"
                +"and TABLE_NAME = '" +name+"'";
                List<Map<String, Object>> resultListTableName = jdbcTemplate.queryForList(sql);
                //分表过滤，过滤hash分表尾缀为_数字或数字的
                for(int i=0;i<resultListTableName.size();i++){
                    String tableName = StringUtils.convertToString(resultListTableName.get(i).get("TABLE_NAME"));
                    String onlyTableName = StringUtils.flitterTableName(tableName);
                    if(tableNmeOnlyList.contains(onlyTableName)){
                        resultListTableName.remove(i);
                    }else {
                        tableNmeOnlyList.add(onlyTableName);
                        //遍历该表下的所有字段
                        sql = "SELECT COLUMN_NAME,DATA_TYPE,DATA_LENGTH FROM ALL_TAB_COLUMNS WHERE TABLE_NAME = '"+tableName+"'";
                        List<Map<String, Object>> resultListColumnName = jdbcTemplate.queryForList(sql);
                        for(Map mapC:resultListColumnName){
                            BimsTableStruct bimsTableStruct = new BimsTableStruct();
                            bimsTableStruct.setTablespaceName(table_name_space);
                            bimsTableStruct.setTableName(tableName);
                            bimsTableStruct.setColumnName(StringUtils.convertToString(mapC.get("COLUMN_NAME")));
                            bimsTableStruct.setColumnType(StringUtils.convertToString(mapC.get("DATA_TYPE")));
                            bimsTableStruct.setColumnLength(Long.valueOf(StringUtils.convertToString( mapC.get("DATA_LENGTH"))));
                            DynamicDataSourceContextHolder.setDataSourceType(DataSourceType.POSTGRES.name());

                            iBimsTableStructService.insertBimsTableStruct(bimsTableStruct);
                        }
                        DynamicDataSourceContextHolder.setDataSourceType(DataSourceType.ORACLE.name());


                    }

                }

            }
            return ajax.put("data",null);
        } catch (Exception e){
            ajax = AjaxResult.error(e.getMessage());
            return ajax;

        }


        // 生成令牌

    }
}
