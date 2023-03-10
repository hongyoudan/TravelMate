package com.lzh.web.system.controller;

import com.lzh.common.annotation.Log;
import com.lzh.common.core.controller.BaseController;
import com.lzh.common.core.domain.AjaxResult;
import com.lzh.common.core.page.TableDataInfo;
import com.lzh.common.enums.BusinessType;
import com.lzh.uni.domain.UniBanner;
import com.lzh.uni.service.IUniBannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Date: 2023-02-09
 * @Description: 轮播图Controller
 */
@RestController
@RequestMapping("/system/banner")
public class UniBannerController extends BaseController
{
    @Autowired
    private IUniBannerService uniBannerService;

    /**
     * 查询轮播图列表
     */
    @PreAuthorize("@ss.hasPermi('uni:banner:list')")
    @GetMapping("/list")
    public TableDataInfo list(UniBanner uniBanner)
    {
        startPage();
        List<UniBanner> list = uniBannerService.selectUniBannerList(uniBanner);
        return getDataTable(list);
    }

    /**
     * 获取轮播图详细信息
     */
    @PreAuthorize("@ss.hasPermi('uni:banner:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id)
    {
        return success(uniBannerService.selectUniBannerById(id));
    }

    /**
     * 新增轮播图
     */
    @PreAuthorize("@ss.hasPermi('uni:banner:add')")
    @Log(title = "轮播图", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody UniBanner uniBanner)
    {
        return toAjax(uniBannerService.insertUniBanner(uniBanner));
    }

    /**
     * 修改轮播图
     */
    @PreAuthorize("@ss.hasPermi('uni:banner:edit')")
    @Log(title = "轮播图", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody UniBanner uniBanner)
    {
        return toAjax(uniBannerService.updateUniBanner(uniBanner));
    }

    /**
     * 删除轮播图
     */
    @PreAuthorize("@ss.hasPermi('uni:banner:remove')")
    @Log(title = "轮播图", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids)
    {
        return toAjax(uniBannerService.deleteUniBannerByIds(ids));
    }
}
