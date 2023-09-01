package com.ruoyi.web.service.impl;

import java.util.Date;
import java.util.List;

import com.ruoyi.common.annotation.DataSource;
import com.ruoyi.common.enums.DataSourceType;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.mapper.IndicatorMapper;
import com.ruoyi.web.domain.Indicator;
import com.ruoyi.web.service.IIndicatorService;

import javax.annotation.Resource;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-08-28
 */
@Service
@DataSource(value = DataSourceType.SHARDING)

public class IndicatorServiceImpl implements IIndicatorService
{
    @Resource
    private IndicatorMapper indicatorMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param bizDateTime 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public Indicator selectIndicatorByBizDateTime(Date bizDateTime)
    {
        return indicatorMapper.selectIndicatorByBizDateTime(bizDateTime);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param indicator 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<Indicator> selectIndicatorList(Indicator indicator)
    {
        return indicatorMapper.selectIndicatorList(indicator);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param indicator 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertIndicator(Indicator indicator)
    {
        indicator.setCreateTime(DateUtils.getNowDate());
        return indicatorMapper.insertIndicator(indicator);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param indicator 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateIndicator(Indicator indicator)
    {
        return indicatorMapper.updateIndicator(indicator);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param bizDateTimes 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteIndicatorByBizDateTimes(Date[] bizDateTimes)
    {
        return indicatorMapper.deleteIndicatorByBizDateTimes(bizDateTimes);
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param bizDateTime 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteIndicatorByBizDateTime(Date bizDateTime)
    {
        return indicatorMapper.deleteIndicatorByBizDateTime(bizDateTime);
    }
}
