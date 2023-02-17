package com.lzh.web.system.service;

import java.util.concurrent.TimeUnit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;
import com.lzh.common.constant.CacheConstants;
import com.lzh.common.constant.Constants;
import com.lzh.common.core.domain.entity.SysUser;
import com.lzh.common.exception.user.UserPasswordNotMatchException;
import com.lzh.common.exception.user.UserPasswordRetryLimitExceedException;
import com.lzh.common.utils.MessageUtils;
import com.lzh.common.utils.SecurityUtils;
import com.lzh.common.manager.AsyncManager;
import com.lzh.common.security.context.AuthenticationContextHolder;

/**
 * @Description: 登录密码方法
 */
@Component
public class SysPasswordService
{

    @Value(value = "${user.password.maxRetryCount}")
    private int maxRetryCount;

    @Value(value = "${user.password.lockTime}")
    private int lockTime;

    /**
     * 登录账户密码错误次数缓存键名
     * 
     * @param username 用户名
     * @return 缓存键key
     */
    private String getCacheKey(String username)
    {
        return CacheConstants.PWD_ERR_CNT_KEY + username;
    }

    public void validate(SysUser user)
    {
        Authentication usernamePasswordAuthenticationToken = AuthenticationContextHolder.getContext();
        String username = usernamePasswordAuthenticationToken.getName();
        String password = usernamePasswordAuthenticationToken.getCredentials().toString();


        if (!matches(user, password))
        {
            throw new UserPasswordNotMatchException();
        }
    }

    public boolean matches(SysUser user, String rawPassword)
    {
        return SecurityUtils.matchesPassword(rawPassword, user.getPassword());
    }
}
