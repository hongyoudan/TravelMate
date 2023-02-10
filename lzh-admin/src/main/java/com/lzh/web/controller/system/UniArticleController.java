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
import com.lzh.uni.domain.UniArticle;
import com.lzh.uni.service.IUniArticleService;
import com.lzh.common.utils.poi.ExcelUtil;
import com.lzh.common.core.page.TableDataInfo;

/**
 * 文章Controller
 * 
 * @author lzh
 * @date 2023-02-10
 */
@RestController
@RequestMapping("/system/article")
public class UniArticleController extends BaseController
{
    @Autowired
    private IUniArticleService uniArticleService;

    /**
     * 查询文章列表
     */
    @PreAuthorize("@ss.hasPermi('system:article:list')")
    @GetMapping("/list")
    public TableDataInfo list(UniArticle uniArticle)
    {
        startPage();
        List<UniArticle> list = uniArticleService.selectUniArticleList(uniArticle);
        return getDataTable(list);
    }

    /**
     * 导出文章列表
     */
    @PreAuthorize("@ss.hasPermi('system:article:export')")
    @Log(title = "文章", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, UniArticle uniArticle)
    {
        List<UniArticle> list = uniArticleService.selectUniArticleList(uniArticle);
        ExcelUtil<UniArticle> util = new ExcelUtil<UniArticle>(UniArticle.class);
        util.exportExcel(response, list, "文章数据");
    }

    /**
     * 获取文章详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:article:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id)
    {
        return success(uniArticleService.selectUniArticleById(id));
    }

    /**
     * 新增文章
     */
    @PreAuthorize("@ss.hasPermi('system:article:add')")
    @Log(title = "文章", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody UniArticle uniArticle)
    {
        return toAjax(uniArticleService.insertUniArticle(uniArticle));
    }

    /**
     * 修改文章
     */
    @PreAuthorize("@ss.hasPermi('system:article:edit')")
    @Log(title = "文章", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody UniArticle uniArticle)
    {
        return toAjax(uniArticleService.updateUniArticle(uniArticle));
    }

    /**
     * 删除文章
     */
    @PreAuthorize("@ss.hasPermi('system:article:remove')")
    @Log(title = "文章", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids)
    {
        return toAjax(uniArticleService.deleteUniArticleByIds(ids));
    }
}
