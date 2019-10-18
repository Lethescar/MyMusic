<template>
    <div class="splendid">
        <div class="htmleaf-container">
            <div class="big-title position-relative">
                <div class="recommend-list mb-3">
                    <h2>精彩推荐</h2>
                </div>
            </div>
            <el-carousel indicator-position="outside" :autoplay="false">
                <el-carousel-item v-for="item in 2" :key="item">
                    <div class="mod_playlist">
                        <div class="site-content d-flex splendid">
                            <div class="project-list position-relative" v-for="(item,index) in sple" :key="index">
                                <div class="project splendid-project">
                                    <div class="project__card">
                                        <a href="" class="project__image"><img :src="'http://127.0.0.1:8000'+item.qimg" alt=""></a>
                                        <div class="project__detail">
                                            <h2 class="project__title"><a href="#"><img src="../../public/img/cover_play.png" alt=""></a></h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-carousel-item>
            </el-carousel>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            sple:{},
        }
    },
    methods: {
        handleClick(tab, event) {
            console.log(tab, event);
        },
        get_sple(){
            var url="http://localhost:8000/index/splendid";
            (async ()=>{
                var result=await this.axios.get(
                    url,
                    {
                        params:{
                            qno:1,
                            ps:2
                        }
                    }
                );
                this.sple=result.data.result;
                // console.log(this.sple);
            })();
        }
    },
    created() {
        this.get_sple();
    },
}
</script>
<style>
.splendid-project{margin: 0 20px;}
.splendid .el-carousel .el-carousel__container{height: 250px;}
</style>