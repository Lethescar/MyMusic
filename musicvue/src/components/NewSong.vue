<template>
    <div class="newsong">
        <div class="htmleaf-container">
            <div class="newsong-main">
                <div class="big-title position-relative">
                    <div class="recommend-list">
                        <h2>新歌首发</h2>
                    </div>
                    <div class="play-all-btn">
                        <a href="javascript:;">
                            <i class="play-all-btn-icon"></i>播放全部
                        </a>
                    </div>
                </div>
                <el-tabs v-model="activeName" @tab-click="handleClick">
                    <el-tab-pane v-for="(tab,tabs) in ntabs" :key="tabs" :label="tab.qtitle">
                        <el-carousel indicator-position="outside" :autoplay="false">
                            <el-carousel-item  v-for="item in 2" :key="item">
                                <div class="site-content d-flex">
                                    <ul class="songlist-list">
                                        <li class="songlist__item" v-for="(item,index) in nsong" :key="index">
                                            <div class="ns-project-list position-relative">
                                                <div class="project">
                                                    <div class="project__card">
                                                        <a href="" class="project_image"><img :src="'http://127.0.0.1:8000'+item.qimg" alt=""></a>
                                                        <div class="project_detail">
                                                            <h2 class="project__title"><a href="#"><img src="../../public/img/cover_play.png" style="width:49px;height:49px;" alt=""></a></h2>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="ns-title position-absolute">
                                                    <a href="#" class="song-title" v-text="item.qtitle"></a><br>
                                                    <a href="#" class="singer" v-text="item.qauthor"></a>
                                                </div>
                                                <div class="songlist-time">
                                                    <p>02:58</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </el-carousel-item>
                        </el-carousel>
                    </el-tab-pane>
                </el-tabs>
            </div>
        </div>
    </div>
    
</template>
<script>
export default {
    data() {
        return {
            activeName: '0',
            nsong:{},
            ntabs:{}
        }
    },
    methods: {
        handleClick(tab, event) {
            console.log(tab, event);
        },
        get_nsong(){
            var url="http://localhost:8000/index/newsong";
            (async ()=>{
                var result=await this.axios.get(
                    url,
                    {
                        params:{
                            id:1
                        }
                    }
                );
                this.nsong=result.data.data;
                // console.log(this.nsong);
            })();
        },
        get_ntabs(){
            var url="http://localhost:8000/index/newsong_tabs";
            (async ()=>{
                var result=await this.axios.get(
                    url
                );
                this.ntabs=result.data.data;
                var titles=this.ntabs;
                // console.log(titles);
            })();
        }
    },
    watch: {
        
    },
    created() {
        this.get_nsong();
        this.get_ntabs();
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
.newsong{background-color: #f2f2f2;}
.play-all-btn{top: 120px;left: 0;cursor: pointer; border: 1px solid #c9c9c9;color: #000;border-radius: 2px;font-size: 14px;margin-right: 6px;padding: 0 23px;height: 38px;line-height: 38px;position: absolute;z-index: 9;}
.play-all-btn:hover{background-color: #f0f0f0;}
.play-all-btn a{color: black;}
.play-all-btn-icon{background-image: url(../../public/img/icon_sprite.png);width: 13px;height: 16px;background-position: -60px -220px;display: inline-block;margin-right: 6px;background-repeat: no-repeat;vertical-align: -3px;}
.section-title {text-align: center;text-transform: uppercase;}
.songlist-list{width: 100%;list-style: none;padding: 0;display: flex;flex-wrap: wrap;width: 1200px;margin: auto;}
.songlist__item{width: 33.33%;display: block;}
.project {float: left;margin-right: 20px;}
.ns-project-list{border-top: 1px solid #dddddd;margin: -1px 30px 13px 0;padding-top: 12px;}
.ns-project-list:after {content: " ";display: block;clear: both;}
.project_image img {height:86px;width: 86px; max-width: 100%;display: block;}
.project__card{position: relative;will-change: transform;transition: box-shadow .3s ease;box-shadow: 0 10px 30px transparent;cursor: pointer;}
.project:hover .project__detail {border-width: 1px;box-shadow: 0 2px 10px rgba(0, 0, 0, 0.4); }
.project:hover .project__title, .project:hover .project__category {-webkit-transform: translateY(0) scale(1);-ms-transform: translateY(0) scale(1);transform: translateY(0) scale(1);opacity: 1; }
.project_detail {position: absolute;left: 50%;top: 50%;transform: translate(-50%,-50%)!important; display: -webkit-flex;display: -ms-flexbox;display: flex;-webkit-flex-direction: column;-ms-flex-direction: column;flex-direction: column;-webkit-justify-content: center;-ms-flex-pack: center;justify-content: center;text-align: center;pointer-events: none;-webkit-transform: translateZ(30px);transform: translateZ(30px);transition: border .4s ease; }
.project__title {margin: 0 0 3px;font-size: 36px;font-weight: 700;transition: .4s ease;opacity: 0;-webkit-transform: translateY(40px) scale(0);-ms-transform: translateY(40px) scale(0);transform: translateY(40px) scale(0);will-change: transform;}
/* .project__title a {color: white; } */
.pos-relative{position: relative;}
.ns-title{position: absolute;top: 30px;left: 100px;width: 60%;text-align: left;}
.ns-title .song-title{font-size: 15px;color: #000;text-decoration: none;}
.ns-title .song-title:hover{color: #31c27c;}
.ns-title .singer{color: #999;font-size: 14px;}
.ns-title .singer:hover{color: #31c27c;}
.songlist-time{position: absolute;top: 45px;right: 0;}
.songlist-time p{color: #999;font-size: 14px;display: inline;}
.newsong .el-carousel__container{height: 320px;}
</style>