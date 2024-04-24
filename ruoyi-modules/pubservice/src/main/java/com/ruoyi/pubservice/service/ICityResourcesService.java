package com.ruoyi.pubservice.service;

import java.util.List;
import com.ruoyi.pubservice.domain.CityResources;

/**
 * 公共资源Service接口
 * 
 * @author ruoyi
 * @date 2024-04-24
 */
public interface ICityResourcesService 
{
    /**
     * 查询公共资源
     * 
     * @param resourceId 公共资源主键
     * @return 公共资源
     */
    public CityResources selectCityResourcesByResourceId(Long resourceId);

    /**
     * 查询公共资源列表
     * 
     * @param cityResources 公共资源
     * @return 公共资源集合
     */
    public List<CityResources> selectCityResourcesList(CityResources cityResources);

    /**
     * 新增公共资源
     * 
     * @param cityResources 公共资源
     * @return 结果
     */
    public int insertCityResources(CityResources cityResources);

    /**
     * 修改公共资源
     * 
     * @param cityResources 公共资源
     * @return 结果
     */
    public int updateCityResources(CityResources cityResources);

    /**
     * 批量删除公共资源
     * 
     * @param resourceIds 需要删除的公共资源主键集合
     * @return 结果
     */
    public int deleteCityResourcesByResourceIds(Long[] resourceIds);

    /**
     * 删除公共资源信息
     * 
     * @param resourceId 公共资源主键
     * @return 结果
     */
    public int deleteCityResourcesByResourceId(Long resourceId);
}
