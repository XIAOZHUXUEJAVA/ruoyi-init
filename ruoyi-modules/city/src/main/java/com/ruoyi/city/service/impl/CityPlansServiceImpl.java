package com.ruoyi.city.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.city.mapper.CityPlansMapper;
import com.ruoyi.city.domain.CityPlans;
import com.ruoyi.city.service.ICityPlansService;

/**
 * 城市规划Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-23
 */
@Service
public class CityPlansServiceImpl implements ICityPlansService 
{
    @Autowired
    private CityPlansMapper cityPlansMapper;

    /**
     * 查询城市规划
     * 
     * @param planId 城市规划主键
     * @return 城市规划
     */
    @Override
    public CityPlans selectCityPlansByPlanId(Long planId)
    {
        return cityPlansMapper.selectCityPlansByPlanId(planId);
    }

    /**
     * 查询城市规划列表
     * 
     * @param cityPlans 城市规划
     * @return 城市规划
     */
    @Override
    public List<CityPlans> selectCityPlansList(CityPlans cityPlans)
    {
        return cityPlansMapper.selectCityPlansList(cityPlans);
    }

    /**
     * 新增城市规划
     * 
     * @param cityPlans 城市规划
     * @return 结果
     */
    @Override
    public int insertCityPlans(CityPlans cityPlans)
    {
        return cityPlansMapper.insertCityPlans(cityPlans);
    }

    /**
     * 修改城市规划
     * 
     * @param cityPlans 城市规划
     * @return 结果
     */
    @Override
    public int updateCityPlans(CityPlans cityPlans)
    {
        return cityPlansMapper.updateCityPlans(cityPlans);
    }

    /**
     * 批量删除城市规划
     * 
     * @param planIds 需要删除的城市规划主键
     * @return 结果
     */
    @Override
    public int deleteCityPlansByPlanIds(Long[] planIds)
    {
        return cityPlansMapper.deleteCityPlansByPlanIds(planIds);
    }

    /**
     * 删除城市规划信息
     * 
     * @param planId 城市规划主键
     * @return 结果
     */
    @Override
    public int deleteCityPlansByPlanId(Long planId)
    {
        return cityPlansMapper.deleteCityPlansByPlanId(planId);
    }
}
