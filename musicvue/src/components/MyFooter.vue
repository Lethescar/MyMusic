<template>
    <div class="myfooter">
        <div class="section_inner">
            <div class="footer_info">
                <div class="left_part">
                    <h3>下载QQ音乐客户端</h3>
                    <ul class="footer_list">
                        <li>
                            <a href="javascript:;">
                                <i class="icon_qm_pc"></i>
                                PC版
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon_qm_mac"></i>
                                MAC版
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon_qm_android"></i>
                                Android版
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon_qm_iphone"></i>
                                Iphone版
                            </a>
                        </li>
                    </ul>
                    <div class="footer_platform">
                        <h3>开放平台</h3>
                        <a href="javascript:;">腾讯音乐人</a>
                        <a href="javascript:;">音乐号认证</a>
                    </div>
                </div>
                <div class="middle_part">
                    <h3>特色产品</h3>
                    <ul class="footer_list">
                        <li>
                            <a href="javascript:;">
                                <i class="icon_qm_kg"></i>
                                全民K歌
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon_qm_ss"></i>
                                Super Sound
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="icon_qm_qp"></i>
                                QPlay
                            </a>
                        </li>
                    </ul>
                    <div class="footer_product_item">
                        <a href="javascript:;">车载互联</a>
                        <a href="javascript:;">QQ演出</a>
                    </div>
                    <div class="footer_platform">
                        <h3>TME集团官网</h3>
                        <a href="javascript:;">腾讯音乐</a>
                    </div>
                </div>
                <div class="right_part">
                    <h3>特色产品</h3>
                    <div class="right-footer-list">
                        <ul class="right-list">
                            <li><a href="javascript:;">CJ ENM</a></li>
                            <li><a href="javascript:;">最新版QQ</a></li>
                            <li><a href="javascript:;">QQ浏览器</a></li>
                            <li><a href="javascript:;">企鹅FM</a></li>
                        </ul>
                        <ul class="right-list">
                            <li><a href="javascript:;">腾讯视频</a></li>
                            <li><a href="javascript:;">腾讯社交广告</a></li>
                            <li><a href="javascript:;">腾讯微云</a></li>
                            <li><a href="javascript:;">智能电视网</a></li>
                        </ul>
                        <ul class="right-list">
                            <li><a href="javascript:;">手机QQ空间</a></li>
                            <li><a href="javascript:;">电脑管家</a></li>
                            <li><a href="javascript:;">腾讯云</a></li>
                            <li><a href="javascript:;">当贝市场</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer_copyright">
               <p>
                   <a href="javascript:;" title="关于腾讯">关于腾讯</a>&nbsp;|&nbsp;
                   <a href="javascript:;" title="About Tencent">About Tencent</a>&nbsp;|&nbsp;
                   <a href="javascript:;" title="服务条款">服务条款</a>&nbsp;|&nbsp;
                   <a href="javascript:;" title="用户服务协议">用户服务协议</a>&nbsp;|&nbsp;
                   <a href="javascript:;" title="隐私政策">隐私政策</a>&nbsp;|&nbsp;
                   <a href="javascript:;" title="权利声明">权利声明</a>&nbsp;|&nbsp;
                   <a href="javascript:;" title="广告服务">广告服务</a>&nbsp;|&nbsp;
                   <a href="javascript:;" title="腾讯招聘">腾讯招聘</a>&nbsp;|&nbsp;
                   <a href="javascript:;" title="客服中心">客服中心</a>&nbsp;|&nbsp;
                   <a href="javascript:;" title="网站导航">网站导航</a>
               </p>
               <p>Copyright © 1998 - 2019 Tencent.
                   <a href="javascript:;" title="All Rights Reserved.">&nbsp;All Rights Reserved.</a>
               </p>
               <p>
                   腾讯公司 
                   <a href="javascript:;" title="版权所有">版权所有</a>&nbsp;
                   <a href="javascript:;" title="腾讯网络文化经营许可证">腾讯网络文化经营许可证</a>
               </p>
           </div>
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style>
a{text-decoration: none;}
.myfooter a:hover{color: #31c27c;}
.myfooter{width: 100%;height: 589px;color: #999;background-color: #333;clear: both;}
.myfooter .section_inner{width: 1200px;height: 100%; margin: auto;position: relative;}
.myfooter .footer_info{position: relative;border-bottom: 1px solid #353535;padding-bottom: 45px;}
/* 左侧 */
.myfooter .left_part{position: absolute;top: 0;left: 10px;text-align: left}
.myfooter h3{font-size: 15px;font-weight: 400;padding: 80px 0 46px;}
.myfooter .footer_list{display: flex;justify-content: space-between;list-style: none;padding: 0;text-align: center;margin-left: -29px;}
.myfooter .footer_list i{width: 37px;height: 48px;background-position: -2px 0;display: block;margin: 0 29px 12px;width: 48px;height: 48px;background-image: url(../../public/img/footer.png);}
.myfooter .footer_list a{color: #999;font-size: 14px;}
.myfooter .footer_list a:hover{color: #31c27c;}
.myfooter .footer_list .icon_qm_pc{width: 37px;}
.myfooter .footer_list .icon_qm_pc:hover{background-position: -2px 47px;}
.myfooter .footer_list .icon_qm_mac{background-position: -90px 0;}
.myfooter .footer_list .icon_qm_mac:hover{background-position: -90px 47px;}
.myfooter .footer_list .icon_qm_android{width: 37px;background-position: -190px 0;}
.myfooter .footer_list .icon_qm_android:hover{background-position: -190px 47px;}
.myfooter .footer_list .icon_qm_iphone{width: 37px;background-position: -278px 0;}
.myfooter .footer_list .icon_qm_iphone:hover{background-position: -278px 47px;}
.myfooter .footer_platform a{font-size: 14px;margin-right: 30px;color: #999;}
.myfooter .footer_platform a:hover{color: #31c27c}
/* 中间 */
.myfooter .middle_part{position: absolute;left: 500px;text-align: left}
.myfooter .footer_list .icon_qm_kg{width: 41px;background-position: -369px 0;}
.myfooter .footer_list .icon_qm_kg:hover{background-position: -369px 47px;}
.myfooter .footer_list .icon_qm_ss{width: 37px;background-position: -463px 0;}
.myfooter .footer_list .icon_qm_ss:hover{background-position: -463px 47px;}
.myfooter .footer_list .icon_qm_qp{width: 40px;background-position: -563px 0;}
.myfooter .footer_list .icon_qm_qp:hover{background-position: -563px 47px;}
.myfooter .footer_product_item{position: absolute;left: -5px;}
.myfooter .footer_product_item a{font-size: 14px;margin-right: 30px;color: #999;}
.myfooter .footer_product_item a:hover{color: #31c27c}
/* 右侧 */
.right_part{position: absolute;top: 0;right: 0;text-align: left;}
.right_part ul{margin: 0;padding: 0;}
.right-list li{min-width: 100px;margin-bottom: 12px;font-size: 14px;list-style: none;}
.right-list li a{color: #999;}
.right-footer-list{display: flex;}
.footer_copyright{position: absolute;bottom: 0;font-size: 12px;text-align: center;width: 1200px;margin: auto}
.footer_copyright a{color: #999;}
</style>