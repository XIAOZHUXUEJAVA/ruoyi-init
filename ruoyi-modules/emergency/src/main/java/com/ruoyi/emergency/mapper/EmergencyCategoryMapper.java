package com.ruoyi.emergency.mapper;

import java.util.List;
import com.ruoyi.emergency.domain.EmergencyCategory;

/**
 * 事故类别Mapper接口
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
public interface EmergencyCategoryMapper 
{
    /**
     * 查询事故类别
     * 
     * @param categoryId 事故类别主键
     * @return 事故类别
     */
    public EmergencyCategory selectEmergencyCategoryByCategoryId(Long categoryId);

    /**
     * 查询事故类别列表
     * 
     * @param emergencyCategory 事故类别
     * @return 事故类别集合
     */
    public List<EmergencyCategory> selectEmergencyCategoryList(EmergencyCategory emergencyCategory);

    /**
     * 新增事故类别
     * 
     * @param emergencyCategory 事故类别
     * @return 结果
     */
    public int insertEmergencyCategory(EmergencyCategory emergencyCategory);

    /**
     * 修改事故类别
     * 
     * @param emergencyCategory 事故类别
     * @return 结果
     */
    public int updateEmergencyCategory(EmergencyCategory emergencyCategory);

    /**
     * 删除事故类别
     * 
     * @param categoryId 事故类别主键
     * @return 结果
     */
    public int deleteEmergencyCategoryByCategoryId(Long categoryId);

    /**
     * 批量删除事故类别
     * 
     * @param categoryIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteEmergencyCategoryByCategoryIds(Long[] categoryIds);
}
