package com.ruoyi.pubservice.mapper;

import java.util.List;
import com.ruoyi.pubservice.domain.ServiceQuality;

/**
 * 服务质量Mapper接口
 * 
 * @author ruoyi
 * @date 2024-04-25
 */
public interface ServiceQualityMapper 
{
    /**
     * 查询服务质量
     * 
     * @param serviceId 服务质量主键
     * @return 服务质量
     */
    public ServiceQuality selectServiceQualityByServiceId(Long serviceId);

    /**
     * 查询服务质量列表
     * 
     * @param serviceQuality 服务质量
     * @return 服务质量集合
     */
    public List<ServiceQuality> selectServiceQualityList(ServiceQuality serviceQuality);

    /**
     * 新增服务质量
     * 
     * @param serviceQuality 服务质量
     * @return 结果
     */
    public int insertServiceQuality(ServiceQuality serviceQuality);

    /**
     * 修改服务质量
     * 
     * @param serviceQuality 服务质量
     * @return 结果
     */
    public int updateServiceQuality(ServiceQuality serviceQuality);

    /**
     * 删除服务质量
     * 
     * @param serviceId 服务质量主键
     * @return 结果
     */
    public int deleteServiceQualityByServiceId(Long serviceId);

    /**
     * 批量删除服务质量
     * 
     * @param serviceIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteServiceQualityByServiceIds(Long[] serviceIds);
}
