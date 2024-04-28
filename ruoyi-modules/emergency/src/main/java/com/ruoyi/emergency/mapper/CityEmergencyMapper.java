package com.ruoyi.emergency.mapper;

import java.util.List;
import com.ruoyi.emergency.domain.CityEmergency;

/**
 * 交通事件Mapper接口
 * 
 * @author ruoyi
 * @date 2024-04-28
 */
public interface CityEmergencyMapper 
{
    /**
     * 查询交通事件
     * 
     * @param emergencyId 交通事件主键
     * @return 交通事件
     */
    public CityEmergency selectCityEmergencyByEmergencyId(Long emergencyId);

    /**
     * 查询交通事件列表
     * 
     * @param cityEmergency 交通事件
     * @return 交通事件集合
     */
    public List<CityEmergency> selectCityEmergencyList(CityEmergency cityEmergency);

    /**
     * 新增交通事件
     * 
     * @param cityEmergency 交通事件
     * @return 结果
     */
    public int insertCityEmergency(CityEmergency cityEmergency);

    /**
     * 修改交通事件
     * 
     * @param cityEmergency 交通事件
     * @return 结果
     */
    public int updateCityEmergency(CityEmergency cityEmergency);

    /**
     * 删除交通事件
     * 
     * @param emergencyId 交通事件主键
     * @return 结果
     */
    public int deleteCityEmergencyByEmergencyId(Long emergencyId);

    /**
     * 批量删除交通事件
     * 
     * @param emergencyIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCityEmergencyByEmergencyIds(Long[] emergencyIds);
}
