<template>
    <div class="recommend">
        <div class="htmleaf-container">
            <div class="recommend-list">
                <h2>歌单推荐</h2>
            </div>
            <el-tabs v-model="activeName" @tab-click="handleClick">
                <el-tab-pane v-for="(tab,tabs) in rec_tabs" :key="tabs" :label="tab.qtitle" >
                    <el-carousel indicator-position="outside" :autoplay="false">
                        <el-carousel-item  v-for="item in 2" :key="item">
                            <div class="mod_playlist">
                                <div class="site-content d-flex">
                                    <div class="project-list position-relative" v-for="(item,index) in rec" :key="index">
                                        <div class="project">
                                            <div class="project__card">
                                                <a href="" class="project__image"><img :src="'http://127.0.0.1:8000'+item.qimg" alt=""></a>
                                                <div class="project__detail">
                                                    <h2 class="project__title"><a href="#"><img src="../../public/img/cover_play.png" alt=""></a></h2>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="title position-absolute">
                                            <a href="#">{{item.qtitle}}</a>
                                            <p>播放量：2639</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </el-carousel-item>
                    </el-carousel>
                </el-tab-pane>
            </el-tabs>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            activeName: '0',
            rec:{},
            rec_tabs:{},
        }
    },
    props:[],
    methods: {
        handleClick(tab, event) {
            console.log(tab, event);
        },
        get_rec(){
            var url="http://localhost:8000/index/recommend";
            (async ()=>{
                var result=await this.axios.get(
                    url,
                    {
                        params:{
                            id:1,
                            qno:1,
                            ps:10
                        }
                    }
                );
                this.rec=result.data.data;
                // console.log(this.rec);
            })();
        },
        get_rec_tabs(){
            var url="http://localhost:8000/index/recommend_tabs";
            (async ()=>{
                var result=await this.axios.get(
                    url
                );
                this.rec_tabs=result.data.data;
                var titles=this.rec_tabs;
            })();
        },
    },
    created() {
        this.get_rec();
        this.get_rec_tabs();
        $(document).ready(function(){
            $(".project").hover3d({
                selector: ".project__card",
                shine: true,
            });
        });
    },
}

</script>
<style>
.recommend{background-color: #f7f7f7;}
.recommend .el-tabs__nav-wrap{width: 1200px;}
.recommend-list{padding: 50px 0 24px 0;}
.recommend-list h2{font-size: 40px;margin: 0;}
.project__image img {width: 224;height:224px; max-width: 100%;display: block;}
.project__detail {position: absolute;left: 30px;right: 30px;top: 30px;bottom: 30px;display: -webkit-flex;display: -ms-flexbox;display: flex;-webkit-flex-direction: column;-ms-flex-direction: column;flex-direction: column;-webkit-justify-content: center;-ms-flex-pack: center;justify-content: center;text-align: center;pointer-events: none;-webkit-transform: translateZ(30px);transform: translateZ(30px);border: 0 solid #00BCD4;transition: border .4s ease; }
.title{position: absolute;top: 234px;left: 0;}
.title a{font-size: 15px;color: #000;text-decoration: none;}
.title a:hover{color: #31c27c;}
.title p{text-align: left;color: #999;font-size: 14px;}
.el-carousel__indicators--outside {margin: 30px;}
.recommend .el-carousel__container{height: 275px;}
</style>