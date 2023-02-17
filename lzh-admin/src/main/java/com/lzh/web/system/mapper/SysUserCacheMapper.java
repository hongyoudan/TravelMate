package com.lzh.web.system.mapper;

import java.util.List;
import com.lzh.web.system.domain.SysUserCache;

/**
 * 用户缓存Mapper接口
 * 
 * @author lzh
 * @date 2023-02-18
 */
public interface SysUserCacheMapper 
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
     * 删除用户缓存
     * 
     * @param cacheId 用户缓存主键
     * @return 结果
     */
    public int deleteSysUserCacheByCacheId(Integer cacheId);

    /**
     * 批量删除用户缓存
     * 
     * @param cacheIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysUserCacheByCacheIds(Integer[] cacheIds);


    int deleteSysUserCacheByKey(String userKey);
}
