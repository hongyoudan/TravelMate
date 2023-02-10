package com.lzh.web.controller.uni;

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
import com.lzh.uni.domain.UniScenicSpot;
import com.lzh.uni.service.IUniScenicSpotService;
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
public class UniScenicSpotController extends BaseController
{
    @Autowired
    private IUniScenicSpotService uniScenicSpotService;

    /**
     * 查询景点信息列表
     */
    @PreAuthorize("@ss.hasPermi('uni:scenic_spot:list')")
    @GetMapping("/list")
    public TableDataInfo list(UniScenicSpot uniScenicSpot)
    {
        startPage();
        List<UniScenicSpot> list = uniScenicSpotService.selectUniScenicSpotList(uniScenicSpot);
        return getDataTable(list);
    }

    /**
     * 导出景点信息列表
     */
    @PreAuthorize("@ss.hasPermi('uni:scenic_spot:export')")
    @Log(title = "景点信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, UniScenicSpot uniScenicSpot)
    {
        List<UniScenicSpot> list = uniScenicSpotService.selectUniScenicSpotList(uniScenicSpot);
        ExcelUtil<UniScenicSpot> util = new ExcelUtil<UniScenicSpot>(UniScenicSpot.class);
        util.exportExcel(response, list, "景点信息数据");
    }

    /**
     * 获取景点信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('uni:scenic_spot:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id)
    {
        return success(uniScenicSpotService.selectUniScenicSpotById(id));
    }

    /**
     * 新增景点信息
     */
    @PreAuthorize("@ss.hasPermi('uni:scenic_spot:add')")
    @Log(title = "景点信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody UniScenicSpot uniScenicSpot)
    {
        return toAjax(uniScenicSpotService.insertUniScenicSpot(uniScenicSpot));
    }

    /**
     * 修改景点信息
     */
    @PreAuthorize("@ss.hasPermi('uni:scenic_spot:edit')")
    @Log(title = "景点信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody UniScenicSpot uniScenicSpot)
    {
        return toAjax(uniScenicSpotService.updateUniScenicSpot(uniScenicSpot));
    }

    /**
     * 删除景点信息
     */
    @PreAuthorize("@ss.hasPermi('uni:scenic_spot:remove')")
    @Log(title = "景点信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids)
    {
        return toAjax(uniScenicSpotService.deleteUniScenicSpotByIds(ids));
    }
}
