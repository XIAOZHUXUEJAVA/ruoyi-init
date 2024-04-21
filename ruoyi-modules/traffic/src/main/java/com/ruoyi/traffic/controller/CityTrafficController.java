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
import com.ruoyi.traffic.domain.CityTraffic;
import com.ruoyi.traffic.service.ICityTrafficService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 路况检测Controller
 * 
 * @author ruoyi
 * @date 2024-04-19
 */
@RestController
@RequestMapping("/traffic")
public class CityTrafficController extends BaseController
{
    @Autowired
    private ICityTrafficService cityTrafficService;

    /**
     * 查询路况检测列表
     */
    @RequiresPermissions("traffic:traffic:list")
    @GetMapping("/list")
    public TableDataInfo list(CityTraffic cityTraffic)
    {
        startPage();
        List<CityTraffic> list = cityTrafficService.selectCityTrafficList(cityTraffic);
        return getDataTable(list);
    }

    /**
     * 导出路况检测列表
     */
    @RequiresPermissions("traffic:traffic:export")
    @Log(title = "路况检测", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CityTraffic cityTraffic)
    {
        List<CityTraffic> list = cityTrafficService.selectCityTrafficList(cityTraffic);
        ExcelUtil<CityTraffic> util = new ExcelUtil<CityTraffic>(CityTraffic.class);
        util.exportExcel(response, list, "路况检测数据");
    }

    /**
     * 获取路况检测详细信息
     */
    @RequiresPermissions("traffic:traffic:query")
    @GetMapping(value = "/{cityId}")
    public AjaxResult getInfo(@PathVariable("cityId") Long cityId)
    {
        return success(cityTrafficService.selectCityTrafficByCityId(cityId));
    }

    /**
     * 新增路况检测
     */
    @RequiresPermissions("traffic:traffic:add")
    @Log(title = "路况检测", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CityTraffic cityTraffic)
    {
        return toAjax(cityTrafficService.insertCityTraffic(cityTraffic));
    }

    /**
     * 修改路况检测
     */
    @RequiresPermissions("traffic:traffic:edit")
    @Log(title = "路况检测", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CityTraffic cityTraffic)
    {
        return toAjax(cityTrafficService.updateCityTraffic(cityTraffic));
    }

    /**
     * 删除路况检测
     */
    @RequiresPermissions("traffic:traffic:remove")
    @Log(title = "路况检测", businessType = BusinessType.DELETE)
	@DeleteMapping("/{cityIds}")
    public AjaxResult remove(@PathVariable Long[] cityIds)
    {
        return toAjax(cityTrafficService.deleteCityTrafficByCityIds(cityIds));
    }
}
