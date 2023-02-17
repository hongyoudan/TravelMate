package com.lzh.uni.service.impl;

import java.util.List;
import com.lzh.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lzh.uni.mapper.UniNewsMapper;
import com.lzh.uni.domain.UniNews;
import com.lzh.uni.service.IUniNewsService;

/**
 * @Description: 要闻Service业务层处理
 */
@Service
public class UniNewsServiceImpl implements IUniNewsService 
{
    @Autowired
    private UniNewsMapper uniNewsMapper;

    /**
     * 查询要闻
     * 
     * @param id 要闻主键
     * @return 要闻
     */
    @Override
    public UniNews selectUniNewsById(Integer id)
    {
        return uniNewsMapper.selectUniNewsById(id);
    }

    /**
     * 查询要闻列表
     * 
     * @param uniNews 要闻
     * @return 要闻
     */
    @Override
    public List<UniNews> selectUniNewsList(UniNews uniNews)
    {
        return uniNewsMapper.selectUniNewsList(uniNews);
    }

    /**
     * 新增要闻
     * 
     * @param uniNews 要闻
     * @return 结果
     */
    @Override
    public int insertUniNews(UniNews uniNews)
    {
        uniNews.setCreateTime(DateUtils.getNowDate());
        return uniNewsMapper.insertUniNews(uniNews);
    }

    /**
     * 修改要闻
     * 
     * @param uniNews 要闻
     * @return 结果
     */
    @Override
    public int updateUniNews(UniNews uniNews)
    {
        uniNews.setUpdateTime(DateUtils.getNowDate());
        return uniNewsMapper.updateUniNews(uniNews);
    }

    /**
     * 批量删除要闻
     * 
     * @param ids 需要删除的要闻主键
     * @return 结果
     */
    @Override
    public int deleteUniNewsByIds(Integer[] ids)
    {
        return uniNewsMapper.deleteUniNewsByIds(ids);
    }

    /**
     * 删除要闻信息
     * 
     * @param id 要闻主键
     * @return 结果
     */
    @Override
    public int deleteUniNewsById(Integer id)
    {
        return uniNewsMapper.deleteUniNewsById(id);
    }
}
