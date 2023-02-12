package com.lzh.uni.service.impl;

import java.util.List;
import com.lzh.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lzh.uni.mapper.UniScenicSpotMapper;
import com.lzh.uni.domain.UniScenicSpot;
import com.lzh.uni.service.IUniScenicSpotService;

/**
 * @Description: 景点信息Service业务层处理
 */
@Service
public class UniScenicSpotServiceImpl implements IUniScenicSpotService 
{
    @Autowired
    private UniScenicSpotMapper uniScenicSpotMapper;

    /**
     * 查询景点信息
     * 
     * @param id 景点信息主键
     * @return 景点信息
     */
    @Override
    public UniScenicSpot selectUniScenicSpotById(Integer id)
    {
        return uniScenicSpotMapper.selectUniScenicSpotById(id);
    }

    /**
     * 查询景点信息列表
     * 
     * @param uniScenicSpot 景点信息
     * @return 景点信息
     */
    @Override
    public List<UniScenicSpot> selectUniScenicSpotList(UniScenicSpot uniScenicSpot)
    {
        return uniScenicSpotMapper.selectUniScenicSpotList(uniScenicSpot);
    }

    /**
     * 新增景点信息
     * 
     * @param uniScenicSpot 景点信息
     * @return 结果
     */
    @Override
    public int insertUniScenicSpot(UniScenicSpot uniScenicSpot)
    {
        uniScenicSpot.setCreateTime(DateUtils.getNowDate());
        return uniScenicSpotMapper.insertUniScenicSpot(uniScenicSpot);
    }

    /**
     * 修改景点信息
     * 
     * @param uniScenicSpot 景点信息
     * @return 结果
     */
    @Override
    public int updateUniScenicSpot(UniScenicSpot uniScenicSpot)
    {
        uniScenicSpot.setUpdateTime(DateUtils.getNowDate());
        return uniScenicSpotMapper.updateUniScenicSpot(uniScenicSpot);
    }

    /**
     * 批量删除景点信息
     * 
     * @param ids 需要删除的景点信息主键
     * @return 结果
     */
    @Override
    public int deleteUniScenicSpotByIds(Integer[] ids)
    {
        return uniScenicSpotMapper.deleteUniScenicSpotByIds(ids);
    }

    /**
     * 删除景点信息信息
     * 
     * @param id 景点信息主键
     * @return 结果
     */
    @Override
    public int deleteUniScenicSpotById(Integer id)
    {
        return uniScenicSpotMapper.deleteUniScenicSpotById(id);
    }
}
