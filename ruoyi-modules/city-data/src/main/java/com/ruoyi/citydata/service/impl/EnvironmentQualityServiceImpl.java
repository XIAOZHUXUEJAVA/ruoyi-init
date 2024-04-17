package com.ruoyi.citydata.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.citydata.mapper.EnvironmentQualityMapper;
import com.ruoyi.citydata.domain.EnvironmentQuality;
import com.ruoyi.citydata.service.IEnvironmentQualityService;

/**
 * 城市环境质量Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-17
 */
@Service
public class EnvironmentQualityServiceImpl implements IEnvironmentQualityService 
{
    @Autowired
    private EnvironmentQualityMapper environmentQualityMapper;

    /**
     * 查询城市环境质量
     * 
     * @param envId 城市环境质量主键
     * @return 城市环境质量
     */
    @Override
    public EnvironmentQuality selectEnvironmentQualityByEnvId(Long envId)
    {
        return environmentQualityMapper.selectEnvironmentQualityByEnvId(envId);
    }

    /**
     * 查询城市环境质量列表
     * 
     * @param environmentQuality 城市环境质量
     * @return 城市环境质量
     */
    @Override
    public List<EnvironmentQuality> selectEnvironmentQualityList(EnvironmentQuality environmentQuality)
    {
        return environmentQualityMapper.selectEnvironmentQualityList(environmentQuality);
    }

    /**
     * 新增城市环境质量
     * 
     * @param environmentQuality 城市环境质量
     * @return 结果
     */
    @Override
    public int insertEnvironmentQuality(EnvironmentQuality environmentQuality)
    {
        return environmentQualityMapper.insertEnvironmentQuality(environmentQuality);
    }

    /**
     * 修改城市环境质量
     * 
     * @param environmentQuality 城市环境质量
     * @return 结果
     */
    @Override
    public int updateEnvironmentQuality(EnvironmentQuality environmentQuality)
    {
        return environmentQualityMapper.updateEnvironmentQuality(environmentQuality);
    }

    /**
     * 批量删除城市环境质量
     * 
     * @param envIds 需要删除的城市环境质量主键
     * @return 结果
     */
    @Override
    public int deleteEnvironmentQualityByEnvIds(Long[] envIds)
    {
        return environmentQualityMapper.deleteEnvironmentQualityByEnvIds(envIds);
    }

    /**
     * 删除城市环境质量信息
     * 
     * @param envId 城市环境质量主键
     * @return 结果
     */
    @Override
    public int deleteEnvironmentQualityByEnvId(Long envId)
    {
        return environmentQualityMapper.deleteEnvironmentQualityByEnvId(envId);
    }
}
