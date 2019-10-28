<template>
<div class="czy">
  <div class="comment">
    <div class="container">
      <div class="music_info">
        <div class="img_px">
          <div class="my_img">
            <img src="../../public/img/mz.jpg" alt="">
          </div>
        </div>
        
        <div class="mycontent">
          <div class="my_title">攀登者 (《攀登者》电影同名主题曲)</div>
          <div class="my_singer">作者：谭维维</div>
          <div class="my_dec">专辑：攀登者</div>
          <div class="my_sect">流派：Soundtrack</div>
          <div class="my_time">发行时间：2019-09-19</div>
          <div class="my_btn_info">
            <button class="my_btn my_btn_one"><img src="" >播放</button>
            <button class="my_btn"><img src="" >收藏</button>
            <button class="my_btn"><img src="" >评论(849)</button>
            <button class="my_btn"><img src="" >更多</button>
          </div>
        </div>
      </div>
    </div>
    <div class="input_title">评论<span class="input_title_s">共1535条评论</span></div>
    <div class="myinput">
      <div class="input_container">
        <div>
          <input class="my_input" id="qqcomment" type="text" value="" placeholder="期待你的神评论...">
        </div>
      </div>
      <div class="input_puh">
        <img src="" />
        <button class="comment_puh" @click="pushcomment">发表评论</button>
      </div>
    </div>
    <div class="comment_container_px">
      <div class="comment_title">用户评论(1535)</div>
      <div class="mycomment"  v-for="(item,index) in qcomment" :key="index">
        <div class="user_img">
          <img src="../../public/img/cover.png"/>
        </div>
        <div class="mycontainer">
          <div class="user_name">{{item.qname}}</div>
          <div class="user_container">{{item.qqcomment}}</div>
          <div class="my_comment_info">
            <div class="my_comment_time">{{item.qtime}}</div>
            <div class="comment_zan">赞 转发</div>
          </div>
        </div>
      </div>
    </div>
    <div class="limit">
      <el-pagination
      background
      @size-change="handleSizeChange"
      @current-change="handleCurrentChange"
      @prev-click="ddd"
      :current-page="currentPage"
      :page-size="pageSize"
      layout="total, prev, pager, next, jumper"
      :total=100>
      </el-pagination>
    </div>
  </div>
</div>
</template>
<script>
export default {
  data(){
    return{
      qcomment:{},
      currentPage:1,// 当前页码
      pageSize:5,// 每页大小
      total:13,
      ps:0
    }
  },
  methods: {
    handleSizeChange(val){
      console.log(1);
    },
    handleCurrentChange(val){
      var qno=val;
      (async ()=>{
        var result=await this.axios.get(
          "http://127.0.0.1:8000/commont/comment",
          {
            params:{
              qmusic_id:1,
              qno
            }
          }
        );
        //console.log(result.data)
        this.qcomment=result.data.data;
        //console.log(this.qcomment)
      })();
    },
    ddd(val){
    console.log(3);
    },
    pushcomment(){
      var now = new Date();
      var hour = now.getHours();
      var min = now.getMinutes();
      var qtime=hour+":"+min;
      var qname="陈大雷";
      var qqcomment=document.getElementById("qqcomment").value;
      var qmusic_id=1;
      var url="http://localhost:8000/commont/addcomment";
      var obj={qname:qname,qtime:qtime,qqcomment:qqcomment,qmusic_id};
      this.axios.get(url,{params:obj}).then(res=>{
        if(res.data.code == -1){
          console.log("消息","评论失败");
        }else{
          console.log("消息","评论成功");
        }
      })
      history.go(0);
    },
  },
  computed: {
    pages() {
      return 10;
    }
  },
  prop:["qmusic_id"],
  created() {
    this.handleCurrentChange();
  },
  watch: {
    
  },
}
</script>
<style>
  .czy .comment{
				font-size: 14px;
        margin: auto;
			}
      .czy .limit{
        text-align: left;margin-top: 0.5rem;
      }
      .czy .container{
        text-align: left;
        background-color: #fff;
        height: 320px;
      }
      .czy .mycontent{
        margin-left: 1rem;
      }
      .czy .mycontent>div{
        margin-top: 0.6rem;
      }
      .czy .my_title{
        font-size: 2rem;
      }
      .czy .my_singer{
        font-size: 1rem;
      }
			.czy .mycomment{
				display: flex;
        justify-content: space-between;
				padding-top: 1rem;
				border-top: 1px solid #ddd;
				border-bottom: 1px solid #ddd;
			}
			.czy .user_img{
				width: 38px;height: 38px;
			}
      .czy .my_img{
        width: 250px;height: 250px !important;
      }
      .czy .my_img>img{
        width: 100%;
      }
			.czy .user_img>img{
				width: 100%;
				border-radius: 50%;
			}
			.czy .mycontainer{
        text-align: left;
				padding-left: 1rem;
			}
			.czy .mycontainer>div{
				margin-bottom: 0.5rem;
			}
			.czy .my_comment_info{
				display: flex;
				justify-content: space-between;
			}
			.czy .user_name{
				color: #666;
			}
			.czy .my_comment_time{
				color: #bbb;
			}
      .czy .my_btn{
        margin-right: 0.5rem;
        padding: 0.6rem;
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 2px;
      }
      .czy .my_btn:hover{
        background-color: #eee;
      }
      .czy .my_btn_one{
        border: 1px solid #31c27c;
        background-color: #31c27c;
        color: #fff;
      }
      .czy .my_btn_one:hover, .comment_puh:hover{
        background-color: #4eb45f;
      }
      .czy .myinput{
        text-align: left;
        width: 600px;
        padding-bottom: 0.6rem;
        padding-right: 1rem;
      }
      .czy .input_container{
        background-color: #eee;
        border: 1px solid #ddd;
        padding: 0.6rem;
        margin-bottom: 1rem;
      }
      .czy .input_title{
        font-size: 1.5rem;
        background-color: #fff;
        text-align: left;
        padding: 1rem 0;
      }
      .czy .input_title_s{
        margin-left: 0.8rem;
        font-size: 1rem;
      }
      .czy .my_input{
        border: 0px;
        background-color: #eee;
        width: 100%;
        padding-bottom: 2rem;
        vertical-align: text-top;
      }
      .czy .input_puh{
        text-align: right;
      }
      .czy .comment_title{
        text-align: left;
        margin-bottom: 1rem;
      }
      .czy .music_info{
        display: flex;
      }
      .czy .comment_puh{
        padding: 0.3rem 0.6rem;
        background-color: #31c27c;
        border: 1px solid #31c27c;
        color: #fff;
        border-radius: 3px;
      }
      @media screen and (min-width: 762px) {
        .czy .comment{width: 1200px;}
        .czy .myinput{width: 600px;}
        .czy .mycomment{width: 706px;}
        .czy .mycontainer{width: 680px;}
      }
      @media screen and (max-width: 761px) and (min-width: 200px) {
        .czy .comment{width: 100%;padding-left: 0.7rem;}
        .czy .music_info{display: block;}
        .czy .img_px{width: 100% !important;}
        .czy .my_title{font-size: 1rem;}
        .czy .mycontent{margin-left: 0px;}
        .czy .myinput{width: 80%;}
        .czy .comment_container_px{width: 80%}
        .czy .mycontainer{width: 92%;}
      }
</style>