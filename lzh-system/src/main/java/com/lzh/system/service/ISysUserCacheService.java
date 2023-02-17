package com.lzh.system.service;

import java.util.List;
import com.lzh.system.domain.SysUserCache;

/**
 * 用户缓存Service接口
 * 
 * @author lzh
 * @date 2023-02-18
 */
public interface ISysUserCacheService 
{
    /**
     * 查询用户缓存
     * 
     * @param cacheId 用户缓存主键
     * @return 用户缓存
     */
    public SysUserCache selectSysUserCacheByCacheId(Integer cacheId);

    /**
     * 查询用户缓存列表
     * 
     * @param sysUserCache 用户缓存
     * @return 用户缓存集合
     */
    public List<SysUserCache> selectSysUserCacheList(SysUserCache sysUserCache);

    /**
     * 新增用户缓存
     * 
     * @param sysUserCache 用户缓存
     * @return 结果
     */
    public int insertSysUserCache(SysUserCache sysUserCache);

    /**
     * 修改用户缓存
     * 
     * @param sysUserCache 用户缓存
     * @return 结果
     */
    public int updateSysUserCache(SysUserCache sysUserCache);

    /**
     * 批量删除用户缓存
     * 
     * @param cacheIds 需要删除的用户缓存主键集合
     * @return 结果
     */
    public int deleteSysUserCacheByCacheIds(Integer[] cacheIds);

    /**
     * 删除用户缓存信息
     * 
     * @param cacheId 用户缓存主键
     * @return 结果
     */
    public int deleteSysUserCacheByCacheId(Integer cacheId);

    int deleteSysUserCacheByKey(String userKey);
}
