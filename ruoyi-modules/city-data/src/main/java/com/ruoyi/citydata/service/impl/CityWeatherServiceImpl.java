package com.ruoyi.citydata.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.citydata.mapper.CityWeatherMapper;
import com.ruoyi.citydata.domain.CityWeather;
import com.ruoyi.citydata.service.ICityWeatherService;

/**
 * 城市天气Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-18
 */
@Service
public class CityWeatherServiceImpl implements ICityWeatherService 
{
    @Autowired
    private CityWeatherMapper cityWeatherMapper;

    /**
     * 查询城市天气
     * 
     * @param recordId 城市天气主键
     * @return 城市天气
     */
    @Override
    public CityWeather selectCityWeatherByRecordId(Long recordId)
    {
        return cityWeatherMapper.selectCityWeatherByRecordId(recordId);
    }

    /**
     * 查询城市天气列表
     * 
     * @param cityWeather 城市天气
     * @return 城市天气
     */
    @Override
    public List<CityWeather> selectCityWeatherList(CityWeather cityWeather)
    {
        return cityWeatherMapper.selectCityWeatherList(cityWeather);
    }

    /**
     * 新增城市天气
     * 
     * @param cityWeather 城市天气
     * @return 结果
     */
    @Override
    public int insertCityWeather(CityWeather cityWeather)
    {
        return cityWeatherMapper.insertCityWeather(cityWeather);
    }

    /**
     * 修改城市天气
     * 
     * @param cityWeather 城市天气
     * @return 结果
     */
    @Override
    public int updateCityWeather(CityWeather cityWeather)
    {
        return cityWeatherMapper.updateCityWeather(cityWeather);
    }

    /**
     * 批量删除城市天气
     * 
     * @param recordIds 需要删除的城市天气主键
     * @return 结果
     */
    @Override
    public int deleteCityWeatherByRecordIds(Long[] recordIds)
    {
        return cityWeatherMapper.deleteCityWeatherByRecordIds(recordIds);
    }

    /**
     * 删除城市天气信息
     * 
     * @param recordId 城市天气主键
     * @return 结果
     */
    @Override
    public int deleteCityWeatherByRecordId(Long recordId)
    {
        return cityWeatherMapper.deleteCityWeatherByRecordId(recordId);
    }
}
