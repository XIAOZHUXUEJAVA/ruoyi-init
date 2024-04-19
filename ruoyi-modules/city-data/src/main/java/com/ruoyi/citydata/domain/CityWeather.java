package com.ruoyi.citydata.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 城市天气对象 city_weather
 * 
 * @author ruoyi
 * @date 2024-04-18
 */
public class CityWeather extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 记录ID */
    private Long recordId;

    /** 城市名称 */
    @Excel(name = "城市名称")
    private String city;

    /** 星期 */
    @Excel(name = "星期")
    private String week;

    /** 实况时间 */
    @Excel(name = "实况时间")
    private String updateDate;

    /** 实况温度 */
    @Excel(name = "实况温度")
    private String tem;

    /** 白天温度 */
    @Excel(name = "白天温度")
    private String temDay;

    /** 夜间温度 */
    @Excel(name = "夜间温度")
    private String temNight;

    /** 风向 */
    @Excel(name = "风向")
    private String win;

    /** 风力 */
    @Excel(name = "风力")
    private String winSpeed;

    /** 风速 */
    @Excel(name = "风速")
    private String winMeter;

    /** 气压 */
    @Excel(name = "气压")
    private String pressrue;

    /** 湿度 */
    @Excel(name = "湿度")
    private String humidity;

    /** 记录日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "记录日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date date;

    public void setRecordId(Long recordId) 
    {
        this.recordId = recordId;
    }

    public Long getRecordId() 
    {
        return recordId;
    }
    public void setCity(String city) 
    {
        this.city = city;
    }

    public String getCity() 
    {
        return city;
    }
    public void setWeek(String week) 
    {
        this.week = week;
    }

    public String getWeek() 
    {
        return week;
    }
    public void setUpdateDate(String updateDate) 
    {
        this.updateDate = updateDate;
    }

    public String getUpdateDate() 
    {
        return updateDate;
    }
    public void setTem(String tem) 
    {
        this.tem = tem;
    }

    public String getTem() 
    {
        return tem;
    }
    public void setTemDay(String temDay) 
    {
        this.temDay = temDay;
    }

    public String getTemDay() 
    {
        return temDay;
    }
    public void setTemNight(String temNight) 
    {
        this.temNight = temNight;
    }

    public String getTemNight() 
    {
        return temNight;
    }
    public void setWin(String win) 
    {
        this.win = win;
    }

    public String getWin() 
    {
        return win;
    }
    public void setWinSpeed(String winSpeed) 
    {
        this.winSpeed = winSpeed;
    }

    public String getWinSpeed() 
    {
        return winSpeed;
    }
    public void setWinMeter(String winMeter) 
    {
        this.winMeter = winMeter;
    }

    public String getWinMeter() 
    {
        return winMeter;
    }
    public void setPressrue(String pressrue) 
    {
        this.pressrue = pressrue;
    }

    public String getPressrue() 
    {
        return pressrue;
    }
    public void setHumidity(String humidity) 
    {
        this.humidity = humidity;
    }

    public String getHumidity() 
    {
        return humidity;
    }
    public void setDate(Date date) 
    {
        this.date = date;
    }

    public Date getDate() 
    {
        return date;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("recordId", getRecordId())
            .append("city", getCity())
            .append("week", getWeek())
            .append("updateDate", getUpdateDate())
            .append("tem", getTem())
            .append("temDay", getTemDay())
            .append("temNight", getTemNight())
            .append("win", getWin())
            .append("winSpeed", getWinSpeed())
            .append("winMeter", getWinMeter())
            .append("pressrue", getPressrue())
            .append("humidity", getHumidity())
            .append("date", getDate())
            .toString();
    }
}
