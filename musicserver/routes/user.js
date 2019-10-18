const express=require('express');
//引入连接池对象
const pool=require('../pool.js');
//创建路由器
var router=express.Router();

//添加路由
//1.用户注册
router.post('/register',function(req,res){
	//1、获取post请求的数据
	var obj=req.body;
	//console.log(obj);
	//2、验证是否为空
	var i=400;
	for (var key in obj)
	{
		i++;
		//如果属性值为空，提示属性名必须
		if (!obj[key])
		{
			res.send({code:i,msg:key+' required'});
			return;
		}
	}
	//3、执行SQL语句
	pool.query('insert into OPPO_user set ?',[obj],function(err,result){
		if (err)
		{
			throw err;
		}
		//console.log(result);
		//如果插入成功
		if (result.affectedRows>0)
		{
			res.send({code:200,msg:'注册成功'});
		}
	});
});
//2、用户登录
router.post('/login',function(req,res){
	//1、获取post请求的数据
	var obj=req.body;
	//console.log(obj);
	//2、验证是否为空
	if (!obj.unickname)
	{
		res.send({code:401,msg:'账号不能为空'});
		return;
	}
	if (!obj.upwd)
	{
		res.send({code:402,msg:'密码不能为空'});
		return;
	}
	//3、执行SQL语句
	pool.query('select * from OPPO_user where unickname=? and upwd=?',[obj.unickname,obj.upwd],function(err,result){
		if (err)
		{
			throw err;
		}
		//验证是否登录成功
		if (result.length>0)
		{
			res.send({code:200,msg:'登录成功'});
		}else{
			res.send({code:201,msg:'账号或密码不正确'})
		}
	});
});
//3、用户详情
router.get('/detail',function(req,res){
	//1、获取get请求的数据
	var obj=req.query;
	//console.log(obj);
	//2、验证是否为空
	if (!obj.unickname)
	{
		res.send({code:401,msg:'需要输入用户名'});
		return;
	}
	//3、执行SQL语句
	pool.query('select * from oppo_user where unickname=?',[obj.unickname],function(err,result){
		if (err)
		{
			throw err;
		}
		res.send(result);
	});
});
//4、用户修改
router.post('/update',function(req,res){
	//1、获取post请求的数据
	var obj=req.body;
	//console.log(obj);
	//2、验证是否为空
	var i=400;
	for (var key in obj)
	{
		i++;
		if (!obj[key])
		{
			res.send({code:i,msg:key+' required'});
			return;
		}
	}
	//3、执行SQL语句
	//取出用户名
	var unickname=obj.unickname;
	//删除对象中的编号属性
	delete obj.unickname;
	pool.query('update oppo_user set ? where unickname=?',[obj,unickname],function(err,result){
		if (err)
		{
			throw err;
		}
		if (result.affectedRows>0)
		{
			res.send({code:200,msg:'修改成功'});
		}else{
			res.send({code:201,msg:'修改失败'});
		}
	});
});
//5、分页查询用户列表
router.get('/list',function(req,res){
	//1、获取get请求的数据
	var obj=req.query;
	//2、验证是否为空，为空的话设置默认值
	var count=obj.count;
	var pno=obj.pno;
	if (!count)
	{
		count=2;
	}
	if (!pno)
	{
		pno=1;
	}
	//3、将数值转为整型
	count=parseInt(count);
	pno=parseInt(pno);
	//4、计算开始的值=（页码-1）*大小
	var start=(pno-1)*count;
	//5、执行SQL语句
	pool.query('select * from oppo_user limit ?,?',[start,count],function(err,result){
		if (err)
		{
			throw err;
		}
		res.send(result);
	});
});
//6、用户删除
router.get('/delete',function(req,res){
	//1、获取get请求的数据
	var obj=req.query;
	//2、验证是否为空
	if (!obj.unickname)
	{
		res.send({code:401,msg:'用户名不能为空'});
		return;
	}
	//3、执行SQL语句
	pool.query('delete from oppo_user where unickname=?',[obj.unickname],function(err,result){
		if (err)
		{
			throw err;
		}
		if (result.affectedRows>0)
		{
			res.send({code:200,msg:'删除成功'});
		}else{
			res.send({code:201,msg:'删除失败'});
		}
	});
});
module.exports=router;