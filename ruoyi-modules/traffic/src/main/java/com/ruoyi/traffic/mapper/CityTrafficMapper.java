package com.ruoyi.traffic.mapper;

import java.util.List;
import com.ruoyi.traffic.domain.CityTraffic;

/**
 * 路况检测Mapper接口
 * 
 * @author ruoyi
 * @date 2024-04-19
 */
public interface CityTrafficMapper 
{
    /**
     * 查询路况检测
     * 
     * @param cityId 路况检测主键
     * @return 路况检测
     */
    public CityTraffic selectCityTrafficByCityId(Long cityId);

    /**
     * 查询路况检测列表
     * 
     * @param cityTraffic 路况检测
     * @return 路况检测集合
     */
    public List<CityTraffic> selectCityTrafficList(CityTraffic cityTraffic);

    /**
     * 新增路况检测
     * 
     * @param cityTraffic 路况检测
     * @return 结果
     */
    public int insertCityTraffic(CityTraffic cityTraffic);

    /**
     * 修改路况检测
     * 
     * @param cityTraffic 路况检测
     * @return 结果
     */
    public int updateCityTraffic(CityTraffic cityTraffic);

    /**
     * 删除路况检测
     * 
     * @param cityId 路况检测主键
     * @return 结果
     */
    public int deleteCityTrafficByCityId(Long cityId);

    /**
     * 批量删除路况检测
     * 
     * @param cityIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCityTrafficByCityIds(Long[] cityIds);
}
