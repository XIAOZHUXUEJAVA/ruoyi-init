package com.ruoyi.traffic.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 交通事件对象 city_accident
 * 
 * @author ruoyi
 * @date 2024-04-22
 */
public class CityAccident extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 交通事件ID */
    private Long accidentId;

    /** 所属城市 */
    @Excel(name = "所属城市")
    private String cityName;

    /** 事件描述 */
    @Excel(name = "事件描述")
    private String description;

    /** 事故地址 */
    @Excel(name = "事故地址")
    private String accidentAddress;

    /** 状态: 0表示已处理，1表示未处理 */
    @Excel(name = "状态: 0表示已处理，1表示未处理")
    private String status;

    /** 记录日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "记录日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date recordDate;

    public void setAccidentId(Long accidentId) 
    {
        this.accidentId = accidentId;
    }

    public Long getAccidentId() 
    {
        return accidentId;
    }
    public void setCityName(String cityName) 
    {
        this.cityName = cityName;
    }

    public String getCityName() 
    {
        return cityName;
    }
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }
    public void setAccidentAddress(String accidentAddress) 
    {
        this.accidentAddress = accidentAddress;
    }

    public String getAccidentAddress() 
    {
        return accidentAddress;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setRecordDate(Date recordDate) 
    {
        this.recordDate = recordDate;
    }

    public Date getRecordDate() 
    {
        return recordDate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("accidentId", getAccidentId())
            .append("cityName", getCityName())
            .append("description", getDescription())
            .append("accidentAddress", getAccidentAddress())
            .append("status", getStatus())
            .append("recordDate", getRecordDate())
            .toString();
    }
}
