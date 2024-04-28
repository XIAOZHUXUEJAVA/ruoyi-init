package com.ruoyi.emergency.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.emergency.mapper.CityEmergencyMapper;
import com.ruoyi.emergency.domain.CityEmergency;
import com.ruoyi.emergency.service.ICityEmergencyService;

/**
 * 交通事件Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-28
 */
@Service
public class CityEmergencyServiceImpl implements ICityEmergencyService 
{
    @Autowired
    private CityEmergencyMapper cityEmergencyMapper;

    /**
     * 查询交通事件
     * 
     * @param emergencyId 交通事件主键
     * @return 交通事件
     */
    @Override
    public CityEmergency selectCityEmergencyByEmergencyId(Long emergencyId)
    {
        return cityEmergencyMapper.selectCityEmergencyByEmergencyId(emergencyId);
    }

    /**
     * 查询交通事件列表
     * 
     * @param cityEmergency 交通事件
     * @return 交通事件
     */
    @Override
    public List<CityEmergency> selectCityEmergencyList(CityEmergency cityEmergency)
    {
        return cityEmergencyMapper.selectCityEmergencyList(cityEmergency);
    }

    /**
     * 新增交通事件
     * 
     * @param cityEmergency 交通事件
     * @return 结果
     */
    @Override
    public int insertCityEmergency(CityEmergency cityEmergency)
    {
        return cityEmergencyMapper.insertCityEmergency(cityEmergency);
    }

    /**
     * 修改交通事件
     * 
     * @param cityEmergency 交通事件
     * @return 结果
     */
    @Override
    public int updateCityEmergency(CityEmergency cityEmergency)
    {
        return cityEmergencyMapper.updateCityEmergency(cityEmergency);
    }

    /**
     * 批量删除交通事件
     * 
     * @param emergencyIds 需要删除的交通事件主键
     * @return 结果
     */
    @Override
    public int deleteCityEmergencyByEmergencyIds(Long[] emergencyIds)
    {
        return cityEmergencyMapper.deleteCityEmergencyByEmergencyIds(emergencyIds);
    }

    /**
     * 删除交通事件信息
     * 
     * @param emergencyId 交通事件主键
     * @return 结果
     */
    @Override
    public int deleteCityEmergencyByEmergencyId(Long emergencyId)
    {
        return cityEmergencyMapper.deleteCityEmergencyByEmergencyId(emergencyId);
    }
}
