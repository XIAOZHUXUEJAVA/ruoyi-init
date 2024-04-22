package com.ruoyi.traffic.mapper;

import java.util.List;
import com.ruoyi.traffic.domain.CityAccident;

/**
 * 交通事件Mapper接口
 * 
 * @author ruoyi
 * @date 2024-04-22
 */
public interface CityAccidentMapper 
{
    /**
     * 查询交通事件
     * 
     * @param accidentId 交通事件主键
     * @return 交通事件
     */
    public CityAccident selectCityAccidentByAccidentId(Long accidentId);

    /**
     * 查询交通事件列表
     * 
     * @param cityAccident 交通事件
     * @return 交通事件集合
     */
    public List<CityAccident> selectCityAccidentList(CityAccident cityAccident);

    /**
     * 新增交通事件
     * 
     * @param cityAccident 交通事件
     * @return 结果
     */
    public int insertCityAccident(CityAccident cityAccident);

    /**
     * 修改交通事件
     * 
     * @param cityAccident 交通事件
     * @return 结果
     */
    public int updateCityAccident(CityAccident cityAccident);

    /**
     * 删除交通事件
     * 
     * @param accidentId 交通事件主键
     * @return 结果
     */
    public int deleteCityAccidentByAccidentId(Long accidentId);

    /**
     * 批量删除交通事件
     * 
     * @param accidentIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCityAccidentByAccidentIds(Long[] accidentIds);
}
