package com.lzh.web.system.domain;

import com.lzh.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 用户缓存对象 sys_user_cache
 * 
 * @author lzh
 * @date 2023-02-18
 */
public class SysUserCache extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 用户缓存ID */
    private Integer cacheId;

    /** 缓存key */
    private String userKey;

    /** 缓存value */
    private String loginUser;

    public void setCacheId(Integer cacheId) 
    {
        this.cacheId = cacheId;
    }

    public Integer getCacheId() 
    {
        return cacheId;
    }
    public void setUserKey(String userKey) 
    {
        this.userKey = userKey;
    }

    public String getUserKey() 
    {
        return userKey;
    }
    public void setLoginUser(String loginUser) 
    {
        this.loginUser = loginUser;
    }

    public String getLoginUser() 
    {
        return loginUser;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("cacheId", getCacheId())
            .append("userKey", getUserKey())
            .append("loginUser", getLoginUser())
            .toString();
    }
}
