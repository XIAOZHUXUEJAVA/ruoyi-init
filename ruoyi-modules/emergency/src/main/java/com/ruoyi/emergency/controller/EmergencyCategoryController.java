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
import com.ruoyi.emergency.domain.EmergencyCategory;
import com.ruoyi.emergency.service.IEmergencyCategoryService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 事故类别Controller
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
@RestController
@RequestMapping("/category")
public class EmergencyCategoryController extends BaseController
{
    @Autowired
    private IEmergencyCategoryService emergencyCategoryService;

    /**
     * 查询事故类别列表
     */
    @RequiresPermissions("emergency:category:list")
    @GetMapping("/list")
    public TableDataInfo list(EmergencyCategory emergencyCategory)
    {
        startPage();
        List<EmergencyCategory> list = emergencyCategoryService.selectEmergencyCategoryList(emergencyCategory);
        return getDataTable(list);
    }

    /**
     * 导出事故类别列表
     */
    @RequiresPermissions("emergency:category:export")
    @Log(title = "事故类别", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, EmergencyCategory emergencyCategory)
    {
        List<EmergencyCategory> list = emergencyCategoryService.selectEmergencyCategoryList(emergencyCategory);
        ExcelUtil<EmergencyCategory> util = new ExcelUtil<EmergencyCategory>(EmergencyCategory.class);
        util.exportExcel(response, list, "事故类别数据");
    }

    /**
     * 获取事故类别详细信息
     */
    @RequiresPermissions("emergency:category:query")
    @GetMapping(value = "/{categoryId}")
    public AjaxResult getInfo(@PathVariable("categoryId") Long categoryId)
    {
        return success(emergencyCategoryService.selectEmergencyCategoryByCategoryId(categoryId));
    }

    /**
     * 新增事故类别
     */
    @RequiresPermissions("emergency:category:add")
    @Log(title = "事故类别", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody EmergencyCategory emergencyCategory)
    {
        return toAjax(emergencyCategoryService.insertEmergencyCategory(emergencyCategory));
    }

    /**
     * 修改事故类别
     */
    @RequiresPermissions("emergency:category:edit")
    @Log(title = "事故类别", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody EmergencyCategory emergencyCategory)
    {
        return toAjax(emergencyCategoryService.updateEmergencyCategory(emergencyCategory));
    }

    /**
     * 删除事故类别
     */
    @RequiresPermissions("emergency:category:remove")
    @Log(title = "事故类别", businessType = BusinessType.DELETE)
	@DeleteMapping("/{categoryIds}")
    public AjaxResult remove(@PathVariable Long[] categoryIds)
    {
        return toAjax(emergencyCategoryService.deleteEmergencyCategoryByCategoryIds(categoryIds));
    }
}
