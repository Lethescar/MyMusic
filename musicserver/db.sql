SET NAMES UTF8;
DROP DATABASE IF EXISTS qqMusic;
CREATE DATABASE qqMusic CHARSET=UTF8;
USE qqMusic;

/** 头部导航条 **/
CREATE TABLE qq_header_nav(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qtitle VARCHAR(32)
);

INSERT INTO qq_header_nav VALUES
(NULL,'首页'),
(NULL,'歌手'),
(NULL,'新碟'),
(NULL,'排行榜'),
(NULL,'分类歌单'),
(NULL,'电台'),
(NULL,'MV'),
(NULL,'数字专辑'),
(NULL,'票务');


/** 歌单推荐 1L **/
CREATE TABLE qq_one_nav(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qtitle VARCHAR(8)
);

INSERT INTO qq_one_nav VALUES
(NULL,'为你推荐'),
(NULL,'轻音乐'),
(NULL,'学习工作'),
(NULL,'经典'),
(NULL,'官方歌单'),
(NULL,'情歌');

CREATE TABLE qq_one_sub(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qimg VARCHAR(128),
	qtitle VARCHAR(32),
	qline_id INT
);


/** 新歌首发 2L **/
CREATE TABLE qq_two_nav(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qtitle VARCHAR(32)
);

INSERT INTO qq_two_nav VALUES
(NULL,'最新'),
(NULL,'内地'),
(NULL,'港台'),
(NULL,'欧美'),
(NULL,'韩国'),
(NULL,'日本');

CREATE TABLE qq_two_sub(
qid INT PRIMARY KEY AUTO_INCREMENT,
	qimg VARCHAR(128),
	qtitle VARCHAR(32),
	qauthor VARCHAR(32),
	qline_id INT
);

/** 精彩推荐 3L 轮播图**/
CREATE TABLE qq_three_carousel(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qimg VARCHAR(128)
);


/** 新碟首发 4L **/
CREATE TABLE qq_four_nav(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qtitle VARCHAR(32)
);

INSERT INTO qq_four_nav VALUES
(NULL,'内地'),
(NULL,'港台'),
(NULL,'欧美'),
(NULL,'韩国'),
(NULL,'日本'),
(NULL,'其他');

CREATE TABLE qq_four_sub(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qimg VARCHAR(128),
	qtitle VARCHAR(32),
	qauthor VARCHAR(32),
	qline_id INT
);


/** 排行榜 5L **/
CREATE TABLE qq_five_nav(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qtitle VARCHAR(32)
);

INSERT INTO qq_five_nav VALUES
(NULL,'流行指数'),
(NULL,'热歌'),
(NULL,'新歌'),
(NULL,'欧美'),
(NULL,'韩国');

CREATE TABLE qq_five_sub(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qfid INT,
	qtitle VARCHAR(32),
	qauthor VARCHAR(32),
	qline_id INT
);


/** MV 6L **/
CREATE TABLE qq_six_nav(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qtitle VARCHAR(32)
);

INSERT INTO qq_six_nav VALUES
(NULL,'精选'),
(NULL,'内地'),
(NULL,'港台'),
(NULL,'欧美'),
(NULL,'韩国'),
(NULL,'日本');

CREATE TABLE qq_six_sub(
  qid INT PRIMARY KEY AUTO_INCREMENT,
  qimg VARCHAR(128),
  qtitle VARCHAR(32),
  qauthor VARCHAR(32),
  qline_id INT
);


/** 用户信息 **/
CREATE TABLE qq_user(
  qid INT PRIMARY KEY AUTO_INCREMENT,
  qname VARCHAR(32),
  qpwd VARCHAR(32),
  qmail VARCHAR(64),
  qhone VARCHAR(16),
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);

INSERT INTO qq_user VALUES
(NULL, 'chenlei', '123456', 'lei@qq.com', '13501234567', 'img', '陈雷', '1'),
(NULL, 'zhaozhe', '123456', 'zhe@qq.com', '13501234568', 'img', '赵二哲', '1');

/** 用户评论 **/
CREATE TABLE qq_user_comment(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qname VARCHAR(32),
	qtime VARCHAR(32),
	qqcomment VARCHAR(256),
	qmusic_id INT
);

INSERT INTO qq_user_comment VALUES
(NULL,'陈大雷','12:30','这首歌真好听！',1),
(NULL,'赵二哲','12:33','对啊，爱死这首歌了',1),
(NULL,'赵二哲','12:31','haha66666',2);


/********** 歌手列表 ***********/
CREATE TABLE qq_singer_one(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qimg VARCHAR(128),
	qtitle VARCHAR(32)
);

CREATE TABLE qq_singer_two(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qtitle VARCHAR(32)
);


/********** 新碟 ***********/
CREATE TABLE qq_disc(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qimg VARCHAR(128),
	qtitle VARCHAR(32),
	qauthor VARCHAR(32),
	qtime VARCHAR(32),
	qline_id INT
);


/********** 排行榜 *********/
CREATE TABLE qq_ranklist(
	qid INT PRIMARY KEY AUTO_INCREMENT,
	qimg VARCHAR(128),
	qtitle VARCHAR(32),
	qauthor VARCHAR(32),
	qtime VARCHAR(32),
	qline_id INT
);


/********** 首页 ***********/
/* oneFloor 1L */
INSERT INTO qq_one_sub VALUES
(NULL,'/img/container/oneFloor/1.jpg','触及泪点 • 40首欧美致郁嗓',1),
(NULL,'/img/container/oneFloor/2.jpg','放空秘籍 • 深夜脑内漫游之旅',1),
(NULL,'/img/container/oneFloor/3.jpg','民谣小曲 ：轻风细雨，秋日微凉',1),
(NULL,'/img/container/oneFloor/4.jpg','欧美女声：轻羽拂面，浅浅至极',1),
(NULL,'/img/container/oneFloor/5.jpg','电子舞曲 · 迷失夜色之中',1),
(NULL,'/img/container/oneFloor/6.jpg','柔情日系：藏在内心的思念',1),
(NULL,'/img/container/oneFloor/7.jpg','思乡：那是最美和最初的地方',1),
(NULL,'/img/container/oneFloor/8.jpg','韩语R&B · 浴室自愈法则',1),
(NULL,'/img/container/oneFloor/9.jpg','意境古风 | 深谷幽兰自芬芳',1),
(NULL,'/img/container/oneFloor/10.jpg','Urban-Soul：善于伪装的城市说唱',1),

(NULL,'/img/container/oneFloor/1.jpg','触及泪点 • 40首欧美致郁嗓',2),
(NULL,'/img/container/oneFloor/2.jpg','放空秘籍 • 深夜脑内漫游之旅',2),
(NULL,'/img/container/oneFloor/3.jpg','民谣小曲 ：轻风细雨，秋日微凉',2),
(NULL,'/img/container/oneFloor/4.jpg','欧美女声：轻羽拂面，浅浅至极',2),
(NULL,'/img/container/oneFloor/5.jpg','电子舞曲 · 迷失夜色之中',2),
(NULL,'/img/container/oneFloor/6.jpg','柔情日系：藏在内心的思念',2),
(NULL,'/img/container/oneFloor/7.jpg','思乡：那是最美和最初的地方',2),
(NULL,'/img/container/oneFloor/8.jpg','韩语R&B · 浴室自愈法则',2),
(NULL,'/img/container/oneFloor/9.jpg','意境古风 | 深谷幽兰自芬芳',2),
(NULL,'/img/container/oneFloor/10.jpg','Urban-Soul：善于伪装的城市说唱',2),

(NULL,'/img/container/oneFloor/1.jpg','触及泪点 • 40首欧美致郁嗓',3),
(NULL,'/img/container/oneFloor/2.jpg','放空秘籍 • 深夜脑内漫游之旅',3),
(NULL,'/img/container/oneFloor/3.jpg','民谣小曲 ：轻风细雨，秋日微凉',3),
(NULL,'/img/container/oneFloor/4.jpg','欧美女声：轻羽拂面，浅浅至极',3),
(NULL,'/img/container/oneFloor/5.jpg','电子舞曲 · 迷失夜色之中',3),
(NULL,'/img/container/oneFloor/6.jpg','柔情日系：藏在内心的思念',3),
(NULL,'/img/container/oneFloor/7.jpg','思乡：那是最美和最初的地方',3),
(NULL,'/img/container/oneFloor/8.jpg','韩语R&B · 浴室自愈法则',3),
(NULL,'/img/container/oneFloor/9.jpg','意境古风 | 深谷幽兰自芬芳',3),
(NULL,'/img/container/oneFloor/10.jpg','Urban-Soul：善于伪装的城市说唱',3),

(NULL,'/img/container/oneFloor/1.jpg','触及泪点 • 40首欧美致郁嗓',4),
(NULL,'/img/container/oneFloor/2.jpg','放空秘籍 • 深夜脑内漫游之旅',4),
(NULL,'/img/container/oneFloor/3.jpg','民谣小曲 ：轻风细雨，秋日微凉',4),
(NULL,'/img/container/oneFloor/4.jpg','欧美女声：轻羽拂面，浅浅至极',4),
(NULL,'/img/container/oneFloor/5.jpg','电子舞曲 · 迷失夜色之中',4),
(NULL,'/img/container/oneFloor/6.jpg','柔情日系：藏在内心的思念',4),
(NULL,'/img/container/oneFloor/7.jpg','思乡：那是最美和最初的地方',4),
(NULL,'/img/container/oneFloor/8.jpg','韩语R&B · 浴室自愈法则',4),
(NULL,'/img/container/oneFloor/9.jpg','意境古风 | 深谷幽兰自芬芳',4),
(NULL,'/img/container/oneFloor/10.jpg','Urban-Soul：善于伪装的城市说唱',4),

(NULL,'/img/container/oneFloor/1.jpg','触及泪点 • 40首欧美致郁嗓',5),
(NULL,'/img/container/oneFloor/2.jpg','放空秘籍 • 深夜脑内漫游之旅',5),
(NULL,'/img/container/oneFloor/3.jpg','民谣小曲 ：轻风细雨，秋日微凉',5),
(NULL,'/img/container/oneFloor/4.jpg','欧美女声：轻羽拂面，浅浅至极',5),
(NULL,'/img/container/oneFloor/5.jpg','电子舞曲 · 迷失夜色之中',5),
(NULL,'/img/container/oneFloor/6.jpg','柔情日系：藏在内心的思念',5),
(NULL,'/img/container/oneFloor/7.jpg','思乡：那是最美和最初的地方',5),
(NULL,'/img/container/oneFloor/8.jpg','韩语R&B · 浴室自愈法则',5),
(NULL,'/img/container/oneFloor/9.jpg','意境古风 | 深谷幽兰自芬芳',5),
(NULL,'/img/container/oneFloor/10.jpg','Urban-Soul：善于伪装的城市说唱',5),

(NULL,'/img/container/oneFloor/1.jpg','触及泪点 • 40首欧美致郁嗓',6),
(NULL,'/img/container/oneFloor/2.jpg','放空秘籍 • 深夜脑内漫游之旅',6),
(NULL,'/img/container/oneFloor/3.jpg','民谣小曲 ：轻风细雨，秋日微凉',6),
(NULL,'/img/container/oneFloor/4.jpg','欧美女声：轻羽拂面，浅浅至极',6),
(NULL,'/img/container/oneFloor/5.jpg','电子舞曲 · 迷失夜色之中',6),
(NULL,'/img/container/oneFloor/6.jpg','柔情日系：藏在内心的思念',6),
(NULL,'/img/container/oneFloor/7.jpg','思乡：那是最美和最初的地方',6),
(NULL,'/img/container/oneFloor/8.jpg','韩语R&B · 浴室自愈法则',6),
(NULL,'/img/container/oneFloor/9.jpg','意境古风 | 深谷幽兰自芬芳',6),
(NULL,'/img/container/oneFloor/10.jpg','Urban-Soul：善于伪装的城市说唱',6);


/* twoFloor 2L */
INSERT INTO qq_two_sub VALUES
(NULL,'/img/container/twoFloor/1.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/2.jpg','我爱你','廖昌永',1),
(NULL,'/img/container/twoFloor/3.jpg','天降奇兵《空降利刃》电视剧主题曲','艾福杰尼',1),
(NULL,'/img/container/twoFloor/4.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/5.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/6.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/7.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/8.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/9.jpg','Mother','Charlie Puth',1),
(NULL,'/img/container/twoFloor/1.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/2.jpg','我爱你','廖昌永',1),
(NULL,'/img/container/twoFloor/3.jpg','天降奇兵《空降利刃》电视剧主题曲','艾福杰尼',1),
(NULL,'/img/container/twoFloor/4.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/5.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/6.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/7.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/8.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/9.jpg','Mother','Charlie Puth',1),
(NULL,'/img/container/twoFloor/1.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/2.jpg','我爱你','廖昌永',1),
(NULL,'/img/container/twoFloor/3.jpg','天降奇兵《空降利刃》电视剧主题曲','艾福杰尼',1),
(NULL,'/img/container/twoFloor/4.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/5.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/6.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/7.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/8.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/9.jpg','Mother','Charlie Puth',1),
(NULL,'/img/container/twoFloor/1.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/2.jpg','我爱你','廖昌永',1),
(NULL,'/img/container/twoFloor/3.jpg','天降奇兵《空降利刃》电视剧主题曲','艾福杰尼',1),
(NULL,'/img/container/twoFloor/4.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/5.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/6.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/7.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/8.jpg','她不说','刘炫廷 / 王大痣',1),
(NULL,'/img/container/twoFloor/9.jpg','Mother','Charlie Puth',1),

(NULL,'/img/container/twoFloor/1.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/2.jpg','我爱你','廖昌永',2),
(NULL,'/img/container/twoFloor/3.jpg','天降奇兵《空降利刃》电视剧主题曲','艾福杰尼',2),
(NULL,'/img/container/twoFloor/4.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/5.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/6.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/7.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/8.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/9.jpg','Mother','Charlie Puth',2),
(NULL,'/img/container/twoFloor/1.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/2.jpg','我爱你','廖昌永',2),
(NULL,'/img/container/twoFloor/3.jpg','天降奇兵《空降利刃》电视剧主题曲','艾福杰尼',2),
(NULL,'/img/container/twoFloor/4.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/5.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/6.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/7.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/8.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/9.jpg','Mother','Charlie Puth',2),
(NULL,'/img/container/twoFloor/1.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/2.jpg','我爱你','廖昌永',2),
(NULL,'/img/container/twoFloor/3.jpg','天降奇兵《空降利刃》电视剧主题曲','艾福杰尼',2),
(NULL,'/img/container/twoFloor/4.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/5.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/6.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/7.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/8.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/9.jpg','Mother','Charlie Puth',2),
(NULL,'/img/container/twoFloor/1.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/2.jpg','我爱你','廖昌永',2),
(NULL,'/img/container/twoFloor/3.jpg','天降奇兵《空降利刃》电视剧主题曲','艾福杰尼',2),
(NULL,'/img/container/twoFloor/4.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/5.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/6.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/7.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/8.jpg','她不说','刘炫廷 / 王大痣',2),
(NULL,'/img/container/twoFloor/9.jpg','Mother','Charlie Puth',2),

(NULL,'/img/container/twoFloor/1.jpg','她不说','刘炫廷 / 王大痣',3),
(NULL,'/img/container/twoFloor/2.jpg','我爱你','廖昌永',3),
(NULL,'/img/container/twoFloor/3.jpg','天降奇兵《空降利刃》电视剧主题曲','艾福杰尼',3),
(NULL,'/img/container/twoFloor/4.jpg','她不说','刘炫廷 / 王大痣',3),
(NULL,'/img/container/twoFloor/5.jpg','她不说','刘炫廷 / 王大痣',3),
(NULL,'/img/container/twoFloor/6.jpg','她不说','刘炫廷 / 王大痣',3),
(NULL,'/img/container/twoFloor/7.jpg','她不说','刘炫廷 / 王大痣',3),
(NULL,'/img/container/twoFloor/8.jpg','她不说','刘炫廷 / 王大痣',3),
(NULL,'/img/container/twoFloor/9.jpg','Mother','Charlie Puth',3),
(NULL,'/img/container/twoFloor/1.jpg','她不说','刘炫廷 / 王大痣',3),
(NULL,'/img/container/twoFloor/2.jpg','我爱你','廖昌永',3),
(NULL,'/img/container/twoFloor/3.jpg','天降奇兵《空降利刃》电视剧主题曲','艾福杰尼',3),
(NULL,'/img/container/twoFloor/4.jpg','她不说','刘炫廷 / 王大痣',3),
(NULL,'/img/container/twoFloor/5.jpg','她不说','刘炫廷 / 王大痣',3),
(NULL,'/img/container/twoFloor/6.jpg','她不说','刘炫廷 / 王大痣',3),
(NULL,'/img/container/twoFloor/7.jpg','她不说','刘炫廷 / 王大痣',3),
(NULL,'/img/container/twoFloor/8.jpg','她不说','刘炫廷 / 王大痣',3),
(NULL,'/img/container/twoFloor/9.jpg','Mother','Charlie Puth',3),

(NULL,'/img/container/twoFloor/1.jpg','她不说','刘炫廷 / 王大痣',4),
(NULL,'/img/container/twoFloor/2.jpg','我爱你','廖昌永',4),
(NULL,'/img/container/twoFloor/3.jpg','天降奇兵《空降利刃》电视剧主题曲','艾福杰尼',4),
(NULL,'/img/container/twoFloor/4.jpg','她不说','刘炫廷 / 王大痣',4),
(NULL,'/img/container/twoFloor/5.jpg','她不说','刘炫廷 / 王大痣',4),
(NULL,'/img/container/twoFloor/6.jpg','她不说','刘炫廷 / 王大痣',4),
(NULL,'/img/container/twoFloor/7.jpg','她不说','刘炫廷 / 王大痣',4),
(NULL,'/img/container/twoFloor/8.jpg','她不说','刘炫廷 / 王大痣',4),
(NULL,'/img/container/twoFloor/9.jpg','Mother','Charlie Puth',4),

(NULL,'/img/container/twoFloor/1.jpg','她不说','刘炫廷 / 王大痣',5),
(NULL,'/img/container/twoFloor/2.jpg','我爱你','廖昌永',5),
(NULL,'/img/container/twoFloor/3.jpg','天降奇兵《空降利刃》电视剧主题曲','艾福杰尼',5),
(NULL,'/img/container/twoFloor/4.jpg','她不说','刘炫廷 / 王大痣',5),
(NULL,'/img/container/twoFloor/5.jpg','她不说','刘炫廷 / 王大痣',5),
(NULL,'/img/container/twoFloor/6.jpg','她不说','刘炫廷 / 王大痣',5),
(NULL,'/img/container/twoFloor/7.jpg','她不说','刘炫廷 / 王大痣',5),
(NULL,'/img/container/twoFloor/8.jpg','她不说','刘炫廷 / 王大痣',5),
(NULL,'/img/container/twoFloor/9.jpg','Mother','Charlie Puth',5),

(NULL,'/img/container/twoFloor/1.jpg','她不说','刘炫廷 / 王大痣',6),
(NULL,'/img/container/twoFloor/2.jpg','我爱你','廖昌永',6),
(NULL,'/img/container/twoFloor/3.jpg','天降奇兵《空降利刃》电视剧主题曲','艾福杰尼',6),
(NULL,'/img/container/twoFloor/4.jpg','她不说','刘炫廷 / 王大痣',6),
(NULL,'/img/container/twoFloor/5.jpg','她不说','刘炫廷 / 王大痣',6),
(NULL,'/img/container/twoFloor/6.jpg','她不说','刘炫廷 / 王大痣',6),
(NULL,'/img/container/twoFloor/7.jpg','她不说','刘炫廷 / 王大痣',6),
(NULL,'/img/container/twoFloor/8.jpg','她不说','刘炫廷 / 王大痣',6),
(NULL,'/img/container/twoFloor/9.jpg','Mother','Charlie Puth',6);


/* threeFloor 3L */
INSERT INTO qq_three_carousel VALUES
(NULL,'/img/container/threeFloor/1.jpg'),
(NULL,'/img/container/threeFloor/2.jpg'),
(NULL,'/img/container/threeFloor/3.jpg'),
(NULL,'/img/container/threeFloor/4.jpg'),
(NULL,'/img/container/threeFloor/5.jpg'),
(NULL,'/img/container/threeFloor/6.jpg'),
(NULL,'/img/container/threeFloor/7.jpg'),
(NULL,'/img/container/threeFloor/8.jpg'),
(NULL,'/img/container/threeFloor/9.jpg'),
(NULL,'/img/container/threeFloor/10.jpg');


/* fourFloor 4L */
INSERT INTO qq_four_sub VALUES
(NULL,'/img/container/fourFloor/1.jpg','一个人旅行','李凡一',1),
(NULL,'/img/container/fourFloor/2.jpg','暖风','新声主义',1),
(NULL,'/img/container/fourFloor/3.jpg','中国的梦','白小白',1),
(NULL,'/img/container/fourFloor/4.jpg','中国的梦','白小白',1),
(NULL,'/img/container/fourFloor/5.jpg','中国的梦','白小白',1),
(NULL,'/img/container/fourFloor/6.jpg','中国的梦','白小白',1),
(NULL,'/img/container/fourFloor/7.jpg','中国的梦','白小白',1),
(NULL,'/img/container/fourFloor/8.jpg','中国的梦','白小白',1),
(NULL,'/img/container/fourFloor/9.jpg','中国的梦','白小白',1),
(NULL,'/img/container/fourFloor/10.jpg','中国的梦','白小白',1),

(NULL,'/img/container/fourFloor/1.jpg','而立','韦礼安',2),
(NULL,'/img/container/fourFloor/2.jpg','中国的梦','白小白',2),
(NULL,'/img/container/fourFloor/3.jpg','中国的梦','白小白',2),
(NULL,'/img/container/fourFloor/4.jpg','中国的梦','白小白',2),
(NULL,'/img/container/fourFloor/5.jpg','中国的梦','白小白',2),
(NULL,'/img/container/fourFloor/6.jpg','中国的梦','白小白',2),
(NULL,'/img/container/fourFloor/7.jpg','中国的梦','白小白',2),
(NULL,'/img/container/fourFloor/8.jpg','中国的梦','白小白',2),
(NULL,'/img/container/fourFloor/9.jpg','中国的梦','白小白',2),
(NULL,'/img/container/fourFloor/10.jpg','中国的梦','白小白',2),

(NULL,'/img/container/fourFloor/1.jpg','그게 다 너라서','김그림',3),
(NULL,'/img/container/fourFloor/2.jpg','中国的梦','白小白',3),
(NULL,'/img/container/fourFloor/3.jpg','中国的梦','白小白',3),
(NULL,'/img/container/fourFloor/4.jpg','中国的梦','白小白',3),
(NULL,'/img/container/fourFloor/5.jpg','中国的梦','白小白',3),
(NULL,'/img/container/fourFloor/6.jpg','中国的梦','白小白',3),
(NULL,'/img/container/fourFloor/7.jpg','中国的梦','白小白',3),
(NULL,'/img/container/fourFloor/8.jpg','中国的梦','白小白',3),
(NULL,'/img/container/fourFloor/9.jpg','中国的梦','白小白',3),
(NULL,'/img/container/fourFloor/10.jpg','中国的梦','白小白',3),

(NULL,'/img/container/fourFloor/1.jpg','而立','韦礼安',4),
(NULL,'/img/container/fourFloor/2.jpg','中国的梦','白小白',4),
(NULL,'/img/container/fourFloor/3.jpg','中国的梦','白小白',4),
(NULL,'/img/container/fourFloor/4.jpg','中国的梦','白小白',4),
(NULL,'/img/container/fourFloor/5.jpg','中国的梦','白小白',4),
(NULL,'/img/container/fourFloor/6.jpg','中国的梦','白小白',4),
(NULL,'/img/container/fourFloor/7.jpg','中国的梦','白小白',4),
(NULL,'/img/container/fourFloor/8.jpg','中国的梦','白小白',4),
(NULL,'/img/container/fourFloor/9.jpg','中国的梦','白小白',4),
(NULL,'/img/container/fourFloor/10.jpg','中国的梦','白小白',4),

(NULL,'/img/container/fourFloor/1.jpg','而立','韦礼安',5),
(NULL,'/img/container/fourFloor/2.jpg','中国的梦','白小白',5),
(NULL,'/img/container/fourFloor/3.jpg','中国的梦','白小白',5),
(NULL,'/img/container/fourFloor/4.jpg','中国的梦','白小白',5),
(NULL,'/img/container/fourFloor/5.jpg','中国的梦','白小白',5),
(NULL,'/img/container/fourFloor/6.jpg','中国的梦','白小白',5),
(NULL,'/img/container/fourFloor/7.jpg','中国的梦','白小白',5),
(NULL,'/img/container/fourFloor/8.jpg','中国的梦','白小白',5),
(NULL,'/img/container/fourFloor/9.jpg','中国的梦','白小白',5),
(NULL,'/img/container/fourFloor/10.jpg','中国的梦','白小白',5),

(NULL,'/img/container/fourFloor/1.jpg','而立','韦礼安',6),
(NULL,'/img/container/fourFloor/2.jpg','中国的梦','白小白',6),
(NULL,'/img/container/fourFloor/3.jpg','中国的梦','白小白',6),
(NULL,'/img/container/fourFloor/4.jpg','中国的梦','白小白',6),
(NULL,'/img/container/fourFloor/5.jpg','中国的梦','白小白',6),
(NULL,'/img/container/fourFloor/6.jpg','中国的梦','白小白',6),
(NULL,'/img/container/fourFloor/7.jpg','中国的梦','白小白',6),
(NULL,'/img/container/fourFloor/8.jpg','中国的梦','白小白',6),
(NULL,'/img/container/fourFloor/9.jpg','中国的梦','白小白',6),
(NULL,'/img/container/fourFloor/10.jpg','中国的梦','白小白',6);


/* fiveFloor 5L */
INSERT INTO qq_five_sub VALUES
(NULL,'1','病态','薛之谦',1),
(NULL,'2','我不好','张艺兴',1),
(NULL,'3','卸任','谢宇伦',1),

(NULL,'1','芒种','音阙诗听/赵方婧',2),
(NULL,'2','我不好','张艺兴',2),
(NULL,'3','卸任','谢宇伦',2),

(NULL,'1','病态','薛之谦',3),
(NULL,'2','我不好','张艺兴',3),
(NULL,'3','卸任','谢宇伦',3),

(NULL,'1','病态','薛之谦',4),
(NULL,'2','我不好','张艺兴',4),
(NULL,'3','卸任','谢宇伦',4),

(NULL,'1','워커홀릭 (Workaholic)','볼빨간사춘기 (脸红的思春期)',5),
(NULL,'2','我不好','张艺兴',5),
(NULL,'3','卸任','谢宇伦',5);


/* sixFloor 6L */
INSERT INTO qq_six_sub VALUES
(NULL,'/img/container/sixFloor/1.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/2.jpg','Mother','Charlie Puth',1),
(NULL,'/img/container/sixFloor/3.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/4.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/5.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/6.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/7.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/8.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/9.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/10.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/1.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/2.jpg','Mother','Charlie Puth',1),
(NULL,'/img/container/sixFloor/3.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/4.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/5.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/6.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/7.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/8.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/9.jpg','太空人','吴青峰',1),
(NULL,'/img/container/sixFloor/10.jpg','太空人','吴青峰',1),

(NULL,'/img/container/sixFloor/1.jpg','太空人','吴青峰',2),
(NULL,'/img/container/sixFloor/2.jpg','Mother','Charlie Puth',2),
(NULL,'/img/container/sixFloor/3.jpg','太空人','吴青峰',2),
(NULL,'/img/container/sixFloor/4.jpg','太空人','吴青峰',2),
(NULL,'/img/container/sixFloor/5.jpg','太空人','吴青峰',2),
(NULL,'/img/container/sixFloor/6.jpg','太空人','吴青峰',2),
(NULL,'/img/container/sixFloor/7.jpg','太空人','吴青峰',2),
(NULL,'/img/container/sixFloor/8.jpg','太空人','吴青峰',2),
(NULL,'/img/container/sixFloor/9.jpg','太空人','吴青峰',2),
(NULL,'/img/container/sixFloor/10.jpg','太空人','吴青峰',2),

(NULL,'/img/container/sixFloor/1.jpg','太空人','吴青峰',3),
(NULL,'/img/container/sixFloor/2.jpg','Mother','Charlie Puth',3),
(NULL,'/img/container/sixFloor/3.jpg','太空人','吴青峰',3),
(NULL,'/img/container/sixFloor/4.jpg','太空人','吴青峰',3),
(NULL,'/img/container/sixFloor/5.jpg','太空人','吴青峰',3),
(NULL,'/img/container/sixFloor/6.jpg','太空人','吴青峰',3),
(NULL,'/img/container/sixFloor/7.jpg','太空人','吴青峰',3),
(NULL,'/img/container/sixFloor/8.jpg','太空人','吴青峰',3),
(NULL,'/img/container/sixFloor/9.jpg','太空人','吴青峰',3),
(NULL,'/img/container/sixFloor/10.jpg','太空人','吴青峰',3),

(NULL,'/img/container/sixFloor/1.jpg','太空人','吴青峰',4),
(NULL,'/img/container/sixFloor/2.jpg','Mother','Charlie Puth',4),
(NULL,'/img/container/sixFloor/3.jpg','太空人','吴青峰',4),
(NULL,'/img/container/sixFloor/4.jpg','太空人','吴青峰',4),
(NULL,'/img/container/sixFloor/5.jpg','太空人','吴青峰',4),
(NULL,'/img/container/sixFloor/6.jpg','太空人','吴青峰',4),
(NULL,'/img/container/sixFloor/7.jpg','太空人','吴青峰',4),
(NULL,'/img/container/sixFloor/8.jpg','太空人','吴青峰',4),
(NULL,'/img/container/sixFloor/9.jpg','太空人','吴青峰',4),
(NULL,'/img/container/sixFloor/10.jpg','太空人','吴青峰',4),

(NULL,'/img/container/sixFloor/1.jpg','太空人','吴青峰',5),
(NULL,'/img/container/sixFloor/2.jpg','Mother','Charlie Puth',5),
(NULL,'/img/container/sixFloor/3.jpg','太空人','吴青峰',5),
(NULL,'/img/container/sixFloor/4.jpg','太空人','吴青峰',5),
(NULL,'/img/container/sixFloor/5.jpg','太空人','吴青峰',5),
(NULL,'/img/container/sixFloor/6.jpg','太空人','吴青峰',5),
(NULL,'/img/container/sixFloor/7.jpg','太空人','吴青峰',5),
(NULL,'/img/container/sixFloor/8.jpg','太空人','吴青峰',5),
(NULL,'/img/container/sixFloor/9.jpg','太空人','吴青峰',5),
(NULL,'/img/container/sixFloor/10.jpg','太空人','吴青峰',5),

(NULL,'/img/container/sixFloor/1.jpg','太空人','吴青峰',6),
(NULL,'/img/container/sixFloor/2.jpg','Mother','Charlie Puth',6),
(NULL,'/img/container/sixFloor/3.jpg','太空人','吴青峰',6),
(NULL,'/img/container/sixFloor/4.jpg','太空人','吴青峰',6),
(NULL,'/img/container/sixFloor/5.jpg','太空人','吴青峰',6),
(NULL,'/img/container/sixFloor/6.jpg','太空人','吴青峰',6),
(NULL,'/img/container/sixFloor/7.jpg','太空人','吴青峰',6),
(NULL,'/img/container/sixFloor/8.jpg','太空人','吴青峰',6),
(NULL,'/img/container/sixFloor/9.jpg','太空人','吴青峰',6),
(NULL,'/img/container/sixFloor/10.jpg','太空人','吴青峰',6);


/********** 歌手列表 **********/
INSERT INTO qq_singer_one VALUES
(NULL,'/img/container/qq_singer_one/1.jpg','音阙诗听'),
(NULL,'/img/container/qq_singer_one/2.jpg','G.E.M. 邓紫棋'),
(NULL,'/img/container/qq_singer_one/3.jpg','薛之谦'),
(NULL,'/img/container/qq_singer_one/4.jpg','周杰伦'),
(NULL,'/img/container/qq_singer_one/5.jpg','陈雪凝'),
(NULL,'/img/container/qq_singer_one/6.jpg','林俊杰'),
(NULL,'/img/container/qq_singer_one/7.jpg','许嵩'),
(NULL,'/img/container/qq_singer_one/8.jpg','王力宏'),
(NULL,'/img/container/qq_singer_one/9.jpg','Alan Walker (艾兰·沃克)'),
(NULL,'/img/container/qq_singer_one/10.jpg','李荣浩');

INSERT INTO qq_singer_two VALUES
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),

(NULL,'陈奕迅'),
(NULL,'BEYOND'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),

(NULL,'毛不易'),
(NULL,'BEYOND'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),

(NULL,'周传雄'),
(NULL,'BEYOND'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),

(NULL,'张艺兴'),
(NULL,'BEYOND'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),

(NULL,'周传雄'),
(NULL,'BEYOND'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),

(NULL,'林志颖'),
(NULL,'BEYOND'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷'),
(NULL,'汪苏泷');


/********** 新碟 ***********/
INSERT INTO qq_disc VALUES
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',1),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',1),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',1),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',1),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',1),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',1),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',1),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',1),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',1),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',1),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',1),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',1),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',1),
(NULL,'/img/container/qq/3.jpg','中国的梦','白小白','2019-09-14',1),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',1),
(NULL,'/img/container/qq__disc/2.jpg','来日没有那么长','虎二','2019-09-15',1),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',1),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',1),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',1),
(NULL,'/img/container/qq_discdisc/2.jpg','来日没有那么长','虎二','2019-09-15',1),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',1),

(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',2),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',2),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',2),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',2),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',2),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',2),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',2),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',2),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',2),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',2),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',2),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',2),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',2),
(NULL,'/img/container/qq/3.jpg','中国的梦','白小白','2019-09-14',2),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',2),
(NULL,'/img/container/qq__disc/2.jpg','来日没有那么长','虎二','2019-09-15',2),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',2),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',2),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',2),
(NULL,'/img/container/qq_discdisc/2.jpg','来日没有那么长','虎二','2019-09-15',2),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',2),

(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',3),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',3),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',3),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',3),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',3),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',3),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',3),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',3),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',3),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',3),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',3),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',3),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',3),
(NULL,'/img/container/qq/3.jpg','中国的梦','白小白','2019-09-14',3),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',3),
(NULL,'/img/container/qq__disc/2.jpg','来日没有那么长','虎二','2019-09-15',3),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',3),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',3),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',3),
(NULL,'/img/container/qq_discdisc/2.jpg','来日没有那么长','虎二','2019-09-15',3),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',3),

(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',4),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',4),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',4),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',4),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',4),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',4),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',4),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',4),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',4),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',4),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',4),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',4),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',4),
(NULL,'/img/container/qq/3.jpg','中国的梦','白小白','2019-09-14',4),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',4),
(NULL,'/img/container/qq__disc/2.jpg','来日没有那么长','虎二','2019-09-15',4),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',4),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',4),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',4),
(NULL,'/img/container/qq_discdisc/2.jpg','来日没有那么长','虎二','2019-09-15',4),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',4),

(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',5),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',5),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',5),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',5),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',5),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',5),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',5),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',5),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',5),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',5),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',5),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',5),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',5),
(NULL,'/img/container/qq/3.jpg','中国的梦','白小白','2019-09-14',5),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',5),
(NULL,'/img/container/qq__disc/2.jpg','来日没有那么长','虎二','2019-09-15',5),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',5),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',5),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',5),
(NULL,'/img/container/qq_discdisc/2.jpg','来日没有那么长','虎二','2019-09-15',5),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',5),

(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',6),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',6),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',6),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',6),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',6),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',6),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',6),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',6),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',6),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',6),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',6),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',6),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',6),
(NULL,'/img/container/qq/3.jpg','中国的梦','白小白','2019-09-14',6),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',6),
(NULL,'/img/container/qq__disc/2.jpg','来日没有那么长','虎二','2019-09-15',6),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',6),
(NULL,'/img/container/qq_disc/1.jpg','中国的梦','白小白','2019-09-15',6),
(NULL,'/img/container/qq_disc/2.jpg','来日没有那么长','虎二','2019-09-15',6),
(NULL,'/img/container/qq_discdisc/2.jpg','来日没有那么长','虎二','2019-09-15',6),
(NULL,'/img/container/qq_disc/3.jpg','中国的梦','白小白','2019-09-14',6);


/********** 排行榜 *********/
INSERT INTO qq_ranklist VALUES
(NULL,'/img/container/qq_ranklist/1.jpg','病态','薛之谦','04:39',1),
(NULL,'/img/container/qq_ranklist/2.jpg','我不好','张艺兴','04:39',1),
(NULL,'/img/container/qq_ranklist/3.jpg','卸任','谢宇伦','04:39',1),
(NULL,'/img/container/qq_ranklist/1.jpg','病态','薛之谦','04:39',1),
(NULL,'/img/container/qq_ranklist/2.jpg','我不好','张艺兴','04:39',1),
(NULL,'/img/container/qq_ranklist/3.jpg','卸任','谢宇伦','04:39',1),
(NULL,'/img/container/qq_ranklist/1.jpg','病态','薛之谦','04:39',1),
(NULL,'/img/container/qq_ranklist/2.jpg','我不好','张艺兴','04:39',1),
(NULL,'/img/container/qq_ranklist/3.jpg','卸任','谢宇伦','04:39',1),

(NULL,'/img/container/qq_ranklist/1.jpg','病态','薛之谦','04:39',2),
(NULL,'/img/container/qq_ranklist/2.jpg','我不好','张艺兴','04:39',2),
(NULL,'/img/container/qq_ranklist/3.jpg','卸任','谢宇伦','04:39',2),
(NULL,'/img/container/qq_ranklist/1.jpg','病态','薛之谦','04:39',2),
(NULL,'/img/container/qq_ranklist/2.jpg','我不好','张艺兴','04:39',2),
(NULL,'/img/container/qq_ranklist/3.jpg','卸任','谢宇伦','04:39',2),
(NULL,'/img/container/qq_ranklist/1.jpg','病态','薛之谦','04:39',2),
(NULL,'/img/container/qq_ranklist/2.jpg','我不好','张艺兴','04:39',2),
(NULL,'/img/container/qq_ranklist/3.jpg','卸任','谢宇伦','04:39',2);