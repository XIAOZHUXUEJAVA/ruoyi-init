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
import com.ruoyi.pubservice.domain.CityResources;
import com.ruoyi.pubservice.service.ICityResourcesService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 公共资源Controller
 * 
 * @author ruoyi
 * @date 2024-04-24
 */
@RestController
@RequestMapping("/resources")
public class CityResourcesController extends BaseController
{
    @Autowired
    private ICityResourcesService cityResourcesService;

    /**
     * 查询公共资源列表
     */
    @RequiresPermissions("pubservice:resources:list")
    @GetMapping("/list")
    public TableDataInfo list(CityResources cityResources)
    {
        startPage();
        List<CityResources> list = cityResourcesService.selectCityResourcesList(cityResources);
        return getDataTable(list);
    }

    /**
     * 导出公共资源列表
     */
    @RequiresPermissions("pubservice:resources:export")
    @Log(title = "公共资源", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CityResources cityResources)
    {
        List<CityResources> list = cityResourcesService.selectCityResourcesList(cityResources);
        ExcelUtil<CityResources> util = new ExcelUtil<CityResources>(CityResources.class);
        util.exportExcel(response, list, "公共资源数据");
    }

    /**
     * 获取公共资源详细信息
     */
    @RequiresPermissions("pubservice:resources:query")
    @GetMapping(value = "/{resourceId}")
    public AjaxResult getInfo(@PathVariable("resourceId") Long resourceId)
    {
        return success(cityResourcesService.selectCityResourcesByResourceId(resourceId));
    }

    /**
     * 新增公共资源
     */
    @RequiresPermissions("pubservice:resources:add")
    @Log(title = "公共资源", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CityResources cityResources)
    {
        return toAjax(cityResourcesService.insertCityResources(cityResources));
    }

    /**
     * 修改公共资源
     */
    @RequiresPermissions("pubservice:resources:edit")
    @Log(title = "公共资源", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CityResources cityResources)
    {
        return toAjax(cityResourcesService.updateCityResources(cityResources));
    }

    /**
     * 删除公共资源
     */
    @RequiresPermissions("pubservice:resources:remove")
    @Log(title = "公共资源", businessType = BusinessType.DELETE)
	@DeleteMapping("/{resourceIds}")
    public AjaxResult remove(@PathVariable Long[] resourceIds)
    {
        return toAjax(cityResourcesService.deleteCityResourcesByResourceIds(resourceIds));
    }
}
