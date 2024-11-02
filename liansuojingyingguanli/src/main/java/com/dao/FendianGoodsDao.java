package com.dao;

import com.entity.FendianGoodsEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.FendianGoodsView;

/**
 * 分店物资 Dao 接口
 *
 * @author 
 * @since 2021-04-10
 */
public interface FendianGoodsDao extends BaseMapper<FendianGoodsEntity> {

   List<FendianGoodsView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
