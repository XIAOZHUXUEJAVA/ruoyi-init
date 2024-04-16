package com.ruoyi.city.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.city.mapper.CityFacilitiesMapper;
import com.ruoyi.city.domain.CityFacilities;
import com.ruoyi.city.service.ICityFacilitiesService;

/**
 * 城市设施管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-14
 */
@Service
public class CityFacilitiesServiceImpl implements ICityFacilitiesService 
{
    @Autowired
    private CityFacilitiesMapper cityFacilitiesMapper;

    /**
     * 查询城市设施管理
     * 
     * @param facilityId 城市设施管理主键
     * @return 城市设施管理
     */
    @Override
    public CityFacilities selectCityFacilitiesByFacilityId(Long facilityId)
    {
        return cityFacilitiesMapper.selectCityFacilitiesByFacilityId(facilityId);
    }

    /**
     * 查询城市设施管理列表
     * 
     * @param cityFacilities 城市设施管理
     * @return 城市设施管理
     */
    @Override
    public List<CityFacilities> selectCityFacilitiesList(CityFacilities cityFacilities)
    {
        return cityFacilitiesMapper.selectCityFacilitiesList(cityFacilities);
    }

    /**
     * 新增城市设施管理
     * 
     * @param cityFacilities 城市设施管理
     * @return 结果
     */
    @Override
    public int insertCityFacilities(CityFacilities cityFacilities)
    {
        return cityFacilitiesMapper.insertCityFacilities(cityFacilities);
    }

    /**
     * 修改城市设施管理
     * 
     * @param cityFacilities 城市设施管理
     * @return 结果
     */
    @Override
    public int updateCityFacilities(CityFacilities cityFacilities)
    {
        return cityFacilitiesMapper.updateCityFacilities(cityFacilities);
    }

    /**
     * 批量删除城市设施管理
     * 
     * @param facilityIds 需要删除的城市设施管理主键
     * @return 结果
     */
    @Override
    public int deleteCityFacilitiesByFacilityIds(Long[] facilityIds)
    {
        return cityFacilitiesMapper.deleteCityFacilitiesByFacilityIds(facilityIds);
    }

    /**
     * 删除城市设施管理信息
     * 
     * @param facilityId 城市设施管理主键
     * @return 结果
     */
    @Override
    public int deleteCityFacilitiesByFacilityId(Long facilityId)
    {
        return cityFacilitiesMapper.deleteCityFacilitiesByFacilityId(facilityId);
    }
}
