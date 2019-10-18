<template>
	<div class="rankinglist">
		<div class="big-title position-relative">
			<div class="recommend-list">
				<h2>排行榜</h2>
			</div>
			<a href="javascript:;" class="ranking-list-more">
				更多<i class="new-disc-more-icon"></i>
			</a>
		</div>
		<div class="container">
			<div class="box ml-0">
				<img src="../../public/img/bg_index_1.jpg">
				<div class="ranking-title">
					<h3>巅峰榜</h3>
					<a href="javascript:;">流行指数</a>
				</div>
				<div class="ranking-icon">
					<div class="icon"></div>
					<img src="../../public/img/cover_play.png" alt="">
				</div>
				<ul class="ranking-songlist">
					<li class="list-song" v-for="(item,index) in tab1" :key="index">
						<p v-text="item.qfid">1</p>
						<div class="song">
							<a href="javascript:;" v-text="item.qtitle"></a><br>
							<a href="javascript:;" v-text="item.qauthor"></a>
						</div>
					</li>
				</ul>
			</div>
			<div class="box">
				<img src="../../public/img/bg_index_2.jpg">
				<div class="ranking-title">
					<h3>巅峰榜</h3>
					<a href="javascript:;">热歌</a>
				</div>
				<div class="ranking-icon">
					<div class="icon"></div>
					<img src="../../public/img/cover_play.png" alt="">
				</div>
				<ul class="ranking-songlist">
					<li class="list-song" v-for="(item,index) in tab2" :key="index">
						<p v-text="item.qfid">1</p>
						<div class="song">
							<a href="javascript:;" v-text="item.qtitle"></a><br>
							<a href="javascript:;" v-text="item.qauthor"></a>
						</div>
					</li>
				</ul>
			</div>
			<div class="box">
				<img src="../../public/img/bg_index_3.jpg">
				<div class="ranking-title">
					<h3>巅峰榜</h3>
					<a href="javascript:;">新歌</a>
				</div>
				<div class="ranking-icon">
					<div class="icon"></div>
					<img src="../../public/img/cover_play.png" alt="">
				</div>
				<ul class="ranking-songlist">
					<li class="list-song" v-for="(item,index) in tab3" :key="index">
						<p v-text="item.qfid">1</p>
						<div class="song">
							<a href="javascript:;" v-text="item.qtitle"></a><br>
							<a href="javascript:;" v-text="item.qauthor"></a>
						</div>
					</li>
				</ul>
			</div>
			<div class="box">
				<img src="../../public/img/bg_index_4.jpg">
				<div class="ranking-title">
					<h3>巅峰榜</h3>
					<a href="javascript:;">欧美</a>
				</div>
				<div class="ranking-icon">
					<div class="icon"></div>
					<img src="../../public/img/cover_play.png" alt="">
				</div>
				<ul class="ranking-songlist">
					<li class="list-song" v-for="(item,index) in tab4" :key="index">
						<p v-text="item.qfid">1</p>
						<div class="song">
							<a href="javascript:;" v-text="item.qtitle"></a><br>
							<a href="javascript:;" v-text="item.qauthor"></a>
						</div>
					</li>
				</ul>
			</div>
			<div class="box mr-0">
				<img src="../../public/img/bg_index_5.jpg">
				<div class="ranking-title">
					<h3>巅峰榜</h3>
					<a href="javascript:;">韩国</a>
				</div>
				<div class="ranking-icon">
					<div class="icon"></div>
					<img src="../../public/img/cover_play.png" alt="">
				</div>
				<ul class="ranking-songlist">
					<li class="list-song" v-for="(item,index) in tab5" :key="index">
						<p v-text="item.qfid">1</p>
						<div class="song">
							<a href="javascript:;" v-text="item.qtitle"></a><br>
							<a href="javascript:;" v-text="item.qauthor"></a>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</template>
<script>
export default {
	data() {
		return {
			activeName: '0',
			ranklist:[],
			// ranklist_tabs:{}
		}
	},
	methods: {
		handleClick(tab, event) {
            console.log(tab, event);
        },
        get_ranklist(){
            var url="http://localhost:8000/index/rankinglist";
            (async ()=>{
                var result=await this.axios.get(
                    url,
                );
				this.ranklist=result.data.data;
				console.log(this.ranklist)
            })();
        },
	},
	computed: {
		tab1: function () {
			return this.ranklist.slice(0, 3)
		},
		tab2: function () {
			return this.ranklist.slice(3, 6)
		},
		tab3: function () {
			return this.ranklist.slice(6, 9)
		},
		tab4: function () {
			return this.ranklist.slice(9, 12)
		},
		tab5: function () {
			return this.ranklist.slice(12, 15)
		},
	},
	created() {
		this.get_ranklist();
	},
}
</script>
<style>
.rankinglist{margin-bottom: 70px;}
.container {display: flex;width: 100%;box-sizing: border-box;height: 517px;padding: 0;}
@media (min-width: 1200px){
	.container {max-width: 1200px;}
}
.box {flex: 1;overflow: hidden;transition: .5s;margin: 0 10px;position: relative;}
.box > img {width: 200%;height: calc(100% - 0vh);-o-object-fit: cover;object-fit: cover;transition: .5s;}
.box .ranking-title{position: absolute;width: 224px;height: auto;top: 50px;}
.box .ranking-title h3{font-size: 22px;margin:0; font-weight: 100;color: #fff;}
.box .ranking-title a{font-size: 26px;color: #fff;}
.box .ranking-icon div{position: absolute;left: 50%;top: 160px;margin-left: -18px;width: 36px;height: 2px;background: #fff;}
.box .ranking-icon img{position: absolute;top: 142px;left: 50%; transform: translate(-50%);display: none;width: 40px;height: 40px;cursor: pointer;}
.box:hover .ranking-icon img{display: block;}
.box .ranking-songlist {position: absolute;top: 210px;left: 30px;padding: 0;width: 164px;}
.box .ranking-songlist .list-song{list-style: none;margin-bottom: 27px;color: #fff;}
.box .ranking-songlist .list-song p{position: absolute;left: 0; display: inline-block;color: #fff;}
.box .ranking-songlist .list-song .song{margin-left: 20px; text-align: left;white-space: nowrap;text-overflow: ellipsis;overflow: hidden;margin-bottom: 5px;font-size: 14px;color: #fff;}
.box .ranking-songlist .list-song .song a{color: #fff;}
.box:hover > img {width: 100%;height: 100%;}
</style>