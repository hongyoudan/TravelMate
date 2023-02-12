package com.lzh.uni.controller;

import com.lzh.common.core.controller.BaseController;
import com.lzh.common.core.domain.AjaxResult;
import com.lzh.uni.domain.UniArticle;
import com.lzh.uni.domain.UniBanner;
import com.lzh.uni.domain.UniNews;
import com.lzh.uni.domain.UniScenicSpot;
import com.lzh.uni.service.IUniArticleService;
import com.lzh.uni.service.IUniBannerService;
import com.lzh.uni.service.IUniNewsService;
import com.lzh.uni.service.IUniScenicSpotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

/**
 * @Author: hayden
 * @Date: 2023-02-09
 * @Description:
 */
@RestController
@RequestMapping("/uni")
public class IndexController extends BaseController {

    @Autowired
    private IUniBannerService bannerService;

    @Autowired
    private IUniNewsService newsService;

    @Autowired
    private IUniScenicSpotService scenicSpotService;

    @Autowired
    private IUniArticleService articleService;

    /**
     * 获取首页数据
     * @return
     */
    @GetMapping("/index")
    public AjaxResult index() {

        // 轮播图
        List<UniBanner> bannerLists = bannerService.selectUniBannerList(new UniBanner());

        // 要闻
        List<UniNews> newsList = newsService.selectUniNewsList(new UniNews());

        // 热门景点
        UniScenicSpot uniScenicSpot = new UniScenicSpot();
        uniScenicSpot.setIsHot("1");
        List<UniScenicSpot> hotScenicSpotLists = scenicSpotService.selectUniScenicSpotList(uniScenicSpot);

        // 官方攻略
        UniArticle uniArticle0 = new UniArticle();
        uniArticle0.setType("0");
        uniArticle0.setIsDisplay("1");
        List<UniArticle> guidelineLists = articleService.selectUniArticleList(uniArticle0);
        // 热门活动
        UniArticle uniArticle1 = new UniArticle();
        uniArticle1.setType("1");
        uniArticle1.setIsDisplay("1");
        List<UniArticle> popularActivityLists = articleService.selectUniArticleList(uniArticle1);
        // 头条资讯
        UniArticle uniArticle2 = new UniArticle();
        uniArticle2.setType("2");
        uniArticle2.setIsDisplay("1");
        List<UniArticle> headlineNewsLists = articleService.selectUniArticleList(uniArticle2);
        // 热门资讯
        UniArticle uniArticle3 = new UniArticle();
        uniArticle3.setType("3");
        uniArticle3.setIsDisplay("1");
        List<UniArticle> hotNewsLists = articleService.selectUniArticleList(uniArticle3);

        HashMap<String, Object> map = new HashMap<>();
        map.put("bannerLists", bannerLists);
        map.put("newsList", newsList);
        map.put("hotScenicSpotLists", hotScenicSpotLists);
        map.put("guidelineLists", guidelineLists);
        map.put("popularActivityLists", popularActivityLists);
        map.put("headlineNewsLists", headlineNewsLists);
        map.put("hotNewsLists", hotNewsLists);

        return AjaxResult.success(map);
    }
}
