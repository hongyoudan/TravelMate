package com.lzh.uni.controller;

import com.lzh.common.core.domain.AjaxResult;
import com.lzh.uni.domain.UniScenicSpot;
import com.lzh.uni.service.IUniScenicSpotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Date: 2023-02-09
 * @Description: 景点业务控制器
 */
@RestController
@RequestMapping("/uni/scenic_spot")
public class ScenicSpotController {

    @Autowired
    private IUniScenicSpotService scenicSpotService;

    /**
     * 获取景点详情
     *
     * @param id
     * @return
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id) {
        UniScenicSpot scenicSpotList = scenicSpotService.selectUniScenicSpotById(id);
        return AjaxResult.success(scenicSpotList);
    }
}
