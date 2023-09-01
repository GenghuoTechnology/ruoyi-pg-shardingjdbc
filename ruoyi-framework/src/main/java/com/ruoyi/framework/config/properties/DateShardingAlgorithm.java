package com.ruoyi.framework.config.properties;


import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.shardingsphere.sharding.api.sharding.standard.PreciseShardingValue;
import org.apache.shardingsphere.sharding.api.sharding.standard.RangeShardingValue;
import org.apache.shardingsphere.sharding.api.sharding.standard.StandardShardingAlgorithm;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.*;


//sharding分表规则
//按单月分表
@Component
public class DateShardingAlgorithm implements StandardShardingAlgorithm<Date> {


    @Override
    public String doSharding(Collection<String> collection, PreciseShardingValue<Date> shardingValue) {

        for (String each : collection) {
            Date date = shardingValue.getValue();
            if (Objects.isNull(date)) {
                date = new Date();
            }

            String suffix = DateFormatUtils.format(date, "yyyyMM");
            if (each.endsWith(suffix)) {
                return each;
            }
        }
        return null;
    }

    @Override
    public Collection<String> doSharding(Collection<String> collection, RangeShardingValue<Date> rangeShardingValue) {
        return collection;
    }


    @Override
    public void init(Properties props) {
        StandardShardingAlgorithm.super.init(props);
    }
    @Override
    public String getType() {
        return "MONTH";
    }
}

