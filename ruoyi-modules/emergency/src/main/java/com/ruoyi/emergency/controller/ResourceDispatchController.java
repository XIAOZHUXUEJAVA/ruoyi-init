package com.ruoyi.emergency.controller;

import java.util.List;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.log.annotation.Log;
import com.ruoyi.common.log.enums.BusinessType;
import com.ruoyi.common.security.annotation.RequiresPermissions;
import com.ruoyi.emergency.domain.ResourceDispatch;
import com.ruoyi.emergency.service.IResourceDispatchService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 资源调度Controller
 * 
 * @author ruoyi
 * @date 2024-04-28
 */
@RestController
@RequestMapping("/dispatch")
public class ResourceDispatchController extends BaseController
{
    @Autowired
    private IResourceDispatchService resourceDispatchService;




    /**
     * 查询资源调度列表
     */
    @RequiresPermissions("emergency:dispatch:list")
    @GetMapping("/list")
    public TableDataInfo list(ResourceDispatch resourceDispatch)
    {
        startPage();
        List<ResourceDispatch> list = resourceDispatchService.selectResourceDispatchList(resourceDispatch);
        return getDataTable(list);
    }

    /**
     * 导出资源调度列表
     */
    @RequiresPermissions("emergency:dispatch:export")
    @Log(title = "资源调度", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ResourceDispatch resourceDispatch)
    {
        List<ResourceDispatch> list = resourceDispatchService.selectResourceDispatchList(resourceDispatch);
        ExcelUtil<ResourceDispatch> util = new ExcelUtil<ResourceDispatch>(ResourceDispatch.class);
        util.exportExcel(response, list, "资源调度数据");
    }

    /**
     * 获取资源调度详细信息
     */
    @RequiresPermissions("emergency:dispatch:query")
    @GetMapping(value = "/{dispatchId}")
    public AjaxResult getInfo(@PathVariable("dispatchId") Long dispatchId)
    {
        return success(resourceDispatchService.selectResourceDispatchByDispatchId(dispatchId));
    }

    /**
     * 新增资源调度
     */
    @RequiresPermissions("emergency:dispatch:add")
    @Log(title = "资源调度", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ResourceDispatch resourceDispatch)
    {
        return toAjax(resourceDispatchService.insertResourceDispatch(resourceDispatch));
    }

    /**
     * 修改资源调度
     */
    @RequiresPermissions("emergency:dispatch:edit")
    @Log(title = "资源调度", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ResourceDispatch resourceDispatch)
    {
        return toAjax(resourceDispatchService.updateResourceDispatch(resourceDispatch));
    }

    /**
     * 删除资源调度
     */
    @RequiresPermissions("emergency:dispatch:remove")
    @Log(title = "资源调度", businessType = BusinessType.DELETE)
	@DeleteMapping("/{dispatchIds}")
    public AjaxResult remove(@PathVariable Long[] dispatchIds)
    {
        return toAjax(resourceDispatchService.deleteResourceDispatchByDispatchIds(dispatchIds));
    }
}
