<template>
    <div class="mod-index">
      <my-header></my-header>
      <div class="index_small_nav">
        <el-tabs v-model="activeName2" type="card" @tab-click="handleClick">
          <el-tab-pane label="首页" name="first">
              <!-- 歌单推荐 -->
              <recommend></recommend>
              <!-- 新歌首发 -->
              <new-song></new-song>
              <!-- 精彩推荐 -->
              <splendid></splendid>
              <!-- 新碟首发 -->
              <new-disc></new-disc>
              <!-- 排行榜 -->
              <ranking-list></ranking-list>
              <!-- MV -->
              <mv></mv>
          </el-tab-pane>
          <el-tab-pane label="歌手" name="second"></el-tab-pane>
          <el-tab-pane label="新碟" name="third"></el-tab-pane>
          <el-tab-pane label="排行榜" name="fourth"></el-tab-pane>
          <el-tab-pane label="分类歌单" name="fifth"></el-tab-pane>
          <el-tab-pane label="电台" name="sixth"></el-tab-pane>
          <el-tab-pane label="MV" name="seventh"></el-tab-pane>
          <el-tab-pane label="数字专辑" name="eigth"></el-tab-pane>
          <el-tab-pane label="票务" name="nineth"></el-tab-pane>
        </el-tabs> 
      </div>
      <my-footer></my-footer>
    </div>
</template>
<script>
  export default {
    data() {
      return {
        activeName: 'first',
        activeName2: 'first',
        nav_tabs:[],
      };
    },
    methods: {
      handleClick(tab, event) {
        console.log(tab, event);
      },
      get_nav(){
        var url="http://localhost:8000/index/header_nav";
          (async ()=>{
            var result=await this.axios.get(
              url
            );
            this.nav_tabs=result.data.data;
            console.log(this.nav_tabs);
          })();
        },
      },
    created() {
        this.get_nav();
    },
  };
</script>
<style>
a:hover{text-decoration: none;}
/* =========== 标题 ============== */
.big-title{width: 1200px;margin: auto;}
.mod-index{text-align: center;}
/* =========== 标签样式 ============ */
.el-tabs__nav-wrap{width: 1200px;margin: 0 auto;}                                                       /* 标签居中 */
.el-tabs__nav-scroll .el-tabs__nav{float: initial;}                                                     /* 清除标签左浮动 */
.el-tabs__nav .el-tabs__item{font-size: 18px;font-weight: 500;}                                         /* 字体大小 */
.el-tabs__nav .el-tabs__item:hover{color: #31c27c;}                                                   /* 标签hover样式 */
.el-tabs__nav .el-tabs__item.is-active {color: #31c27c;}                                              /* 标签选中状态颜色 */
.el-tabs__active-bar{background-color: transparent !important;}
.el-tabs__nav-wrap::after {height: 0px !important;}
.el-carousel__item {background-color: transparent;}                                                     /* 背景颜色 */
.el-carousel__item h3 {color: #475669;font-size: 14px;opacity: 0.75;line-height: 200px;margin: 0;}    /* 字体颜色 */
.ranking-list{height: 700px;}
.new-disc .el-tabs__content{height: 620px;}
/* =========== 指示器 ============ */
.el-carousel__container .el-carousel__arrow{width: 79px;height: 108px;border-radius: 10%;font-size: 45px;}
/* =========== 歌单列表 ========== */
.mod_playlist{width:1200px;  height:100%;margin: 0 auto;}
.index_small_nav .el-tabs__header{height: 51px !important;}
.index_small_nav .el-tabs__nav-wrap{height: 51px !important;width: 760px;}
.index_small_nav .el-tabs__nav-scroll{height: 51px !important;}
.index_small_nav .el-tabs__nav{height: 51px !important;}
.index_small_nav .el-tabs__nav>div{height: 51px !important;line-height: 51px;}
.index_small_nav .el-tabs__nav .el-tabs__item.is-active{background-color: transparent;color: #31c27c}
.index_small_nav .el-tabs__content{border-top: 0;}
.index_small_nav .el-tabs--card>.el-tabs__header {border-bottom: 0;margin: 0;}
.index_small_nav .el-tabs--card>.el-tabs__header .el-tabs__nav {border: 0;}
.index_small_nav .el-tabs--card>.el-tabs__header .el-tabs__nav>div{border: 0;font-size: 15px;}
</style>