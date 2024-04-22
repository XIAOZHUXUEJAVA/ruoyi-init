package com.ruoyi.traffic.controller;

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
import com.ruoyi.traffic.domain.CityAccident;
import com.ruoyi.traffic.service.ICityAccidentService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 交通事件Controller
 * 
 * @author ruoyi
 * @date 2024-04-22
 */
@RestController
@RequestMapping("/accident")
public class CityAccidentController extends BaseController
{
    @Autowired
    private ICityAccidentService cityAccidentService;

    /**
     * 查询交通事件列表
     */
    @RequiresPermissions("traffic:accident:list")
    @GetMapping("/list")
    public TableDataInfo list(CityAccident cityAccident)
    {
        startPage();
        List<CityAccident> list = cityAccidentService.selectCityAccidentList(cityAccident);
        return getDataTable(list);
    }

    /**
     * 导出交通事件列表
     */
    @RequiresPermissions("traffic:accident:export")
    @Log(title = "交通事件", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CityAccident cityAccident)
    {
        List<CityAccident> list = cityAccidentService.selectCityAccidentList(cityAccident);
        ExcelUtil<CityAccident> util = new ExcelUtil<CityAccident>(CityAccident.class);
        util.exportExcel(response, list, "交通事件数据");
    }

    /**
     * 获取交通事件详细信息
     */
    @RequiresPermissions("traffic:accident:query")
    @GetMapping(value = "/{accidentId}")
    public AjaxResult getInfo(@PathVariable("accidentId") Long accidentId)
    {
        return success(cityAccidentService.selectCityAccidentByAccidentId(accidentId));
    }

    /**
     * 新增交通事件
     */
    @RequiresPermissions("traffic:accident:add")
    @Log(title = "交通事件", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CityAccident cityAccident)
    {
        return toAjax(cityAccidentService.insertCityAccident(cityAccident));
    }

    /**
     * 修改交通事件
     */
    @RequiresPermissions("traffic:accident:edit")
    @Log(title = "交通事件", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CityAccident cityAccident)
    {
        return toAjax(cityAccidentService.updateCityAccident(cityAccident));
    }

    /**
     * 删除交通事件
     */
    @RequiresPermissions("traffic:accident:remove")
    @Log(title = "交通事件", businessType = BusinessType.DELETE)
	@DeleteMapping("/{accidentIds}")
    public AjaxResult remove(@PathVariable Long[] accidentIds)
    {
        return toAjax(cityAccidentService.deleteCityAccidentByAccidentIds(accidentIds));
    }
}
