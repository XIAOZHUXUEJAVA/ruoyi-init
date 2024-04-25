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
import com.ruoyi.pubservice.domain.ServiceCategory;
import com.ruoyi.pubservice.service.IServiceCategoryService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 服务类别Controller
 * 
 * @author ruoyi
 * @date 2024-04-25
 */
@RestController
@RequestMapping("/servicecategory")
public class ServiceCategoryController extends BaseController
{
    @Autowired
    private IServiceCategoryService serviceCategoryService;

    /**
     * 查询服务类别列表
     */
    @RequiresPermissions("pubservice:servicecategory:list")
    @GetMapping("/list")
    public TableDataInfo list(ServiceCategory serviceCategory)
    {
        startPage();
        List<ServiceCategory> list = serviceCategoryService.selectServiceCategoryList(serviceCategory);
        return getDataTable(list);
    }

    /**
     * 导出服务类别列表
     */
    @RequiresPermissions("pubservice:servicecategory:export")
    @Log(title = "服务类别", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ServiceCategory serviceCategory)
    {
        List<ServiceCategory> list = serviceCategoryService.selectServiceCategoryList(serviceCategory);
        ExcelUtil<ServiceCategory> util = new ExcelUtil<ServiceCategory>(ServiceCategory.class);
        util.exportExcel(response, list, "服务类别数据");
    }

    /**
     * 获取服务类别详细信息
     */
    @RequiresPermissions("pubservice:servicecategory:query")
    @GetMapping(value = "/{categoryId}")
    public AjaxResult getInfo(@PathVariable("categoryId") Long categoryId)
    {
        return success(serviceCategoryService.selectServiceCategoryByCategoryId(categoryId));
    }

    /**
     * 新增服务类别
     */
    @RequiresPermissions("pubservice:servicecategory:add")
    @Log(title = "服务类别", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ServiceCategory serviceCategory)
    {
        return toAjax(serviceCategoryService.insertServiceCategory(serviceCategory));
    }

    /**
     * 修改服务类别
     */
    @RequiresPermissions("pubservice:servicecategory:edit")
    @Log(title = "服务类别", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ServiceCategory serviceCategory)
    {
        return toAjax(serviceCategoryService.updateServiceCategory(serviceCategory));
    }

    /**
     * 删除服务类别
     */
    @RequiresPermissions("pubservice:servicecategory:remove")
    @Log(title = "服务类别", businessType = BusinessType.DELETE)
	@DeleteMapping("/{categoryIds}")
    public AjaxResult remove(@PathVariable Long[] categoryIds)
    {
        return toAjax(serviceCategoryService.deleteServiceCategoryByCategoryIds(categoryIds));
    }
}
