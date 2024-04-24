package com.ruoyi.pubservice.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pubservice.mapper.ResourcesCategoryMapper;
import com.ruoyi.pubservice.domain.ResourcesCategory;
import com.ruoyi.pubservice.service.IResourcesCategoryService;

/**
 * 资源类别Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-24
 */
@Service
public class ResourcesCategoryServiceImpl implements IResourcesCategoryService 
{
    @Autowired
    private ResourcesCategoryMapper resourcesCategoryMapper;

    /**
     * 查询资源类别
     * 
     * @param categoryId 资源类别主键
     * @return 资源类别
     */
    @Override
    public ResourcesCategory selectResourcesCategoryByCategoryId(Long categoryId)
    {
        return resourcesCategoryMapper.selectResourcesCategoryByCategoryId(categoryId);
    }

    /**
     * 查询资源类别列表
     * 
     * @param resourcesCategory 资源类别
     * @return 资源类别
     */
    @Override
    public List<ResourcesCategory> selectResourcesCategoryList(ResourcesCategory resourcesCategory)
    {
        return resourcesCategoryMapper.selectResourcesCategoryList(resourcesCategory);
    }

    /**
     * 新增资源类别
     * 
     * @param resourcesCategory 资源类别
     * @return 结果
     */
    @Override
    public int insertResourcesCategory(ResourcesCategory resourcesCategory)
    {
        return resourcesCategoryMapper.insertResourcesCategory(resourcesCategory);
    }

    /**
     * 修改资源类别
     * 
     * @param resourcesCategory 资源类别
     * @return 结果
     */
    @Override
    public int updateResourcesCategory(ResourcesCategory resourcesCategory)
    {
        return resourcesCategoryMapper.updateResourcesCategory(resourcesCategory);
    }

    /**
     * 批量删除资源类别
     * 
     * @param categoryIds 需要删除的资源类别主键
     * @return 结果
     */
    @Override
    public int deleteResourcesCategoryByCategoryIds(Long[] categoryIds)
    {
        return resourcesCategoryMapper.deleteResourcesCategoryByCategoryIds(categoryIds);
    }

    /**
     * 删除资源类别信息
     * 
     * @param categoryId 资源类别主键
     * @return 结果
     */
    @Override
    public int deleteResourcesCategoryByCategoryId(Long categoryId)
    {
        return resourcesCategoryMapper.deleteResourcesCategoryByCategoryId(categoryId);
    }
}
