package com.ruoyi.pubservice.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.pubservice.mapper.ServiceQualityMapper;
import com.ruoyi.pubservice.domain.ServiceQuality;
import com.ruoyi.pubservice.service.IServiceQualityService;

/**
 * 服务质量Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-25
 */
@Service
public class ServiceQualityServiceImpl implements IServiceQualityService 
{
    @Autowired
    private ServiceQualityMapper serviceQualityMapper;

    /**
     * 查询服务质量
     * 
     * @param serviceId 服务质量主键
     * @return 服务质量
     */
    @Override
    public ServiceQuality selectServiceQualityByServiceId(Long serviceId)
    {
        return serviceQualityMapper.selectServiceQualityByServiceId(serviceId);
    }

    /**
     * 查询服务质量列表
     * 
     * @param serviceQuality 服务质量
     * @return 服务质量
     */
    @Override
    public List<ServiceQuality> selectServiceQualityList(ServiceQuality serviceQuality)
    {
        return serviceQualityMapper.selectServiceQualityList(serviceQuality);
    }

    /**
     * 新增服务质量
     * 
     * @param serviceQuality 服务质量
     * @return 结果
     */
    @Override
    public int insertServiceQuality(ServiceQuality serviceQuality)
    {
        return serviceQualityMapper.insertServiceQuality(serviceQuality);
    }

    /**
     * 修改服务质量
     * 
     * @param serviceQuality 服务质量
     * @return 结果
     */
    @Override
    public int updateServiceQuality(ServiceQuality serviceQuality)
    {
        return serviceQualityMapper.updateServiceQuality(serviceQuality);
    }

    /**
     * 批量删除服务质量
     * 
     * @param serviceIds 需要删除的服务质量主键
     * @return 结果
     */
    @Override
    public int deleteServiceQualityByServiceIds(Long[] serviceIds)
    {
        return serviceQualityMapper.deleteServiceQualityByServiceIds(serviceIds);
    }

    /**
     * 删除服务质量信息
     * 
     * @param serviceId 服务质量主键
     * @return 结果
     */
    @Override
    public int deleteServiceQualityByServiceId(Long serviceId)
    {
        return serviceQualityMapper.deleteServiceQualityByServiceId(serviceId);
    }
}
