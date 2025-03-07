<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [

	{
        "backMenu":[
            
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"员工管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"员工管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"会员管理",
                        "menuJump":"列表",
                        "tableName":"huiyuan"
                    }
                ],
                "menu":"会员管理"
            }
			,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"连锁店管理",
                        "menuJump":"列表",
                        "tableName":"fendian"
                    }
					,{
                        "buttons":[
                            "查看"
                        ],
                        "menu":"分店物资管理",
                        "menuJump":"列表",
                        "tableName":"fendianGoods"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"购买订单管理",
                        "menuJump":"列表",
                        "tableName":"fendianGoodsOrder"
                    }
                    ,
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"购买详情管理",
                        "menuJump":"列表",
                        "tableName":"fendianGoodsOrderList"
                    }
                ],
                "menu":"连锁店管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"总库物资管理",
                        "menuJump":"列表",
                        "tableName":"goods"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"供应商管理",
                        "menuJump":"列表",
                        "tableName":"gongyingshang"
                    }
                    ,
                    {
                        "buttons":[
                            "新增",
                            "删除"
                        ],
                        "menu":"物资采购调度列表管理",
                        "menuJump":"列表",
                        "tableName":"goodsOrder"
                    }
                    ,
                    {
                        "buttons":[
                            "删除"
                        ],
                        "menu":"物资采购调度列表详情管理",
                        "menuJump":"列表",
                        "tableName":"goodsOrderList"
                    }
                ],
                "menu":"总库物资管理"
            }
			,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"分店等级管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryFendian"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"供应商等级管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGongyingshang"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"供应商信用等级管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGongyingshangXinyong"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"物资类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGoods"
                    }
                ],
                "menu":"基础数据管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改"
                        ],
                        "menu":"会员管理",
                        "menuJump":"列表",
                        "tableName":"huiyuan"
                    }
                ],
                "menu":"会员管理"
            }
			,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"分店物资管理",
                        "menuJump":"列表",
                        "tableName":"fendianGoods"
                    }
                ],
                "menu":"分店物资管理"
            }
			,{
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "删除"
                        ],
                        "menu":"购买订单管理",
                        "menuJump":"列表",
                        "tableName":"fendianGoodsOrder"
                    }
                ],
                "menu":"购买订单管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"用户",
        "tableName":"yonghu"
    }
];

var hasMessage = '';
