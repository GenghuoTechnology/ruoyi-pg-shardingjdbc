package com.ruoyi.web.mapper;

import java.util.Date;
import java.util.List;
import com.ruoyi.web.domain.Indicator;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2023-08-28
 */
public interface IndicatorMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param bizDateTime 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public Indicator selectIndicatorByBizDateTime(Date bizDateTime);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param indicator 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<Indicator> selectIndicatorList(Indicator indicator);

    /**
     * 新增【请填写功能名称】
     * 
     * @param indicator 【请填写功能名称】
     * @return 结果
     */
    public int insertIndicator(Indicator indicator);

    /**
     * 修改【请填写功能名称】
     * 
     * @param indicator 【请填写功能名称】
     * @return 结果
     */
    public int updateIndicator(Indicator indicator);

    /**
     * 删除【请填写功能名称】
     * 
     * @param bizDateTime 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteIndicatorByBizDateTime(Date bizDateTime);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param bizDateTimes 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteIndicatorByBizDateTimes(Date[] bizDateTimes);
}
