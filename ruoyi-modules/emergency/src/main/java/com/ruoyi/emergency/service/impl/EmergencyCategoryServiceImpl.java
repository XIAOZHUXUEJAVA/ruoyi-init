package com.ruoyi.emergency.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.emergency.mapper.EmergencyCategoryMapper;
import com.ruoyi.emergency.domain.EmergencyCategory;
import com.ruoyi.emergency.service.IEmergencyCategoryService;

/**
 * 事故类别Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
@Service
public class EmergencyCategoryServiceImpl implements IEmergencyCategoryService 
{
    @Autowired
    private EmergencyCategoryMapper emergencyCategoryMapper;

    /**
     * 查询事故类别
     * 
     * @param categoryId 事故类别主键
     * @return 事故类别
     */
    @Override
    public EmergencyCategory selectEmergencyCategoryByCategoryId(Long categoryId)
    {
        return emergencyCategoryMapper.selectEmergencyCategoryByCategoryId(categoryId);
    }

    /**
     * 查询事故类别列表
     * 
     * @param emergencyCategory 事故类别
     * @return 事故类别
     */
    @Override
    public List<EmergencyCategory> selectEmergencyCategoryList(EmergencyCategory emergencyCategory)
    {
        return emergencyCategoryMapper.selectEmergencyCategoryList(emergencyCategory);
    }

    /**
     * 新增事故类别
     * 
     * @param emergencyCategory 事故类别
     * @return 结果
     */
    @Override
    public int insertEmergencyCategory(EmergencyCategory emergencyCategory)
    {
        return emergencyCategoryMapper.insertEmergencyCategory(emergencyCategory);
    }

    /**
     * 修改事故类别
     * 
     * @param emergencyCategory 事故类别
     * @return 结果
     */
    @Override
    public int updateEmergencyCategory(EmergencyCategory emergencyCategory)
    {
        return emergencyCategoryMapper.updateEmergencyCategory(emergencyCategory);
    }

    /**
     * 批量删除事故类别
     * 
     * @param categoryIds 需要删除的事故类别主键
     * @return 结果
     */
    @Override
    public int deleteEmergencyCategoryByCategoryIds(Long[] categoryIds)
    {
        return emergencyCategoryMapper.deleteEmergencyCategoryByCategoryIds(categoryIds);
    }

    /**
     * 删除事故类别信息
     * 
     * @param categoryId 事故类别主键
     * @return 结果
     */
    @Override
    public int deleteEmergencyCategoryByCategoryId(Long categoryId)
    {
        return emergencyCategoryMapper.deleteEmergencyCategoryByCategoryId(categoryId);
    }
}
