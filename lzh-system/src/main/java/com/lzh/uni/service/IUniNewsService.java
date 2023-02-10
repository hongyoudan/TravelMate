package com.lzh.uni.service;

import java.util.List;
import com.lzh.uni.domain.UniNews;

/**
 * 要闻Service接口
 * 
 * @author lzh
 * @date 2023-02-09
 */
public interface IUniNewsService 
{
    /**
     * 查询要闻
     * 
     * @param id 要闻主键
     * @return 要闻
     */
    public UniNews selectUniNewsById(Integer id);

    /**
     * 查询要闻列表
     * 
     * @param uniNews 要闻
     * @return 要闻集合
     */
    public List<UniNews> selectUniNewsList(UniNews uniNews);

    /**
     * 新增要闻
     * 
     * @param uniNews 要闻
     * @return 结果
     */
    public int insertUniNews(UniNews uniNews);

    /**
     * 修改要闻
     * 
     * @param uniNews 要闻
     * @return 结果
     */
    public int updateUniNews(UniNews uniNews);

    /**
     * 批量删除要闻
     * 
     * @param ids 需要删除的要闻主键集合
     * @return 结果
     */
    public int deleteUniNewsByIds(Integer[] ids);

    /**
     * 删除要闻信息
     * 
     * @param id 要闻主键
     * @return 结果
     */
    public int deleteUniNewsById(Integer id);
}
