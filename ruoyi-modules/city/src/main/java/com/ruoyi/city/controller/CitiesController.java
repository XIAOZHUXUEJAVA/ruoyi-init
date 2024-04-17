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
import com.ruoyi.city.domain.Cities;
import com.ruoyi.city.service.ICitiesService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 城市基础信息Controller
 * 
 * @author ruoyi
 * @date 2024-04-16
 */
@RestController
@RequestMapping("/cities")
public class CitiesController extends BaseController
{
    @Autowired
    private ICitiesService citiesService;

    /**
     * 查询城市基础信息列表
     */
    @RequiresPermissions("city:cities:list")
    @GetMapping("/list")
    public TableDataInfo list(Cities cities)
    {
        startPage();
        List<Cities> list = citiesService.selectCitiesList(cities);
        return getDataTable(list);
    }

    /**
     * 导出城市基础信息列表
     */
    @RequiresPermissions("city:cities:export")
    @Log(title = "城市基础信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Cities cities)
    {
        List<Cities> list = citiesService.selectCitiesList(cities);
        ExcelUtil<Cities> util = new ExcelUtil<Cities>(Cities.class);
        util.exportExcel(response, list, "城市基础信息数据");
    }

    /**
     * 获取城市基础信息详细信息
     */
    @RequiresPermissions("city:cities:query")
    @GetMapping(value = "/{cityId}")
    public AjaxResult getInfo(@PathVariable("cityId") Long cityId)
    {
        return success(citiesService.selectCitiesByCityId(cityId));
    }

    /**
     * 新增城市基础信息
     */
    @RequiresPermissions("city:cities:add")
    @Log(title = "城市基础信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Cities cities)
    {
        return toAjax(citiesService.insertCities(cities));
    }

    /**
     * 修改城市基础信息
     */
    @RequiresPermissions("city:cities:edit")
    @Log(title = "城市基础信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Cities cities)
    {
        return toAjax(citiesService.updateCities(cities));
    }

    /**
     * 删除城市基础信息
     */
    @RequiresPermissions("city:cities:remove")
    @Log(title = "城市基础信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{cityIds}")
    public AjaxResult remove(@PathVariable Long[] cityIds)
    {
        return toAjax(citiesService.deleteCitiesByCityIds(cityIds));
    }
}
