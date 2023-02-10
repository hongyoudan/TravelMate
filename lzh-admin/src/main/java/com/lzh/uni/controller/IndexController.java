package com.lzh.uni.controller;

import com.lzh.common.core.controller.BaseController;
import com.lzh.common.core.domain.AjaxResult;
import com.lzh.uni.domain.UniBanner;
import com.lzh.uni.domain.UniNews;
import com.lzh.uni.domain.UniScenicSpot;
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

    /**
     * 获取首页数据
     * @return
     */
    @GetMapping("/index")
    public AjaxResult index() {

        List<UniBanner> bannerLists = bannerService.selectUniBannerList(new UniBanner());
        List<UniNews> newsList = newsService.selectUniNewsList(new UniNews());
        UniScenicSpot uniScenicSpot = new UniScenicSpot();
        uniScenicSpot.setIsHot("1");
        List<UniScenicSpot> hotScenicSpotLists = scenicSpotService.selectUniScenicSpotList(uniScenicSpot);

        HashMap<String, Object> map = new HashMap<>();
        map.put("bannerLists", bannerLists);
        map.put("newsList", newsList);
        map.put("hotScenicSpotLists", hotScenicSpotLists);

        return AjaxResult.success(map);
    }
}
