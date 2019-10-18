const express=require("express")
const router=express.Router();
const pool=require("../pool")

//评论区功能：将评论添加到评论区
//1 接收客户端请求
router.get("/commont",(req,res)=>{
  	//2 判断当前用户是否登录成功
  	var qid = req.session.qid;
  	if(!qid){
    	res.send({code:-1,msg:"请先登录"});
    	return;
  	}
  	//3 获取客户端数据
	var qid=req.query.qid;
  	var qname=req.query.qname;
  	var qtime=req.query.qtime;
  	var qqcomment=req.query.qqcomment;
  	//4 创建sql 添加评论
  	var sql = `INSERT INTO qq_user_comment VALUES(${qid},${qname},${qtime},${qqcomment})`;
  	//5 执行sql
  	pool.query(sql,(err,result)=>{
    	if(err) throw err;
    	if(result.affectedRows>0){
      		res.send({code:1,msg:"评论添加成功"});
    	}else{
      		res.send({code:-2,msg:"评论添加失败"});
    	}
  	})
})

module.exports=router;
