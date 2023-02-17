package com.lzh.web.system.service.impl;

import java.util.List;

import com.lzh.web.system.domain.SysUserCache;
import com.lzh.web.system.mapper.SysUserCacheMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lzh.web.system.service.ISysUserCacheService;

/**
 * 用户缓存Service业务层处理
 * 
 * @author lzh
 * @date 2023-02-18
 */
@Service
public class SysUserCacheServiceImpl implements ISysUserCacheService 
{
    @Autowired
    private SysUserCacheMapper sysUserCacheMapper;

    /**
     * 查询用户缓存
     * 
     * @param cacheId 用户缓存主键
     * @return 用户缓存
     */
    @Override
    public SysUserCache selectSysUserCacheByCacheId(Integer cacheId)
    {
        return sysUserCacheMapper.selectSysUserCacheByCacheId(cacheId);
    }

    /**
     * 查询用户缓存列表
     * 
     * @param sysUserCache 用户缓存
     * @return 用户缓存
     */
    @Override
    public List<SysUserCache> selectSysUserCacheList(SysUserCache sysUserCache)
    {
        return sysUserCacheMapper.selectSysUserCacheList(sysUserCache);
    }

    /**
     * 新增用户缓存
     * 
     * @param sysUserCache 用户缓存
     * @return 结果
     */
    @Override
    public int insertSysUserCache(SysUserCache sysUserCache)
    {
        return sysUserCacheMapper.insertSysUserCache(sysUserCache);
    }

    /**
     * 修改用户缓存
     * 
     * @param sysUserCache 用户缓存
     * @return 结果
     */
    @Override
    public int updateSysUserCache(SysUserCache sysUserCache)
    {
        return sysUserCacheMapper.updateSysUserCache(sysUserCache);
    }

    /**
     * 批量删除用户缓存
     * 
     * @param cacheIds 需要删除的用户缓存主键
     * @return 结果
     */
    @Override
    public int deleteSysUserCacheByCacheIds(Integer[] cacheIds)
    {
        return sysUserCacheMapper.deleteSysUserCacheByCacheIds(cacheIds);
    }

    /**
     * 删除用户缓存信息
     * 
     * @param cacheId 用户缓存主键
     * @return 结果
     */
    @Override
    public int deleteSysUserCacheByCacheId(Integer cacheId)
    {
        return sysUserCacheMapper.deleteSysUserCacheByCacheId(cacheId);
    }

    @Override
    public int deleteSysUserCacheByKey(String userKey)
    {
        return sysUserCacheMapper.deleteSysUserCacheByKey(userKey);
    }

}
