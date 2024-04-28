package com.ruoyi.emergency.mapper;

import java.util.List;
import com.ruoyi.emergency.domain.ResourceDispatch;

/**
 * 资源调度Mapper接口
 * 
 * @author ruoyi
 * @date 2024-04-28
 */
public interface ResourceDispatchMapper 
{
    /**
     * 查询资源调度
     * 
     * @param dispatchId 资源调度主键
     * @return 资源调度
     */
    public ResourceDispatch selectResourceDispatchByDispatchId(Long dispatchId);

    /**
     * 查询资源调度列表
     * 
     * @param resourceDispatch 资源调度
     * @return 资源调度集合
     */
    public List<ResourceDispatch> selectResourceDispatchList(ResourceDispatch resourceDispatch);

    /**
     * 新增资源调度
     * 
     * @param resourceDispatch 资源调度
     * @return 结果
     */
    public int insertResourceDispatch(ResourceDispatch resourceDispatch);

    /**
     * 修改资源调度
     * 
     * @param resourceDispatch 资源调度
     * @return 结果
     */
    public int updateResourceDispatch(ResourceDispatch resourceDispatch);

    /**
     * 删除资源调度
     * 
     * @param dispatchId 资源调度主键
     * @return 结果
     */
    public int deleteResourceDispatchByDispatchId(Long dispatchId);

    /**
     * 批量删除资源调度
     * 
     * @param dispatchIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteResourceDispatchByDispatchIds(Long[] dispatchIds);
}
