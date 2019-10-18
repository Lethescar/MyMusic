<template>
    <div class="newdisc">
        <div class="htmleaf-container">
            <div class="big-title position-relative">
                <div class="recommend-list">
                    <h2>新碟首发</h2>
                </div>
                <a href="javascript:;" class="new-disc-more">
                    更多<i class="new-disc-more-icon"></i>
                </a>
            </div>
            <el-tabs v-model="activeName" @tab-click="handleClick">
                <el-tab-pane v-for="(tab,tabs) in ndtabs" :key="tabs" :label="tab.qtitle">
                    <div class="mod_playlist">
                        <div class="site-content d-flex">
                            <ul class="disclist-list justify-content-between">
                                <li class="disclist-item" v-for="(item,index) in ndisc" :key="index">
                                    <div class="project-list position-relative">
                                        <div class="project">
                                            <div class="project__card">
                                                <a href="" class="project__image"><img :src="'http://127.0.0.1:8000'+item.qimg" alt=""></a>
                                                <div class="project__detail">
                                                    <h2 class="project__title"><a href="#"><img src="../../public/img/cover_play.png" alt=""></a></h2>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="title position-absolute">
                                            <a href="#" v-text="item.qtitle"></a>
                                            <p v-text="item.qauthor"></p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
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
            ndisc:{},
            ndtabs:{}
        }
    },
    methods: {
        handleClick(tab, event) {
            console.log(tab, event);
        },
        get_ndisc(){
            var url="http://localhost:8000/index/newdisc";
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
                this.ndisc=result.data.data;
                // console.log(this.ndisc);
            })();
        },
        get_ndtabs(){
            var url="http://localhost:8000/index/newdisc_tabs";
            (async ()=>{
                var result=await this.axios.get(
                    url
                );
                this.ndtabs=result.data.data;
                var titles=this.ndtabs;
                // console.log(titles);
            })();
        }
    },
    created() {
        this.get_ndisc();
        this.get_ndtabs();
        $(document).ready(function(){
            $(".project").hover3d({
                selector: ".project__card",
                shine: true,
            });
        });
    },
}
</script>
<style >
.newdisc{background-color: #f2f2f2;}
.disclist-list{width: 100%;height: 600px !important; list-style: none;padding: 0;display: flex;flex-wrap: wrap;}
.disclist-list .project{margin-right: 0;}
.new-disc-more,.ranking-list-more{top: 130px;right: 0;cursor: pointer;position: absolute;color: #000;z-index: 9;}
.ranking-list-more{top: 60px;}
.new-disc-more:hover{color: #31c27c !important;}
.new-disc-more-icon{display: inline-block;border-top: 1px solid;border-right: 1px solid;width: 9px;height: 9px;cursor: pointer;transform: rotate(45deg);margin-bottom: 1px;}
</style>