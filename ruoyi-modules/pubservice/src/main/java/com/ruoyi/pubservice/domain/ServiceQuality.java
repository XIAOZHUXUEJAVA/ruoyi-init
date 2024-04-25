package com.ruoyi.pubservice.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 服务质量对象 service_quality
 * 
 * @author ruoyi
 * @date 2024-04-25
 */
public class ServiceQuality extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 服务ID */
    private Long serviceId;

    /** 所属城市 */
    @Excel(name = "所属城市")
    private String cityName;

    /** 服务名称 */
    @Excel(name = "服务名称")
    private String serviceName;

    /** 服务类别 */
    @Excel(name = "服务类别")
    private Long categoryId;

    /** 服务内容 */
    @Excel(name = "服务内容")
    private String description;

    /** 服务质量 */
    @Excel(name = "服务质量")
    private String quality;

    /** 状态: 0可用，1禁用 */
    @Excel(name = "状态: 0可用，1禁用")
    private String status;

    public void setServiceId(Long serviceId) 
    {
        this.serviceId = serviceId;
    }

    public Long getServiceId() 
    {
        return serviceId;
    }
    public void setCityName(String cityName) 
    {
        this.cityName = cityName;
    }

    public String getCityName() 
    {
        return cityName;
    }
    public void setServiceName(String serviceName) 
    {
        this.serviceName = serviceName;
    }

    public String getServiceName() 
    {
        return serviceName;
    }
    public void setCategoryId(Long categoryId) 
    {
        this.categoryId = categoryId;
    }

    public Long getCategoryId() 
    {
        return categoryId;
    }
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }
    public void setQuality(String quality) 
    {
        this.quality = quality;
    }

    public String getQuality() 
    {
        return quality;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("serviceId", getServiceId())
            .append("cityName", getCityName())
            .append("serviceName", getServiceName())
            .append("categoryId", getCategoryId())
            .append("description", getDescription())
            .append("quality", getQuality())
            .append("status", getStatus())
            .toString();
    }
}
