package com.ruoyi.city.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 城市设施管理对象 city_facilities
 * 
 * @author ruoyi
 * @date 2024-04-14
 */
public class CityFacilities extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 设施ID */
    private Long facilityId;

    /** 所属城市ID */
    @Excel(name = "所属城市ID")
    private Long cityId;

    /** 设施名称 */
    @Excel(name = "设施名称")
    private String facilityName;

    /** 设施类别 */
    @Excel(name = "设施类别")
    private String category;

    /** 设施地址 */
    @Excel(name = "设施地址")
    private String address;

    /** 状态: 0表示正常，1表示禁用 */
    @Excel(name = "状态: 0表示正常，1表示禁用")
    private String status;

    /** 设施容量 */
    @Excel(name = "设施容量")
    private Long capacity;

    public void setFacilityId(Long facilityId) 
    {
        this.facilityId = facilityId;
    }

    public Long getFacilityId() 
    {
        return facilityId;
    }
    public void setCityId(Long cityId) 
    {
        this.cityId = cityId;
    }

    public Long getCityId() 
    {
        return cityId;
    }
    public void setFacilityName(String facilityName) 
    {
        this.facilityName = facilityName;
    }

    public String getFacilityName() 
    {
        return facilityName;
    }
    public void setCategory(String category) 
    {
        this.category = category;
    }

    public String getCategory() 
    {
        return category;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setCapacity(Long capacity) 
    {
        this.capacity = capacity;
    }

    public Long getCapacity() 
    {
        return capacity;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("facilityId", getFacilityId())
            .append("cityId", getCityId())
            .append("facilityName", getFacilityName())
            .append("category", getCategory())
            .append("address", getAddress())
            .append("status", getStatus())
            .append("capacity", getCapacity())
            .toString();
    }
}
