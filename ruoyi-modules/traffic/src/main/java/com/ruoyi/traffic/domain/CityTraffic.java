package com.ruoyi.traffic.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 路况检测对象 city_traffic
 * 
 * @author ruoyi
 * @date 2024-04-19
 */
public class CityTraffic extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 城市ID */
    private Long cityId;

    /** 城市名称 */
    @Excel(name = "城市名称")
    private String cityName;

    /** 路况描述 */
    @Excel(name = "路况描述")
    private String description;

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
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("cityId", getCityId())
            .append("cityName", getCityName())
            .append("description", getDescription())
            .toString();
    }
}
