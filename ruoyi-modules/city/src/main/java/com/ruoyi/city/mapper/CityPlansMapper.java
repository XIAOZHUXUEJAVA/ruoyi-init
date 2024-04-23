package com.ruoyi.city.mapper;

import java.util.List;
import com.ruoyi.city.domain.CityPlans;

/**
 * 城市规划Mapper接口
 * 
 * @author ruoyi
 * @date 2024-04-23
 */
public interface CityPlansMapper 
{
    /**
     * 查询城市规划
     * 
     * @param planId 城市规划主键
     * @return 城市规划
     */
    public CityPlans selectCityPlansByPlanId(Long planId);

    /**
     * 查询城市规划列表
     * 
     * @param cityPlans 城市规划
     * @return 城市规划集合
     */
    public List<CityPlans> selectCityPlansList(CityPlans cityPlans);

    /**
     * 新增城市规划
     * 
     * @param cityPlans 城市规划
     * @return 结果
     */
    public int insertCityPlans(CityPlans cityPlans);

    /**
     * 修改城市规划
     * 
     * @param cityPlans 城市规划
     * @return 结果
     */
    public int updateCityPlans(CityPlans cityPlans);

    /**
     * 删除城市规划
     * 
     * @param planId 城市规划主键
     * @return 结果
     */
    public int deleteCityPlansByPlanId(Long planId);

    /**
     * 批量删除城市规划
     * 
     * @param planIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCityPlansByPlanIds(Long[] planIds);
}
