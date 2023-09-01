package com.ruoyi.web.service;

import java.util.List;
import com.ruoyi.web.domain.TestdMonth;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2023-08-30
 */
public interface ITestdMonthService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TestdMonth selectTestdMonthById(String id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param testdMonth 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TestdMonth> selectTestdMonthList(TestdMonth testdMonth);

    /**
     * 新增【请填写功能名称】
     * 
     * @param testdMonth 【请填写功能名称】
     * @return 结果
     */
    public int insertTestdMonth(TestdMonth testdMonth);

    /**
     * 修改【请填写功能名称】
     * 
     * @param testdMonth 【请填写功能名称】
     * @return 结果
     */
    public int updateTestdMonth(TestdMonth testdMonth);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTestdMonthByIds(String[] ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTestdMonthById(String id);
}
