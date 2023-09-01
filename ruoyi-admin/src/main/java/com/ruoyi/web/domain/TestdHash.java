package com.ruoyi.web.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 testd_hash
 * 
 * @author ruoyi
 * @date 2023-08-30
 */
public class TestdHash extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 数据推送时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "数据推送时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date pushTime;

    /** 推送方 */
    @Excel(name = "推送方")
    private String pusher;

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
            .append("id", getId())
            .toString();
    }
}
