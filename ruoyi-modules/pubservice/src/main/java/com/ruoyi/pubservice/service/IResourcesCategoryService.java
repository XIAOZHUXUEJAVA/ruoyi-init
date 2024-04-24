package com.ruoyi.pubservice.service;

import java.util.List;
import com.ruoyi.pubservice.domain.ResourcesCategory;

/**
 * 资源类别Service接口
 * 
 * @author ruoyi
 * @date 2024-04-24
 */
public interface IResourcesCategoryService 
{
    /**
     * 查询资源类别
     * 
     * @param categoryId 资源类别主键
     * @return 资源类别
     */
    public ResourcesCategory selectResourcesCategoryByCategoryId(Long categoryId);

    /**
     * 查询资源类别列表
     * 
     * @param resourcesCategory 资源类别
     * @return 资源类别集合
     */
    public List<ResourcesCategory> selectResourcesCategoryList(ResourcesCategory resourcesCategory);

    /**
     * 新增资源类别
     * 
     * @param resourcesCategory 资源类别
     * @return 结果
     */
    public int insertResourcesCategory(ResourcesCategory resourcesCategory);

    /**
     * 修改资源类别
     * 
     * @param resourcesCategory 资源类别
     * @return 结果
     */
    public int updateResourcesCategory(ResourcesCategory resourcesCategory);

    /**
     * 批量删除资源类别
     * 
     * @param categoryIds 需要删除的资源类别主键集合
     * @return 结果
     */
    public int deleteResourcesCategoryByCategoryIds(Long[] categoryIds);

    /**
     * 删除资源类别信息
     * 
     * @param categoryId 资源类别主键
     * @return 结果
     */
    public int deleteResourcesCategoryByCategoryId(Long categoryId);
}
