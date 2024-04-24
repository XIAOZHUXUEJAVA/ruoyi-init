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
import com.ruoyi.pubservice.domain.ResourcesCategory;
import com.ruoyi.pubservice.service.IResourcesCategoryService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 资源类别Controller
 * 
 * @author ruoyi
 * @date 2024-04-24
 */
@RestController
@RequestMapping("/category")
public class ResourcesCategoryController extends BaseController
{
    @Autowired
    private IResourcesCategoryService resourcesCategoryService;

    /**
     * 查询资源类别列表
     */
    @RequiresPermissions("pubservice:category:list")
    @GetMapping("/list")
    public TableDataInfo list(ResourcesCategory resourcesCategory)
    {
        startPage();
        List<ResourcesCategory> list = resourcesCategoryService.selectResourcesCategoryList(resourcesCategory);
        return getDataTable(list);
    }

    /**
     * 导出资源类别列表
     */
    @RequiresPermissions("pubservice:category:export")
    @Log(title = "资源类别", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ResourcesCategory resourcesCategory)
    {
        List<ResourcesCategory> list = resourcesCategoryService.selectResourcesCategoryList(resourcesCategory);
        ExcelUtil<ResourcesCategory> util = new ExcelUtil<ResourcesCategory>(ResourcesCategory.class);
        util.exportExcel(response, list, "资源类别数据");
    }

    /**
     * 获取资源类别详细信息
     */
    @RequiresPermissions("pubservice:category:query")
    @GetMapping(value = "/{categoryId}")
    public AjaxResult getInfo(@PathVariable("categoryId") Long categoryId)
    {
        return success(resourcesCategoryService.selectResourcesCategoryByCategoryId(categoryId));
    }

    /**
     * 新增资源类别
     */
    @RequiresPermissions("pubservice:category:add")
    @Log(title = "资源类别", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ResourcesCategory resourcesCategory)
    {
        return toAjax(resourcesCategoryService.insertResourcesCategory(resourcesCategory));
    }

    /**
     * 修改资源类别
     */
    @RequiresPermissions("pubservice:category:edit")
    @Log(title = "资源类别", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ResourcesCategory resourcesCategory)
    {
        return toAjax(resourcesCategoryService.updateResourcesCategory(resourcesCategory));
    }

    /**
     * 删除资源类别
     */
    @RequiresPermissions("pubservice:category:remove")
    @Log(title = "资源类别", businessType = BusinessType.DELETE)
	@DeleteMapping("/{categoryIds}")
    public AjaxResult remove(@PathVariable Long[] categoryIds)
    {
        return toAjax(resourcesCategoryService.deleteResourcesCategoryByCategoryIds(categoryIds));
    }
}
