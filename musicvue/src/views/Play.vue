<template>
    <div class="play_main">
        <div class="play_bg_shade"></div>
        <div class="play_bg"></div>
        <div class="play_header">
            <div class="play_logo">
                <a href="javascript:;">
                    <img src="../../public/img/player_logo.png" alt="">
                </a>
            </div>
            <div class="mod_player_login">
                <div class="player_login_guide">
                    <span>QQ音乐，千万高品质曲库尽享</span>
                    <a href="javascript:;" class="player_login_guide_btn">
                        <i class="player_login_guide_icon"></i>
                        客户端下载
                    </a>
                </div>
                <div class="player_login_link">
                    <a href="javascript:;">登录</a>
                </div>
                <div class="player_login_link">
                    <a href="javascript:;">设置</a>
                </div>
            </div>
        </div>
        <div class="mod_player">
            <div class="player_bd">
                <div class="player_style_normal">
                    <div class="mod_songlist_toolbar">
                        <a href="javascript:;" class="mod_btn">
                            <i class="mod_btn_icon icon_like"></i>
                            收藏
                        </a>
                        <a href="javascript:;" class="mod_btn">
                            <i class="mod_btn_icon icon_fav"></i>
                            添加到
                        </a>
                        <a href="javascript:;" class="mod_btn">
                            <i class="mod_btn_icon icon_down"></i>
                            下载
                        </a>
                        <a href="javascript:;" class="mod_btn">
                            <i class="mod_btn_icon icon_del"></i>
                            删除
                        </a>
                        <a href="javascript:;" class="mod_btn">
                            <i class="mod_btn_icon icon_deled"></i>
                            清空列表
                        </a>
                    </div>
                    <div class="sb_scrollable">
                        <div class="sb_overview">
                            <div class="mod_songlist">
                                <i class="player_songlist_line"></i>
                                <ul class="songlist_header">
                                    <!-- <li class="songlist_edit">
                                        <i class="songlist_icon" @click="check_icon" v-if="isChecked==true"></i>
                                        <i class="songlist_icon checkedicon" @click="checked_icon" v-else></i>
                                    </li> -->
                                    <li class="songlist_header_name">
                                        歌曲
                                    </li>
                                    <li class="songlist_header_author">
                                        歌手
                                    </li>
                                    <li class="songlist_header_time">
                                        时长
                                    </li>
                                </ul>
                                <i class="player_songlist_line"></i>
                                <div class="audio-list menu-show">
                                    <ul class="audio-inline"></ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="audio-box">
                <div class="audio-container">
                    <div class="audio-view">
                        <div class="audio-body">
                            <h3 class="audio-title">未知歌曲</h3>
                            <div class="audio-backs">
                                <div class="audio-this-time">00:00</div>
                                <div class="audio-count-time">00:00</div>
                                <div class="audio-setbacks">
                                    <i class="audio-this-setbacks">
                                        <span class="audio-backs-btn"></span>
                                    </i>
                                    <span class="audio-cache-setbacks">
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="audio-btn">
                            <div class="audio-select">
                                <div class="audio-prev"></div>
                                <div class="audio-play"></div>
                                <div class="audio-next"></div>
                                <div class="audio-menu"></div>
                                <div class="audio-volume"></div>
                            </div>
                            <div class="audio-set-volume">
                                <div class="volume-box">
                                    <i><span></span></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="song_info_info">
                <div class="audio-cover"></div>
                <span class="music_title">
                    歌曲名：<h3 class="audio-title right_title">未知歌曲</h3>
                </span>
            </div>


        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            checked: false,
            checkList: ['选中且禁用','复选框 A'],
            isChecked: true
        }
    },
    methods: {
        check_icon(){
            this.isChecked= false;
        },
        checked_icon(){
            this.isChecked= true;
        },
        load(){
            $(function(){
                var song = [
                {
                    'cover' : './img/mz.jpg',
                    'src' : './songs/芒种.mp3',
                    'title' : '芒种',
                    'singer': '赵方婧',
                    'duration': '03:36'
                },
                ];
                var audioFn = audioPlay({
                    song : song,
                    autoPlay : true  //是否立即播放第一首，autoPlay为true且song为空，会alert文本提示并退出
                });
                audioFn.newSong({ 
                    'cover' : 'images/cover5.jpg',
                    'src' : 'https://amazingaudioplayer.com/wp-content/uploads/amazingaudioplayer/5/audios/Soaring%20Spirit.mp3',
                    'title' : 'B.A.A.B'
                },false);
            });
            var _hmt = _hmt || [];
            (function() {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?ecbff70bd46d40393c105bbc42edfcad";
                var s = document.getElementsByTagName("script")[0]; 
                s.parentNode.insertBefore(hm, s);
            })();
        }
    },
    created() {
        this.load();
    },
    mounted() {
        this.load();
    },
}
</script>
<style>
.play_bg{background: url(../../public/img/mz.jpg) no-repeat;background-size: cover;background-position: 50%;filter: blur(65px);opacity: .6;width: 100%;
height: 100%; position: absolute;top: 0;left: 0;}
.play_bg_shade{background-color: rgba(0,0,0,.35);z-index: 2;position: absolute;top: 0;left: 0;width: 100%;height: 100%; }
.play_header{position: relative;}
.play_logo a img{position: absolute;top: 20px;left: 20px;}
.mod_player_login{position: absolute;top: 20px;right: 20px;text-align: right;padding-right: 28px;z-index: 3;width: 470px;}
.player_login_guide{margin-right: 26px;float: left;}
.player_login_guide span{font-size: 14px;color: #fff;line-height: 30px;}
.player_login_guide .player_login_guide_btn{display: inline-block;margin-left: 6px;padding: 0 17px;height: 28px;border-radius: 28px;font-size: 15px;color: #fff;text-align: center;background-color: #31c27c;line-height: 30px;}
.player_login_guide .player_login_guide_btn:hover{background-color: #2eb674;}
.player_login_guide .player_login_guide_btn i{display: inline-block;margin-right: 4px;width: 13px;height: 14px;background-position: -160px -320px;background-image: url(../../public/img/icon_sprite.png)}
.player_login_link{position: relative;margin-right: 15px;float: left;}
.player_login_link a{display: inline-block;max-width: 124px;font-size: 14px;line-height: 30px;color: #fff;opacity: .3;}
.player_login_link a:hover{opacity: 1;}
/* 播放列表 */
.mod_player{color: rgba(225,225,225,.8);margin: 0 7.638889%;position: relative;z-index: 3;height: 100vh;overflow: hidden;}
.sb_scrollable{overflow: auto;height: 65vh;}
.sb_scrollable::-webkit-scrollbar {/*滚动条整体样式*/
    width: 10px;     /*高宽分别对应横竖滚动条的尺寸*/
    height: 1px;
}
.sb_scrollable::-webkit-scrollbar-thumb {/*滚动条里面小方块*/
    border-radius: 5px;
    height: 40px;
    -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
    background: #535353;
}
.sb_scrollable::-webkit-scrollbar-track {/*滚动条里面轨道*/
    -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
    border-radius: 5px;
    background: #EDEDED;
}
.player_bd{position: absolute;top: 100px;bottom: 18%;width: 100%;min-height: 328px;cursor: default; }
.player_style_normal{margin-right: 440px;}
.mod_songlist_toolbar{margin-left: 1px;position: relative;margin-bottom: 20px;font-size: 0;}
.mod_songlist_toolbar a{color: #fff;}
.mod_songlist_toolbar .mod_btn{opacity: .8;border-color: rgba(255,255,255,.2);background-color: transparent;color: #fff;min-width: 122px;text-align: center;border: 1px solid #c9c9c9;border-radius: 2px;font-size: 14px;margin-right: 6px;padding: 0 23px;height: 38px;line-height: 38px;display: inline-block;white-space: nowrap;box-sizing: border-box; }
.mod_songlist_toolbar .mod_btn:hover{opacity: 1;border-color: rgba(255,255,255);}
.mod_btn_icon{opacity: .6; width: 16px;height: 16px;background-position: -60px -20px;vertical-align: -4px;display: inline-block;margin-right: 6px;background-image: url(../../public/img/icon_sprite.png);}
.mod_btn_icon:hover{opacity: 1;}
.icon_fav{background-position: -220px -20px;}
.icon_down{background-position: -40px -240px;}
.icon_del{background-position: -100px -20px;}
.icon_deled{background-position: -40px -300px;width: 17px;height: 17px;}

.sb_overview{margin-right: 0;}
.player_songlist_line{display: block;height: 1px;background-color: #fff;opacity: .02;}
.songlist_header{padding-left: 62px;list-style: none;display: flex;background-color: transparent;color: inherit;height: 50px;line-height: 50px;position: relative;padding-right: 95px;margin: 0;padding: 0;}
.songlist_edit{width: 20px;height: 20px;position: relative;margin-right: 40px;left: 0px;top: 50%;margin-top: -9px;}
.songlist_icon{display: block;width: 16px;height: 16px;line-height: 14px;border: 1px solid #999;border-radius: 2px;background-image: url(../../public/img/icon_check.png);background-repeat: no-repeat; background-position: 12px;cursor: pointer;z-index: 555;}
.checkedicon{background-position: 0px;}
.songlist_icon:hover{border: 1px solid #fff;}
.songlist_header_name{width: 64%;float: left;position: relative;white-space: normal;}
.songlist_header_author{width: 26%;color: inherit;float: left;}
.songlist_header_time{width: 10%;color: inherit;float: left;text-align: center}
.songlist_list{list-style: none;margin: 10px 0 0 0;padding: 0;}
.songlist_list li{position: relative;display: flex; border-bottom: 1px solid rgba(255, 255, 255, 0.048);padding: 20px 0;}
.songlist_number{left: 16px;color: inherit;text-align: right;position: absolute; width: 36px;}
.songlist_songname{position: absolute;left: 60px; width: 63%;}
.songlist_artist{position: absolute;left: 828px; color: #fff;}
.songlist_artist a{color: #fff;opacity: .6;}
.songlist_artist a:hover{opacity: 1;}
.songlist_time{position: absolute;right: 25px; }
@import url("../../src/assets/css/audio.css");
.song_info_info{position: absolute; width: 340px;height: 285px;text-align: center;top: 100px;right: 0;}
.right_title{font-weight: 400;font-size: 16px;line-height: 20px;overflow: hidden;margin-bottom: 0;}
</style>