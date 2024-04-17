package com.ruoyi.citydata.controller;

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
import com.ruoyi.citydata.domain.EnvironmentQuality;
import com.ruoyi.citydata.service.IEnvironmentQualityService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 城市环境质量Controller
 * 
 * @author ruoyi
 * @date 2024-04-17
 */
@RestController
@RequestMapping("/quality")
public class EnvironmentQualityController extends BaseController
{
    @Autowired
    private IEnvironmentQualityService environmentQualityService;

    /**
     * 查询城市环境质量列表
     */
    @RequiresPermissions("city-data:quality:list")
    @GetMapping("/list")
    public TableDataInfo list(EnvironmentQuality environmentQuality)
    {
        startPage();
        List<EnvironmentQuality> list = environmentQualityService.selectEnvironmentQualityList(environmentQuality);
        return getDataTable(list);
    }

    /**
     * 导出城市环境质量列表
     */
    @RequiresPermissions("city-data:quality:export")
    @Log(title = "城市环境质量", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, EnvironmentQuality environmentQuality)
    {
        List<EnvironmentQuality> list = environmentQualityService.selectEnvironmentQualityList(environmentQuality);
        ExcelUtil<EnvironmentQuality> util = new ExcelUtil<EnvironmentQuality>(EnvironmentQuality.class);
        util.exportExcel(response, list, "城市环境质量数据");
    }

    /**
     * 获取城市环境质量详细信息
     */
    @RequiresPermissions("city-data:quality:query")
    @GetMapping(value = "/{envId}")
    public AjaxResult getInfo(@PathVariable("envId") Long envId)
    {
        return success(environmentQualityService.selectEnvironmentQualityByEnvId(envId));
    }

    /**
     * 新增城市环境质量
     */
    @RequiresPermissions("city-data:quality:add")
    @Log(title = "城市环境质量", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody EnvironmentQuality environmentQuality)
    {
        return toAjax(environmentQualityService.insertEnvironmentQuality(environmentQuality));
    }

    /**
     * 修改城市环境质量
     */
    @RequiresPermissions("city-data:quality:edit")
    @Log(title = "城市环境质量", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody EnvironmentQuality environmentQuality)
    {
        return toAjax(environmentQualityService.updateEnvironmentQuality(environmentQuality));
    }

    /**
     * 删除城市环境质量
     */
    @RequiresPermissions("city-data:quality:remove")
    @Log(title = "城市环境质量", businessType = BusinessType.DELETE)
	@DeleteMapping("/{envIds}")
    public AjaxResult remove(@PathVariable Long[] envIds)
    {
        return toAjax(environmentQualityService.deleteEnvironmentQualityByEnvIds(envIds));
    }
}
