package com.lzh.uni.service.impl;

import java.util.List;
import com.lzh.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lzh.uni.mapper.UniArticleMapper;
import com.lzh.uni.domain.UniArticle;
import com.lzh.uni.service.IUniArticleService;

/**
 * 文章Service业务层处理
 * 
 * @author lzh
 * @date 2023-02-10
 */
@Service
public class UniArticleServiceImpl implements IUniArticleService 
{
    @Autowired
    private UniArticleMapper uniArticleMapper;

    /**
     * 查询文章
     * 
     * @param id 文章主键
     * @return 文章
     */
    @Override
    public UniArticle selectUniArticleById(Integer id)
    {
        return uniArticleMapper.selectUniArticleById(id);
    }

    /**
     * 查询文章列表
     * 
     * @param uniArticle 文章
     * @return 文章
     */
    @Override
    public List<UniArticle> selectUniArticleList(UniArticle uniArticle)
    {
        return uniArticleMapper.selectUniArticleList(uniArticle);
    }

    /**
     * 新增文章
     * 
     * @param uniArticle 文章
     * @return 结果
     */
    @Override
    public int insertUniArticle(UniArticle uniArticle)
    {
        uniArticle.setCreateTime(DateUtils.getNowDate());
        return uniArticleMapper.insertUniArticle(uniArticle);
    }

    /**
     * 修改文章
     * 
     * @param uniArticle 文章
     * @return 结果
     */
    @Override
    public int updateUniArticle(UniArticle uniArticle)
    {
        uniArticle.setUpdateTime(DateUtils.getNowDate());
        return uniArticleMapper.updateUniArticle(uniArticle);
    }

    /**
     * 批量删除文章
     * 
     * @param ids 需要删除的文章主键
     * @return 结果
     */
    @Override
    public int deleteUniArticleByIds(Integer[] ids)
    {
        return uniArticleMapper.deleteUniArticleByIds(ids);
    }

    /**
     * 删除文章信息
     * 
     * @param id 文章主键
     * @return 结果
     */
    @Override
    public int deleteUniArticleById(Integer id)
    {
        return uniArticleMapper.deleteUniArticleById(id);
    }
}
