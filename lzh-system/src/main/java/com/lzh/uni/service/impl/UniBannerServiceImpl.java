package com.lzh.uni.service.impl;

import java.util.List;
import com.lzh.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lzh.uni.mapper.UniBannerMapper;
import com.lzh.uni.domain.UniBanner;
import com.lzh.uni.service.IUniBannerService;

/**
 * 轮播图Service业务层处理
 * 
 * @author lzh
 * @date 2023-02-09
 */
@Service
public class UniBannerServiceImpl implements IUniBannerService 
{
    @Autowired
    private UniBannerMapper uniBannerMapper;

    /**
     * 查询轮播图
     * 
     * @param id 轮播图主键
     * @return 轮播图
     */
    @Override
    public UniBanner selectUniBannerById(Integer id)
    {
        return uniBannerMapper.selectUniBannerById(id);
    }

    /**
     * 查询轮播图列表
     * 
     * @param uniBanner 轮播图
     * @return 轮播图
     */
    @Override
    public List<UniBanner> selectUniBannerList(UniBanner uniBanner)
    {
        return uniBannerMapper.selectUniBannerList(uniBanner);
    }

    /**
     * 新增轮播图
     * 
     * @param uniBanner 轮播图
     * @return 结果
     */
    @Override
    public int insertUniBanner(UniBanner uniBanner)
    {
        uniBanner.setCreateTime(DateUtils.getNowDate());
        return uniBannerMapper.insertUniBanner(uniBanner);
    }

    /**
     * 修改轮播图
     * 
     * @param uniBanner 轮播图
     * @return 结果
     */
    @Override
    public int updateUniBanner(UniBanner uniBanner)
    {
        uniBanner.setUpdateTime(DateUtils.getNowDate());
        return uniBannerMapper.updateUniBanner(uniBanner);
    }

    /**
     * 批量删除轮播图
     * 
     * @param ids 需要删除的轮播图主键
     * @return 结果
     */
    @Override
    public int deleteUniBannerByIds(Integer[] ids)
    {
        return uniBannerMapper.deleteUniBannerByIds(ids);
    }

    /**
     * 删除轮播图信息
     * 
     * @param id 轮播图主键
     * @return 结果
     */
    @Override
    public int deleteUniBannerById(Integer id)
    {
        return uniBannerMapper.deleteUniBannerById(id);
    }
}
