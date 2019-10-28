const express=require("express")
const router=express.Router();
const pool=require("../pool")

//功能 添加评论
//此功能先行条件先登录
//http://127.0.0.1:8000/addcomment?qname=陈大雷&qtime=9:00&qqcomment=666
router.get("/addcomment",(req,res)=>{
  //获取客户端数据
  var obj=req.query;
//  var qname=req.query.qname;
//  var qtime=req.query.qtime;
//  var qqcomment=req.query.qqcomment;
  var sql="insert into qq_user_comment set ?";
  pool.query(sql,[obj],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"评论添加成功"});
    }else{
      res.send({code:-1,msg:"评论添加失败"});
    }
  })
})


//http://127.0.0.1:8000/comment?qmusic_id=2
//功能 查询指定歌曲评论
router.get("/comment",(req,res)=>{
  var qmusic_id =req.query.qmusic_id;
  var qno = req.query.qno;
  var ps  = req.query.pageSize;
  //设置默认数据
  if(!qno){
    qno = 1;
  }
  if(!ps){
    ps = 5;
  }
  var sql = "SELECT * FROM qq_user_comment WHERE qmusic_id = ? LIMIT ?,?";
  var offset = (qno-1)*ps;//起始记录数
  ps = parseInt(ps); 
  pool.query(sql,[qmusic_id,offset,ps],(err,result)=>{
   //获取返回结果发送客户端
   if(err)throw err;
   res.send({code:1,msg:"查询成功",
   data:result});
 });
})

module.exports=router;
