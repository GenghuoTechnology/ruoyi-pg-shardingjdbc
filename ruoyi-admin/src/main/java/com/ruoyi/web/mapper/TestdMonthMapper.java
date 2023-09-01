package com.ruoyi.web.mapper;

import java.util.List;
import com.ruoyi.web.domain.TestdMonth;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2023-08-30
 */
public interface TestdMonthMapper 
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
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTestdMonthById(String id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTestdMonthByIds(String[] ids);
}
