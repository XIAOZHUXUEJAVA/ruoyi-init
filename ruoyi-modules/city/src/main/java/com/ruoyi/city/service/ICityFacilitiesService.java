package com.ruoyi.city.service;

import java.util.List;
import com.ruoyi.city.domain.CityFacilities;

/**
 * 城市设施管理Service接口
 * 
 * @author ruoyi
 * @date 2024-04-16
 */
public interface ICityFacilitiesService 
{
    /**
     * 查询城市设施管理
     * 
     * @param facilityId 城市设施管理主键
     * @return 城市设施管理
     */
    public CityFacilities selectCityFacilitiesByFacilityId(Long facilityId);

    /**
     * 查询城市设施管理列表
     * 
     * @param cityFacilities 城市设施管理
     * @return 城市设施管理集合
     */
    public List<CityFacilities> selectCityFacilitiesList(CityFacilities cityFacilities);

    /**
     * 新增城市设施管理
     * 
     * @param cityFacilities 城市设施管理
     * @return 结果
     */
    public int insertCityFacilities(CityFacilities cityFacilities);

    /**
     * 修改城市设施管理
     * 
     * @param cityFacilities 城市设施管理
     * @return 结果
     */
    public int updateCityFacilities(CityFacilities cityFacilities);

    /**
     * 批量删除城市设施管理
     * 
     * @param facilityIds 需要删除的城市设施管理主键集合
     * @return 结果
     */
    public int deleteCityFacilitiesByFacilityIds(Long[] facilityIds);

    /**
     * 删除城市设施管理信息
     * 
     * @param facilityId 城市设施管理主键
     * @return 结果
     */
    public int deleteCityFacilitiesByFacilityId(Long facilityId);
}
