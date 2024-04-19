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
import com.ruoyi.citydata.domain.CityWeather;
import com.ruoyi.citydata.service.ICityWeatherService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 城市天气Controller
 * 
 * @author ruoyi
 * @date 2024-04-18
 */
@RestController
@RequestMapping("/weather")
public class CityWeatherController extends BaseController
{
    @Autowired
    private ICityWeatherService cityWeatherService;

    /**
     * 查询城市天气列表
     */
    @RequiresPermissions("city-data:weather:list")
    @GetMapping("/list")
    public TableDataInfo list(CityWeather cityWeather)
    {
        startPage();
        List<CityWeather> list = cityWeatherService.selectCityWeatherList(cityWeather);
        return getDataTable(list);
    }

    /**
     * 导出城市天气列表
     */
    @RequiresPermissions("city-data:weather:export")
    @Log(title = "城市天气", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CityWeather cityWeather)
    {
        List<CityWeather> list = cityWeatherService.selectCityWeatherList(cityWeather);
        ExcelUtil<CityWeather> util = new ExcelUtil<CityWeather>(CityWeather.class);
        util.exportExcel(response, list, "城市天气数据");
    }

    /**
     * 获取城市天气详细信息
     */
    @RequiresPermissions("city-data:weather:query")
    @GetMapping(value = "/{recordId}")
    public AjaxResult getInfo(@PathVariable("recordId") Long recordId)
    {
        return success(cityWeatherService.selectCityWeatherByRecordId(recordId));
    }

    /**
     * 新增城市天气
     */
    @RequiresPermissions("city-data:weather:add")
    @Log(title = "城市天气", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CityWeather cityWeather)
    {
        return toAjax(cityWeatherService.insertCityWeather(cityWeather));
    }

    /**
     * 修改城市天气
     */
    @RequiresPermissions("city-data:weather:edit")
    @Log(title = "城市天气", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CityWeather cityWeather)
    {
        return toAjax(cityWeatherService.updateCityWeather(cityWeather));
    }

    /**
     * 删除城市天气
     */
    @RequiresPermissions("city-data:weather:remove")
    @Log(title = "城市天气", businessType = BusinessType.DELETE)
	@DeleteMapping("/{recordIds}")
    public AjaxResult remove(@PathVariable Long[] recordIds)
    {
        return toAjax(cityWeatherService.deleteCityWeatherByRecordIds(recordIds));
    }
}
