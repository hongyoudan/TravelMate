package com.lzh.web.controller.system;

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
import com.lzh.common.annotation.Log;
import com.lzh.common.core.controller.BaseController;
import com.lzh.common.core.domain.AjaxResult;
import com.lzh.common.enums.BusinessType;
import com.lzh.system.domain.UniPopularScenicSpot;
import com.lzh.system.service.IUniPopularScenicSpotService;
import com.lzh.common.utils.poi.ExcelUtil;
import com.lzh.common.core.page.TableDataInfo;

/**
 * 景点信息Controller
 * 
 * @author lzh
 * @date 2023-02-09
 */
@RestController
@RequestMapping("/system/scenic_spot")
public class UniPopularScenicSpotController extends BaseController
{
    @Autowired
    private IUniPopularScenicSpotService uniPopularScenicSpotService;

    /**
     * 查询景点信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:scenic_spot:list')")
    @GetMapping("/list")
    public TableDataInfo list(UniPopularScenicSpot uniPopularScenicSpot)
    {
        startPage();
        List<UniPopularScenicSpot> list = uniPopularScenicSpotService.selectUniPopularScenicSpotList(uniPopularScenicSpot);
        return getDataTable(list);
    }

    /**
     * 导出景点信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:scenic_spot:export')")
    @Log(title = "景点信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, UniPopularScenicSpot uniPopularScenicSpot)
    {
        List<UniPopularScenicSpot> list = uniPopularScenicSpotService.selectUniPopularScenicSpotList(uniPopularScenicSpot);
        ExcelUtil<UniPopularScenicSpot> util = new ExcelUtil<UniPopularScenicSpot>(UniPopularScenicSpot.class);
        util.exportExcel(response, list, "景点信息数据");
    }

    /**
     * 获取景点信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:scenic_spot:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id)
    {
        return success(uniPopularScenicSpotService.selectUniPopularScenicSpotById(id));
    }

    /**
     * 新增景点信息
     */
    @PreAuthorize("@ss.hasPermi('system:scenic_spot:add')")
    @Log(title = "景点信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody UniPopularScenicSpot uniPopularScenicSpot)
    {
        return toAjax(uniPopularScenicSpotService.insertUniPopularScenicSpot(uniPopularScenicSpot));
    }

    /**
     * 修改景点信息
     */
    @PreAuthorize("@ss.hasPermi('system:scenic_spot:edit')")
    @Log(title = "景点信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody UniPopularScenicSpot uniPopularScenicSpot)
    {
        return toAjax(uniPopularScenicSpotService.updateUniPopularScenicSpot(uniPopularScenicSpot));
    }

    /**
     * 删除景点信息
     */
    @PreAuthorize("@ss.hasPermi('system:scenic_spot:remove')")
    @Log(title = "景点信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids)
    {
        return toAjax(uniPopularScenicSpotService.deleteUniPopularScenicSpotByIds(ids));
    }
}
