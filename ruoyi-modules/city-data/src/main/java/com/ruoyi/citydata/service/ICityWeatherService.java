package com.ruoyi.citydata.service;

import java.util.List;
import com.ruoyi.citydata.domain.CityWeather;

/**
 * 城市天气Service接口
 * 
 * @author ruoyi
 * @date 2024-04-18
 */
public interface ICityWeatherService 
{
    /**
     * 查询城市天气
     * 
     * @param recordId 城市天气主键
     * @return 城市天气
     */
    public CityWeather selectCityWeatherByRecordId(Long recordId);

    /**
     * 查询城市天气列表
     * 
     * @param cityWeather 城市天气
     * @return 城市天气集合
     */
    public List<CityWeather> selectCityWeatherList(CityWeather cityWeather);

    /**
     * 新增城市天气
     * 
     * @param cityWeather 城市天气
     * @return 结果
     */
    public int insertCityWeather(CityWeather cityWeather);

    /**
     * 修改城市天气
     * 
     * @param cityWeather 城市天气
     * @return 结果
     */
    public int updateCityWeather(CityWeather cityWeather);

    /**
     * 批量删除城市天气
     * 
     * @param recordIds 需要删除的城市天气主键集合
     * @return 结果
     */
    public int deleteCityWeatherByRecordIds(Long[] recordIds);

    /**
     * 删除城市天气信息
     * 
     * @param recordId 城市天气主键
     * @return 结果
     */
    public int deleteCityWeatherByRecordId(Long recordId);
}
