package com.ruoyi.city.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.city.mapper.CitiesMapper;
import com.ruoyi.city.domain.Cities;
import com.ruoyi.city.service.ICitiesService;

/**
 * 城市基础信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-13
 */
@Service
public class CitiesServiceImpl implements ICitiesService 
{
    @Autowired
    private CitiesMapper citiesMapper;

    /**
     * 查询城市基础信息
     * 
     * @param cityId 城市基础信息主键
     * @return 城市基础信息
     */
    @Override
    public Cities selectCitiesByCityId(Long cityId)
    {
        return citiesMapper.selectCitiesByCityId(cityId);
    }

    /**
     * 查询城市基础信息列表
     * 
     * @param cities 城市基础信息
     * @return 城市基础信息
     */
    @Override
    public List<Cities> selectCitiesList(Cities cities)
    {
        return citiesMapper.selectCitiesList(cities);
    }

    /**
     * 新增城市基础信息
     * 
     * @param cities 城市基础信息
     * @return 结果
     */
    @Override
    public int insertCities(Cities cities)
    {
        return citiesMapper.insertCities(cities);
    }

    /**
     * 修改城市基础信息
     * 
     * @param cities 城市基础信息
     * @return 结果
     */
    @Override
    public int updateCities(Cities cities)
    {
        return citiesMapper.updateCities(cities);
    }

    /**
     * 批量删除城市基础信息
     * 
     * @param cityIds 需要删除的城市基础信息主键
     * @return 结果
     */
    @Override
    public int deleteCitiesByCityIds(Long[] cityIds)
    {
        return citiesMapper.deleteCitiesByCityIds(cityIds);
    }

    /**
     * 删除城市基础信息信息
     * 
     * @param cityId 城市基础信息主键
     * @return 结果
     */
    @Override
    public int deleteCitiesByCityId(Long cityId)
    {
        return citiesMapper.deleteCitiesByCityId(cityId);
    }
}
