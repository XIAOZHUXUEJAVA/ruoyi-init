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
import com.ruoyi.city.domain.CityFacilities;
import com.ruoyi.city.service.ICityFacilitiesService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 城市设施管理Controller
 * 
 * @author ruoyi
 * @date 2024-04-16
 */
@RestController
@RequestMapping("/facilities")
public class CityFacilitiesController extends BaseController
{
    @Autowired
    private ICityFacilitiesService cityFacilitiesService;

    /**
     * 查询城市设施管理列表
     */
    @RequiresPermissions("city:facilities:list")
    @GetMapping("/list")
    public TableDataInfo list(CityFacilities cityFacilities)
    {
        startPage();
        List<CityFacilities> list = cityFacilitiesService.selectCityFacilitiesList(cityFacilities);
        return getDataTable(list);
    }

    /**
     * 导出城市设施管理列表
     */
    @RequiresPermissions("city:facilities:export")
    @Log(title = "城市设施管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CityFacilities cityFacilities)
    {
        List<CityFacilities> list = cityFacilitiesService.selectCityFacilitiesList(cityFacilities);
        ExcelUtil<CityFacilities> util = new ExcelUtil<CityFacilities>(CityFacilities.class);
        util.exportExcel(response, list, "城市设施管理数据");
    }

    /**
     * 获取城市设施管理详细信息
     */
    @RequiresPermissions("city:facilities:query")
    @GetMapping(value = "/{facilityId}")
    public AjaxResult getInfo(@PathVariable("facilityId") Long facilityId)
    {
        return success(cityFacilitiesService.selectCityFacilitiesByFacilityId(facilityId));
    }

    /**
     * 新增城市设施管理
     */
    @RequiresPermissions("city:facilities:add")
    @Log(title = "城市设施管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CityFacilities cityFacilities)
    {
        return toAjax(cityFacilitiesService.insertCityFacilities(cityFacilities));
    }

    /**
     * 修改城市设施管理
     */
    @RequiresPermissions("city:facilities:edit")
    @Log(title = "城市设施管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CityFacilities cityFacilities)
    {
        return toAjax(cityFacilitiesService.updateCityFacilities(cityFacilities));
    }

    /**
     * 删除城市设施管理
     */
    @RequiresPermissions("city:facilities:remove")
    @Log(title = "城市设施管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{facilityIds}")
    public AjaxResult remove(@PathVariable Long[] facilityIds)
    {
        return toAjax(cityFacilitiesService.deleteCityFacilitiesByFacilityIds(facilityIds));
    }
}
