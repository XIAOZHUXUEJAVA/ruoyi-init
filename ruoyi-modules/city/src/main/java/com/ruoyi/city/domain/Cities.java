package com.ruoyi.city.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 城市基础信息对象 cities
 * 
 * @author ruoyi
 * @date 2024-04-16
 */
public class Cities extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 城市编号 */
    private Long cityId;

    /** 城市名称 */
    @Excel(name = "城市名称")
    private String cityName;

    /** 隶属省份 | 直辖 */
    @Excel(name = "隶属省份 | 直辖")
    private String province;

    /** 人口数量 */
    @Excel(name = "人口数量")
    private Long population;

    /** 建市日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "建市日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date establishedDate;

    /** 经纬度 */
    @Excel(name = "经纬度")
    private String location;

    /** 城市面积 */
    @Excel(name = "城市面积")
    private Long area;

    public void setCityId(Long cityId) 
    {
        this.cityId = cityId;
    }

    public Long getCityId() 
    {
        return cityId;
    }
    public void setCityName(String cityName) 
    {
        this.cityName = cityName;
    }

    public String getCityName() 
    {
        return cityName;
    }
    public void setProvince(String province) 
    {
        this.province = province;
    }

    public String getProvince() 
    {
        return province;
    }
    public void setPopulation(Long population) 
    {
        this.population = population;
    }

    public Long getPopulation() 
    {
        return population;
    }
    public void setEstablishedDate(Date establishedDate) 
    {
        this.establishedDate = establishedDate;
    }

    public Date getEstablishedDate() 
    {
        return establishedDate;
    }
    public void setLocation(String location) 
    {
        this.location = location;
    }

    public String getLocation() 
    {
        return location;
    }
    public void setArea(Long area) 
    {
        this.area = area;
    }

    public Long getArea() 
    {
        return area;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("cityId", getCityId())
            .append("cityName", getCityName())
            .append("province", getProvince())
            .append("population", getPopulation())
            .append("establishedDate", getEstablishedDate())
            .append("location", getLocation())
            .append("area", getArea())
            .toString();
    }
}
