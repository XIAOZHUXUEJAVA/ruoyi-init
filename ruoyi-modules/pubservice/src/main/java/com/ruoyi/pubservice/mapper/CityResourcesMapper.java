package com.ruoyi.pubservice.mapper;

import java.util.List;
import com.ruoyi.pubservice.domain.CityResources;

/**
 * 公共资源Mapper接口
 * 
 * @author ruoyi
 * @date 2024-04-24
 */
public interface CityResourcesMapper 
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
     * 删除公共资源
     * 
     * @param resourceId 公共资源主键
     * @return 结果
     */
    public int deleteCityResourcesByResourceId(Long resourceId);

    /**
     * 批量删除公共资源
     * 
     * @param resourceIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCityResourcesByResourceIds(Long[] resourceIds);
}
