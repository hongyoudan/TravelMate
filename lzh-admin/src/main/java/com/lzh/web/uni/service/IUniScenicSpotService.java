package com.lzh.uni.service;

import java.util.List;
import com.lzh.uni.domain.UniScenicSpot;

/**
 * @Description: 景点信息Service接口
 */
public interface IUniScenicSpotService 
{
    /**
     * 查询景点信息
     * 
     * @param id 景点信息主键
     * @return 景点信息
     */
    public UniScenicSpot selectUniScenicSpotById(Integer id);

    /**
     * 查询景点信息列表
     * 
     * @param uniScenicSpot 景点信息
     * @return 景点信息集合
     */
    public List<UniScenicSpot> selectUniScenicSpotList(UniScenicSpot uniScenicSpot);

    /**
     * 新增景点信息
     * 
     * @param uniScenicSpot 景点信息
     * @return 结果
     */
    public int insertUniScenicSpot(UniScenicSpot uniScenicSpot);

    /**
     * 修改景点信息
     * 
     * @param uniScenicSpot 景点信息
     * @return 结果
     */
    public int updateUniScenicSpot(UniScenicSpot uniScenicSpot);

    /**
     * 批量删除景点信息
     * 
     * @param ids 需要删除的景点信息主键集合
     * @return 结果
     */
    public int deleteUniScenicSpotByIds(Integer[] ids);

    /**
     * 删除景点信息信息
     * 
     * @param id 景点信息主键
     * @return 结果
     */
    public int deleteUniScenicSpotById(Integer id);
}
