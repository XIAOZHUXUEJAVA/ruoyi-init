package com.ruoyi.city.controller;

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
import com.ruoyi.city.domain.CityPlans;
import com.ruoyi.city.service.ICityPlansService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 城市规划Controller
 * 
 * @author ruoyi
 * @date 2024-04-23
 */
@RestController
@RequestMapping("/plans")
public class CityPlansController extends BaseController
{
    @Autowired
    private ICityPlansService cityPlansService;

    /**
     * 查询城市规划列表
     */
    @RequiresPermissions("city:plans:list")
    @GetMapping("/list")
    public TableDataInfo list(CityPlans cityPlans)
    {
        startPage();
        List<CityPlans> list = cityPlansService.selectCityPlansList(cityPlans);
        return getDataTable(list);
    }

    /**
     * 导出城市规划列表
     */
    @RequiresPermissions("city:plans:export")
    @Log(title = "城市规划", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CityPlans cityPlans)
    {
        List<CityPlans> list = cityPlansService.selectCityPlansList(cityPlans);
        ExcelUtil<CityPlans> util = new ExcelUtil<CityPlans>(CityPlans.class);
        util.exportExcel(response, list, "城市规划数据");
    }

    /**
     * 获取城市规划详细信息
     */
    @RequiresPermissions("city:plans:query")
    @GetMapping(value = "/{planId}")
    public AjaxResult getInfo(@PathVariable("planId") Long planId)
    {
        return success(cityPlansService.selectCityPlansByPlanId(planId));
    }

    /**
     * 新增城市规划
     */
    @RequiresPermissions("city:plans:add")
    @Log(title = "城市规划", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CityPlans cityPlans)
    {
        return toAjax(cityPlansService.insertCityPlans(cityPlans));
    }

    /**
     * 修改城市规划
     */
    @RequiresPermissions("city:plans:edit")
    @Log(title = "城市规划", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CityPlans cityPlans)
    {
        return toAjax(cityPlansService.updateCityPlans(cityPlans));
    }

    /**
     * 删除城市规划
     */
    @RequiresPermissions("city:plans:remove")
    @Log(title = "城市规划", businessType = BusinessType.DELETE)
	@DeleteMapping("/{planIds}")
    public AjaxResult remove(@PathVariable Long[] planIds)
    {
        return toAjax(cityPlansService.deleteCityPlansByPlanIds(planIds));
    }
}
