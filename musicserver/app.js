//将第三方模块引入到当前程序中
const express= require("express");
const bodyParser=require('body-parser');
const userRouter=require('./routes/user.js');
const indexRouter=require('./routes/index.js');
const session = require("express-session");
const cors = require("cors");
// const mysql = require("mysql");

//创建web服务器
var server=express();
//监听端口
server.listen(8000);
//处理跨域 cors 
server.use(cors({
  	origin:["http://127.0.0.1:8080","http://localhost:8080","http://172.18.88.47:8080"],
  	credentials:true
}))
//配置session
server.use(session({
   	secret:"128位字符串",
   	resave:true,
   	saveUninitialized:true
}));

console.log('服务器启动完成');

//托管静态资源到public目录下
server.use(express.static('public'));
//使用body-parser中间件
server.use(bodyParser.urlencoded({
	extended:false
}));

//使用路由器，挂载到/user下
server.use('/user',userRouter);
server.use('/index',indexRouter);



// //创建数据库连接池
// var pool = mysql.createPool({
//    host:"127.0.0.1",
//    user:"root",
//    password:"",
//    port:3306,
//    connectionLimit:20,
//    database:"qqMusic"
// })

// //创建web服务器监听
// var server = express();
// server.listen(8000);
// //处理跨域 cors 
// server.use(cors({
//   origin:["http://127.0.0.1:8080","http://localhost:8080","http://172.18.88.47:8080"],
//   credentials:true
// }))
// //配置session
// server.use(session({
//    secret:"128位字符串",
//    resave:true,
//    saveUninitialized:true
// }));
// //配置静态目录
// server.use(express.static("public"));

// //功能一:完成用户登录
// //启动服务器app.js/启动数据库
// //打开浏览器
// //http://127.0.0.1:8000/login?qname=doudou&qpwd=123456

// //功能一 登录
// server.get("/login",(req,res)=>{
//   //接收网页传递数据 用户名和密码
//   var u = req.query.qname;
//   var p = req.query.qpwd;

//   //创建sql
//   var sql = "SELECT qid FROM qq_user";
//   sql+=" WHERE qname = ? AND qpwd = ?";
//   //执行sql语句并且获取返回结果
//   pool.query(sql,[u,p],(err,result)=>{
//    //判断登录是否成功
//    if(err)throw err;
//    //将结果返回网页
//    if(result.length==0){
//      res.send({code:-1,msg:"用户名或密码有误"})
//    }else{
//      //获取当前登录用户id
//      //result=[{id:2}]
//      var qid = result[0].qid;
//      //将用户id保存session对象中
//      //qid当前登录：用户凭证
//      req.session.qid = qid;
//      console.log(req.session);
//      res.send({code:1,msg:"登录成功"});
//    }
//   });
// })

// //注册
// server.get('/reg',function(req,res){
//   var obj=req.query;
//   var sql="insert into qq_user set ?";
//   pool.query(sql,[obj],function(err,result){
//     if(err) throw err;
//     if (result.affectedRows>0){
// 	  res.send({code:1,msg:"注册成功"});
// 	}else{
// 	  res.send({code:-1,msg:"注册失败"});
// 	}
//   });	
// });

// server.get("/singer",(req,res)=>{
//  //接收客户请求数据 
//  var qno = req.query.qno;
//  var ps  = req.query.pageSize;
//  //设置默认数据
//  if(!qno){
//    qno = 1;
//  }
//  if(!ps){
//    ps = 80;
//  }
//  var sql = "SELECT * FROM qq_singer_two LIMIT ?,?";
//  var offset = (qno-1)*ps;//起始记录数
//  ps = parseInt(ps);      //行数 
//  pool.query(sql,[id,offset,ps],(err,result)=>{
//    //获取返回结果发送客户端
//    if(err)throw err;
//    res.send({code:1,msg:"查询成功",
//    data:result});
//  });
// })

// //功能 数据显示
// //http://127.0.0.1:8080/product?id=2
// server.get("/recommend",(req,res)=>{
//  //接收客户请求数据 
//  var id=req.query.id;
//  var qno=req.query.qno;
//  var ps=req.query.pageSize;
//  //设置默认数据
//  if(!qno){
//    qno = 1;
//  }
//  if(!ps){
//    ps = 5;
//  }
//  var sql = "SELECT * FROM qq_one_sub  where qline_id=? LIMIT ?,?";
//  var offset = (qno-1)*ps;//起始记录数
//  ps = parseInt(ps);      //行数 
//  pool.query(sql,[id,offset,ps],(err,result)=>{
//    //获取返回结果发送客户端
//    if(err)throw err;
//    res.send({code:1,msg:"查询成功",data:result});
//  });
// })

// //功能 添加评论
// //此功能先行条件先登录
// //http://127.0.0.1:8080/addcomment?qname=陈大雷&qtime=9:00&qqcomment=666
// server.get("/addcomment",(req,res)=>{
//   //获取客户端数据
//   var obj=req.query;
// //  var qname=req.query.qname;
// //  var qtime=req.query.qtime;
// //  var qqcomment=req.query.qqcomment;
//   var sql="insert into qq_user_comment set ?";
//   pool.query(sql,[obj],(err,result)=>{
//     if(err) throw err;
//     if(result.affectedRows>0){
//       res.send({code:1,msg:"评论添加成功"});
//     }else{
//       res.send({code:-1,msg:"评论添加失败"});
//     }
//   })
// })


//http://127.0.0.1:8080/comment?qmusic_id=2
//功能 查询指定歌曲评论
// server.get("/comment",(req,res)=>{
//   var qmusic_id =req.query.qmusic_id;
//   var qno = req.query.qno;
//   var ps  = req.query.pageSize;
//   //设置默认数据
//   if(!qno){
//     qno = 1;
//   }
//   if(!ps){
//     ps = 5;
//   }
//   var sql = "SELECT * FROM qq_user_comment WHERE qmusic_id = ? LIMIT ?,?";
//   var offset = (qno-1)*ps;//起始记录数
//   ps = parseInt(ps); 
//   pool.query(sql,[qmusic_id,offset,ps],(err,result)=>{
//    //获取返回结果发送客户端
//    console.log(result);
//    if(err)throw err;
//    res.send({code:1,msg:"查询成功",
//    data:result});
//  });
// })

