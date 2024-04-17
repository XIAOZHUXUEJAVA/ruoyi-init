package com.ruoyi.citydata.mapper;

import java.util.List;
import com.ruoyi.citydata.domain.EnvironmentQuality;

/**
 * 城市环境质量Mapper接口
 * 
 * @author ruoyi
 * @date 2024-04-17
 */
public interface EnvironmentQualityMapper 
{
    /**
     * 查询城市环境质量
     * 
     * @param envId 城市环境质量主键
     * @return 城市环境质量
     */
    public EnvironmentQuality selectEnvironmentQualityByEnvId(Long envId);

    /**
     * 查询城市环境质量列表
     * 
     * @param environmentQuality 城市环境质量
     * @return 城市环境质量集合
     */
    public List<EnvironmentQuality> selectEnvironmentQualityList(EnvironmentQuality environmentQuality);

    /**
     * 新增城市环境质量
     * 
     * @param environmentQuality 城市环境质量
     * @return 结果
     */
    public int insertEnvironmentQuality(EnvironmentQuality environmentQuality);

    /**
     * 修改城市环境质量
     * 
     * @param environmentQuality 城市环境质量
     * @return 结果
     */
    public int updateEnvironmentQuality(EnvironmentQuality environmentQuality);

    /**
     * 删除城市环境质量
     * 
     * @param envId 城市环境质量主键
     * @return 结果
     */
    public int deleteEnvironmentQualityByEnvId(Long envId);

    /**
     * 批量删除城市环境质量
     * 
     * @param envIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteEnvironmentQualityByEnvIds(Long[] envIds);
}
