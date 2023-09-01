package com.ruoyi.web.controller;

import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.web.domain.Indicator;
import com.ruoyi.web.service.IIndicatorService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2023-08-28
 */
@RestController
@RequestMapping("/web/indicator")
public class IndicatorController extends BaseController
{
    @Autowired
    private IIndicatorService indicatorService;

    /**
     * 查询【请填写功能名称】列表
     */
    @PreAuthorize("@ss.hasPermi('web:indicator:list')")
    @GetMapping("/list")
    public TableDataInfo list(Indicator indicator)
    {
        startPage();
        List<Indicator> list = indicatorService.selectIndicatorList(indicator);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @PreAuthorize("@ss.hasPermi('web:indicator:export')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Indicator indicator)
    {
        List<Indicator> list = indicatorService.selectIndicatorList(indicator);
        ExcelUtil<Indicator> util = new ExcelUtil<Indicator>(Indicator.class);
        util.exportExcel(response, list, "【请填写功能名称】数据");
    }

    /**
     * 获取【请填写功能名称】详细信息
     */
    @PreAuthorize("@ss.hasPermi('web:indicator:query')")
    @GetMapping(value = "/{bizDateTime}")
    public AjaxResult getInfo(@PathVariable("bizDateTime") Date bizDateTime)
    {
        return success(indicatorService.selectIndicatorByBizDateTime(bizDateTime));
    }

    /**
     * 新增【请填写功能名称】
     */
    @PreAuthorize("@ss.hasPermi('web:indicator:add')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Indicator indicator)
    {
        return toAjax(indicatorService.insertIndicator(indicator));
    }

    /**
     * 修改【请填写功能名称】
     */
    @PreAuthorize("@ss.hasPermi('web:indicator:edit')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Indicator indicator)
    {
        return toAjax(indicatorService.updateIndicator(indicator));
    }

    /**
     * 删除【请填写功能名称】
     */
    @PreAuthorize("@ss.hasPermi('web:indicator:remove')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
	@DeleteMapping("/{bizDateTimes}")
    public AjaxResult remove(@PathVariable Date[] bizDateTimes)
    {
        return toAjax(indicatorService.deleteIndicatorByBizDateTimes(bizDateTimes));
    }
}
