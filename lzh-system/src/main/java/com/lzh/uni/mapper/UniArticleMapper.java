package com.lzh.uni.mapper;

import java.util.List;
import com.lzh.uni.domain.UniArticle;

/**
 * 文章Mapper接口
 * 
 * @author lzh
 * @date 2023-02-10
 */
public interface UniArticleMapper 
{
    /**
     * 查询文章
     * 
     * @param id 文章主键
     * @return 文章
     */
    public UniArticle selectUniArticleById(Integer id);

    /**
     * 查询文章列表
     * 
     * @param uniArticle 文章
     * @return 文章集合
     */
    public List<UniArticle> selectUniArticleList(UniArticle uniArticle);

    /**
     * 新增文章
     * 
     * @param uniArticle 文章
     * @return 结果
     */
    public int insertUniArticle(UniArticle uniArticle);

    /**
     * 修改文章
     * 
     * @param uniArticle 文章
     * @return 结果
     */
    public int updateUniArticle(UniArticle uniArticle);

    /**
     * 删除文章
     * 
     * @param id 文章主键
     * @return 结果
     */
    public int deleteUniArticleById(Integer id);

    /**
     * 批量删除文章
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteUniArticleByIds(Integer[] ids);
}
