package com.ruoyi.emergency.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.emergency.mapper.ResourceDispatchMapper;
import com.ruoyi.emergency.domain.ResourceDispatch;
import com.ruoyi.emergency.service.IResourceDispatchService;

/**
 * 资源调度Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-04-28
 */
@Service
public class ResourceDispatchServiceImpl implements IResourceDispatchService 
{
    @Autowired
    private ResourceDispatchMapper resourceDispatchMapper;

    /**
     * 查询资源调度
     * 
     * @param dispatchId 资源调度主键
     * @return 资源调度
     */
    @Override
    public ResourceDispatch selectResourceDispatchByDispatchId(Long dispatchId)
    {
        return resourceDispatchMapper.selectResourceDispatchByDispatchId(dispatchId);
    }

    /**
     * 查询资源调度列表
     * 
     * @param resourceDispatch 资源调度
     * @return 资源调度
     */
    @Override
    public List<ResourceDispatch> selectResourceDispatchList(ResourceDispatch resourceDispatch)
    {
        return resourceDispatchMapper.selectResourceDispatchList(resourceDispatch);
    }

    /**
     * 新增资源调度
     * 
     * @param resourceDispatch 资源调度
     * @return 结果
     */
    @Override
    public int insertResourceDispatch(ResourceDispatch resourceDispatch)
    {
        return resourceDispatchMapper.insertResourceDispatch(resourceDispatch);
    }

    /**
     * 修改资源调度
     * 
     * @param resourceDispatch 资源调度
     * @return 结果
     */
    @Override
    public int updateResourceDispatch(ResourceDispatch resourceDispatch)
    {
        return resourceDispatchMapper.updateResourceDispatch(resourceDispatch);
    }

    /**
     * 批量删除资源调度
     * 
     * @param dispatchIds 需要删除的资源调度主键
     * @return 结果
     */
    @Override
    public int deleteResourceDispatchByDispatchIds(Long[] dispatchIds)
    {
        return resourceDispatchMapper.deleteResourceDispatchByDispatchIds(dispatchIds);
    }

    /**
     * 删除资源调度信息
     * 
     * @param dispatchId 资源调度主键
     * @return 结果
     */
    @Override
    public int deleteResourceDispatchByDispatchId(Long dispatchId)
    {
        return resourceDispatchMapper.deleteResourceDispatchByDispatchId(dispatchId);
    }
}
