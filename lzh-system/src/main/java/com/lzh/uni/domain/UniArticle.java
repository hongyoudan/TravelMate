package com.lzh.uni.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.lzh.common.annotation.Excel;
import com.lzh.common.core.domain.BaseEntity;

/**
 * @Description: 文章对象 uni_article
 */
public class UniArticle extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 文章ID */
    private Integer id;

    /** 文章标题 */
    @Excel(name = "文章标题")
    private String title;

    /** 图片地址 */
    @Excel(name = "图片地址")
    private String imgUrl;

    /** 文章简介 */
    @Excel(name = "文章简介")
    private String introduction;

    /** 文章内容 */
    @Excel(name = "文章内容")
    private String content;

    /** 文章类型 0 官方攻略 1 热门活动 2 头条资讯 3 热门资讯 */
    @Excel(name = "文章类型 0 官方攻略 1 热门活动 2 头条资讯 3 热门资讯")
    private String type;

    /** 是否在首页展示 0 不展示 1 展示 */
    @Excel(name = "是否在首页展示 0 不展示 1 展示")
    private String isDisplay;

    public void setId(Integer id) 
    {
        this.id = id;
    }

    public Integer getId() 
    {
        return id;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setImgUrl(String imgUrl) 
    {
        this.imgUrl = imgUrl;
    }

    public String getImgUrl() 
    {
        return imgUrl;
    }
    public void setIntroduction(String introduction) 
    {
        this.introduction = introduction;
    }

    public String getIntroduction() 
    {
        return introduction;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }

    public String getIsDisplay() {
        return isDisplay;
    }

    public void setIsDisplay(String isDisplay) {
        this.isDisplay = isDisplay;
    }

    @Override
    public String toString() {
        return "UniArticle{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", imgUrl='" + imgUrl + '\'' +
                ", introduction='" + introduction + '\'' +
                ", content='" + content + '\'' +
                ", type='" + type + '\'' +
                ", isDisplay='" + isDisplay + '\'' +
                '}';
    }
}
