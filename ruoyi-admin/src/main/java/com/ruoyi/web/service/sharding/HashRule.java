package com.ruoyi.web.service.sharding;

import com.ruoyi.common.annotation.DataSource;
import com.ruoyi.common.enums.DataSourceType;
import com.ruoyi.common.utils.redis.RedisUtil;
import com.ruoyi.web.service.ITestdHashService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import static com.ruoyi.common.utils.redis.RedisKeyUtil.generateRedisKey;
import static com.ruoyi.web.service.sharding.HashRuleImpl.IdHash2;

@Service
public class HashRule {
    @Resource
    private RedisUtil redisUtil;
    @Resource
    private ITestdHashService testdHashService;
    public boolean creatTableTestdHashNoExit(String tableName,Long id){
        String key = generateRedisKey("sharingJdbc","tableName",IdHash2(id));
        if(redisUtil.hasKey(key)){
            return true;
        }else {
            try {
                testdHashService.callCreateTableFunction(tableName,IdHash2(id));
                redisUtil.set(key,true);
                return true;
            }catch (Exception e){
                return false;
            }
        }
    }
}
