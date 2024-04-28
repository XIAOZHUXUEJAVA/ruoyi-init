package com.ruoyi.emergency.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 交通事件对象 city_emergency
 * 
 * @author ruoyi
 * @date 2024-04-28
 */
public class CityEmergency extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 事件ID */
    private Long emergencyId;

    /** 所属城市 */
    @Excel(name = "所属城市")
    private String cityName;

    /** 类别ID */
    @Excel(name = "类别ID")
    private Long categoryId;

    /** 事件描述 */
    @Excel(name = "事件描述")
    private String description;

    /** 事件地址 */
    @Excel(name = "事件地址")
    private String emergencyAddress;

    /** 事件状态 */
    @Excel(name = "事件状态")
    private String status;

    /** 事件日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "事件日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date emergencyDate;

    public void setEmergencyId(Long emergencyId) 
    {
        this.emergencyId = emergencyId;
    }

    public Long getEmergencyId() 
    {
        return emergencyId;
    }
    public void setCityName(String cityName) 
    {
        this.cityName = cityName;
    }

    public String getCityName() 
    {
        return cityName;
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
    public void setEmergencyAddress(String emergencyAddress) 
    {
        this.emergencyAddress = emergencyAddress;
    }

    public String getEmergencyAddress() 
    {
        return emergencyAddress;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setEmergencyDate(Date emergencyDate) 
    {
        this.emergencyDate = emergencyDate;
    }

    public Date getEmergencyDate() 
    {
        return emergencyDate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("emergencyId", getEmergencyId())
            .append("cityName", getCityName())
            .append("categoryId", getCategoryId())
            .append("description", getDescription())
            .append("emergencyAddress", getEmergencyAddress())
            .append("status", getStatus())
            .append("emergencyDate", getEmergencyDate())
            .toString();
    }
}
