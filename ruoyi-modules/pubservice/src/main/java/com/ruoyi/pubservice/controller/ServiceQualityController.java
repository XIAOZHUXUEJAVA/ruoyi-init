package com.ruoyi.pubservice.controller;

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
import com.ruoyi.pubservice.domain.ServiceQuality;
import com.ruoyi.pubservice.service.IServiceQualityService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 服务质量Controller
 * 
 * @author ruoyi
 * @date 2024-04-25
 */
@RestController
@RequestMapping("/quality")
public class ServiceQualityController extends BaseController
{
    @Autowired
    private IServiceQualityService serviceQualityService;

    /**
     * 查询服务质量列表
     */
    @RequiresPermissions("pubservice:quality:list")
    @GetMapping("/list")
    public TableDataInfo list(ServiceQuality serviceQuality)
    {
        startPage();
        List<ServiceQuality> list = serviceQualityService.selectServiceQualityList(serviceQuality);
        return getDataTable(list);
    }

    /**
     * 导出服务质量列表
     */
    @RequiresPermissions("pubservice:quality:export")
    @Log(title = "服务质量", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ServiceQuality serviceQuality)
    {
        List<ServiceQuality> list = serviceQualityService.selectServiceQualityList(serviceQuality);
        ExcelUtil<ServiceQuality> util = new ExcelUtil<ServiceQuality>(ServiceQuality.class);
        util.exportExcel(response, list, "服务质量数据");
    }

    /**
     * 获取服务质量详细信息
     */
    @RequiresPermissions("pubservice:quality:query")
    @GetMapping(value = "/{serviceId}")
    public AjaxResult getInfo(@PathVariable("serviceId") Long serviceId)
    {
        return success(serviceQualityService.selectServiceQualityByServiceId(serviceId));
    }

    /**
     * 新增服务质量
     */
    @RequiresPermissions("pubservice:quality:add")
    @Log(title = "服务质量", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ServiceQuality serviceQuality)
    {
        return toAjax(serviceQualityService.insertServiceQuality(serviceQuality));
    }

    /**
     * 修改服务质量
     */
    @RequiresPermissions("pubservice:quality:edit")
    @Log(title = "服务质量", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ServiceQuality serviceQuality)
    {
        return toAjax(serviceQualityService.updateServiceQuality(serviceQuality));
    }

    /**
     * 删除服务质量
     */
    @RequiresPermissions("pubservice:quality:remove")
    @Log(title = "服务质量", businessType = BusinessType.DELETE)
	@DeleteMapping("/{serviceIds}")
    public AjaxResult remove(@PathVariable Long[] serviceIds)
    {
        return toAjax(serviceQualityService.deleteServiceQualityByServiceIds(serviceIds));
    }
}
