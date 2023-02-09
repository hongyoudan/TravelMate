package com.lzh.system.service.impl;

import java.util.List;
import com.lzh.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lzh.system.mapper.UniPopularScenicSpotMapper;
import com.lzh.system.domain.UniPopularScenicSpot;
import com.lzh.system.service.IUniPopularScenicSpotService;

/**
 * 景点信息Service业务层处理
 * 
 * @author lzh
 * @date 2023-02-09
 */
@Service
public class UniPopularScenicSpotServiceImpl implements IUniPopularScenicSpotService 
{
    @Autowired
    private UniPopularScenicSpotMapper uniPopularScenicSpotMapper;

    /**
     * 查询景点信息
     * 
     * @param id 景点信息主键
     * @return 景点信息
     */
    @Override
    public UniPopularScenicSpot selectUniPopularScenicSpotById(Integer id)
    {
        return uniPopularScenicSpotMapper.selectUniPopularScenicSpotById(id);
    }

    /**
     * 查询景点信息列表
     * 
     * @param uniPopularScenicSpot 景点信息
     * @return 景点信息
     */
    @Override
    public List<UniPopularScenicSpot> selectUniPopularScenicSpotList(UniPopularScenicSpot uniPopularScenicSpot)
    {
        return uniPopularScenicSpotMapper.selectUniPopularScenicSpotList(uniPopularScenicSpot);
    }

    /**
     * 新增景点信息
     * 
     * @param uniPopularScenicSpot 景点信息
     * @return 结果
     */
    @Override
    public int insertUniPopularScenicSpot(UniPopularScenicSpot uniPopularScenicSpot)
    {
        uniPopularScenicSpot.setCreateTime(DateUtils.getNowDate());
        return uniPopularScenicSpotMapper.insertUniPopularScenicSpot(uniPopularScenicSpot);
    }

    /**
     * 修改景点信息
     * 
     * @param uniPopularScenicSpot 景点信息
     * @return 结果
     */
    @Override
    public int updateUniPopularScenicSpot(UniPopularScenicSpot uniPopularScenicSpot)
    {
        uniPopularScenicSpot.setUpdateTime(DateUtils.getNowDate());
        return uniPopularScenicSpotMapper.updateUniPopularScenicSpot(uniPopularScenicSpot);
    }

    /**
     * 批量删除景点信息
     * 
     * @param ids 需要删除的景点信息主键
     * @return 结果
     */
    @Override
    public int deleteUniPopularScenicSpotByIds(Integer[] ids)
    {
        return uniPopularScenicSpotMapper.deleteUniPopularScenicSpotByIds(ids);
    }

    /**
     * 删除景点信息信息
     * 
     * @param id 景点信息主键
     * @return 结果
     */
    @Override
    public int deleteUniPopularScenicSpotById(Integer id)
    {
        return uniPopularScenicSpotMapper.deleteUniPopularScenicSpotById(id);
    }
}
