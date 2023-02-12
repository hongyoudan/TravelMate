package com.lzh.uni.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.lzh.common.annotation.Excel;
import com.lzh.common.core.domain.BaseEntity;

/**
 * @Description: 景点信息对象 uni_scenic_spot
 */
public class UniScenicSpot extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 景点ID */
    private Integer id;

    /** 景点名称 */
    @Excel(name = "景点名称")
    private String name;

    /** 图片地址 */
    @Excel(name = "图片地址")
    private String imgUrl;

    /** 景点地址 */
    @Excel(name = "景点地址")
    private String address;

    /** 景点简介 */
    @Excel(name = "景点简介")
    private String introduction;

    /** 是否热门 0 不是热门 1 热门 */
    @Excel(name = "是否热门 0 不是热门 1 热门")
    private String isHot;

    /** 景点城市 */
    @Excel(name = "景点城市")
    private String city;

    /** 景点详情 */
    @Excel(name = "景点详情")
    private String details;

    public void setId(Integer id) 
    {
        this.id = id;
    }

    public Integer getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setImgUrl(String imgUrl) 
    {
        this.imgUrl = imgUrl;
    }

    public String getImgUrl() 
    {
        return imgUrl;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setIntroduction(String introduction) 
    {
        this.introduction = introduction;
    }

    public String getIntroduction() 
    {
        return introduction;
    }
    public void setIsHot(String isHot) 
    {
        this.isHot = isHot;
    }

    public String getIsHot() 
    {
        return isHot;
    }
    public void setCity(String city) 
    {
        this.city = city;
    }

    public String getCity() 
    {
        return city;
    }
    public void setDetails(String details) 
    {
        this.details = details;
    }

    public String getDetails() 
    {
        return details;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("imgUrl", getImgUrl())
            .append("address", getAddress())
            .append("introduction", getIntroduction())
            .append("isHot", getIsHot())
            .append("city", getCity())
            .append("details", getDetails())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
