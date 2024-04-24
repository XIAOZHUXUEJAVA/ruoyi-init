package com.ruoyi.pubservice.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pubservice.mapper.CityResourcesMapper;
import com.ruoyi.pubservice.domain.CityResources;
import com.ruoyi.pubservice.service.ICityResourcesService;

/**
 * 公共资源Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-24
 */
@Service
public class CityResourcesServiceImpl implements ICityResourcesService 
{
    @Autowired
    private CityResourcesMapper cityResourcesMapper;

    /**
     * 查询公共资源
     * 
     * @param resourceId 公共资源主键
     * @return 公共资源
     */
    @Override
    public CityResources selectCityResourcesByResourceId(Long resourceId)
    {
        return cityResourcesMapper.selectCityResourcesByResourceId(resourceId);
    }

    /**
     * 查询公共资源列表
     * 
     * @param cityResources 公共资源
     * @return 公共资源
     */
    @Override
    public List<CityResources> selectCityResourcesList(CityResources cityResources)
    {
        return cityResourcesMapper.selectCityResourcesList(cityResources);
    }

    /**
     * 新增公共资源
     * 
     * @param cityResources 公共资源
     * @return 结果
     */
    @Override
    public int insertCityResources(CityResources cityResources)
    {
        return cityResourcesMapper.insertCityResources(cityResources);
    }

    /**
     * 修改公共资源
     * 
     * @param cityResources 公共资源
     * @return 结果
     */
    @Override
    public int updateCityResources(CityResources cityResources)
    {
        return cityResourcesMapper.updateCityResources(cityResources);
    }

    /**
     * 批量删除公共资源
     * 
     * @param resourceIds 需要删除的公共资源主键
     * @return 结果
     */
    @Override
    public int deleteCityResourcesByResourceIds(Long[] resourceIds)
    {
        return cityResourcesMapper.deleteCityResourcesByResourceIds(resourceIds);
    }

    /**
     * 删除公共资源信息
     * 
     * @param resourceId 公共资源主键
     * @return 结果
     */
    @Override
    public int deleteCityResourcesByResourceId(Long resourceId)
    {
        return cityResourcesMapper.deleteCityResourcesByResourceId(resourceId);
    }
}
