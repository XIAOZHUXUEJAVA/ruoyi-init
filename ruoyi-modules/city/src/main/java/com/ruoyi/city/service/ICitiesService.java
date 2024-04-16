package com.ruoyi.city.service;

import java.util.List;
import com.ruoyi.city.domain.Cities;

/**
 * 城市基础信息Service接口
 * 
 * @author ruoyi
 * @date 2024-04-13
 */
public interface ICitiesService 
{
    /**
     * 查询城市基础信息
     * 
     * @param cityId 城市基础信息主键
     * @return 城市基础信息
     */
    public Cities selectCitiesByCityId(Long cityId);

    /**
     * 查询城市基础信息列表
     * 
     * @param cities 城市基础信息
     * @return 城市基础信息集合
     */
    public List<Cities> selectCitiesList(Cities cities);

    /**
     * 新增城市基础信息
     * 
     * @param cities 城市基础信息
     * @return 结果
     */
    public int insertCities(Cities cities);

    /**
     * 修改城市基础信息
     * 
     * @param cities 城市基础信息
     * @return 结果
     */
    public int updateCities(Cities cities);

    /**
     * 批量删除城市基础信息
     * 
     * @param cityIds 需要删除的城市基础信息主键集合
     * @return 结果
     */
    public int deleteCitiesByCityIds(Long[] cityIds);

    /**
     * 删除城市基础信息信息
     * 
     * @param cityId 城市基础信息主键
     * @return 结果
     */
    public int deleteCitiesByCityId(Long cityId);
}
