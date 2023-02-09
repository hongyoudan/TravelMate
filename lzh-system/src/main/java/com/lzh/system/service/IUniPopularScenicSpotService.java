package com.lzh.system.service;

import java.util.List;
import com.lzh.system.domain.UniPopularScenicSpot;

/**
 * 景点信息Service接口
 * 
 * @author lzh
 * @date 2023-02-09
 */
public interface IUniPopularScenicSpotService 
{
    /**
     * 查询景点信息
     * 
     * @param id 景点信息主键
     * @return 景点信息
     */
    public UniPopularScenicSpot selectUniPopularScenicSpotById(Integer id);

    /**
     * 查询景点信息列表
     * 
     * @param uniPopularScenicSpot 景点信息
     * @return 景点信息集合
     */
    public List<UniPopularScenicSpot> selectUniPopularScenicSpotList(UniPopularScenicSpot uniPopularScenicSpot);

    /**
     * 新增景点信息
     * 
     * @param uniPopularScenicSpot 景点信息
     * @return 结果
     */
    public int insertUniPopularScenicSpot(UniPopularScenicSpot uniPopularScenicSpot);

    /**
     * 修改景点信息
     * 
     * @param uniPopularScenicSpot 景点信息
     * @return 结果
     */
    public int updateUniPopularScenicSpot(UniPopularScenicSpot uniPopularScenicSpot);

    /**
     * 批量删除景点信息
     * 
     * @param ids 需要删除的景点信息主键集合
     * @return 结果
     */
    public int deleteUniPopularScenicSpotByIds(Integer[] ids);

    /**
     * 删除景点信息信息
     * 
     * @param id 景点信息主键
     * @return 结果
     */
    public int deleteUniPopularScenicSpotById(Integer id);
}
