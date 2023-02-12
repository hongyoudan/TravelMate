package com.lzh.uni.controller;

import com.lzh.common.core.domain.AjaxResult;
import com.lzh.uni.domain.UniArticle;
import com.lzh.uni.service.IUniArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Date: 2023-02-10
 * @Description: 文章业务控制器
 */
@RestController
@RequestMapping("/uni/article")
public class ArticleController {

    @Autowired
    private IUniArticleService articleService;

    /**
     * 根据type获取文章列表
     *
     * @param type
     * @return
     */
    @GetMapping(value = "/list/{type}")
    public AjaxResult getListByType(@PathVariable("type") String type) {

        UniArticle uniArticle = new UniArticle();
        uniArticle.setType(type);
        List<UniArticle> articleList = articleService.selectUniArticleList(uniArticle);

        return AjaxResult.success(articleList);
    }

    /**
     * 根据id获取文章列表
     *
     * @param id
     * @return
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getListById(@PathVariable("id") String id) {

        UniArticle articleList = articleService.selectUniArticleById(Integer.valueOf(id));

        return AjaxResult.success(articleList);
    }
}
