package com.ruoyi.traffic.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.traffic.mapper.CityAccidentMapper;
import com.ruoyi.traffic.domain.CityAccident;
import com.ruoyi.traffic.service.ICityAccidentService;

/**
 * 交通事件Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-22
 */
@Service
public class CityAccidentServiceImpl implements ICityAccidentService 
{
    @Autowired
    private CityAccidentMapper cityAccidentMapper;

    /**
     * 查询交通事件
     * 
     * @param accidentId 交通事件主键
     * @return 交通事件
     */
    @Override
    public CityAccident selectCityAccidentByAccidentId(Long accidentId)
    {
        return cityAccidentMapper.selectCityAccidentByAccidentId(accidentId);
    }

    /**
     * 查询交通事件列表
     * 
     * @param cityAccident 交通事件
     * @return 交通事件
     */
    @Override
    public List<CityAccident> selectCityAccidentList(CityAccident cityAccident)
    {
        return cityAccidentMapper.selectCityAccidentList(cityAccident);
    }

    /**
     * 新增交通事件
     * 
     * @param cityAccident 交通事件
     * @return 结果
     */
    @Override
    public int insertCityAccident(CityAccident cityAccident)
    {
        return cityAccidentMapper.insertCityAccident(cityAccident);
    }

    /**
     * 修改交通事件
     * 
     * @param cityAccident 交通事件
     * @return 结果
     */
    @Override
    public int updateCityAccident(CityAccident cityAccident)
    {
        return cityAccidentMapper.updateCityAccident(cityAccident);
    }

    /**
     * 批量删除交通事件
     * 
     * @param accidentIds 需要删除的交通事件主键
     * @return 结果
     */
    @Override
    public int deleteCityAccidentByAccidentIds(Long[] accidentIds)
    {
        return cityAccidentMapper.deleteCityAccidentByAccidentIds(accidentIds);
    }

    /**
     * 删除交通事件信息
     * 
     * @param accidentId 交通事件主键
     * @return 结果
     */
    @Override
    public int deleteCityAccidentByAccidentId(Long accidentId)
    {
        return cityAccidentMapper.deleteCityAccidentByAccidentId(accidentId);
    }
}
