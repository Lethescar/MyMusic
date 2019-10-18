<template>
    <div class="myheader">
        <div class="htmleaf-container">
            <div class="section_inner position-relative">
                <div class="index_logo">
                    <img src="../../public/img/logo.png" alt="">
                </div>
                <div class="top_nav_mark">
                    <img src="../../public/img/mark_1.png" alt="">
                </div>
                <el-tabs v-model="activeName1" type="card" @tab-click="handleClick">
                    <el-tab-pane label="音乐馆" name="first" class="small-nav"></el-tab-pane>
                    <el-tab-pane label="我的音乐" name="second"></el-tab-pane>
                    <el-tab-pane label="客户端" name="third"></el-tab-pane>
                    <el-tab-pane label="音乐号" name="fourth"></el-tab-pane>
                    <el-tab-pane label="VIP" name="fifth"></el-tab-pane>
                </el-tabs>
                <div class="popup_data_detail">
                    <div class="popup_data_detail_cont">
                        <p>
                            <i class="client_privilege_icon icon_hq"></i>
                            HQ高品质 全员开启
                        </p>
                        <p>
                            <i class="client_privilege_icon icon_dts"></i>
                            独家音效 全面升级
                        </p>
                        <p>
                            <i class="client_privilege_icon icon_skin"></i>
                            轻盈视觉 动态皮肤
                        </p>
                        <a href="javascript:;" class="client_privilege_btn">下载体验</a>
                    </div>
                </div>
                <el-autocomplete popper-class="my-autocomplete" v-model="state3" :fetch-suggestions="querySearch" placeholder="搜索音乐、MV、歌单、用户" @select="handleSelect">
                    <i class="el-icon-edit el-input__icon" slot="suffix" @click="handleIconClick"></i>
                    <template slot-scope="props">
                        <div class="name">{{ props.item.value }}</div>
                        <span class="addr">{{ props.item.address }}</span>
                    </template>
                </el-autocomplete>
                <button class="search_input_btn">
                    <i class="icon_search"></i>
                </button>
                <div class="header_opt">
                    <a href="javascript:;" class="login_link">登录</a>
                    <a href="javascript:;" class="mod_btn mod_btn_green">开通绿钻豪华版</a>
                    <a href="javascript:;" class="mod_btn btn_vip">开通付费包</a>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            activeName1: 'first',
            restaurants: [],
            state3: ''
        }
    },
    props:["qid"],
    methods: {
        handleClick(tab, event) {
            console.log(tab, event);
        },
        loadAll() {
            return [
                { "value": "野狼DISCO", "address": "110.5万" },
                { "value": "芒种", "address": "110.5万" },
                { "value": "暗示分离", "address": "110.5万" },
                { "value": "嚣张", "address": "110.5万" },
            ]
        },
        querySearch(queryString, cb) {
            var restaurants = this.restaurants;
            var results = queryString ? restaurants.filter(this.createFilter(queryString)) : restaurants;
            // 调用 callback 返回建议列表的数据
            cb(results);
        },
        createFilter(queryString) {
                return (restaurant) => {
                return (restaurant.value.toLowerCase().indexOf(queryString.toLowerCase()) === 0);
            };
        },
        handleSelect(item) {
            console.log(item);
        },
        handleIconClick(ev) {
            console.log(ev);
        }
    },
    mounted() {
        this.restaurants = this.loadAll();
    },
}
</script>
<style>
ul>li .active{color: #31c27c !important;}
a{color: #303133}
.myheader a:hover{color: #31c27c;}
.section_inner{width: 1200px;margin: auto;}
.index_logo{position: absolute;left: 0;top:25px;}
.index_logo img{width: 170px;height: 46px;}
.top_nav_mark img{position: absolute;top: 18px;left: 446px;height: 14px;z-index: 999;}
.myheader .el-tabs__header{left: 198px;text-align: inherit !important;margin-bottom:0; }
.myheader .el-tabs__header,.el-tabs__nav-wrap{width: 436px;}
.myheader .el-tabs__header,.el-tabs__nav-wrap,.el-tabs__nav-scroll,.el-tabs__nav{height: 90px !important;}
.myheader .el-tabs--card>.el-tabs__header {border: 0;}
.myheader .el-tabs--card>.el-tabs__header .el-tabs__nav{border: 0;}
.myheader .el-tabs--card>.el-tabs__header .el-tabs__nav>div{border: 0;}
.myheader .el-tabs__nav>div{height: 90px !important;line-height: 90px;padding-left:17px;padding-right: 17px;font-size: 18px;}
.myheader .el-tabs__nav .el-tabs__item.is-active{background-color: #31c27c;color:#fff;}
.myheader .el-tabs__content{border-top: 1px solid #f2f2f2}
.myheader .el-tabs--card>.el-tabs__header {border-bottom: 0px;}
.popup_data_detail{top: 68px;left: 410px;right: auto;width: 160px;border: 0 none;position: absolute;background: #fff;box-shadow: 0 0 4px rgba(0,0,0,.35);border-radius: 4px;z-index: 99;display: none;}
.myheader .el-tabs__nav .el-tabs__item:hover>.popup_data_detail{display: block;}
.popup_data_detail_cont{margin: 9px 0 18px;max-height: none;overflow-y: hidden;font-size: 14px;line-height: 22px;}
.popup_data_detail_cont p{margin-left: 16px;margin-right: 0;padding: 5px 0;font-size: 13px;color: #000;line-height: 1.8;min-height: 22px;margin: 0 8px 0 8px;-webkit-transform:scale(0.9);-webkit-text-size-adjust:none;text-align: left;}
.client_privilege_icon{display: inline-block;vertical-align: -3px;margin-right: 3px;width: 14px;height: 14px;background-image: url(../../public/img/sprite_privilege.png);}
.icon_hq{background-position: 0 0;}
.client_privilege_btn{display: block;margin: 6px auto 0;width: 135px;height: 25px;line-height: 25px;font-size: 12px;color: #fff;text-align: center;border-radius: 25px;background-color: #31c27c;background-image: linear-gradient(to right,#24ccaa,#31c27c);}
.client_privilege_btn:hover{background:#31c27c;color: #fff;}
.mod_top_subnav{display: flex;list-style: none;justify-content: space-between;width: 790px;margin: auto;height: 51px;line-height: 51px;}
.search_input_btn {position: absolute;top: 26px;right: 300px;border: 0 none;width: 38px;height: 35px;overflow: visible;background: 0 0;cursor: pointer;outline: none;}
.search_input_btn:focus{outline:0;}
.icon_search{position: absolute;top: 50%;right: 11px;margin-top: -8px;width: 16px;height: 16px;background-position: 0 -40px;background-image:url(../../public/img/icon_sprite.png);}
.icon_search:hover{position: absolute;top: 50%;right: 11px;margin-top: -8px;background-position: 0 -60px;background-image:url(../../public/img/icon_sprite.png);}
.myheader .el-autocomplete {position: absolute;top: 24px;right: 304px;width: 220px;}
/* 输入框样式 */
.el-popper[x-placement^=bottom] .popper__arrow {top: 0 !important;}
.el-popper[x-placement^=bottom] {margin-top: 0 !important;}
.el-autocomplete-suggestion {margin: 0 0 5px 0 !important;}
.el-input__inner:focus {border-color: #31c27c !important;}
.el-icon-edit:before {content: "" !important;}
.el-autocomplete-suggestion li .name{display: inline-block;}
.el-autocomplete-suggestion li .addr{float: right}

.header_opt{position: absolute;top: 0;right: 0;height: 90px;line-height: 90px;}
.header_opt .login_link{position: relative;font-size: 16px;float: left;width: 38px;margin-right: 10px;text-align: center;color: #000;}
.header_opt .login_link:hover{color: #31c27c;}
.header_opt .mod_btn{line-height: 39px;margin-top: 24px;padding: 0 9px;margin-left: 10px;margin-right: 0;font-size: 13px;border-radius: 2px;height: 38px;display: inline-block;border: 1px solid #c9c9c9;color: #000;}
.header_opt .mod_btn:hover{background-color: #c8c8c879;}
.header_opt .mod_btn_green{border: 1px solid #31c27c;background-color: #31c27c;color: #fff;}
.header_opt .mod_btn_green:hover{background-color: #2db171; color: #fff !important;}
</style>
