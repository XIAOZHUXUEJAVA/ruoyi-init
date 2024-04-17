package com.ruoyi.city.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 城市设施管理对象 city_facilities
 * 
 * @author ruoyi
 * @date 2024-04-16
 */
public class CityFacilities extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 设施编号 */
    private Long facilityId;

    /** 所属城市 */
    @Excel(name = "所属城市")
    private String cityName;

    /** 设施名称 */
    @Excel(name = "设施名称")
    private String facilityName;

    /** 设施类别 */
    @Excel(name = "设施类别")
    private String isPublic;

    /** 设施地址 */
    @Excel(name = "设施地址")
    private String address;

    /** 设施状态 */
    @Excel(name = "设施状态")
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
    public void setCityName(String cityName) 
    {
        this.cityName = cityName;
    }

    public String getCityName() 
    {
        return cityName;
    }
    public void setFacilityName(String facilityName) 
    {
        this.facilityName = facilityName;
    }

    public String getFacilityName() 
    {
        return facilityName;
    }
    public void setIsPublic(String isPublic) 
    {
        this.isPublic = isPublic;
    }

    public String getIsPublic() 
    {
        return isPublic;
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
            .append("cityName", getCityName())
            .append("facilityName", getFacilityName())
            .append("isPublic", getIsPublic())
            .append("address", getAddress())
            .append("status", getStatus())
            .append("capacity", getCapacity())
            .toString();
    }
}
