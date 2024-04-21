package com.ruoyi.traffic.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.traffic.mapper.CityTrafficMapper;
import com.ruoyi.traffic.domain.CityTraffic;
import com.ruoyi.traffic.service.ICityTrafficService;

/**
 * 路况检测Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-19
 */
@Service
public class CityTrafficServiceImpl implements ICityTrafficService 
{
    @Autowired
    private CityTrafficMapper cityTrafficMapper;

    /**
     * 查询路况检测
     * 
     * @param cityId 路况检测主键
     * @return 路况检测
     */
    @Override
    public CityTraffic selectCityTrafficByCityId(Long cityId)
    {
        return cityTrafficMapper.selectCityTrafficByCityId(cityId);
    }

    /**
     * 查询路况检测列表
     * 
     * @param cityTraffic 路况检测
     * @return 路况检测
     */
    @Override
    public List<CityTraffic> selectCityTrafficList(CityTraffic cityTraffic)
    {
        return cityTrafficMapper.selectCityTrafficList(cityTraffic);
    }

    /**
     * 新增路况检测
     * 
     * @param cityTraffic 路况检测
     * @return 结果
     */
    @Override
    public int insertCityTraffic(CityTraffic cityTraffic)
    {
        return cityTrafficMapper.insertCityTraffic(cityTraffic);
    }

    /**
     * 修改路况检测
     * 
     * @param cityTraffic 路况检测
     * @return 结果
     */
    @Override
    public int updateCityTraffic(CityTraffic cityTraffic)
    {
        return cityTrafficMapper.updateCityTraffic(cityTraffic);
    }

    /**
     * 批量删除路况检测
     * 
     * @param cityIds 需要删除的路况检测主键
     * @return 结果
     */
    @Override
    public int deleteCityTrafficByCityIds(Long[] cityIds)
    {
        return cityTrafficMapper.deleteCityTrafficByCityIds(cityIds);
    }

    /**
     * 删除路况检测信息
     * 
     * @param cityId 路况检测主键
     * @return 结果
     */
    @Override
    public int deleteCityTrafficByCityId(Long cityId)
    {
        return cityTrafficMapper.deleteCityTrafficByCityId(cityId);
    }
}
