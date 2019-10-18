const express=require("express")
const router=express.Router();
const pool=require("../pool")


// ================nav===================
router.get("/header_nav",(req,res)=>{
    var sql = "SELECT * FROM qq_header_nav";
    pool.query(sql,(err,result)=>{
        //获取返回结果发送客户端
        if(err)throw err;
        res.send({code:1,msg:"查询成功",data:result});
    });
})


// ================1F===================
// 首页轮播数据
router.get("/recommend",(req,res)=>{
    //接收客户请求数据 
    var id=req.query.id;
    var qno=req.query.qno;
    var ps=req.query.pageSize;
    //设置默认数据
    if(!qno){
        qno = 1;
    }
    if(!ps){
        ps = 5;
    }
    var sql = "SELECT * FROM qq_one_sub where qline_id=? LIMIT ?,?";
    var offset = (qno-1)*ps;//起始记录数
    ps = parseInt(ps);      //行数 
    pool.query(sql,[id,offset,ps],(err,result)=>{
        //获取返回结果发送客户端
        if(err)throw err;
        res.send({code:1,msg:"查询成功",data:result});
    });
})

// 首页tabs数据
router.get("/recommend_tabs",(req,res)=>{
    //接收客户请求数据 
    var tid=req.query.qid;
    var sql = "SELECT * FROM qq_one_nav";
    pool.query(sql,(err,result)=>{
        //获取返回结果发送客户端
        if(err)throw err;
        res.send({code:1,msg:"查询成功",data:result});
    });
})


// =====================2F========================
// 首页轮播数据
router.get("/newsong",(req,res)=>{
    //接收客户请求数据 
    var id=req.query.id;
    var qno=req.query.qno;
    var ps=req.query.pageSize;
    //设置默认数据
    if(!qno){
        qno = 1;
    }
    if(!ps){
        ps = 9;
    }
    var sql = "SELECT * FROM qq_two_sub where qline_id=? LIMIT ?,?";
    var offset = (qno-1)*ps;//起始记录数
    ps = parseInt(ps);      //行数 
    pool.query(sql,[id,offset,ps],(err,result)=>{
        //获取返回结果发送客户端
        if(err)throw err;
        res.send({code:1,msg:"查询成功",data:result});
    });
})

// 首页tabs数据
router.get("/newsong_tabs",(req,res)=>{
    //接收客户请求数据 
    var tid=req.query.qid;
    var sql = "SELECT * FROM qq_two_nav";
    pool.query(sql,(err,result)=>{
        //获取返回结果发送客户端
        if(err)throw err;
        res.send({code:1,msg:"查询成功",data:result});
    });
})
// =====================3F========================
// 首页轮播数据
router.get("/splendid",(req,res)=>{
    //接收客户请求数据 
    var qno=req.query.qno;
    var ps=req.query.pageSize;
    if(!qno){
        qno = 1;
    }
    if(!ps){
        ps = 2;
    }
    var sql = "SELECT * FROM qq_three_carousel limit ?,?";
    var offset = (qno-1)*ps;//起始记录数
    ps = parseInt(ps);      //行数 
    pool.query(sql,[offset,ps],(err,result)=>{
        //获取返回结果发送客户端
        if(err)throw err;
        res.send({result});
    });
})
// =====================4F========================
// 首页轮播数据
router.get("/newdisc",(req,res)=>{
    //接收客户请求数据 
    var id=req.query.id;
    var qno=req.query.qno;
    var ps=req.query.pageSize;
    //设置默认数据
    if(!qno){
        qno = 1;
    }
    if(!ps){
        ps = 10;
    }
    var sql = "SELECT * FROM qq_four_sub where qline_id=? LIMIT ?,?";
    var offset = (qno-1)*ps;//起始记录数
    ps = parseInt(ps);      //行数 
    pool.query(sql,[id,offset,ps],(err,result)=>{
        //获取返回结果发送客户端
        if(err)throw err;
        res.send({code:1,msg:"查询成功",data:result});
    });
})
// 首页tabs数据
router.get("/newdisc_tabs",(req,res)=>{
    //接收客户请求数据 
    var tid=req.query.qid;
    var sql = "SELECT * FROM qq_four_nav";
    pool.query(sql,(err,result)=>{
        //获取返回结果发送客户端
        if(err)throw err;
        res.send({code:1,msg:"查询成功",data:result});
    });
})
// =====================5F========================
// 首页轮播数据
router.get("/rankinglist",(req,res)=>{
    //接收客户请求数据 
    var id=req.query.id;
    var sql = "SELECT * FROM qq_five_sub";
    pool.query(sql,(err,result)=>{
        //获取返回结果发送客户端
        if(err)throw err;
        res.send({code:1,msg:"查询成功",data:result});
    });
})
// 首页tabs数据
router.get("/rankinglist_tabs",(req,res)=>{
    //接收客户请求数据 
    var tid=req.query.qid;
    var sql = "SELECT * FROM qq_five_nav";
    pool.query(sql,(err,result)=>{
        //获取返回结果发送客户端
        if(err)throw err;
        res.send({code:1,msg:"查询成功",data:result});
    });
})
// =====================6F========================
// 首页轮播数据
router.get("/mv",(req,res)=>{
    //接收客户请求数据 
    var id=req.query.id;
    var qno=req.query.qno;
    var ps=req.query.pageSize;
    //设置默认数据
    if(!qno){
        qno = 1;
    }
    if(!ps){
        ps = 10;
    }
    var sql = "SELECT * FROM qq_six_sub where qline_id=? LIMIT ?,?";
    var offset = (qno-1)*ps;//起始记录数
    ps = parseInt(ps);      //行数 
    pool.query(sql,[id,offset,ps],(err,result)=>{
        //获取返回结果发送客户端
        if(err)throw err;
        res.send({code:1,msg:"查询成功",data:result});
    });
})
// 首页tabs数据
router.get("/mv_tabs",(req,res)=>{
    //接收客户请求数据 
    var tid=req.query.qid;
    var sql = "SELECT * FROM qq_six_nav";
    pool.query(sql,(err,result)=>{
        //获取返回结果发送客户端
        if(err)throw err;
        res.send({code:1,msg:"查询成功",data:result});
    });
})
module.exports=router;