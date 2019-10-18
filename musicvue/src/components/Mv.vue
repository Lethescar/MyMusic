<template>
    <div class="mv">
        <div class="htmleaf-container">
            <div class="big-title position-relative">
                <div class="recommend-list">
                    <h2>M&nbsp;V</h2>
                </div>
            </div>
            <el-tabs v-model="activeName" @tab-click="handleClick">
                <el-tab-pane v-for="(tab,tabs) in mvtabs" :key="tabs" :label="tab.qtitle">
                    <el-carousel indicator-position="outside" :autoplay="false">
                        <el-carousel-item v-for="item in 4" :key="item">
                            <div class="mod_playlist">
                                <div class="site-content d-flex">
                                    <ul class="mvlist-list justify-content-between">
                                        <li class="disclist-item" v-for="(item,index) in mv" :key="index">
                                            <div class="project-list position-relative">
                                                <div class="project">
                                                    <div class="project__card">
                                                        <a href="" class="project__image mv-img"><img :src="'http://127.0.0.1:8000'+item.qimg" alt=""></a>
                                                        <div class="project__detail">
                                                            <h2 class="project__title mv-pro-title"><a href="#"><img src="../../public/img/cover_play.png" alt=""></a></h2>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="title mv-title position-absolute">
                                                    <a href="#" v-text="item.qtitle"></a>
                                                    <p v-text="item.qauthor"></p>
                                                    <div class="view-counts">
                                                        <p>
                                                            <i></i>30.5万
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
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
            mv:{},
            mvtabs:{}
        }
    },
    methods: {
        handleClick(tab, event) {
            console.log(tab, event);
        },
        get_mv(){
            var url="http://localhost:8000/index/mv";
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
                this.mv=result.data.data;
            })();
        },
        get_mvtabs(){
            var url="http://localhost:8000/index/mv_tabs";
            (async ()=>{
                var result=await this.axios.get(
                    url
                );
                this.mvtabs=result.data.data;
                var titles=this.mvtabs;
                // console.log(titles);
            })();
        }
    },
    created() {
        this.get_mv();
        this.get_mvtabs()
    },
}
</script>
<style>
.mvlist-list{width: 100%;list-style: none;padding: 0;display: -webkit-box;display: -ms-flexbox;display: flex;-ms-flex-wrap: wrap;flex-wrap: wrap;height: 460px !important;text-align: left;}
.mvlist-list .project{margin-right: 0;}
.mv-img img{width: 224px;height: 100%;}
.mv-pro-title img{width: 50px;height: 50px;}
.view-counts p i{background-image:url(../../public/img/icon_sprite.png);display: inline-block;width: 19px;height: 12px;background-position: -180px -20px;margin-right: 5px;vertical-align: -1px;}
.mv-title{top: 135px;white-space: nowrap;text-overflow: ellipsis;overflow: hidden;}
.mv-title>p{margin-bottom: 0;}
.mv .el-carousel .el-carousel__container{height: 427px;}
.mv{background-color: #f2f2f2;}
</style>