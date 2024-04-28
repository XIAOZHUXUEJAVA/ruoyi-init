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
import com.ruoyi.emergency.domain.CityEmergency;
import com.ruoyi.emergency.service.ICityEmergencyService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 交通事件Controller
 * 
 * @author ruoyi
 * @date 2024-04-28
 */
@RestController
@RequestMapping("/emergency")
public class CityEmergencyController extends BaseController
{
    @Autowired
    private ICityEmergencyService cityEmergencyService;

    /**
     * 查询交通事件列表
     */
    @RequiresPermissions("emergency:emergency:list")
    @GetMapping("/list")
    public TableDataInfo list(CityEmergency cityEmergency)
    {
        startPage();
        List<CityEmergency> list = cityEmergencyService.selectCityEmergencyList(cityEmergency);
        return getDataTable(list);
    }

    /**
     * 导出交通事件列表
     */
    @RequiresPermissions("emergency:emergency:export")
    @Log(title = "交通事件", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CityEmergency cityEmergency)
    {
        List<CityEmergency> list = cityEmergencyService.selectCityEmergencyList(cityEmergency);
        ExcelUtil<CityEmergency> util = new ExcelUtil<CityEmergency>(CityEmergency.class);
        util.exportExcel(response, list, "交通事件数据");
    }

    /**
     * 获取交通事件详细信息
     */
    @RequiresPermissions("emergency:emergency:query")
    @GetMapping(value = "/{emergencyId}")
    public AjaxResult getInfo(@PathVariable("emergencyId") Long emergencyId)
    {
        return success(cityEmergencyService.selectCityEmergencyByEmergencyId(emergencyId));
    }

    /**
     * 新增交通事件
     */
    @RequiresPermissions("emergency:emergency:add")
    @Log(title = "交通事件", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CityEmergency cityEmergency)
    {
        return toAjax(cityEmergencyService.insertCityEmergency(cityEmergency));
    }

    /**
     * 修改交通事件
     */
    @RequiresPermissions("emergency:emergency:edit")
    @Log(title = "交通事件", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CityEmergency cityEmergency)
    {
        return toAjax(cityEmergencyService.updateCityEmergency(cityEmergency));
    }

    /**
     * 删除交通事件
     */
    @RequiresPermissions("emergency:emergency:remove")
    @Log(title = "交通事件", businessType = BusinessType.DELETE)
	@DeleteMapping("/{emergencyIds}")
    public AjaxResult remove(@PathVariable Long[] emergencyIds)
    {
        return toAjax(cityEmergencyService.deleteCityEmergencyByEmergencyIds(emergencyIds));
    }
}
