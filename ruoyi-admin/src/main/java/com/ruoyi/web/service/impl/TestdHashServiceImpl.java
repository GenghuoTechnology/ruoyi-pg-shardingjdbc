package com.ruoyi.web.service.impl;

import java.util.List;

import com.ruoyi.common.annotation.DataSource;
import com.ruoyi.common.enums.DataSourceType;
import com.ruoyi.common.utils.redis.RedisUtil;
import com.ruoyi.web.service.sharding.HashRule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.mapper.TestdHashMapper;
import com.ruoyi.web.domain.TestdHash;
import com.ruoyi.web.service.ITestdHashService;

import javax.annotation.Resource;

import static com.ruoyi.common.utils.redis.RedisKeyUtil.generateRedisKey;
import static com.ruoyi.web.service.sharding.HashRuleImpl.IdHash2;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-08-30
 */
@Service
@DataSource(value = DataSourceType.SHARDING)

public class TestdHashServiceImpl implements ITestdHashService 
{
    @Resource
    private TestdHashMapper testdHashMapper;
    @Resource
    private HashRule hashRule;
    @Resource
    private RedisUtil redisUtil;
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TestdHash selectTestdHashById(String id)
    {
        return testdHashMapper.selectTestdHashById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param testdHash 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TestdHash> selectTestdHashList(TestdHash testdHash)
    {
        return testdHashMapper.selectTestdHashList(testdHash);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param testdHash 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTestdHash(TestdHash testdHash)
    {
        return testdHashMapper.insertTestdHash(testdHash);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param testdHash 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTestdHash(TestdHash testdHash)
    {
        return testdHashMapper.updateTestdHash(testdHash);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTestdHashByIds(String[] ids)
    {
        return testdHashMapper.deleteTestdHashByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTestdHashById(String id)
    {
        return testdHashMapper.deleteTestdHashById(id);
    }

    @Override
    public void callCreateTableFunction(String tableName,String suffix){
        testdHashMapper.callCreateTableFunction(tableName, suffix);
    }
    @Override
    public boolean creatTableTestdHashNoExit(String tableName,Long id){
        String key = generateRedisKey("sharingJdbc","tableName",IdHash2(id));
        if(redisUtil.hasKey(key)){
            return true;
        }else {
            try {
                callCreateTableFunction(tableName,IdHash2(id));
                redisUtil.set(key,true);
                return true;
            }catch (Exception e){
                return false;
            }
        }
    }
}
