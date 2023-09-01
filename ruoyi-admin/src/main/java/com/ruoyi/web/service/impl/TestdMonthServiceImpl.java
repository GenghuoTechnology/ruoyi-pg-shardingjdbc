package com.ruoyi.web.service.impl;

import java.util.List;

import com.ruoyi.common.annotation.DataSource;
import com.ruoyi.common.enums.DataSourceType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.mapper.TestdMonthMapper;
import com.ruoyi.web.domain.TestdMonth;
import com.ruoyi.web.service.ITestdMonthService;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-08-30
 */
@Service
@DataSource(value = DataSourceType.SHARDING)

public class TestdMonthServiceImpl implements ITestdMonthService 
{
    @Autowired
    private TestdMonthMapper testdMonthMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TestdMonth selectTestdMonthById(String id)
    {
        return testdMonthMapper.selectTestdMonthById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param testdMonth 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TestdMonth> selectTestdMonthList(TestdMonth testdMonth)
    {
        return testdMonthMapper.selectTestdMonthList(testdMonth);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param testdMonth 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTestdMonth(TestdMonth testdMonth)
    {
        return testdMonthMapper.insertTestdMonth(testdMonth);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param testdMonth 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTestdMonth(TestdMonth testdMonth)
    {
        return testdMonthMapper.updateTestdMonth(testdMonth);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTestdMonthByIds(String[] ids)
    {
        return testdMonthMapper.deleteTestdMonthByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTestdMonthById(String id)
    {
        return testdMonthMapper.deleteTestdMonthById(id);
    }
}
