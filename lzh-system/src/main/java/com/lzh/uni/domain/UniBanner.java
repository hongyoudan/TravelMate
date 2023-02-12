package com.lzh.uni.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.lzh.common.annotation.Excel;
import com.lzh.common.core.domain.BaseEntity;

/**
 * @Description: 轮播图对象 uni_banner
 */
public class UniBanner extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 轮播图ID */
    private Integer id;

    /** 轮播图标题 */
    @Excel(name = "轮播图标题")
    private String title;

    /** 轮播图链接地址 */
    @Excel(name = "轮播图链接地址")
    private String link;

    /** 轮播图图片地址 */
    @Excel(name = "轮播图图片地址")
    private String imgUrl;

    public void setId(Integer id) 
    {
        this.id = id;
    }

    public Integer getId() 
    {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setLink(String link)
    {
        this.link = link;
    }

    public String getLink() 
    {
        return link;
    }
    public void setImgUrl(String imgUrl) 
    {
        this.imgUrl = imgUrl;
    }

    public String getImgUrl() 
    {
        return imgUrl;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("title", getTitle())
            .append("link", getLink())
            .append("imgUrl", getImgUrl())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
