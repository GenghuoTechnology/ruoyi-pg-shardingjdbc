package com.ruoyi.web.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 indicator
 * 
 * @author ruoyi
 * @date 2023-08-28
 */
public class Indicator extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 数据推送时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "数据推送时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date pushTime;

    /** 推送方 */
    @Excel(name = "推送方")
    private String pusher;

    /** 菜单路径编码 */
    @Excel(name = "菜单路径编码")
    private String categoryPathCode;

    /** 业务数据日期时间 */
    private Date bizDateTime;

    /** 组织编码路径(用@隔开,格式: 1.@省编码@; 2.@省编码@市编码@; 3.@省编码@市编码@区县编码@; 4.@省编码@市编码@区县编码@街道编码@) */
    private String orgIndexCodePath;

    /** 维度编码,默认def */
    private String dimensionCode;

    /** 指标编码 */
    private String indicatorCode;

    /** 指标值 */
    @Excel(name = "指标值")
    private String indicatorValue;

    /** 指标值2 */
    @Excel(name = "指标值2")
    private String indicatorValue2;

    /** $column.columnComment */
    private Long id;

    public void setPushTime(Date pushTime) 
    {
        this.pushTime = pushTime;
    }

    public Date getPushTime() 
    {
        return pushTime;
    }
    public void setPusher(String pusher) 
    {
        this.pusher = pusher;
    }

    public String getPusher() 
    {
        return pusher;
    }
    public void setCategoryPathCode(String categoryPathCode) 
    {
        this.categoryPathCode = categoryPathCode;
    }

    public String getCategoryPathCode() 
    {
        return categoryPathCode;
    }
    public void setBizDateTime(Date bizDateTime) 
    {
        this.bizDateTime = bizDateTime;
    }

    public Date getBizDateTime() 
    {
        return bizDateTime;
    }
    public void setOrgIndexCodePath(String orgIndexCodePath) 
    {
        this.orgIndexCodePath = orgIndexCodePath;
    }

    public String getOrgIndexCodePath() 
    {
        return orgIndexCodePath;
    }
    public void setDimensionCode(String dimensionCode) 
    {
        this.dimensionCode = dimensionCode;
    }

    public String getDimensionCode() 
    {
        return dimensionCode;
    }
    public void setIndicatorCode(String indicatorCode) 
    {
        this.indicatorCode = indicatorCode;
    }

    public String getIndicatorCode() 
    {
        return indicatorCode;
    }
    public void setIndicatorValue(String indicatorValue) 
    {
        this.indicatorValue = indicatorValue;
    }

    public String getIndicatorValue() 
    {
        return indicatorValue;
    }
    public void setIndicatorValue2(String indicatorValue2) 
    {
        this.indicatorValue2 = indicatorValue2;
    }

    public String getIndicatorValue2() 
    {
        return indicatorValue2;
    }
    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("pushTime", getPushTime())
            .append("pusher", getPusher())
            .append("categoryPathCode", getCategoryPathCode())
            .append("bizDateTime", getBizDateTime())
            .append("orgIndexCodePath", getOrgIndexCodePath())
            .append("dimensionCode", getDimensionCode())
            .append("indicatorCode", getIndicatorCode())
            .append("indicatorValue", getIndicatorValue())
            .append("indicatorValue2", getIndicatorValue2())
            .append("createTime", getCreateTime())
            .append("id", getId())
            .toString();
    }
}
