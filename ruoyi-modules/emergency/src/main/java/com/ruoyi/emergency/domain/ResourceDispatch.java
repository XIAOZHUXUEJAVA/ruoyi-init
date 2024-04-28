package com.ruoyi.emergency.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 资源调度对象 resource_dispatch
 * 
 * @author ruoyi
 * @date 2024-04-28
 */
public class ResourceDispatch extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 调度ID */
    private Long dispatchId;

    /** 事件ID */
    @Excel(name = "事件ID")
    private Long emergencyId;

    /** 调度资源ID */
    @Excel(name = "调度资源ID")
    private Long resourceId;

    /** 调度内容 */
    @Excel(name = "调度内容")
    private String content;

    /** 调度状态 */
    @Excel(name = "调度状态")
    private String status;

    /** 调度日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "调度日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date dispatchDate;

    public void setDispatchId(Long dispatchId) 
    {
        this.dispatchId = dispatchId;
    }

    public Long getDispatchId() 
    {
        return dispatchId;
    }
    public void setEmergencyId(Long emergencyId) 
    {
        this.emergencyId = emergencyId;
    }

    public Long getEmergencyId() 
    {
        return emergencyId;
    }
    public void setResourceId(Long resourceId) 
    {
        this.resourceId = resourceId;
    }

    public Long getResourceId() 
    {
        return resourceId;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setDispatchDate(Date dispatchDate) 
    {
        this.dispatchDate = dispatchDate;
    }

    public Date getDispatchDate() 
    {
        return dispatchDate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("dispatchId", getDispatchId())
            .append("emergencyId", getEmergencyId())
            .append("resourceId", getResourceId())
            .append("content", getContent())
            .append("status", getStatus())
            .append("dispatchDate", getDispatchDate())
            .toString();
    }
}
