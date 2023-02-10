package com.lzh.framework.web.service;

import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;
import com.lzh.common.constant.CacheConstants;
import com.lzh.common.core.domain.entity.SysUser;
import com.lzh.common.core.domain.model.LoginUser;
import com.lzh.common.core.redis.RedisCache;
import com.lzh.common.exception.ServiceException;
import com.lzh.common.exception.user.UserPasswordNotMatchException;
import com.lzh.common.utils.DateUtils;
import com.lzh.common.utils.ServletUtils;
import com.lzh.common.utils.StringUtils;
import com.lzh.common.utils.ip.IpUtils;
import com.lzh.framework.security.context.AuthenticationContextHolder;
import com.lzh.system.service.ISysUserService;

/**
 * 登录校验方法
 * 
 * @author ruoyi
 */
@Component
public class SysLoginService
{
    @Autowired
    private TokenService tokenService;

    @Resource
    private AuthenticationManager authenticationManager;

    @Autowired
    private RedisCache redisCache;
    
    @Autowired
    private ISysUserService userService;

    /**
     * 登录验证
     * 
     * @param username 用户名
     * @param password 密码
     * @param uuid 唯一标识
     * @return 结果
     */
    public String login(String username, String password, String uuid)
    {
        // 用户验证
        Authentication authentication = null;
        try
        {
            UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(username, password);
            AuthenticationContextHolder.setContext(authenticationToken);
            // 该方法会去调用UserDetailsServiceImpl.loadUserByUsername
            authentication = authenticationManager.authenticate(authenticationToken);
        }
        catch (Exception e)
        {
            if (e instanceof BadCredentialsException)
            {
                throw new UserPasswordNotMatchException();
            }
            else
            {
                throw new ServiceException(e.getMessage());
            }
        }
        finally
        {
            AuthenticationContextHolder.clearContext();
        }
        LoginUser loginUser = (LoginUser) authentication.getPrincipal();
        recordLoginInfo(loginUser.getUserId());
        // 生成token
        return tokenService.createToken(loginUser);
    }

    /**
     * 记录登录信息
     *
     * @param userId 用户ID
     */
    public void recordLoginInfo(Long userId)
    {
        SysUser sysUser = new SysUser();
        sysUser.setUserId(userId);
        sysUser.setLoginIp(IpUtils.getIpAddr(ServletUtils.getRequest()));
        sysUser.setLoginDate(DateUtils.getNowDate());
        userService.updateUserProfile(sysUser);
    }
}
