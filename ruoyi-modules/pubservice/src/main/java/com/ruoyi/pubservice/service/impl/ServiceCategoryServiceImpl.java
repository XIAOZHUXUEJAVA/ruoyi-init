package com.ruoyi.pubservice.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pubservice.mapper.ServiceCategoryMapper;
import com.ruoyi.pubservice.domain.ServiceCategory;
import com.ruoyi.pubservice.service.IServiceCategoryService;

/**
 * 服务类别Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-25
 */
@Service
public class ServiceCategoryServiceImpl implements IServiceCategoryService 
{
    @Autowired
    private ServiceCategoryMapper serviceCategoryMapper;

    /**
     * 查询服务类别
     * 
     * @param categoryId 服务类别主键
     * @return 服务类别
     */
    @Override
    public ServiceCategory selectServiceCategoryByCategoryId(Long categoryId)
    {
        return serviceCategoryMapper.selectServiceCategoryByCategoryId(categoryId);
    }

    /**
     * 查询服务类别列表
     * 
     * @param serviceCategory 服务类别
     * @return 服务类别
     */
    @Override
    public List<ServiceCategory> selectServiceCategoryList(ServiceCategory serviceCategory)
    {
        return serviceCategoryMapper.selectServiceCategoryList(serviceCategory);
    }

    /**
     * 新增服务类别
     * 
     * @param serviceCategory 服务类别
     * @return 结果
     */
    @Override
    public int insertServiceCategory(ServiceCategory serviceCategory)
    {
        return serviceCategoryMapper.insertServiceCategory(serviceCategory);
    }

    /**
     * 修改服务类别
     * 
     * @param serviceCategory 服务类别
     * @return 结果
     */
    @Override
    public int updateServiceCategory(ServiceCategory serviceCategory)
    {
        return serviceCategoryMapper.updateServiceCategory(serviceCategory);
    }

    /**
     * 批量删除服务类别
     * 
     * @param categoryIds 需要删除的服务类别主键
     * @return 结果
     */
    @Override
    public int deleteServiceCategoryByCategoryIds(Long[] categoryIds)
    {
        return serviceCategoryMapper.deleteServiceCategoryByCategoryIds(categoryIds);
    }

    /**
     * 删除服务类别信息
     * 
     * @param categoryId 服务类别主键
     * @return 结果
     */
    @Override
    public int deleteServiceCategoryByCategoryId(Long categoryId)
    {
        return serviceCategoryMapper.deleteServiceCategoryByCategoryId(categoryId);
    }
}
