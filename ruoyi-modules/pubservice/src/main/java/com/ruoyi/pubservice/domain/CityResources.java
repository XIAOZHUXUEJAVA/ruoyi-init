package com.ruoyi.pubservice.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 公共资源对象 city_resources
 * 
 * @author ruoyi
 * @date 2024-04-24
 */
public class CityResources extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 资源ID */
    private Long resourceId;

    /** 所属城市 */
    @Excel(name = "所属城市")
    private String cityName;

    /** 资源名称 */
    @Excel(name = "资源名称")
    private String resourceName;

    /** 资源类型 */
    @Excel(name = "资源类型")
    private Long categoryId;

    /** 地址 */
    @Excel(name = "地址")
    private String address;

    /** 容量/规模 */
    @Excel(name = "容量/规模")
    private Long capacity;

    /** 状态: 0表示正常，1表示禁用 */
    @Excel(name = "状态: 0表示正常，1表示禁用")
    private String status;

    public void setResourceId(Long resourceId) 
    {
        this.resourceId = resourceId;
    }

    public Long getResourceId() 
    {
        return resourceId;
    }
    public void setCityName(String cityName) 
    {
        this.cityName = cityName;
    }

    public String getCityName() 
    {
        return cityName;
    }
    public void setResourceName(String resourceName) 
    {
        this.resourceName = resourceName;
    }

    public String getResourceName() 
    {
        return resourceName;
    }
    public void setCategoryId(Long categoryId) 
    {
        this.categoryId = categoryId;
    }

    public Long getCategoryId() 
    {
        return categoryId;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setCapacity(Long capacity) 
    {
        this.capacity = capacity;
    }

    public Long getCapacity() 
    {
        return capacity;
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
            .append("resourceId", getResourceId())
            .append("cityName", getCityName())
            .append("resourceName", getResourceName())
            .append("categoryId", getCategoryId())
            .append("address", getAddress())
            .append("capacity", getCapacity())
            .append("status", getStatus())
            .toString();
    }
}
