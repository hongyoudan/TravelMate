package com.lzh.web.system.controller.uni;

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
import com.lzh.uni.domain.UniNews;
import com.lzh.uni.service.IUniNewsService;
import com.lzh.common.utils.poi.ExcelUtil;
import com.lzh.common.core.page.TableDataInfo;

/**
 * @Date: 2023-02-09
 * @Description: 要闻Controller
 */
@RestController
@RequestMapping("/system/news")
public class UniNewsController extends BaseController
{
    @Autowired
    private IUniNewsService uniNewsService;

    /**
     * 查询要闻列表
     */
    @PreAuthorize("@ss.hasPermi('uni:news:list')")
    @GetMapping("/list")
    public TableDataInfo list(UniNews uniNews)
    {
        startPage();
        List<UniNews> list = uniNewsService.selectUniNewsList(uniNews);
        return getDataTable(list);
    }

    /**
     * 导出要闻列表
     */
    @PreAuthorize("@ss.hasPermi('uni:news:export')")
    @Log(title = "要闻", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, UniNews uniNews)
    {
        List<UniNews> list = uniNewsService.selectUniNewsList(uniNews);
        ExcelUtil<UniNews> util = new ExcelUtil<UniNews>(UniNews.class);
        util.exportExcel(response, list, "要闻数据");
    }

    /**
     * 获取要闻详细信息
     */
    @PreAuthorize("@ss.hasPermi('uni:news:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id)
    {
        return success(uniNewsService.selectUniNewsById(id));
    }

    /**
     * 新增要闻
     */
    @PreAuthorize("@ss.hasPermi('uni:news:add')")
    @Log(title = "要闻", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody UniNews uniNews)
    {
        return toAjax(uniNewsService.insertUniNews(uniNews));
    }

    /**
     * 修改要闻
     */
    @PreAuthorize("@ss.hasPermi('uni:news:edit')")
    @Log(title = "要闻", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody UniNews uniNews)
    {
        return toAjax(uniNewsService.updateUniNews(uniNews));
    }

    /**
     * 删除要闻
     */
    @PreAuthorize("@ss.hasPermi('uni:news:remove')")
    @Log(title = "要闻", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids)
    {
        return toAjax(uniNewsService.deleteUniNewsByIds(ids));
    }
}
