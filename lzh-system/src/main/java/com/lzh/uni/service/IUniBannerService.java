package com.lzh.uni.service;

import java.util.List;
import com.lzh.uni.domain.UniBanner;

/**
 * 轮播图Service接口
 * 
 * @author lzh
 * @date 2023-02-09
 */
public interface IUniBannerService 
{
    /**
     * 查询轮播图
     * 
     * @param id 轮播图主键
     * @return 轮播图
     */
    public UniBanner selectUniBannerById(Integer id);

    /**
     * 查询轮播图列表
     * 
     * @param uniBanner 轮播图
     * @return 轮播图集合
     */
    public List<UniBanner> selectUniBannerList(UniBanner uniBanner);

    /**
     * 新增轮播图
     * 
     * @param uniBanner 轮播图
     * @return 结果
     */
    public int insertUniBanner(UniBanner uniBanner);

    /**
     * 修改轮播图
     * 
     * @param uniBanner 轮播图
     * @return 结果
     */
    public int updateUniBanner(UniBanner uniBanner);

    /**
     * 批量删除轮播图
     * 
     * @param ids 需要删除的轮播图主键集合
     * @return 结果
     */
    public int deleteUniBannerByIds(Integer[] ids);

    /**
     * 删除轮播图信息
     * 
     * @param id 轮播图主键
     * @return 结果
     */
    public int deleteUniBannerById(Integer id);
}
