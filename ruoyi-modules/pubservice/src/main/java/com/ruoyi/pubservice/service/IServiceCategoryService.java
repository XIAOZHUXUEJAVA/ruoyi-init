package com.ruoyi.pubservice.service;

import java.util.List;
import com.ruoyi.pubservice.domain.ServiceCategory;

/**
 * 服务类别Service接口
 * 
 * @author ruoyi
 * @date 2024-04-25
 */
public interface IServiceCategoryService 
{
    /**
     * 查询服务类别
     * 
     * @param categoryId 服务类别主键
     * @return 服务类别
     */
    public ServiceCategory selectServiceCategoryByCategoryId(Long categoryId);

    /**
     * 查询服务类别列表
     * 
     * @param serviceCategory 服务类别
     * @return 服务类别集合
     */
    public List<ServiceCategory> selectServiceCategoryList(ServiceCategory serviceCategory);

    /**
     * 新增服务类别
     * 
     * @param serviceCategory 服务类别
     * @return 结果
     */
    public int insertServiceCategory(ServiceCategory serviceCategory);

    /**
     * 修改服务类别
     * 
     * @param serviceCategory 服务类别
     * @return 结果
     */
    public int updateServiceCategory(ServiceCategory serviceCategory);

    /**
     * 批量删除服务类别
     * 
     * @param categoryIds 需要删除的服务类别主键集合
     * @return 结果
     */
    public int deleteServiceCategoryByCategoryIds(Long[] categoryIds);

    /**
     * 删除服务类别信息
     * 
     * @param categoryId 服务类别主键
     * @return 结果
     */
    public int deleteServiceCategoryByCategoryId(Long categoryId);
}
