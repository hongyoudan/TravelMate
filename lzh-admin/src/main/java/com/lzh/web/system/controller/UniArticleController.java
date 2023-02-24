package com.lzh.web.system.controller;

import java.util.List;

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
 
import com.lzh.common.core.page.TableDataInfo;

/**
 * @Date: 2023-02-09
 * @Description: 文章Controller
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
    @PreAuthorize("@ss.hasPermi('uni:article:list')")
    @GetMapping("/list")
    public TableDataInfo list(UniArticle uniArticle)
    {
        startPage();
        List<UniArticle> list = uniArticleService.selectUniArticleList(uniArticle);
        return getDataTable(list);
    }

    /**
     * 获取文章详细信息
     */
    @PreAuthorize("@ss.hasPermi('uni:article:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id)
    {
        return success(uniArticleService.selectUniArticleById(id));
    }

    /**
     * 新增文章
     */
    @PreAuthorize("@ss.hasPermi('uni:article:add')")
    @Log(title = "文章", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody UniArticle uniArticle)
    {
        return toAjax(uniArticleService.insertUniArticle(uniArticle));
    }

    /**
     * 修改文章
     */
    @PreAuthorize("@ss.hasPermi('uni:article:edit')")
    @Log(title = "文章", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody UniArticle uniArticle)
    {
        return toAjax(uniArticleService.updateUniArticle(uniArticle));
    }

    /**
     * 删除文章
     */
    @PreAuthorize("@ss.hasPermi('uni:article:remove')")
    @Log(title = "文章", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids)
    {
        return toAjax(uniArticleService.deleteUniArticleByIds(ids));
    }
}
