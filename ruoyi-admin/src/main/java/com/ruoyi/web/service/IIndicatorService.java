package com.ruoyi.web.service;

import java.util.Date;
import java.util.List;
import com.ruoyi.web.domain.Indicator;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2023-08-28
 */
public interface IIndicatorService 
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
     * 批量删除【请填写功能名称】
     * 
     * @param bizDateTimes 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteIndicatorByBizDateTimes(Date[] bizDateTimes);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param bizDateTime 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteIndicatorByBizDateTime(Date bizDateTime);
}
