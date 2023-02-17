package com.lzh.web.system.controller.system;

import com.lzh.common.config.LzhConfig;
import com.lzh.common.core.domain.AjaxResult;
import com.lzh.common.utils.StringUtils;
import com.lzh.uni.domain.UniArticle;
import com.lzh.uni.domain.UniBanner;
import com.lzh.uni.domain.UniScenicSpot;
import com.lzh.uni.service.IUniArticleService;
import com.lzh.uni.service.IUniBannerService;
import com.lzh.uni.service.IUniScenicSpotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

/**
 * @Date: 2023-02-09
 * @Description: 首页控制器
 */
@RestController
public class SysIndexController {
    /**
     * 系统基础配置
     */
    @Autowired
    private LzhConfig LzhConfig;

    @Autowired
    private IUniBannerService bannerService;

    @Autowired
    private IUniScenicSpotService scenicSpotService;

    @Autowired
    private IUniArticleService articleService;

    /**
     * 访问首页，提示语
     */
    @RequestMapping("/")
    public String index() {
        return StringUtils.format("欢迎使用{}后台管理框架，当前版本：v{}，请通过前端地址访问。", LzhConfig.getName(), LzhConfig.getVersion());
    }

    @RequestMapping("/index")
    public AjaxResult dashboard() {
        List<UniBanner> bannerLists = bannerService.selectUniBannerList(new UniBanner());
        List<UniScenicSpot> scenicSpotLists = scenicSpotService.selectUniScenicSpotList(new UniScenicSpot());
        List<UniArticle> articleLists = articleService.selectUniArticleList(new UniArticle());

        HashMap<String, Object> map = new HashMap<>();
        map.put("bannerLists", bannerLists);
        map.put("scenicSpotLists", scenicSpotLists);
        map.put("articleLists", articleLists);
        return AjaxResult.success(map);
    }
}
