package com.ruoyi.citydata.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 城市环境质量对象 environment_quality
 * 
 * @author ruoyi
 * @date 2024-04-17
 */
public class EnvironmentQuality extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 记录编号 */
    private Long envId;

    /** 城市名称 */
    @Excel(name = "城市名称")
    private String cityName;

    /** 空气质量指数 */
    @Excel(name = "空气质量指数")
    private Integer airQuality;

    /** 噪音水平（分贝） */
    @Excel(name = "噪音水平", readConverterExp = "分=贝")
    private Integer noiseLevel;

    /** 污染物排放情况 */
    @Excel(name = "污染物排放情况")
    private String pollutantEmission;

    /** 记录日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "记录日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date recordDate;

    public void setEnvId(Long envId) 
    {
        this.envId = envId;
    }

    public Long getEnvId() 
    {
        return envId;
    }
    public void setCityName(String cityName) 
    {
        this.cityName = cityName;
    }

    public String getCityName() 
    {
        return cityName;
    }
    public void setAirQuality(Integer airQuality) 
    {
        this.airQuality = airQuality;
    }

    public Integer getAirQuality() 
    {
        return airQuality;
    }
    public void setNoiseLevel(Integer noiseLevel) 
    {
        this.noiseLevel = noiseLevel;
    }

    public Integer getNoiseLevel() 
    {
        return noiseLevel;
    }
    public void setPollutantEmission(String pollutantEmission) 
    {
        this.pollutantEmission = pollutantEmission;
    }

    public String getPollutantEmission() 
    {
        return pollutantEmission;
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
            .append("envId", getEnvId())
            .append("cityName", getCityName())
            .append("airQuality", getAirQuality())
            .append("noiseLevel", getNoiseLevel())
            .append("pollutantEmission", getPollutantEmission())
            .append("recordDate", getRecordDate())
            .toString();
    }
}
