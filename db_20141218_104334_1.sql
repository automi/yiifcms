# your database backup
# version:5.5.27-log
# time:2014-12-18 10:43:34
# --------------------------------------------------------


DROP TABLE IF EXISTS `yiif_ad`;
CREATE TABLE `yiif_ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `position_id` int(10) unsigned NOT NULL COMMENT '广告位ID',
  `title` varchar(50) NOT NULL COMMENT '广告名称',
  `title_alias` char(40) NOT NULL DEFAULT '' COMMENT '标识',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `image_url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片地址',
  `width` varchar(10) NOT NULL DEFAULT '' COMMENT '图片宽',
  `height` varchar(10) NOT NULL DEFAULT '' COMMENT '图片高',
  `introduce` text COMMENT '广告描述',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `attach_file` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '显示状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='广告';

INSERT INTO `yiif_ad` VALUES('2','4','香港云服务器(尊云)','index_top_banner','http://www.zun.com/zthk.html','','1170','100','','0','uploads/images/201408/3d54c1075c2.jpg','1','Y','1407138989');
INSERT INTO `yiif_ad` VALUES('3','5','Tera(神域之战)','index_bottom_banner','http://tera.kunlun.com/index.html','','1170','220','','0','uploads/images/201408/5b470116af1.png','2','Y','1407140035');
INSERT INTO `yiif_ad` VALUES('4','3','阿里云0元拥抱云计算','index_mid_banner','http://free.aliyun.com/?tracelog=buy','','1170','40','','0','uploads/images/201408/369f04c0386.jpg','0','Y','1407137817');

DROP TABLE IF EXISTS `yiif_ad_position`;
CREATE TABLE `yiif_ad_position` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` varchar(100) NOT NULL DEFAULT '' COMMENT '广告位名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='广告位管理表 ';

INSERT INTO `yiif_ad_position` VALUES('1','首页banner幻灯片');
INSERT INTO `yiif_ad_position` VALUES('2','底部幻灯片');
INSERT INTO `yiif_ad_position` VALUES('3','首页中部banner');
INSERT INTO `yiif_ad_position` VALUES('4','首页头部banner');
INSERT INTO `yiif_ad_position` VALUES('5','首页底部banner');

DROP TABLE IF EXISTS `yiif_attention`;
CREATE TABLE `yiif_attention` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0' COMMENT '收藏id',
  `user_id` int(10) unsigned DEFAULT '0' COMMENT '用户id',
  `title` varchar(100) DEFAULT '' COMMENT '收藏名称',
  `url` varchar(200) DEFAULT '' COMMENT '收藏地址',
  `type` tinyint(2) unsigned DEFAULT '1' COMMENT '收藏内容类型(文章/图片/商品/视频)',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='关注表';

INSERT INTO `yiif_attention` VALUES('4','38','31','关于人人网开发平台提供的sdk的问题','http://www.yii.local/?r=post/view&id=38','1','1418198896');

DROP TABLE IF EXISTS `yiif_catalog`;
CREATE TABLE `yiif_catalog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '栏目类型',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类',
  `catalog_name` varchar(100) NOT NULL COMMENT '名称',
  `content` text COMMENT '详细介绍',
  `seo_title` varchar(100) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` text COMMENT 'seo描述',
  `attach_file` varchar(100) DEFAULT '' COMMENT '附件',
  `attach_thumb` varchar(100) DEFAULT '' COMMENT '缩略图',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `data_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数据量',
  `status` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '是否显示',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转地址',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='全局分类';

INSERT INTO `yiif_catalog` VALUES('1','1','0','精品阅读','','','','','','','0','0','Y','','1379545020','1418373077');
INSERT INTO `yiif_catalog` VALUES('2','1','1','业界讯息','公司动态栏目介绍','','','','','','2','0','Y','','1379545199','1404109846');
INSERT INTO `yiif_catalog` VALUES('3','1','1','服务器与运维','行业新闻栏目介绍','','','','','','1','0','Y','','1379545248','1407122169');
INSERT INTO `yiif_catalog` VALUES('4','5','0','产品','产品栏目介绍','','','','','','0','0','N','','1379545330','1394517482');
INSERT INTO `yiif_catalog` VALUES('5','5','4','新品上市','新品上市栏目介绍','','','','','','1','0','N','','1379545388','1394517482');
INSERT INTO `yiif_catalog` VALUES('6','5','4','特价商品','特价商品栏目介绍','','','','','','0','0','N','','1379545435','1394517482');
INSERT INTO `yiif_catalog` VALUES('8','2','0','图集','','','','','','','0','0','Y','','0','1399616730');
INSERT INTO `yiif_catalog` VALUES('9','2','8','最新热图','最新热图','最新热图','最新热图','最新热图','','','0','0','Y','','0','1399616723');
INSERT INTO `yiif_catalog` VALUES('10','3','0','本站下载','','','','','','','0','0','Y','','1400489000','1407117706');
INSERT INTO `yiif_catalog` VALUES('11','3','10','CMS版本','网站软件','','','','','','0','0','Y','','1400489069','1407117714');
INSERT INTO `yiif_catalog` VALUES('12','4','0','视频专区','','','','','','','0','0','Y','','1400828336','1407120434');
INSERT INTO `yiif_catalog` VALUES('13','4','12','YII教程','','','','','','','0','0','Y','','1400828453','1407120377');
INSERT INTO `yiif_catalog` VALUES('14','2','8','网络美女','','','','','','','0','0','Y','','1404111907','1404111907');
INSERT INTO `yiif_catalog` VALUES('15','3','10','建站工具','','','','','','','0','0','Y','','1407115842','1407115842');
INSERT INTO `yiif_catalog` VALUES('16','4','12','最新电影','','','','','','','0','0','Y','','1407120456','1407120456');
INSERT INTO `yiif_catalog` VALUES('17','1','1','PHP','','','','','','','0','0','Y','','1407122137','1407122137');
INSERT INTO `yiif_catalog` VALUES('18','1','1','mysql','','','','','','','0','0','Y','','1407122149','1407122149');
INSERT INTO `yiif_catalog` VALUES('19','3','10','手册大全','','','php手册,mysql手册,jquery手册,yii权威指南','','','','0','0','Y','','1407122452','1407122504');
INSERT INTO `yiif_catalog` VALUES('20','1','1','Yii','','','','','','','0','0','Y','','1407136673','1407136682');
INSERT INTO `yiif_catalog` VALUES('21','1','1','web前端','','','','','','','0','0','Y','','1408612172','1408612172');

DROP TABLE IF EXISTS `yiif_collect`;
CREATE TABLE `yiif_collect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0' COMMENT '收藏id',
  `user_id` int(10) unsigned DEFAULT '0' COMMENT '用户id',
  `title` varchar(100) DEFAULT '' COMMENT '收藏名称',
  `url` varchar(200) DEFAULT '' COMMENT '收藏地址',
  `type` tinyint(2) unsigned DEFAULT '1' COMMENT '收藏内容类型(文章/图片/商品/视频)',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO `yiif_collect` VALUES('13','38','31','关于人人网开发平台提供的sdk的问题','http://www.yii.local/?r=post/view&id=38','1','1418198891');

DROP TABLE IF EXISTS `yiif_comment`;
CREATE TABLE `yiif_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '主题id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `content` text NOT NULL COMMENT '评论内容',
  `status` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型',
  `client_ip` varchar(15) NOT NULL DEFAULT '127' COMMENT '评论ip',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='评论表';

INSERT INTO `yiif_comment` VALUES('31','1','31','第三张亮了！<img src=\"/static/public/emoticons/images/13.gif\" alt=\"\" border=\"0\" />','Y','2','127.0.0.1','1402628120');
INSERT INTO `yiif_comment` VALUES('32','16','31','内容排版 不太好吧 <img src=\"/public/emoticons/images/1.gif\" alt=\"\" border=\"0\" /><br />','Y','1','127.0.0.1','1402882240');
INSERT INTO `yiif_comment` VALUES('33','16','31','再试一次','Y','1','127.0.0.1','1402889690');
INSERT INTO `yiif_comment` VALUES('34','4','31','旺旺还不错 <img src=\"/static/public/emoticons/images/65.gif\" alt=\"\" border=\"0\" /><br />','Y','3','127.0.0.1','1403055802');
INSERT INTO `yiif_comment` VALUES('39','29','1','不错！','Y','1','118.186.156.246','1408326806');
INSERT INTO `yiif_comment` VALUES('37','15','31','<pre class=\"prettyprint lang-js\">&lt;script&gt;&lt;/script&gt;</pre>
<pre class=\"prettyprint lang-js\">&lt;script&gt;
alert(\'bb\');
&lt;/script&gt;</pre>','Y','1','101.36.77.42','1404444825');
INSERT INTO `yiif_comment` VALUES('38','31','44','顶一下！<img src=\"/public/emoticons/images/0.gif\" border=\"0\" alt=\"\" />','Y','1','118.186.156.246','1407916537');
INSERT INTO `yiif_comment` VALUES('40','48','1','<img src=\"/uploads/attached/image/201411/1935fb6b07f.gif\" alt=\"\" />','Y','1','127.0.0.1','1416817736');
INSERT INTO `yiif_comment` VALUES('41','2','1','这个图片给力！','Y','2','127.0.0.1','1418356154');
INSERT INTO `yiif_comment` VALUES('42','2','1','嘿嘿!','N','2','127.0.0.1','1418356256');
INSERT INTO `yiif_comment` VALUES('43','13','2','asdf','Y','3','127.0.0.1','1418630167');

DROP TABLE IF EXISTS `yiif_friend`;
CREATE TABLE `yiif_friend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid1` int(10) unsigned DEFAULT '0' COMMENT '其中一个用户id',
  `uid2` int(10) unsigned DEFAULT '0' COMMENT '好友uid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `yiif_goods`;
CREATE TABLE `yiif_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `catalog_id` int(10) unsigned DEFAULT NULL COMMENT '栏目id',
  `price` decimal(10,2) unsigned DEFAULT NULL,
  `default_image` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `default_thumb` varchar(200) DEFAULT NULL COMMENT '商品缩略图',
  `image_list` varchar(255) DEFAULT NULL COMMENT '商品组图',
  `content` text COMMENT '商品内容',
  `views` int(10) unsigned DEFAULT '0' COMMENT '浏览次数',
  `sales` int(10) unsigned DEFAULT '0' COMMENT '销售次数',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  `status` enum('Y','N') DEFAULT 'Y' COMMENT '显示状态',
  `recom_id` int(10) DEFAULT '0' COMMENT '推荐位id',
  `sort_order` mediumint(10) unsigned DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品表';

INSERT INTO `yiif_goods` VALUES('1','小米手机','5','799.00','uploads/images/201405/3fdd860df5d.jpg','uploads/thumbs/201405/small_3fdd860df5d.jpg','a:1:{i:0;a:5:{s:6:\"fileId\";s:2:\"45\";s:4:\"file\";s:37:\"uploads/images/201405/6bf7dd586e7.jpg\";s:5:\"thumb\";N;s:4:\"desc\";N;s:3:\"url\";N;}}','','16','0','1401076650','1405307616','N','0','0');

DROP TABLE IF EXISTS `yiif_image`;
CREATE TABLE `yiif_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '用户',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `title_second` varchar(255) NOT NULL DEFAULT '' COMMENT '副标题',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `html_path` varchar(100) NOT NULL DEFAULT '' COMMENT 'html路径',
  `html_file` varchar(100) NOT NULL DEFAULT '' COMMENT 'html文件名',
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `special_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '专题编号',
  `introduce` text COMMENT '摘要',
  `image_list` text COMMENT '组图',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_description` text COMMENT 'SEO描述',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `content` mediumtext NOT NULL COMMENT '内容',
  `copy_from` varchar(100) NOT NULL DEFAULT '' COMMENT '来源',
  `copy_url` varchar(255) NOT NULL DEFAULT '' COMMENT '来源url',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转URL',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT 'tags',
  `view_count` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '查看次数',
  `commend` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '推荐',
  `attach_status` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '是否上传附件',
  `attach_file` varchar(255) NOT NULL DEFAULT '' COMMENT '附件名称',
  `attach_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `favorite_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `top_line` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '头条',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `reply_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复次数',
  `reply_allow` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '允许评论',
  `sort_desc` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '是否显示',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='内容管理';

INSERT INTO `yiif_image` VALUES('2','1','图览2014巴西世界杯','图览2014巴西世界杯','','','','9','0','世界杯来啦，为了帮助大家更轻松更愉悦地观看世界杯，小编制作了《图览世界杯》，大家可及时围观赛况和花边消息，方便彼此切磋，迎来人生比翼齐飞的新高度，更有机会参与【百度图片竞猜世界杯】的活动哦！我们的奖品已经到位，猜对比分，并@百度图片@两位好友，就有机会赢取【高端手表】哦亲~动动手指，为世界杯加油！更多消息请密切关注【@百度图片】新浪微博官方账号吧。','a:3:{i:0;a:5:{s:6:\"fileId\";s:2:\"77\";s:4:\"file\";s:37:\"uploads/images/201407/2d8af2a52c9.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_2d8af2a52c9.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:1;a:5:{s:6:\"fileId\";s:2:\"78\";s:4:\"file\";s:37:\"uploads/images/201407/830c15efce6.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_830c15efce6.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:2;a:5:{s:6:\"fileId\";s:2:\"79\";s:4:\"file\";s:37:\"uploads/images/201407/8068f3a90b7.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_8068f3a90b7.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\">世界杯来啦，为了帮助大家更轻松更愉悦地观看世界杯，小编制作了《图览世界杯》，大家可及时围观赛况和花边消息，方便彼此切磋，迎来人生比翼齐飞的新高度，更有机会参与【百度图片竞猜世界杯】的活动哦！我们的奖品已经到位，猜对比分，并@百度图片@两位好友，就有机会赢取【高端手表】哦亲~动动手指，为世界杯加油！更多消息请密切关注【@<a target=\"_blank\" href=\"http://www.baidu.com\">百度</a>图片】新浪微博官方账号吧。</span> 
</p>','百度图片','http://image.baidu.com/infopage/tpl?id=8&mode=viewer','','巴西,世界杯,美女','95','N','N','uploads/images/201406/1f6228399a3.jpg','uploads/thumbs/201406/small_1f6228399a3.jpg','0','N','1407119085','0','Y','0','Y','1404111213');
INSERT INTO `yiif_image` VALUES('3','1','小清新','','','','','14','0','','','','','','小清新','','','','美女','45','N','N','uploads/images/201406/2980725e720.jpg','uploads/thumbs/201406/small_2980725e720.jpg','0','N','1404111946','0','Y','0','Y','1404111946');
INSERT INTO `yiif_image` VALUES('4','1','游戏唯美','','','','','14','0','','a:1:{i:0;a:5:{s:6:\"fileId\";s:2:\"93\";s:4:\"file\";s:37:\"uploads/images/201407/2c48ccb19e2.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_2c48ccb19e2.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','游戏唯美','','','','美女','48','N','N','uploads/images/201406/8b571b7725d.jpg','uploads/thumbs/201406/small_8b571b7725d.jpg','0','N','1404304930','0','Y','0','Y','1404112171');
INSERT INTO `yiif_image` VALUES('5','1','游戏唯美','','','','','14','0','','a:3:{i:0;a:5:{s:6:\"fileId\";s:2:\"89\";s:4:\"file\";s:37:\"uploads/images/201407/2e13e0a3ed9.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_2e13e0a3ed9.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:1;a:5:{s:6:\"fileId\";s:2:\"90\";s:4:\"file\";s:37:\"uploads/images/201407/2a2d8e16cb0.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_2a2d8e16cb0.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:2;a:5:{s:6:\"fileId\";s:2:\"91\";s:4:\"file\";s:37:\"uploads/images/201407/825a8ac9d80.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_825a8ac9d80.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','游戏唯美','','','','美女','46','N','N','uploads/images/201406/d7d79134e6d.jpg','uploads/thumbs/201406/small_d7d79134e6d.jpg','0','N','1404184873','0','Y','0','Y','1404114260');
INSERT INTO `yiif_image` VALUES('6','1','明星海景','','','','','14','0','','a:1:{i:0;a:5:{s:6:\"fileId\";s:2:\"88\";s:4:\"file\";s:37:\"uploads/images/201407/b0d4552362e.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_b0d4552362e.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','明星海景','','','','美女','47','N','N','uploads/images/201406/fe41fcc37ac.jpg','uploads/thumbs/201406/small_fe41fcc37ac.jpg','0','N','1404184847','0','Y','0','Y','1404114318');
INSERT INTO `yiif_image` VALUES('7','1','靓丽女孩','','','','','14','0','','a:2:{i:0;a:5:{s:6:\"fileId\";s:2:\"86\";s:4:\"file\";s:37:\"uploads/images/201407/4efea9bddd1.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_4efea9bddd1.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:1;a:5:{s:6:\"fileId\";s:2:\"87\";s:4:\"file\";s:37:\"uploads/images/201407/9706bae28d1.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_9706bae28d1.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','靓丽女孩','','','','美女','41','N','N','uploads/images/201406/15b9aedad1b.jpg','uploads/thumbs/201406/small_15b9aedad1b.jpg','0','N','1404184809','0','Y','0','Y','1404114395');
INSERT INTO `yiif_image` VALUES('8','1','漂亮女神','','','','','14','0','','a:3:{i:0;a:5:{s:6:\"fileId\";s:2:\"83\";s:4:\"file\";s:37:\"uploads/images/201407/cef6cf4f134.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_cef6cf4f134.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:1;a:5:{s:6:\"fileId\";s:2:\"84\";s:4:\"file\";s:37:\"uploads/images/201407/8a0a9d8cb7b.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_8a0a9d8cb7b.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:2;a:5:{s:6:\"fileId\";s:2:\"85\";s:4:\"file\";s:37:\"uploads/images/201407/4464b4046d1.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_4464b4046d1.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','漂亮女神','','','','美女','53','N','N','uploads/images/201406/bb6aa6ad2c7.jpg','uploads/thumbs/201406/small_bb6aa6ad2c7.jpg','0','N','1404184778','0','Y','0','Y','1404114458');
INSERT INTO `yiif_image` VALUES('9','1','气质美女','','','','','8','0','','a:2:{i:0;a:5:{s:6:\"fileId\";s:2:\"81\";s:4:\"file\";s:37:\"uploads/images/201407/ed5693e7e2d.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_ed5693e7e2d.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}i:1;a:5:{s:6:\"fileId\";s:2:\"82\";s:4:\"file\";s:37:\"uploads/images/201407/f60eb1cfb67.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_f60eb1cfb67.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','气质美女','','','','美女','52','N','N','uploads/images/201406/ba6b6e35743.jpg','uploads/thumbs/201406/small_ba6b6e35743.jpg','0','N','1404184756','0','Y','0','Y','1404114497');
INSERT INTO `yiif_image` VALUES('10','1','淑女形象','','','','','8','0','','a:1:{i:0;a:5:{s:6:\"fileId\";s:2:\"80\";s:4:\"file\";s:37:\"uploads/images/201407/4be229705ba.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_4be229705ba.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','淑女形象','','','','美女','61','N','N','uploads/images/201406/5348209384d.jpg','uploads/thumbs/201406/small_5348209384d.jpg','0','N','1404184732','0','Y','0','Y','1404114535');
INSERT INTO `yiif_image` VALUES('11','1','足球宝贝','','','','','14','0','','a:1:{i:0;a:5:{s:6:\"fileId\";s:2:\"92\";s:4:\"file\";s:37:\"uploads/images/201407/e62833cd62c.jpg\";s:5:\"thumb\";s:43:\"uploads/thumbs/201407/small_e62833cd62c.jpg\";s:4:\"desc\";s:0:\"\";s:3:\"url\";s:0:\"\";}}','','','','<p>世界杯足球宝贝是个大美女</p>','','','','美女,世界杯','59','N','N','uploads/images/201407/20d46ac94c7.jpg','uploads/thumbs/201407/small_20d46ac94c7.jpg','0','N','1408696948','0','Y','0','Y','1404287913');

DROP TABLE IF EXISTS `yiif_link`;
CREATE TABLE `yiif_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '名称',
  `link` varchar(100) DEFAULT NULL COMMENT '链接',
  `logo` varchar(255) DEFAULT '' COMMENT 'LOGO图标',
  `sortorder` smallint(10) DEFAULT '255' COMMENT '排序',
  `status_is` enum('Y','N') DEFAULT 'Y' COMMENT '状态Y-显示N-隐藏',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='链接表';

INSERT INTO `yiif_link` VALUES('3','站长之家','http://www.chinaz.com','','2','Y');
INSERT INTO `yiif_link` VALUES('4','PHPChina','http://www.phpchina.com','','3','Y');
INSERT INTO `yiif_link` VALUES('5','Discuz动力社区','http://www.discuz.net','','4','Y');
INSERT INTO `yiif_link` VALUES('6','DNSPod','http://www.dnspod.cn','','255','Y');
INSERT INTO `yiif_link` VALUES('7','PHP100中文网','http://www.php100.com/','','255','Y');
INSERT INTO `yiif_link` VALUES('8','  WEB技术开发','http://www.itokit.com/','','255','Y');
INSERT INTO `yiif_link` VALUES('9','源码爱好者 ','http://www.codefans.net/','','255','Y');
INSERT INTO `yiif_link` VALUES('10','PHPCMS','http://bbs.phpcms.cn/','','255','Y');
INSERT INTO `yiif_link` VALUES('11',' PHPwind论坛','http://www.phpwind.net/','','255','Y');
INSERT INTO `yiif_link` VALUES('12','Drupal中国  ','http://drupalchina.cn/','','255','Y');
INSERT INTO `yiif_link` VALUES('13','德问编程','http://www.dewen.org/','','255','Y');
INSERT INTO `yiif_link` VALUES('14','stackoverflow','http://stackoverflow.com/','','255','Y');
INSERT INTO `yiif_link` VALUES('15','Linux课程学习','http://itercast.com/','','255','Y');
INSERT INTO `yiif_link` VALUES('16','ThinkPHP','http://www.thinkphp.cn/','','255','Y');
INSERT INTO `yiif_link` VALUES('17','CakePHP','http://cakephp.org/','','255','Y');
INSERT INTO `yiif_link` VALUES('18','站长之家','http://www.chinaz.com','uploads/images/201404/d7ab0fba105.png','255','N');
INSERT INTO `yiif_link` VALUES('19','百度一下','http://www.baidu.com','uploads/images/201406/4b467a28eb4.gif','255','N');
INSERT INTO `yiif_link` VALUES('20','谷歌搜索','http://www.google.com.hk','uploads/images/201406/feb4a98a27f.jpg','255','N');
INSERT INTO `yiif_link` VALUES('21','天空软件','http://www.skycn.com/','uploads/images/201406/5321e9f13e8.png','255','N');
INSERT INTO `yiif_link` VALUES('22','迅雷看看','http://www.kankan.com','uploads/images/201406/a34f66be52a.jpg','255','N');
INSERT INTO `yiif_link` VALUES('23','懒人图库','http://www.lanrentuku.com','uploads/images/201406/94f3cb56750.png','255','N');
INSERT INTO `yiif_link` VALUES('24','yiifcms','http://www.yiifcms.com','','255','Y');
INSERT INTO `yiif_link` VALUES('25','yiifcms社区','http://bbs.yiifcms.com','','255','Y');

DROP TABLE IF EXISTS `yiif_mail_log`;
CREATE TABLE `yiif_mail_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `accept` varchar(50) DEFAULT NULL COMMENT '收件人邮箱',
  `subject` varchar(100) DEFAULT NULL COMMENT '邮件标题',
  `message` text COMMENT '邮件内容',
  `sendtime` int(10) unsigned DEFAULT NULL COMMENT '发送时间',
  `status` enum('waiting','success','failed') DEFAULT 'waiting' COMMENT '当前邮件状态(待发送、发送成功、发送失败)',
  `level` enum('1','2','3') DEFAULT '3' COMMENT '邮件优先级(越小越优先)',
  `times` tinyint(2) unsigned DEFAULT '0' COMMENT '发送次数',
  `error` varchar(100) DEFAULT NULL COMMENT '错误信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='发送邮件日志';

INSERT INTO `yiif_mail_log` VALUES('7','326196998@qq.com','测试邮件标题','测试邮件内容','1405053583','failed','3','1','SMTP 错误：无法连接到 SMTP 主机。');
INSERT INTO `yiif_mail_log` VALUES('8','326196998@qq.com','测试邮件标题','测试邮件内容','1405053614','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('9','326196998@qq.com','测试邮件标题','测试邮件内容','1405057618','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('10','326196998@qq.com','测试邮件标题','测试邮件内容','1405057700','failed','3','1','发送地址错误：YiifCMS官方<p>SMTP server error: Invalid User
</p>
');
INSERT INTO `yiif_mail_log` VALUES('11','326196998@qq.com','测试邮件标题','测试邮件内容','1405057900','failed','3','1','发送地址错误：YiifCMS官方<p>SMTP server error: Invalid User
</p>
');
INSERT INTO `yiif_mail_log` VALUES('12','326196998@qq.com','测试邮件标题','测试邮件内容','1405057974','failed','3','1','发送地址错误：ROOT<p>SMTP server error: Invalid User
</p>
');
INSERT INTO `yiif_mail_log` VALUES('13','326196998@qq.com','测试邮件标题','测试邮件内容','1405058020','failed','3','1','发送地址错误：YiifCMS官方<xb_zjh@126.com><p>SMTP server error: Invalid User
</p>
');
INSERT INTO `yiif_mail_log` VALUES('14','326196998@qq.com','测试邮件标题','测试邮件内容','1405058040','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('15','326196998@qq.com','测试邮件标题','测试邮件内容','1405058061','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('16','326196998@qq.com','测试邮件标题','测试邮件内容','1405058408','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('17','326196998@qq.com','测试邮件标题','测试邮件内容','1405058655','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('18','xb_zjh@126.com','测试邮件标题','测试邮件内容','1405059546','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('19','xb_zjh@126.com','测试邮件标题','测试邮件内容','1405059586','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('20','xb_zjh@126.com','测试邮件标题','测试邮件内容','1405128267','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('21','admin','yii内容管理系统 重置密码','
			<p>尊敬的用户：admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&id=1&authcode=ODl0bivszkTuY\">http://www.yii.local/?r=user/resetPwd&id=1&authcode=ODl0bivszkTuY</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:\"></a>。</p>
	','1405478217','failed','3','1','必须提供至少一个收件人地址。');
INSERT INTO `yiif_mail_log` VALUES('22','xb_zjh@126.com','yii内容管理系统 重置密码','
			<p>尊敬的用户：admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&id=1&authcode=NTFyW%2FPRv9k3Q\">http://www.yii.local/?r=user/resetPwd&id=1&authcode=NTFyW%2FPRv9k3Q</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:\"></a>。</p>
	','1405478290','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('23','xb_zjh@126.com','重置密码','
			<p>尊敬的用户：admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&id=1&authcode=MTwa0QO0xDn6o\">http://www.yii.local/?r=user/resetPwd&id=1&authcode=MTwa0QO0xDn6o</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:\"></a>。</p>
	','1405480338','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('24','xb_zjh@126.com','重置密码','
			<p>尊敬的用户：admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&id=1&authcode=OTD0.f9bMDAL.\">http://www.yii.local/?r=user/resetPwd&id=1&authcode=OTD0.f9bMDAL.</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:\"></a>。</p>
	','1405481428','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('25','xb_zjh@126.com','重置密码','
			<p>尊敬的用户：admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&id=1&authcode=NzZEF%2Fof9kzBU\">http://www.yii.local/?r=user/resetPwd&id=1&authcode=NzZEF%2Fof9kzBU</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:\"></a>。</p>
	','1405481945','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('26','xb_zjh@126.com','重置密码','
			<p>尊敬的用户：admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&id=1&authcode=OTD0.f9bMDAL.\">http://www.yii.local/?r=user/resetPwd&id=1&authcode=OTD0.f9bMDAL.</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>
	','1405495294','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('27','xb_zjh@126.com','测试邮件标题','测试邮件内容','1405495713','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('28','xb_zjh@126.com','测试邮件标题','测试邮件内容','1405495877','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('29','376685457@qq.com','账号激活','<p>尊敬的新用户：没那么简单 您好，欢迎注册YiifCMS官网，为了更好的为您服务，请尽快点击下面链接进行账号激活：<br/><br/>
						<a href=\"http://www.yii.local/?r=user/authEmail&id=2&authcode=MjQoTWN0lj0JE\">http://www.yii.local/?r=user/authEmail&id=2&authcode=MjQoTWN0lj0JE</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
						==================<br/><br/>再次感谢您的光顾，如果有其他疑问，
						请联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>','1405503421','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('30','376685457@qq.com','账号激活','<p>尊敬的新用户：没那么简单 您好，欢迎注册YiifCMS官网，为了更好的为您服务，请尽快点击下面链接进行账号激活：<br/><br/>
						<a href=\"http://www.yii.local/?r=user/authEmail&id=2&authcode=NT3iantGg.og.\">http://www.yii.local/?r=user/authEmail&id=2&authcode=NT3iantGg.og.</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
						==================<br/><br/>再次感谢您的光顾，如果有其他疑问，
						请联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>','1405503820','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('31','k_tatsuguchi@toyo-tos.com','测试邮件标题','测试邮件内容','1405565459','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('32','894046126@qq.com','账号激活','<p>尊敬的新用户：shiyang 您好，欢迎注册yiifcms打造顶级内容管理系统，为了更好的为您服务，请尽快点击下面链接进行账号激活：<br/><br/>
						<a href=\"http://yiifcms.com/user/authEmail/37/?authcode=MTbPAmNSgTcaA\">http://yiifcms.com/user/authEmail/37/?authcode=MTbPAmNSgTcaA</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
						==================<br/><br/>再次感谢您的光顾，如果有其他疑问，
						请联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>','1407477194','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('33','326196997@qq.com','重设邮箱','<p>尊敬的用户：没那么简单_qq 您好，您已经申请修改邮箱操作，请输入下面的验证码进行验证：<br/><br/>
						395355<br/><br/>
						==================<br/><br/>如果不是您本人操作，请尽快联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>','1407812188','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('34','326196998@qq.com','重设邮箱','<p>尊敬的用户：没那么简单_qq 您好，您已经申请修改邮箱操作，请输入下面的验证码进行验证：<br/><br/>
						603410<br/><br/>
						==================<br/><br/>如果不是您本人操作，请尽快联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>','1407812329','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('35','soueovip@126.com','账号激活','<p>尊敬的新用户：333333 您好，欢迎注册yiifcms打造顶级内容管理系统，为了更好的为您服务，请尽快点击下面链接进行账号激活：<br/><br/>
						<a href=\"http://www.yiifcms.com/user/authEmail/53/?authcode=OT0stItHdpsdo\">http://www.yiifcms.com/user/authEmail/53/?authcode=OT0stItHdpsdo</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
						==================<br/><br/>再次感谢您的光顾，如果有其他疑问，
						请联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>','1409802823','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('36','soueovip@126.com','账号激活','<p>尊敬的新用户：333333 您好，欢迎注册yiifcms打造顶级内容管理系统，为了更好的为您服务，请尽快点击下面链接进行账号激活：<br/><br/>
						<a href=\"http://www.yiifcms.com/user/authEmail/53/?authcode=NzdSzzk%2FAQvuA\">http://www.yiifcms.com/user/authEmail/53/?authcode=NzdSzzk%2FAQvuA</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
						==================<br/><br/>再次感谢您的光顾，如果有其他疑问，
						请联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>','1409802855','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('37','','测试邮件标题','测试邮件内容','1416818357','failed','3','1','必须提供至少一个收件人地址。');
INSERT INTO `yiif_mail_log` VALUES('38','test001@78786.com','测试邮件标题','测试邮件内容','1416818842','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('39','test001@78786.com','测试邮件标题','测试邮件内容','1416820371','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('40','test001@78786.com','测试邮件标题','测试邮件内容','1417504322','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('41','test001@78786.com','测试邮件标题','测试邮件内容','1417504429','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('42','test001@78786.com','测试邮件标题','测试邮件内容','1417504443','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('43','','测试邮件标题','测试邮件内容','1417504458','failed','3','1','必须提供至少一个收件人地址。');
INSERT INTO `yiif_mail_log` VALUES('44','xb_zjh@126.com','重置密码','
			<p>尊敬的用户：zjh_admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&id=1&authcode=MTGajRyIYV8Z.\">http://www.yii.local/?r=user/resetPwd&id=1&authcode=MTGajRyIYV8Z.</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>
	','1418714399','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('45','xb_zjh@126.com','重置密码','
			<p>尊敬的用户：zjh_admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&id=1&authcode=NDp1OVn9S54RQ\">http://www.yii.local/?r=user/resetPwd&id=1&authcode=NDp1OVn9S54RQ</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>
	','1418719135','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('46','xb_zjh@126.com','重置密码','
			<p>尊敬的用户：zjh_admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&authcode=00edBJg5HVBaJPGyVT8mICw6rJ%252FrRP5dTltPubXf\">http://www.yii.local/?r=user/resetPwd&authcode=00edBJg5HVBaJPGyVT8mICw6rJ%252FrRP5dTltPubXf</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>
	','1418719937','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('47','xb_zjh@126.com','重置密码','
			<p>尊敬的用户：zjh_admin 您好，您已经申请找回密码服务，请点击下面链接进行密码重置：<br/><br/>
			<a href=\"http://www.yii.local/?r=user/resetPwd&authcode=e9ddvSPcz%252FOCTqxZz0oZ%252FQ2Fg9%252B0u1%252BN22QF4Hoe\">http://www.yii.local/?r=user/resetPwd&authcode=e9ddvSPcz%252FOCTqxZz0oZ%252FQ2Fg9%252B0u1%252BN22QF4Hoe</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
			==================<br/><br/>请确保是本人操作，如果有其他疑问，
			请联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>
	','1418720322','success','3','1','');
INSERT INTO `yiif_mail_log` VALUES('48','326196998@qq.com','账号激活','<p>尊敬的新用户：898989 您好，欢迎注册yiifcms打造顶级内容管理系统，为了更好的为您服务，请尽快点击下面链接进行账号激活：<br/><br/>
						<a href=\"http://www.yii.local/?r=user/authEmail&authcode=2d2fInxDdN5TfF6JzoO9Z081XDZmzbzO7PNNDX3iVw\">http://www.yii.local/?r=user/authEmail&authcode=2d2fInxDdN5TfF6JzoO9Z081XDZmzbzO7PNNDX3iVw</a><br/><br/>(如果上面链接不能点击，请复制到浏览器地址栏中进行访问。)<br/><br/>
						==================<br/><br/>再次感谢您的光顾，如果有其他疑问，
						请联系本网站的管理员：<a href=\"mailto:xb_zjh@126.com\">xb_zjh@126.com</a>。</p>','1418720613','success','3','1','');

DROP TABLE IF EXISTS `yiif_menu`;
CREATE TABLE `yiif_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(30) DEFAULT NULL COMMENT '导航菜单',
  `menu_link` varchar(50) DEFAULT NULL COMMENT '导航链接',
  `unique` varchar(20) DEFAULT NULL COMMENT '唯一标示',
  `status_is` enum('Y','N') DEFAULT 'Y' COMMENT '是否显示',
  `parent_id` int(10) unsigned DEFAULT '0' COMMENT '上级菜单',
  `sort_order` int(10) unsigned DEFAULT '0' COMMENT '排序',
  `target` enum('Y','N') DEFAULT 'N' COMMENT '新窗口打开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='导航菜单表';

INSERT INTO `yiif_menu` VALUES('1','首页','index.php','index','Y','0','1','N');
INSERT INTO `yiif_menu` VALUES('2','精品阅读','post/index','post','Y','0','0','N');
INSERT INTO `yiif_menu` VALUES('3','精品图集','image/index','image','Y','0','0','N');
INSERT INTO `yiif_menu` VALUES('4','下载','soft/index','soft','Y','0','2','N');
INSERT INTO `yiif_menu` VALUES('5','教程TV','video/index','video','N','0','0','N');
INSERT INTO `yiif_menu` VALUES('6','导读','page/guide','guide','Y','0','3','N');
INSERT INTO `yiif_menu` VALUES('7','反馈','question/index','question','N','0','0','N');
INSERT INTO `yiif_menu` VALUES('8','讨论区','http://bbs.yiifcms.com/','bbs','Y','0','1','Y');

DROP TABLE IF EXISTS `yiif_model_type`;
CREATE TABLE `yiif_model_type` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型id',
  `type_key` varchar(20) NOT NULL COMMENT '类型标示(英文字母)',
  `type_name` varchar(50) NOT NULL COMMENT '模型名称',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '内容模型',
  `status` enum('Y','N') DEFAULT 'Y',
  `seo_title` varchar(100) DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(200) DEFAULT '' COMMENT 'seo关键字',
  `seo_description` varchar(255) DEFAULT '' COMMENT 'seo描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='内容模型表';

INSERT INTO `yiif_model_type` VALUES('1','post','文章','Post','Y','最新最优秀的IT文章IT资讯','IT，程序员，工程师，文章，博文，资讯，最新，优秀，php，mysql，html，yii，framework，js，jquery，web，mvc，开发','聚合了优质的IT文章，无论你是前端工程师，还是后端程序员，都可以找到你想了解的知识和资讯，更多内容尽在yiifcms。');
INSERT INTO `yiif_model_type` VALUES('2','image','图集','Image','Y','最新最全的热门图集、精品爆图、美图','图片，图集，最新，热门，精品，最全，美女，爆料，搞笑','展示了用户最喜爱的美女图片、爆料图片、搞笑图片，惊爆眼球，更多内容尽在yiifcms。');
INSERT INTO `yiif_model_type` VALUES('3','soft','软件','Soft','Y','最新发布的yiifcms、热门手册、精品下载、建站工具','yii，cms，版本，下载，最新，热门，最全，精品，建站，工具，安全，稳定','提供了web开发人员的建站工具和yiifcms发布版本，供感兴趣的用户下载和使用，详情了解尽在yiifcms。');
INSERT INTO `yiif_model_type` VALUES('4','video','视频','Video','Y','最新上映的电影、热门视频、热播电视剧、下载视频','视频，电影，微电影，电视剧，MV，MTV，最新，热门，热播，高清，下载','聚合了用户最喜爱的视频，尽在yiifcms。');
INSERT INTO `yiif_model_type` VALUES('5','goods','商品','Goods','Y','ds','dd','d');

DROP TABLE IF EXISTS `yiif_oauth`;
CREATE TABLE `yiif_oauth` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `apiname` varchar(50) DEFAULT NULL COMMENT 'api名称',
  `apiconfig` text COMMENT '接口配置',
  `status` enum('Y','N') DEFAULT 'Y' COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='第三方登录授权表';

INSERT INTO `yiif_oauth` VALUES('qq','QQ','{\"appid\":101145243,\"appkey\":\"1016c728351ccd6756becae709b295f3\",\"callback\":\"http:\\/\\/www.yiifcms.com\\/oAuth\\/qq_callback\",\"scope\":\"get_user_info,add_t,del_t,get_info\",\"errorReport\":true,\"storageType\":\"file\"}','Y');
INSERT INTO `yiif_oauth` VALUES('sinawb','新浪微博','{\"wb_akey\":\"818474510\",\"wb_skey\":\"2ae7d6bd43c759081c707ddfa029b409\",\"callback\":\"http:\\/\\/www.yiifcms.com\\/oAuth\\/sinawb_callback\"}','Y');
INSERT INTO `yiif_oauth` VALUES('weixin','微信','2821796254','N');
INSERT INTO `yiif_oauth` VALUES('renren','人人网','{\"app_key\":\"93f2b098f2244b6689e712406e20287f\",\"app_secret\":\"ab7910a1a77d4d60ac1db0a841c256d1\",\"callback\":\"http:\\/\\/www.yiifcms.com\\/oAuth\\/renren_callback\"}','Y');

DROP TABLE IF EXISTS `yiif_oauth_qq`;
CREATE TABLE `yiif_oauth_qq` (
  `openid` varchar(100) NOT NULL DEFAULT '' COMMENT 'client_id',
  `access_token` varchar(100) DEFAULT NULL COMMENT 'qq令牌',
  `uid` int(10) unsigned DEFAULT NULL COMMENT '本地用户ID',
  PRIMARY KEY (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='qq绑定表';

INSERT INTO `yiif_oauth_qq` VALUES('692F6AC2EA70ED38A7545D92C2F3A028','DD0BD3285374C8695BD1864F379F65E4','45');
INSERT INTO `yiif_oauth_qq` VALUES('365F9CDC3C18601CCF2F8409EBBA4C67','0F19F4FEFC38CA26C4ADAABCD07FC965','44');
INSERT INTO `yiif_oauth_qq` VALUES('2CA62C4C3E44055483E2E5786702DC9A','7EEC1500A4DFA3DE2B8E590F7B8DB8A8','48');
INSERT INTO `yiif_oauth_qq` VALUES('C80EA7633FAB1FF573359881C41E0DCB','675DA0599C7FADD1C416417B70B3E482','43');
INSERT INTO `yiif_oauth_qq` VALUES('D8BD3F07EE239BBF57BA6B88F28624C5','CF29280EF0D89334526B2AEAEE4CE831','52');

DROP TABLE IF EXISTS `yiif_oauth_renren`;
CREATE TABLE `yiif_oauth_renren` (
  `openid` varchar(100) NOT NULL DEFAULT '' COMMENT 'client_id',
  `access_token` varchar(100) DEFAULT NULL COMMENT '令牌',
  `uid` int(10) unsigned DEFAULT NULL COMMENT '本地用户ID',
  PRIMARY KEY (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='人人网绑定表';

INSERT INTO `yiif_oauth_renren` VALUES('258306070','270890|2.775oCGfklBkVKtETIN7I8Kum8VUL7vW9.258306070.1408072177426','51');

DROP TABLE IF EXISTS `yiif_oauth_sinawb`;
CREATE TABLE `yiif_oauth_sinawb` (
  `openid` varchar(100) NOT NULL DEFAULT '' COMMENT 'client_id',
  `access_token` varchar(100) DEFAULT NULL COMMENT '令牌',
  `uid` int(10) unsigned DEFAULT NULL COMMENT '本地用户ID',
  PRIMARY KEY (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新浪微博绑定表';

INSERT INTO `yiif_oauth_sinawb` VALUES('1503697997','2.00VX3ldB0mbO5t8e4d0452c6vTQYUC','47');
INSERT INTO `yiif_oauth_sinawb` VALUES('5244883271','2.00TjzwiF0mbO5taaa5424a0d7oX4zB','49');
INSERT INTO `yiif_oauth_sinawb` VALUES('5252925015','2.00BljUjF0mbO5tad71396d980KjWRr','50');

DROP TABLE IF EXISTS `yiif_oauth_weixin`;
CREATE TABLE `yiif_oauth_weixin` (
  `openid` varchar(100) NOT NULL DEFAULT '' COMMENT 'client_id',
  `access_token` varchar(100) DEFAULT NULL COMMENT '令牌',
  `uid` int(10) unsigned DEFAULT NULL COMMENT '本地用户ID',
  PRIMARY KEY (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信绑定表';


DROP TABLE IF EXISTS `yiif_page`;
CREATE TABLE `yiif_page` (
  `id` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL COMMENT '标题',
  `introduce` text COMMENT '简单描述',
  `content` mediumtext NOT NULL COMMENT '内容',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO KEYWORDS',
  `seo_description` text COMMENT 'SEO DESCRIPTION',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `link` varchar(100) DEFAULT NULL COMMENT '外部链接',
  `attach_file` varchar(60) NOT NULL DEFAULT '' COMMENT '附件',
  `attach_thumb` varchar(60) NOT NULL DEFAULT '' COMMENT '附件小图',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `status` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '是否显示',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='单页';

INSERT INTO `yiif_page` VALUES('about','关于我','','<p style=\"text-indent:2em;\">
	<span style=\"font-size:16px;\">yiifcms是个人开发的内容管理系统 不存在版权纠纷</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:16px;\">如果您想要联系我，请</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:16px;\">致邮：xb_zjh@126.com</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:16px;\">QQ：326196998</span> 
</p>','','','','','','','','1','119','Y','1322999570','1407118540');
INSERT INTO `yiif_page` VALUES('feature','特色介绍','','<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<strong><span style=\"font-family:Microsoft YaHei;font-size:16px;\" id=\"free\">开源、免费</span></strong> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">yiifcms是基于yiiframework开发的内容管理系统，它开源、免费，用户可以自由下载、使用、修改、学习交流。</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<hr />
<p>
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<strong><span style=\"font-family:Microsoft YaHei;font-size:16px;\" id=\"safe\">安全、高效</span></strong> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">yiiframework本身是一个很安全的高性能的开源框架，使用它您不用担心安全问题，它会使您的网站运行的很良好。</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<hr />
<p>
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<strong><span style=\"font-size:16px;font-family:Microsoft YaHei;\" id=\"handy\">简洁、方便</span></strong> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">yiifcms有简洁、方便的后台管理，用户不需要了解复杂的逻辑关系，就可以很快速的发布内容，优化管理。</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<hr />
<p>
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-family:Microsoft YaHei;font-size:16px;\" id=\"stable\">轻松、稳定</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">yiifcms架构合理、布局优美，是您轻松建站和学习的不二之选。</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<hr />
<p>
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>','','','','','','','','2','113','Y','1322999588','1407118550');
INSERT INTO `yiif_page` VALUES('register','注册流程','','<p><span style=\"font-size:16px;\">用户需要填写用户名，密码，邮箱 然后进行账号激活 即可完成全部注册</span><br/></p>','','','','','','','','4','92','Y','1331877791','1408696938');
INSERT INTO `yiif_page` VALUES('disclaimer','免责声明','','<p style=\"text-indent:2em;\">
	<br />
</p>
<ol>
	<li>
		<span style=\"font-size:16px;\">本站点的所有内容 均来自个人和互联网 不存在版权纠纷</span> 
	</li>
	<li>
		<span style=\"font-size:16px;\">对于特殊的评论仅仅代表个人观点，和本站无关</span> 
	</li>
	<li>
		<span style=\"font-size:16px;\">如果对于转载的内容侵犯了您的权益，请告知于我<br />
</span> 
	</li>
</ol>
<p>
	<br />
</p>','','','','','','','','5','52','Y','1407118521','1407118583');
INSERT INTO `yiif_page` VALUES('comment','评论审核','','<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">对内容的评论或者回复需要审核通过后 才可以看到</span> 
</p>
<span style=\"font-size:14px;\"></span>','','','','','','','','6','54','Y','1407120050','1407120061');
INSERT INTO `yiif_page` VALUES('guide','新手指南','','<div>
	<p>
		<span style=\"font-size:16px;\">用户可以无需登录 即可浏览内容 下载CMS版本</span> 
	</p>
	<p>
		<span style=\"font-size:16px;\">如果您想对内容进行评论，请先<a target=\"_blank\" href=\"user/register/\">注册</a>并<a target=\"_blank\" href=\"user/login/\">登录</a></span> 
	</p>
	<p>
		<span style=\"font-size:16px;\">注册请查阅<a target=\"_blank\" href=\"page/register\">注册流程</a></span> 
	</p>
</div>
<div>
</div>','','','','','','','','3','201','Y','1379392484','1407243690');

DROP TABLE IF EXISTS `yiif_post`;
CREATE TABLE `yiif_post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '用户',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `title_second` varchar(255) NOT NULL DEFAULT '' COMMENT '副标题',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `html_path` varchar(100) NOT NULL DEFAULT '' COMMENT 'html路径',
  `html_file` varchar(100) NOT NULL DEFAULT '' COMMENT 'html文件名',
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `special_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '专题编号',
  `introduce` text COMMENT '摘要',
  `image_list` text COMMENT '组图',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_description` text COMMENT 'SEO描述',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `content` mediumtext NOT NULL COMMENT '内容',
  `copy_from` varchar(100) NOT NULL DEFAULT '' COMMENT '来源',
  `copy_url` varchar(255) NOT NULL DEFAULT '' COMMENT '来源url',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转URL',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT 'tags',
  `view_count` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '查看次数',
  `commend` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '推荐',
  `attach_status` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '是否上传附件',
  `attach_file` varchar(255) NOT NULL DEFAULT '' COMMENT '附件名称',
  `attach_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `favorite_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `attention_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关注次数',
  `top_line` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '置顶',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `reply_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复次数',
  `reply_allow` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '允许评论',
  `sort_desc` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '是否显示',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `tags_index` (`tags`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='内容管理';

INSERT INTO `yiif_post` VALUES('14','1','天河二号以每秒3.3亿亿次的速度再居世界超算榜首 上演帽子戏法','','','','','2','1','据外媒报道，23日在德国莱比锡市发布的第43届世界超级计算机500强排行榜上，中国超级计算机系统“天河二号”以每秒3.386亿亿次的浮点运算速度稳居榜首，获得世界超算“三连冠”。 ','','','','','<p style=\"text-indent:2em;\">
	<img src=\"http://www.yii.local/uploads/images/201406/5e7d89999bb.jpg\" alt=\"\" height=\"418\" width=\"772\" /> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">北京时间6月24日消息，据美国科技网站</span><a href=\"http://www.cnet.com/news/top500-supercomputer-race-hits-a-slow-patch/\" target=\"_blank\"><span style=\"font-size:14px;\">CNET</span></a><span style=\"font-size:14px;\">报道，23日在德国莱比锡市发布的</span><a href=\"http://top500.org/blog/lists/2014/06/press-release/\" target=\"_blank\"><span style=\"font-size:14px;\">第43届世界超级计算机500强排行榜</span></a><span style=\"font-size:14px;\">上，中国超级计算机系统“天河二号”以每秒3.386亿亿次的浮点运算速度稳居榜首，获得世界超算“三连冠”。美国能源部下属橡树岭国家实验室的“泰坦”则连续3次屈居亚军，其浮点运算速度为每秒1.759亿亿次。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">2010年，由国防科技大学研制的天河一号在超算排行榜上首次夺冠，2013年，天河二号又两度位列榜首，昨天，天河二号第3次被评为全球最快的计算机，获得世界超算三连冠。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">据悉，国际TOP500组织是发布全球已安装的超级计算机系统排名的权威机构，每年发布两次，其目的是促进国际超级计算机领域的交流和合作，促进超级计算机的推广应用。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">超级计算机是计算机中功能最强、运算速度最快、存储容量最大的一类计算机，多用于国家高科技领域和尖端技术研究。如：模拟核武器爆炸、模拟地球的气候、分析飞机的空气动力学和研究生物的大脑等。这些机器通常占用很大的橱柜和消耗大量的电力。</span> 
</p>
<p style=\"text-align:center;\">
	<img src=\"/uploads/attached/image/201406/f6cf41e3649.jpg\" alt=\"\" /> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">世界上最快的计算机的性能在过去的二十年中一直在稳步的提升，最新数据显示，这个增长趋势在放缓。从2013年11月至今，排行榜前500的所有超级计算机的性能总和从25亿亿次提高到了27.4亿亿次。相关分析人士认为这是一个明显的增长放缓。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">另外，在过去的五年内，排行榜最后一位的超级计算机以每年55%的速度提升，而1994年至2008年间，性能曾以每年90%的速度增长。</span> 
</p>','csdn','http://www.csdn.net/article/2014-06-24/2820355','','超级计算机,中国','34','N','Y','uploads/images/201406/5e7d89999bb.jpg','uploads/thumbs/201406/small_5e7d89999bb.jpg','0','0','N','1404120867','0','Y','0','N','1379554460');
INSERT INTO `yiif_post` VALUES('15','1','国产操作系统厂商中科红旗宣布拍卖旗下资产','','','','','2','1','6月27日，中科红旗发布公告，宣布拟以公开竞价方式转让公司全部注册商标、全部软件著作权等资产。至此，处于解散清算状态的国产操作系统厂商中科红旗正式开始启动资产出售进程。　　 ','','','','','<p align=\"center\">
	<img src=\"/uploads/attached/image/201406/3078e9f0bff.jpg\" alt=\"\" /> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">北京时间6月30日消息，国产操作系统厂商中科红旗日前已经开始启动资产出售进程。中科红旗今年2月宣布解散清算。有消息称，中科红旗当时的债务总
额约为2000多万元，其中绝大部分是员工的拖欠工资。6月27日，中科红旗发布公告称拟以公开竞价方式转让公司全部注册商标、全部软件著作权等资产。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">中科红旗为资产竞买人提出了四项条件，并要求有意向的竞买人在2014年7月8日前提交书面竞买意向书。而后续公开竞价转让安排则会另行通知竞买人。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">中科红旗表示竞买人需要满足四项条件，包括：</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<ul>
	<li>
		<span style=\"font-size:14px;\">有志于从事国产操作系统产品研发和应用推广的内资企业法人；</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">具有能够研发完善本公司产品的技术团队和雄厚的经济实力；</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">有意且有能力承接本公司所有承诺用户的产品后续运维和升级等服务；</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">有意且有能力代为完成本公司所承担的核高基等政府项目的后续验收、跟踪等工作。</span> 
	</li>
</ul>
<p>
	<br />
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">同时，中科红旗表示，如果竞买人能够完全收购中科红旗公司，则可以优先收购上述资产。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">目前，除明确提出四项竞买人条件之外，中科红旗对于资产价格、竞价日期等细节信息未作披露。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">新浪科技引用了解此事的中科红旗前员工消息称，本次资产拍卖的底价可能约为1800万元。这位要求匿名的前员工表示，由于价格不高，有几家公司有意向展开竞购，其中呼声较高的包括中国电子科技集团公司、曙光公司等。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">在
几家可能接盘的企业中，有中科红旗员工表示中国电子科技集团公司旗下的普华基础软件有限公司最有可能接盘中科红旗。其实早在本月初，普华基础软件已经宣布
接盘中科红旗破产之后的客户技术服务工作。同时，该公司还接收了数十名中科红旗研发、技术支持和销售的核心员工。这些动作被外界和中科红旗的前员工们看作
是，整体接盘中科红旗的前奏。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">员工们表述，就普华基础软件而言，接盘中科红旗确实有着很强的合理性。一方面，这家公司一直在从事Linux相关的业务；另外一方面，这家公司从公司总裁赵晓亮到员工有不少人曾就职中科红旗，也非常熟悉这家企业的业务及文化。其中，赵晓亮还曾担任过中科红旗的执行总裁。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">中科红旗工会主席贺唯佳告诉新浪科技，普华基础软件若收购中科红旗，将可以实现业务上的平滑过渡。不过，他也不确认，这家公司的母公司是否会正式发起竞购。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">据贺唯佳透露，此前与中科红旗有合作关系的部分硬件厂商也有意竞购中科红旗的资产。据悉，在解散清算之前，中科红旗开发的PC操作系统和服务器操作系统被一些PC厂商和服务器厂商使用，其中有些企业希望接盘，继续提供相关产品和服务。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">实际上，也有部分中科红旗的前员工指出，中科院软件所旗下的中科方德也可能是中科红旗的接盘方。中科方德和中科红旗同属中科院软件所旗下企业，两家企业曾联合申请过国家核高基项目，在业务上有很多重叠性。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">不过，由于很多员工认为，中科红旗进行解散清算正是因为“祸起”中科方德，部分股东可能会提出异议，阻碍中科方德接盘。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">此前，中科红旗的员工们指责中科院软件所设立中科方德公司与中科红旗展开竞争，同时通过派驻的管理层，要求中科红旗的员工为中科方德做项目，严重影响公司的正常运营。但中科院软件所否认这些指责。</span> 
</p>','csdn','http://www.csdn.net/article/2014-06-30/2820440','','操作系统,国产,中科','50','Y','Y','uploads/201309/523a54c220262.jpg','uploads/201309/thumb_523a54c220262.jpg','0','0','N','1404120862','0','Y','0','N','1379554498');
INSERT INTO `yiif_post` VALUES('16','1','程序员必须知道的10大基础实用算法及其讲解','','a:3:{s:4:\"bold\";s:1:\"Y\";s:9:\"underline\";s:1:\"Y\";s:5:\"color\";s:6:\"FF2969\";}','','','2','1','在手机解锁上，美国消费者和运营商展开持久战，美国政府和白宫逐渐站在消费者一边。	近日美国电信和信息管理局（NTIA）正式向联邦通信委员会（FCC）发函，要求修改规定，未来移动运营商销售给用户的手机、平板...','a:2:{i:0;a:4:{s:6:\"fileId\";s:2:\"36\";s:4:\"file\";s:37:\"uploads/images/201405/21e1adee63a.png\";s:4:\"desc\";s:2:\"04\";s:3:\"url\";s:5:\"04url\";}i:1;a:4:{s:6:\"fileId\";s:2:\"37\";s:4:\"file\";s:37:\"uploads/images/201405/f23850e09dc.png\";s:4:\"desc\";s:2:\"05\";s:3:\"url\";s:5:\"05url\";}}','','','','<p>
	<a href=\"http://geek.csdn.net/news/detail/12027\"><span style=\"font-size:14px;\">程序员必须知道的10大基础实用算法及其讲解</span></a><span style=\"font-size:14px;\">，包括：</span> 
</p>
<blockquote>
	<ol>
		<li>
			<span style=\"font-size:14px;\">堆排序算法（Heapsort）：是指利用堆这种数据结构所设计的一种排序算法；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">归并排序（Merge sort，台湾译作：合并排序）：是建立在归并操作上的一种有效的排序算法；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">二分查找(线性查找算法)：是一种在有序数组中查找某一特定元素的搜索算法；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">BFPRT算法解决的问题十分经典，即从某n个元素的序列中选出第k大（第k小）的元素，通过巧妙的分析，BFPRT可以保证在最坏情况下仍为线性时</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">快速排序算法；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">间复杂度；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">深度优先搜索算法（Depth-First-Search）：是搜索算法的一种；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">广度优先搜索算法（Breadth-First-Search）：是一种图形搜索算法；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">戴克斯特拉算法（Dijkstra’s algorithm）；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">动态规划算法（Dynamic programming）；</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">朴素贝叶斯分类算法是一种基于贝叶斯定理的简单概率分类算法。</span> 
		</li>
	</ol>
</blockquote>
<p>
	<span style=\"font-size:14px;\">上面的这篇文章为本周的热门文章，有着不错的评论。具体的算法步骤详情请移步</span><a href=\"http://geek.csdn.net/news/detail/12027\"><span style=\"font-size:14px;\">原文</span></a><span style=\"font-size:14px;\">阅读并可参与讨论。</span> 
</p>
<h2>
	<span style=\"font-size:14px;\">一、 </span><a href=\"http://geek.csdn.net/news/detail/12327\"><span style=\"font-size:14px;\">Eclipse 4.4 将于 6 月 25 日发布，代号 Luna</span></a> 
</h2>
<p>
	<span style=\"font-size:14px;\">代号为 Luna 的下一个 Eclipse 的主要版本 4.4 将于 6月25日 发布。新版本值得关注的特性包括：</span> 
</p>
<blockquote>
	<ul>
		<li>
			<span style=\"font-size:14px;\">完全支持 Java™ 8</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">提供全新的黑色主题，默认显示行号，允许隐藏 quick access 工具条</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">Sirius allows architects to easily create their own graphical 
modeling workbenches by leveraging the Eclipse modeling technologies, 
including Eclipse Modeling Framework (EMF) and Graphical Modeling 
Framework (GMF)</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">Equinox includes a full implementation of the R6 Core Framework as well as several compendium service implementations</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">ECF\'s implementation of OSGi Remote Service/Remote Service Admin 
standard has been enhanced to use Java 8\'s CompleteableFuture for 
asynchronous remote services.</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">Code Recommenders integrates the Snipmatch code snippet search 
engine and adds the ability to easily contribute new snippets to a 
shared repository.</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">The new QVTi debugger extends the new OCL debugger.</span> 
		</li>
	</ul>
</blockquote>
<h2>
	<span style=\"font-size:14px;\">二、 </span><a href=\"http://geek.csdn.net/news/detail/12801\"><span style=\"font-size:14px;\">Java 8新特性终极指南</span></a> 
</h2>
<p>
	<span style=\"font-size:14px;\">Java 8已经公布有一段时间了，种种迹象表明Java 8是一个有重大改变的发行版。文章把所有Java 8的重要特性收集整理成一篇单独的文章，主要有以下几个方面：</span> 
</p>
<blockquote>
	<ul>
		<li>
			<span style=\"font-size:14px;\">Java语言的新特性——Lambdas表达式与Functional接口、接口的默认与静态方法、方法引用、重复注解、更好的类型推测机制、扩展注解的支持</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">Java编译器的新特性——参数名字</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">Java 类库的新特性——Optional、Streams、Date/Time API (JSR 310)、JavaScript引擎Nashorn、Base64、并行（parallel）数组、并发（Concurrency）</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">新增的Java工具——Nashorn引擎: jjs、类依赖分析器: jdeps</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">Java虚拟机（JVM）的新特性</span> 
		</li>
	</ul>
</blockquote>
<h2>
	<span style=\"font-size:14px;\">三、</span><a href=\"http://geek.csdn.net/news/detail/12808\"><span style=\"font-size:14px;\">程序员长期保持身心健康的几点建议</span></a> 
</h2>
<blockquote>
	<ol>
		<li>
			<span style=\"font-size:14px;\">要学会走开</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">在家少编程</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">少叫外卖，中午出去吃</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">有一个或几个非技术的兴趣爱好，或者体育锻炼项目</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">休假</span> 
		</li>
		<li>
			<span style=\"font-size:14px;\">最最最最关键，要有一个妹子</span> 
		</li>
	</ol>
</blockquote>
<h2>
	<span style=\"font-size:14px;\">四、 </span><a href=\"http://geek.csdn.net/news/detail/12349\"><span style=\"font-size:14px;\">程序员自我提高的几点建议 很实诚</span></a> 
</h2>
<p>
	<span style=\"font-size:14px;\">中国程序员的成长是与其学习环境相关，据统计，现时做计算机软件开发的人员65%是大专及本科学历，15%是来自于其他的培训机构。可见一个开发人员大致的学习经历和初步经验来自于大学。下面是针对程序员自我提高的几点建议：</span> 
</p>
<ol>
	<li>
		<span style=\"font-size:14px;\">提高文档编写能力</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">养成好的编码规范和编码习惯</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">提高对软件需求的理解</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">复用性和模块化思想</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">锻炼自己的测试能力</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">问题是最好的学习机会</span> 
	</li>
</ol>
<h2>
	<span style=\"font-size:14px;\">五、 </span><a href=\"http://geek.csdn.net/news/detail/11885\"><span style=\"font-size:14px;\">Java 8中几个不易察觉的错误</span></a> 
</h2>
<ul>
	<li>
		<span style=\"font-size:14px;\">不小心重用了流</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">不小心创建了一个“无限”流</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">不小心创建了一个“隐藏的”无限流</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">不小心创建了一个”隐藏”的并行无限流</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">操作的顺序错误</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">使用过滤器来遍历文件系统</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">修改流内部的集合</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">忘了去消费流</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">并行流死锁</span> 
	</li>
</ul>
<p>
	<span style=\"font-size:14px;\">引入了流和函数式编程之后，我们开始会碰到许多新的难以发现的BUG。这些BUG很难避免，除非你见过并且还时刻保持警惕。你必须去考虑操作的顺序，还得注意流是不是无限的。</span> 
</p>
<p>
	<span style=\"font-size:14px;\">流是一个非常强大的工具，但也是一个首先得去熟练掌握的工具。</span> 
</p>
<h2>
	<span style=\"font-size:14px;\">六、 </span><a href=\"http://geek.csdn.net/news/detail/12354\"><span style=\"font-size:14px;\">Google I/O 2014大会很有可能发布的10大惊喜</span></a> 
</h2>
<p>
	<span style=\"font-size:14px;\">一年一度的谷歌 Google I/O 开发者年会将在本月的 25 日和 26 日在美国的旧金山举行，今年的 Google I/O 大会又将带给大家什么惊喜呢？请看：</span> 
</p>
<ul>
	<li>
		<span style=\"font-size:14px;\">Nexus 8</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">安卓5.0</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">谷歌眼镜正式上市</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">Android Wear</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">Silver项目</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">Project Ara模块化手机</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">Android车载系统</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">Google Fit服务</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">Nest——Nest或许会带来修复另一款烟雾探测器Protect的相关消息</span> 
	</li>
	<li>
		<span style=\"font-size:14px;\">Google Fiber</span> 
	</li>
</ul>','','','','程序员','611','Y','Y','uploads/201309/523a54f7d9591.jpg','uploads/201309/thumb_523a54f7d9591.jpg','1','2','Y','1404120856','4','N','5','N','1379554552');
INSERT INTO `yiif_post` VALUES('33','1','Linux之编辑器Vim篇（配置与高级技巧） ','','','','','3','0','最常用的就是修改vim默认的注释颜色深蓝色 很受不了，修改 ~/.vimrc      hi Comment ctermfg=blue         一、Vim配置       如果没有安装vim就请使用:sudo apt-get install vim 一个完整的.vimrc配置信息如下所示： set nocompatible set nummber filetype on set history=1000 set background=dark syntax on set autoindent set mouse=a set smartindent set tabstop=4 set shiftwidth=400 set showmatch set guioptions-=T s...','','','','','<p style=\"text-indent:2em;\">
	<b><span style=\"font-size:14px;line-height:2;\">最常用的就是修改vim默认的注释颜色深蓝色 很受不了，修改 ~/.vimrc</span></b> 
</p>
<p style=\"text-indent:2em;\">
	<b><span style=\"font-size:14px;line-height:2;\"> </span></b> 
</p>
<pre class=\"prettyprint lang-html\"><b>hi Comment ctermfg=blue </b></pre>
<b> <br />
</b> 
<p>
	<br />
</p>
<p style=\"text-indent:2em;\">
	<b><span style=\"font-size:14px;line-height:2;\">一、Vim配置</span></b> 
</p>
<p style=\"text-indent:2em;\">
	<b><span style=\"font-size:14px;line-height:2;\"> </span></b> 
</p>
<pre class=\"prettyprint lang-html\"><b> 如果没有安装vim就请使用:sudo apt-get install vim
    一个完整的.vimrc配置信息如下所示：
    set nocompatible
    set nummber
    filetype on
    set history=1000
    set background=dark
    syntax on
    set autoindent
    set mouse=a
    set smartindent
    set tabstop=4
    set shiftwidth=400
    set showmatch
    set guioptions-=T
    set vb t_vb=
    set ruler
    set nohls
    set incsearch
    if has(\"vms\")
    set nobackup
    else
    set backup
    endif
    .vimrc文件的配置在终端下使用vim进行编辑时，默认情况下，编辑的界面上是没有显示行号、语法高亮度显示、智能缩进等功能的。为了更好的在vim下进行工作，需要手动设置一个配置文件：.vimrc。
    在启动vim时，当前用户根目录下的.vimrc文件会被自动读取，该文件可以包含一些设置甚至脚本，所以，一般情况下把.vimrc文件创建在当前用户的根目录下比较方便，即创建的命令为：
    $vi ~/.vimrc
    设置完后
    $:x 或者 $wq
    进行保存退出即可。
    下面给出一个例子，其中列出了经常用到的设置，详细的设置信息请参照参考资料：
    “双引号开始的行为注释行，下同
    “去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
    set nocompatible
    “显示行号
    set nummber
    “检测文件的类型
    filetype on
    “记录历史的行数
    set history=1000
    “背景使用黑色
    set background=dark
    “语法高亮度显示
    syntax on
    “下面两行在进行编写代码时，在格式对起上很有用；
    “第一行，vim使用自动对起，也就是把当前行的对起格式应用到下一行；
    “第二行，依据上面的对起格式，智能的选择对起方式，对于类似C语言编
    “写上很有用
    set autoindent
    set smartindent
    “第一行设置tab键为4个空格，第二行设置当行之间交错时使用4个空格
    set tabstop=4
    set shiftwidth=4
    “设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
    set showmatch
    “去除vim的GUI版本中的toolbar
    set guioptions-=T
    “当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
    set vb t_vb=
    “在编辑过程中，在右下角显示光标位置的状态行
    set ruler
    “默认情况下，寻找匹配是高亮度显示的，该设置关闭高亮显示
    set nohls
    “查询时非常方便，如要查找book单词，当输入到/b时，会自动找到第一
    “个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的单词，依
    “次类推，进行查找时，使用此设置会快速找到答案，当你找要匹配的单词
    “时，别忘记回车
    set incsearch
    “修改一个文件后，自动进行备份，备份的文件名为原文件名加“~“后缀
    if has(“vms”)
    set nobackup
    else
    set backup
    endif
    ################################################################################
    如果设置完后，发现功能没有起作用，检查一下系统下是否安装了vim-enhanced包，查询命令为：
    $rpm –q vim-enhanced
    请教］用vi把文件重新打开，如何回到上次光标的位置？
    autocmd BufReadPost *
    \\ if line(\"\'\\\"\") &gt; 0 &amp;&amp; line(\"\'\\\"\") &lt;= line(\"$\") |
    \\ exe \"normal g`\\\"\" |
    \\ endif
    ###################################################################################
    vim中如何查找和替换字符串
    一、 字符串的查找
    1. vim 中用 / 和 ? 来查找字符串，两者的区别是：
    /string 会高亮显示光标后匹配的第一个字符串，回车后光标移到该字符串的第一个字母；
    ?string 会高亮显示光标前匹配的第一个字符串，回车后光标移到该字符串的第一个字母。
    在回车之后，按n键同方向转到下一个匹配的字符串，按N键反方向转到上一个匹配的字符串。
    2. 用命令 :set ic 和 :set noic 来分别设置查找时不区分和区分大小写。
    如果查找特殊字符，如 ^、$、*、/ 和 .，需要在前面加 \\ 来转义。
    二、字符串的替换
    1. vim 中可用 :s 命令来替换字符串，具体如下：
    :s/str1/str2/ 替换当前行第一个 str1 为 str2
    :s/str1/str2/g 替换当前行中所有 str1 为 str2
    :m,ns/str1/str2/ 替换第 n 行开始到最后一行中每一行的第一个 str1 为 str2
    :m,ns/str1/str2/g 替换第 n 行开始到最后一行中所有的 str1 为 str2
    (注：m和n 为数字，若m为 .，表示为当前行开始；若n为$，则表示到最后一行结束)
    如果使用 # 作为分隔符，则中间出现的 / 不会作为分隔符，比如：
    :s#str1/#str2/# 替换当前行第一个 str1/ 为 str2/
    :%s+/oradata/apras/+/user01/apras1+ (使用+ 来 替换 / )： /oradata/apras/替换成/user01/apras1/
    2. 其他
    :%s/str1/str2/（等同于 :g/str1/s//str2/） 替换每一行的第一个 str1 为 str2
    :%s/str1/str2/g（等同于 :g/str1/s//str2/g 和 :1,$ s/str1/str2/g ） 替换文中所有 str1 为 str2
    从替换命令可以看到，g 放在命令末尾，表示对搜索字符串的每次出现进行替换；不加 g，表示只对搜索
    字符串的首次出现进行替换；g 放在命令开头，表示对正文中所有包含搜索字符串的行进行替换操作。
    ###################################################################################
    2.打开一个已存在的文件后，文件中的字符，不能用backspace键删除。但是此时如果输入新的字符，却可以用backspace进行删除。这是怎么回事？
    查看帮助：
    :help bs
    :help backspace
    原来，backspace有几种工作方式，默认是vi兼容的。对新手来说很不习惯。对老vi 不那么熟悉的人也都挺困扰的。可以用
    :set backspace=indent,eol,start
    来解决。
    indent: 如果用了:set indent,:set ai 等自动缩进，想用退格键将字段缩进的删掉，必须设置这个选项。否则不响应。
    eol:如果插入模式下在行开头，想通过退格键合并两行，需要设置eol。
    start：要想删除此次插入前的输入，需设置这个。 </b></pre>
<b> <br />
</b> 
<p>
	<br />
</p>
<div>
	<br />
	<div>
		<br />
	</div>
<span><span style=\"font-size:14px;line-height:2;\">二、</span><b><span style=\"font-size:14px;line-height:2;\">Vim高级技巧</span></b></span> 
</div>
<p style=\"text-indent:2em;\">
	<br />
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>
<pre class=\"prettyprint lang-html\">    本文一般情况下用&lt;C-字母&gt;（里边的字母一般大小写无所谓,除非特别注明）表示按住ctrl同时按下相关字母，命令前加一个i 表示在插入模式下用这个命令
    1. 选定文字/ 拷贝粘贴
    v 为可视模式,可以选定多行。选定多行之后，可以用yy 或者dd 等等进行拷贝和剪切。
    p 是粘贴
    y 和d 可以直接拷贝或者剪切选定的内容
    yw 是拷贝一个单词,如果要复制整行的最简单办法就是V,y,p 就行了
    v 是可以选定一行任意个字符的,V 是行选定的,一次一整行，然后通过向下或向上移动光标而选定多行。
    对于v 选定的,拷贝后就是这么多,选多少就拷贝多少,而V 选定的,粘贴的话会自动换到下一行
    &lt;C-V&gt;命令模式下,也是块选定,不过是列块选定
    2. 折叠代码
    可以zf 进行折叠, 用zo 打开折叠,也可以方向键向右打开折叠,zc 关闭折叠(只要在被折叠的块中的任一个语句就行)
    3. 缩进代码
    &lt;是左缩进, &gt;是右缩进
    按v 选定后按=就是自动格式化代码,自动缩进,内部的递归的缩进都做到了
    行左移&lt;&lt;，行右移&gt;&gt;，该命令用于调整源码缩进格式简便快速。
    4. 移动光标
    %是从大括号的开始移动到大括号的结束位置
    :后边加行号就是跳到这一行
    &lt;C-O&gt; 光标返回到以前的位置。相当于光标移动的“撤销”
    &lt;C-I&gt; 光标返回到后来的位置。相当于光标移动的“恢复”
    5. 多文件编辑/ 缓冲区命令
    vim 下每一个打开的文件对应一个缓冲区（buffer）。
    多文件编辑会有两种情形，一种是在进入vim 前所用的参数就是多个文件（这种情形称为
    argument list）。另一种情形是进入vim 后另外再开其它的文件（称为buffer list）。不过都
    可以统称为buffer。
    5.1 打开文件
    vi flname1 flname2… flnameN
    将多个文件调入缓冲，是argument list。
    :e filename
    这是在进入vim 后，在不离开vim 的情形下再开其它文件，只要您要编辑的档案是在目
    前目录，Tab 补全键还是可以使用。是buffer list。
    注意：:e 或者:new 或者:split 后边可以跟目录,这样就可以在目录下慢慢找要打开的文件了
    5.2 缓冲区跳转
    :n 编辑下一个文件。
    :2n 编辑下二个文件。
    :N 编辑前一个文件。注意，这种用法只能用于argument list 的情形。
    :rew 回到首文件
    :args 查看当前编辑缓冲文件状态
    :e# 或Ctrl-^ 编辑前一个档案，用于两文件互相编辑时相当好用。这种用法不管是
    argument list 或buffer list 档案间皆可使用。使用Ctrl－^ 命令更便捷，但如终端类型不正
    确该功能将无效。
    用:ls 来显示缓冲区中的文件，编号后边有#的代表是前一个文件，可以通过:e#来进入，有
    %a 的代表是当前文件，什么也没有的可以通过:bn 来进入，这里的n 代表文件编号。
    :b 文件名或编号移至该文件。
    在:ls 中就会出示各文件的编号，这个编号在未离开vim 前是不会变的。这个指令elvis 也
    是可以使用。当然:e#编号也是可以的，这样的用法则是所有vi clone 都通用了。
    在buffers 中，减号- 表示这个buffer 并未载入，不过，不必担心，载入相当快速的。加
    号+ 表示这个buffer 已经修改过了。
    :bn buffer next。这里的n 代表字母n
    :bl buffer last。
    以上两个指令elvis 不适用。
    如果您是使用vim 的GUI，那就在菜单上就会有Buffers 这个选项，可以很容易的知道及
    移动各buffer 间。
    5.3 移除缓冲区
    :bd(elete) buffer 在未离开vim 前是不会移除的，可使用这个指令移除。其实移除它干什
    么呢？vim 是您在叫用时才会载入的，因此这些buffers 并不是像cache 一般要占内存的。
    5.4 重新编辑
    放弃一修改过的文件，重新编辑。
    (1)使用命令:q!强行退出后再vi flname 重新进入。
    (2)使用命令:e!强行重编辑更便捷。这样也是会打开文件，但会放弃目前编辑文件的改变，
    否则如果文件已有变动，vim 预设是不让您随便离开的。:e! 后不接什么的话，代表舍弃一
    切修改，重新载入编辑中文件。
    5.5 其他命令
    :files 或:buffers 或:ls 会列出目前buffer 中的所有文件。
    在elvis 中可使用:b 来叫出buffers。
    :f 或Ctrl-g 显示目前编辑的文件名、是否经过修改及目前光标所在之位置。
    :f 文件名改变编辑中的文件名。(file)
    :r 文件名在光标所在处插入一个文件的内容。(read)
    :35 r 文件名将文件插入至35 行之后。
    gf 这是vim 的特殊打开文件的方法，会打开光标所在处的word 为名的文件，当然，这
    个文件要在当前目录内，否则会创建新文件。
    6. 查找命令
    用/查找单词后,n 可以跳到下一个,N 则是上一个,:nohls 可以取消高亮
    查找时,:set ignorecase”项让VIM 忽略大小写，“:set noignorecase” 来关闭这项功能。
    7. 修改文字
    cw:删除一个单词并进入插入模式,cc:删除一行并进入插入模式。
    r:然后输入的字母将替换当前字母并保持命令模式,R 则是不停的替换(一个挨着一个)。
    0 到行首,$到行尾。
    8. 函数间跳转
    ctrl+]和ctrl+T 分别是查找函数的定义和返回,好像需要ctag 的支持
    &lt;C-W&gt;i 跳转到光标所指标识符的定义行,是打开一个新的小窗口显示,记住要加个i,最好
    是找自己项目下的文件,否则找库函数的话还不如man.
    大写K 看光标所指标识符的man 帮助页
    9. 窗口命令
    &lt;C-W&gt; = ctrl+w
    :split 文件名同时在一个页面显示多个文件的内容,类似多窗口,用&lt;C-W&gt;&lt;C-W&gt;切换当前
    窗口
    &lt;C-W&gt;f 切分显示光标在处的文件名，VIM 会在path 中搜索该文件名，比如常用它打
    开#include 语句中的文件
    &lt;C-W&gt;_ 当同时打开几个文件时，按&lt;C-W&gt;_ 使当前窗口最大化
    用Ctrl-W 命令指定光标移动：
    Ctrl-W + 扩大窗口
    Ctrl-W - 缩小窗口
    Ctrl-W h 移动到窗口左边
    Ctrl-W j 移动到窗口下边
    Ctrl-W k 移动到窗口上边
    Ctrl-W l 移动到窗口右边
    等于是&lt;C-W&gt;按下后,松开键盘,再按下一个命令就可以了.
    如果要关闭分割窗口可以用:close，剩下只有一个窗口的话就不能关了。
    多窗口是split，像用e 打开多个文件是将文件放在缓冲区中。
    10. 自动完成
    i&lt;C-P&gt; 向上搜索，补全一个词
    i&lt;C-N&gt; 向下搜索，补全一个词
    i&lt;C-X&gt;&lt;C-L&gt; 补全一行。
    比如你写过一行for (int i = 0; i &lt; 100; i++) ， 你想再写一模一样的一行， 只要输入
    for&lt;C-X&gt;&lt;C-L&gt;即可。如果补全出来的不是你想要的那一行，你可以按&lt;C-P&gt; 或&lt;C-N&gt; 选
    择上一个或下一个匹配行i&lt;C-X&gt;&lt;C-F&gt; 在文件系统中搜索，补全一个文件名
    如果按&lt;C-P&gt; 或&lt;C-N&gt; 补全一个词，在当前文件中没有找到匹配，VIM 将搜索#include
    语句中的文件，而文件的位置将在path 中搜索。
    i&lt;C-Y&gt; 把上一行对应列的字符抄下来
    i&lt;C-E&gt; 把下一行对应列的字符抄上来,这两个都可以一直按下去,到了行尾自己会停的.
    11. 注释整块内容
    注释块的方法:
    &lt;C-V&gt; 选定要注释掉的行I // Esc
    I 之后输入的东西就是插入到选定的行前边的,直至Esc.
    要去掉注释的办法:&lt;C-V&gt;选定注释符//,然后d
    列块选定后I 是在前边都插入,A 是在后边都插入
    &lt;C-V&gt;是按列块模式的选定,&lt;shift-V&gt;是行选定,v 是普通选定
    12. 其他命令
    u 可以撤销上一步操作, ctrl+r 可以恢复
    i&lt;C-O&gt;命令执行一个普通模式的命令，执行完毕后回到插入模式，不用多次Esc
    i&lt;C-V&gt;后续字符输入特殊的ASCII 字符或键。
    . 在光标当前位置处重复上一次操作
    :!命令行执行一条外部命令
    *******************************************************************************
    ****
    我是vim 粉丝, 用了许久, 有一些自己的感受, 又到处挖到一些别人的技巧. 感觉对vim
    粉丝比较有用, 就把它记在这儿. 希望借此文套出大家自己的巧活, 就正应了抛砖引玉的古
    话了.
    先稍为介绍一下vim. vi 是unix/linux 下极为普遍的一种文本编辑器, 大部分机器上都有.
    vi 有各种变种, 在不同的机器上常用不同的变种软件. 其中vim 比较好用也用得比较广泛.
    vim 是Vi IMproved 的缩写, 表示更好的vi. 我个人觉得它是非常好的编辑器(为了避免
    Emacs 粉丝挑眼, 就不说最好了). 没用过的也建议试试看, 当然vim 对编写文本文件很方
    便好用, 比如编写程序, html 文档等等, 却不能用来编写word 文档.
    关于vim 的安装, 基本使用方法等网络上能搜出许多, 就不在这里罗嗦了, 要是对vim 有
    兴趣, 那就看看这里(中文文档): http://vcd.gro.clinux.org/
    本文就说些其中比较有用, 比较常用的命令, 若能熟练运用这些命令, 那么会发现编辑文件
    很舒服.
    说明:
    以下的例子中xxx 表示在命令模式下输入xxx 并回车
    以下的例子中:xxx 表示在扩展模式下输入xxx 并回车
    小括号中的命令表示相关命令.
    在编辑模式或可视模式下输入的命令会另外注明.
    1. 查找
    /xxx(?xxx) 表示在整篇文档中搜索匹配xxx 的字符串, / 表示向下查找, ? 表示
    向上查找.其中xxx 可以是正规表达式,关于正规式就不多说了.
    一般来说是区分大小写的, 要想不区分大小写, 那得先输入
    :set ignorecase
    查找到以后, 再输入n 查找下一个匹配处, 输入N 反方向查找.
    *(#) 当光标停留在某个单词上时, 输入这条命令表示查找与该单词匹配的
    下(上)一个单词. 同样, 再输入n 查找下一个匹配处, 输入N 反方
    向查找.
    g*(g#) 此命令与上条命令相似, 只不过它不完全匹配光标所在处的单词, 而
    是匹配包含该单词的所有字符串.
    gd 本命令查找与光标所在单词相匹配的单词, 并将光标停留在文档的
    非
    注释段中第一次出现这个单词的地方.
    % 本命令查找与光标所在处相匹配的反括号, 包括() [] {}
    f(F)x 本命令表示在光标所在行进行查找, 查找光标右(左)方第一个x 字符.
    找到后:
    输入; 表示继续往下找
    输入, 表示反方向查找
    2. 快速移动光标
    在vi 中, 移动光标和编辑是两件事, 正因为区分开来, 所以可以很方便的进行光标定
    位和编辑. 因此能更快一点移动光标是很有用的.
    w(e) 移动光标到下一个单词.
    b 移动光标到上一个单词.
    0 移动光标到本行最开头.
    ^ 移动光标到本行最开头的字符处.
    $ 移动光标到本行结尾处.
    H 移动光标到屏幕的首行.
    M 移动光标到屏幕的中间一行.
    L 移动光标到屏幕的尾行.
    gg 移动光标到文档首行.
    G 移动光标到文档尾行.
    c-f (即ctrl 键与f 键一同按下) 本命令即page down.
    c-b (即ctrl 键与b 键一同按下, 后同) 本命令即page up.
    \'\' 此命令相当有用, 它移动光标到上一个标记处, 比如用gd, * 等查
    找到某个单词后, 再输入此命令则回到上次停留的位置.
    \'. 此命令相当好使, 它移动光标到上一次的修改行.
    `. 此命令相当强大, 它移动光标到上一次的修改点.
    3. 拷贝, 删除与粘贴
    在vi 中y 表示拷贝, d 表示删除, p 表示粘贴. 其中拷贝与删除是与光标移动命令
    结合的, 看几个例子就能够明白了.
    yw 表示拷贝从当前光标到光标所在单词结尾的内容.
    dw 表示删除从当前光标到光标所在单词结尾的内容.
    y0 表示拷贝从当前光标到光标所在行首的内容.
    d0 表示删除从当前光标到光标所在行首的内容.
    y$ 表示拷贝从当前光标到光标所在行尾的内容.
    d$ 表示删除从当前光标到光标所在行尾的内容.
    yfa 表示拷贝从当前光标到光标后面的第一个a 字符之间的内容.
    dfa 表示删除从当前光标到光标后面的第一个a 字符之间的内容.
    特殊地:
    yy 表示拷贝光标所在行.
    dd 表示删除光标所在行.
    D 表示删除从当前光标到光标所在行尾的内容.
    关于拷贝, 删除和粘贴的复杂用法与寄存器有关, 可以自行查询.
    4. 数字与命令
    在vi 中数字与命令结合往往表示重复进行此命令, 若在扩展模式的开头出现则表示行
    号定位. 如:
    5fx 表示查找光标后第5 个x 字符.
    5w(e) 移动光标到下五个单词.
    5yy 表示拷贝光标以下5 行.
    5dd 表示删除光标以下5 行.
    y2fa 表示拷贝从当前光标到光标后面的第二个a 字符之间的内容.
    :12,24y 表示拷贝第12 行到第24 行之间的内容.
    :12,y 表示拷贝第12 行到光标所在行之间的内容.
    :,24y 表示拷贝光标所在行到第24 行之间的内容. 删除类似.
    5. 快速输入字符
    在vi 中, 不要求你输入每一个字符, 可以有很多种方法快速输入一些字符.
    使用linux/unix 的同学一定有一个经验, 在命令行下输入命令时敲入头几个字符再按
    TAB 系统就会自动将剩下的字符补齐, 假如有多个匹配则会打印出来. 这就是著名的命令
    补齐(其实windows 中也有文件名补齐功能). vi 中有许多的字符串补齐命令, 非常方便.
    c-p(c-n) 在编辑模式中, 输入几个字符后再输入此命令则vi 开始向上(下)搜
    索开头与其匹配的单词并补齐, 不断输入此命令则循环查找. 此命令
    会在所有在这个vim 程序中打开的文件中进行匹配.
    c-x-l 在编辑模式中, 此命令快速补齐整行内容, 但是仅在本窗口中出现的
    文档中进行匹配.
    c-x-f 在编辑模式中, 这个命令表示补齐文件名. 如输入:
    /usr/local/tom 后再输入此命令则它会自动匹配出:
    /usr/local/tomcat/
    abbr 即缩写. 这是一个宏操作, 可以在编辑模式中用一个缩写代替另一个
    字符串. 比如编写java 文件的常常输入System.out.println, 这很
    是麻烦, 所以应该用缩写来减少敲字. 可以这么做:
    :abbr sprt System.out.println
    以后在输入sprt 后再输入其他非字母符号, 它就会自动扩展为System.
    out.println
    6. 替换
    替换是vi 的强项, 因为可以用正规表达式来匹配字符串.以下提供几个例子.
    :s/aa/bb/g 将光标所在行出现的所有包含aa 的字符串中的aa 替换为bb
    :s/\\&lt;aa\\&gt;/bb/g 将光标所在行出现的所有aa 替换为bb, 仅替换aa 这个单词
    :%s/aa/bb/g 将文档中出现的所有包含aa 的字符串中的aa 替换为bb
    :12,23s/aa/bb/g 将从12 行到23 行中出现的所有包含aa 的字符串中的aa 替换为bb
    :12,23s/^/#/ 将从12 行到23 行的行首加入# 字符
    :%s= *$== 将所有行尾多余的空格删除
    :g/^\\s*$/d 将所有不包含字符(空格也不包含)的空行删除.
    7. 多文件编辑
    在一个vim 程序中打开很多文件进行编辑是挺方便的.
    :sp(:vsp) 文件名vim 将分割出一个横(纵)向窗口, 并在该窗口中打开新文件.
    从vim6.0 开始, 文件名可以是一个目录的名称, 这样, vim 会
    把该目录打开并显示文件列表, 在文件名上按回车则在本窗口打
    开该文件, 若输入O 则在新窗口中打开该文件, 输入? 可以看
    到帮助信息.
    :e 文件名vim 将在原窗口中打开新的文件, 若旧文件编辑过, 会要求保存.
    c-w-w vim 分割了好几个窗口怎么办? 输入此命令可以将光标循环定
    位
    到各个窗口之中.
    :ls 此命令查看本vim 程序已经打开了多少个文件, 在屏幕的最下
    方
    会显示出如下数据:
    1 %a \"usevim.html\" 行162
    2 # \"xxxxxx.html\" 行0
    其中:
    1 表示打开的文件序号, 这个序号很有用处.
    %a 表示文件代号, % 表示当前编辑的文件,
    # 表示上次编辑的文件
    \"usevim.html\" 表示文件名.
    行162 表示光标位置.
    :b 序号(代号) 此命令将指定序号(代号)的文件在本窗口打开, 其中的序号(代号)
    就是用:ls 命令看到的.
    :set diff 此命令用于比较两个文件, 可以用
    :vsp filename
    命令打开另一个文件, 然后在每个文件窗口中输入此命令,就能看
    到效果了.
    8. 宏替换
    vi 不仅可以用abbr 来替换文字, 也可以进行命令的宏定义. 有些命令输起来很费劲,
    因此我把它们定义到&lt;F1&gt;-&lt;F12&gt; 上, 这样就很方便了.这些配置可以预先写到~/.vimrc
    (windows 下为$VIM/_vimrc) 中, 写进去的时候不用写前面的冒号.
    :nmap &lt;F2&gt; :nohls&lt;cr&gt; 取消被搜索字串的高亮
    :nmap &lt;F9&gt; &lt;C-W&gt;w 命令模式下转移光标到不同窗口
    :imap &lt;F9&gt; &lt;ESC&gt;&lt;F9&gt; 输入模式下运行&lt;F9&gt;
    :nmap &lt;F12&gt; :%s= *$==&lt;cr&gt; 删除所有行尾多余的空格.
    :imap &lt;F12&gt; &lt;ESC&gt;&lt;F12&gt; 同上
    :java 中: (注, 这里为什么说java 中, 因为以下定义对其他文件格式不起作用, 下文
    会说到如何实现这一点)
    :nmap &lt;F3&gt; :comp javac&lt;CR&gt;:mak -d . %&lt;CR&gt;
    此命令用javac 编译java 文件, 它会自动将光标定位到出错点. 不过这需要定
    义一个javac.vim 文件在$VIM/compiler 下, 在javac.vim 里面只有两行字:
    setlocal makeprg=javac
    setlocal errorformat=%A%f:%l:\\ %m,%-Z%p^,%-C%.%#
    :nmap &lt;F4&gt; :comp ant&lt;CR&gt;:mak&lt;CR&gt;
    此命令用ant 编译java 文件, 它会自动将光标定位到出错点. 一般来说, 安装
    vim 后已经有了compiler/ant.vim 文件, 因此这个命令可以直接使用. 但是需要
    在当前目录下有build.xml 文件, 当然还必须安装ant 才行.
    :nmap &lt;F5&gt; :cl&lt;CR&gt; 此命令用于查看所有的编译错误.
    :imap &lt;F5&gt; &lt;ESC&gt;&lt;F5&gt;
    :nmap &lt;F6&gt; :cc&lt;CR&gt; 此命令用于查看当前的编译错误.
    :imap &lt;F6&gt; &lt;ESC&gt;&lt;F6&gt;
    :nmap &lt;F7&gt; :cn&lt;CR&gt; 此命令用于跳到下一个出错位置.
    :imap &lt;F7&gt; &lt;ESC&gt;&lt;F7&gt;
    :nmap &lt;F8&gt; :cp&lt;CR&gt; 此命令用于跳到上一个出错位置.
    :imap &lt;F8&gt; &lt;ESC&gt;&lt;F8&gt;
    :nmap &lt;F11&gt; :JavaBrowser&lt;cr&gt;
    此命令用于在窗口左部分割出一个新窗口, 里面的内容是java 的资源树, 包括
    本文件中出现的类, 类的成员变量及成员方法, 就好像JCreator 表现的那样.
    在这个窗口中输入? 会看到帮助. 嘿嘿, 很好用, 不过需要ctags 支持.
    :imap &lt;F11&gt; &lt;ESC&gt;&lt;F11&gt;
    9. TAB
    TAB 就是制表符, 单独拿出来做一节是因为这个东西确实很有用.
    &lt;&lt; 输入此命令则光标所在行向左移动一个tab.
    &gt;&gt; 输入此命令则光标所在行向右移动一个tab.
    5&gt;&gt; 输入此命令则光标后5 行向右移动一个tab.
    :12,24&gt; 此命令将12 行到14 行的数据都向右移动一个tab.
    :12,24&gt;&gt; 此命令将12 行到14 行的数据都向右移动两个tab.
    那么如何定义tab 的大小呢? 有人愿意使用8 个空格位, 有人用4 个, 有的用2 个.
    有的人希望tab 完全用空格代替, 也有的人希望tab 就是tab. 没关系, vim 能
    帮助你.以下的设置一般也都先写入配置文件中, 免得老敲.
    :set shiftwidth=4 设置自动缩进4 个空格, 当然要设自动缩进先.
    :set sts=4 即设置softtabstop 为4. 输入tab 后就跳了4 格.
    :set tabstop=4 实际的tab 即为4 个空格, 而不是缺省的8 个.
    :set expandtab 在输入tab 后, vim 用恰当的空格来填充这个tab.
    10. autocmd
    这个命令十分的强大, 可以用这个命令实现对不同的文件格式应用不同的配置; 可以
    在新建文件时自动添加上版权声明等等. 这些命令一般定义在~/.vimrc 这样的配置文件
    里面. 由于他很强大, 所以我不能给出很具体的说明, 只能举几个例子, 详细的请看帮助.
    :autocmd! 删除所有之前的自动命令.
    autocmd FileType java source ~/.vim/files/java.vim
    autocmd FileType java source ~/.vim/files/jcommenter.vim
    以上两条命令让我在打开java 文件时才应用后面提到的两个配置文件.
    autocmd BufNewFile *.java 0r ~/.vim/files/skeletons/java.skel
    以上这条命令让我在新建java 文件时自动加入java.skel 文件的内容.
    autocmd BufNewFile *.java normal gnp
    以上这条命令让我在新建java 文件时自动运行gnp 命令, 这个命令进行一些特殊化
    处理, 比如将新java 文件中的__date__ 替换成今天的日期什么的.
    11. 常用脚本
    在vim.sf.net 你可以发现很多脚本(script), 这些脚本常常有让你意想不到的作用.
    我常用的有:
    jcommenter.vim 自动加入javadoc 风格的注释.
    JBrowser.vim 类资源浏览. C, C++ 等可以用Tlist
    还有许多有用的, 比如checkstyle.vim 可以检验你的编程风格, jad.vim 可以直接
    反编译.class 文件等等.
    12. 常用配置
    在~/.vimrc 配置文件中你常常需要一些个性化配置. 比如上面写的一些宏定义, 一些
    autocmd 定义等等. 比如:
    set suffixes=.bak,~,.o,.h,.info,.swp,.aux,.bbl,.blg,.dvi,.lof,.log,.lot,.ps,.toc
    这样在vim 中打开文件时, 按tab 键补齐文件名时它会忽略上述文件.
    set nu 显示行号
    set ai 设置自动缩进
    map Y y$ 让Y 和D 一样, 要不然Y 的本意和yy 一样.
    13. 其他
    还有许多有意思的命令, 记录在这里免得忘记.
    . 重复上次编辑命令.
    :g/^/exec \"s/^/\".strpart(line(\".\").\" \", 0, 4) 在行首插入行号
    :runtime! syntax/2html.vim 转换txt 成html, 会按照你的颜色配置来转 </pre>
<p>
	<br />
</p>','','','','html','42','N','N','','','0','0','N','1407318782','0','Y','0','Y','1407317885');
INSERT INTO `yiif_post` VALUES('24','1','传闻微软计划用Lumia品牌取代Surface','','','','','2','0','传闻微软计划用诺基亚Lumia品牌取代Surface品牌，且让未来Windows Phone手机打上“微软旗下诺基亚”（Nokia by Microsoft）的品牌烙印，最终的目的是实现推广销售“Nokia by Microsoft”品牌。','','','','','<p align=\"center\">
	<img src=\"/uploads/attached/image/201406/468a9574708.jpg\" alt=\"\" /> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">北京时间6月30日消息，据美国科技网站ZDNet报道，微软计划用诺基亚Lumia品牌取代Surface品牌，且让未来Windows 
Phone手机打上“微软旗下诺基亚”（Nokia by Microsoft）的品牌烙印，最终的目的是实现推广销售“Nokia by 
Microsoft”品牌。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">微软针对诺基亚移动业务部门的收购已经完成一段时间了，但是关于如何调整使用诺基亚旗下品牌的问题仍然处于悬而未决的状态。如今看来，马上就会有相关结果出来了。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">企业中途更换品牌相当困难，而且代价不菲，有时甚至是不明智的。但据爆料大神</span><a href=\"http://evleaks.at/2014/06/28/pretty-exciting-microsoft-reportedly-final-stages-licensing-nokia-brand-purpose-calling-handsets-nokia-microsoft-furthermore-say-goodbye-surface/\" target=\"_blank\"><span style=\"font-size:14px;\">@evleaks称</span></a><span style=\"font-size:14px;\">，微软可能会这样做：</span> 
</p>
<blockquote style=\"margin-left:3em ! important;font-style:normal ! important;color:#777777;text-indent:2em;\">
	<p>
		<span style=\"font-size:14px;\">This
 is pretty exciting: Microsoft is reportedly in the final stages of 
licensing the Nokia brand, for the purpose of calling the handsets 
“Nokia by Microsoft.” Furthermore, say goodbye to Surface, and hello to 
Lumia, as the tablet lineup faces brand streamlining.</span> 
	</p>
</blockquote>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">另外，@evleaks也在早前也透露了</span><a href=\"http://evleaks.at/2014/06/11/goodbye-pure-hello-segoe-near-term-post-transition-guidance-ex-nokians-regarding-branded-future/\" target=\"_blank\"><span style=\"font-size:14px;\">微软将在Lumia手机上取消诺基亚品牌名</span></a><span style=\"font-size:14px;\">：</span> 
</p>
<blockquote style=\"margin-left:3em ! important;font-style:normal ! important;color:#777777;text-indent:2em;\">
	<p>
		<span style=\"font-size:14px;\">Limua智能手机将继续使用诺基亚品牌18个月，Nokia X手机对诺基亚品牌的使用权将延续至2015年12月31日，而诺基亚功能手机Asha则可以继续使用10年诺基亚品牌。</span> 
	</p>
</blockquote>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">此外，@evleaks还表示，微软可能在与诺基亚谈判，延长Lumia品牌的使用时间，以便使其未来的手机和其他设备能继续使用这一品牌。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">尽管如此，还有一个令人惊讶的消息是，微软已经投资了太多的钱在Surface品牌上（在今年巴西世界杯期间，微软也在Surface Pro 3广告宣传方面投入了大量资金），而且最近也推出了受欢迎的Surface Pro 3平板电脑。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">不
过，在谈到Windows 
Phone手机时，人们常常想到的是Lumia或诺基亚，微软作为手机制造商的地位尚未得到认可。微软此举也在情理之中，当用户开始意识到微软与诺基亚品
牌的关系后，微软的受信任度也会提升。其实，在美国之外的市场上，诺基亚和Lumia有更高的品牌知名度；而且微软Windows 
Phone手机在海外市场的销售要好于美国。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">融合Surface和Lumia品牌符合微软</span><a href=\"http://www.zdnet.com/microsoft-3-0-a-meaner-leaner-devices-and-services-machine-7000017931/\" target=\"_blank\"><span style=\"font-size:14px;\">“一个微软”（One Microsoft）的营销策略</span></a><span style=\"font-size:14px;\">。据悉，微软在2015年春季将发布一个重要版本Windows Threshold，一个能同时支持手机和触控屏平板电脑的Windows版本。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">微软能从改变Surface品牌中受益，例如与</span><a href=\"http://www.zdnet.com/microsofts-900-million-surface-rt-write-down-how-did-this-happen-7000018275/\" target=\"_blank\"><span style=\"font-size:14px;\">Surface之前的历史</span></a><span style=\"font-size:14px;\">以及Surface销售不如预期的观念“划清界线”。</span> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>','csdn','http://www.csdn.net/article/2014-06-30/2820438-microsoft-rumored-to-be-planning-to-replace-surface-branding-with-lumia','','微软,计划','11','N','N','','','0','0','N','1404120838','0','Y','0','N','1404110540');
INSERT INTO `yiif_post` VALUES('26','1','微软偷了我的创意 狂赚几十亿美元','','','','','2','0','一位开发人员近日宣称，微软剽窃了自己的创意，并利用它在浏览器大战中取得胜利，现在，微软又用这项专利来从 Android 身上赚钱，每位 Android 用户都要被他们搜刮一下，这位开发人员呼吁大家共同谴责微软的行为。','','','','','<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">一位开发人员近日宣称，微软剽窃了自己的创意，并利用它在浏览器大战中取得胜利，现在，微软又用这项专利来从 Android 身上赚钱，每位 Android 用户都要被他们搜刮一下，这位开发人员呼吁大家共同谴责微软的行为。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">美国开发人员 Rob Morris 表示，自己曾经创建了软件开发公司V_Graph，并开发了一个浏览器组件，名为“web 
widgets”，它允许开发人员将 Web 内容添加到自己的应用程序中。1996 年，V_Graph 曾接触微软，并打算将“web 
widgets”卖给微软，但后来由于种种原因，双方未达成交易。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">但是，几个月后，微软发布了 IE3.0，在这款浏览器中使用了类似V_Graph 的技术。据 Morris 回忆，微软在 1997 年无耻地递交了这款浏览器组件的专利申请，并在 2000 年 8 月获得了美国专利6,101,510。</span> 
</p>
<p>
	<img class=\"aligncenter\" src=\"http://news.html5tricks.com/wp-content/uploads/2014/06/8db0ec3b1d20bacba1226799e3a8bb4a.jpg\" alt=\"开发人员：微软偷了我的创意狂赚几十亿美元\" /> 
</p>
<p style=\"text-align:center;text-indent:2em;\">
	<span style=\"font-size:14px;\">IE3</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">V_Graph 瞬间垮掉，不仅是V_Graph，Morris 表示，这个浏览器组件还让微软取得了与 AOL 的合作，打败了网景导航者（Netscape Navigator）。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">现在，同样的技术也被用在其它应用程序中，包括 Android，因为微软授权给 Google 使用该技术，并获取了数十亿美元的版权税。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">Morris 说：“我们认为这个坏专利目前影响每一个智能手机和平板机用户。微软将这项技术作为他们操作系统的一部分开卖时，我们虽然觉得十分可恶，但还只是伤害了我的公司。然而现如今，微软靠着专利授权获得了数十亿暴利，而这些都出自 Android 用户。”</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">Morris 在网上发起了请愿书，称之为“自由浏览器”(Free the 
Browser)，希望公众能帮助他。“我们想为这个专利而战，虽然不能弥补过去，但最起码我们可以共同努力，阻止他们再对此收费。”根据请愿书中所
说，Morris 并不是为了钱，只是想为 Android 用户讨回公道，不再被搜刮。</span> 
</p>
<p align=\"center\">
	<img class=\"aligncenter\" src=\"http://news.html5tricks.com/wp-content/uploads/2014/06/228f6a15d932e0094cd996e86892fd8e.jpg\" alt=\"开发人员：微软偷了我的创意狂赚几十亿美元\" /> 
</p>
<p style=\"text-align:left;text-indent:2em;\" align=\"center\">
	<span style=\"font-size:14px;\">来源：</span><a href=\"http://news.mydrivers.com/1/310/310144.htm\" target=\"_blank\"><span style=\"font-size:14px;\">驱动之家</span></a> 
</p>
<p style=\"text-indent:2em;\">
	<br />
</p>','html5tricks','http://news.html5tricks.com/microsoft-stole-my-idea.html','','微软,创意','13','N','N','','','0','0','N','1404120826','0','Y','0','N','1404110844');
INSERT INTO `yiif_post` VALUES('27','1','谷歌I/O大会或发布新机顶盒 挑战苹果亚马逊','','','','','2','0','新浪科技  北京时间6月25日晚间消息，《华尔街日报》今日援引知情人士的消息称，在周三的谷歌(564.62, -0.33, -0.06%)I/O开发者大会上，谷歌将至少发布一款小型机顶盒设备，类似于Roku、亚马逊(324.16, -3.88, -1.19%)Fire TV和Apple TV等机顶盒产品。','','','','','<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">北京时间6月25日晚间消息，《华尔街日报》今日援引知情人士的消息称，在周三的谷歌(</span><span style=\"color:red;font-size:14px;\">564.62</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-0.33</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-0.06%</span><span style=\"font-size:14px;\">)I/O开发者大会上，谷歌将至少发布一款小型机顶盒设备，类似于Roku、亚马逊(</span><span style=\"color:red;font-size:14px;\">324.16</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-3.88</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-1.19%</span><span style=\"font-size:14px;\">)Fire TV和Apple TV等机顶盒产品。</span> 
</p>
<p>
	<a href=\"http://news.html5tricks.com/wp-content/uploads/2014/06/google-io-new-machine.jpg\"><img class=\"alignnone size-full wp-image-306\" title=\"google-io-new-machine\" src=\"http://news.html5tricks.com/wp-content/uploads/2014/06/google-io-new-machine.jpg\" alt=\"\" height=\"142\" width=\"553\" /></a> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">该知情人士称，谷歌机顶盒将采用谷歌最新的Android TV软件，支持电影、游戏和其他内容。有趣的是，该机顶盒将采用其他公司品牌，而不是谷歌品牌。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">当前，微软(</span><span style=\"color:red;font-size:14px;\">41.74</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-0.24</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-0.58%</span><span style=\"font-size:14px;\">)、亚马逊和苹果(</span><span style=\"color:red;font-size:14px;\">90.28</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-0.55</span><span style=\"font-size:14px;\">,&nbsp;</span><span style=\"color:red;font-size:14px;\">-0.61%</span><span style=\"font-size:14px;\">)等科技公司均推出了自己的机顶盒产品。其中亚马逊Fire TV售价99美元，支持视频和游戏等功能，希望长期推动自己的在线零售业务。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">去年12月，谷歌将自己的机顶盒制造部门Motorola Home以23.5亿美元出售给Arris Group。</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">除了机顶盒，业界还预计谷歌在今年的I/O开发者大会上还可能展示基于Android Wear平台的可穿戴设备、发布新版Android系统，以及展示Android车载系统等。(李明)</span> 
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\"></span> 
</p>','html5tricks','http://news.html5tricks.com/google-io-new-machine.html','','亚马逊,谷歌,机顶盒,苹果','12','N','N','','','0','0','N','1404121102','0','Y','0','N','1404110940');
INSERT INTO `yiif_post` VALUES('29','1','Yii 框架创建自己的 web 应用','','','','','20','0','Yii 是当今国内外最为流行的 PHP 框架。由于它高性能的特性，被公认为是“最有效率的 PHP 框架”。Yii 提供了今日 Web 2.0 应用开发所需要的几乎一切功能。它可以通过一个简单的命令 yiic 来快速创建一个 Web 应用程序的代码框架，开发人员通过在生成的代码框架上编写自己的业务逻辑，来实现 Web 应用的快速开发。本文将通过具体的实例对 Yii 框架进行阐述，使读者在真实的案例中去学习如何使用 Yii 框架创建自己的 Web 应用，从而对这个优秀的 PHP 框架有个更真实的体验。','','','','','<h2 style=\"text-indent:2em;\" id=\"major1\">
	Yii 框架概述</h2><h3 style=\"text-indent:2em;\" id=\"minor1.1\">
	Yii 是什么？</h3><p style=\"text-indent:2em;\">
	Yii 是一个高性能的、基于组件的 PHP 框架，用于 Web 应用程序的快速开发。</p><p style=\"text-indent:2em;\">
	Yii 的名字来源于“Yes It Is”的字母缩写。这句话肯定地回答了众多关于这个框架的疑问：“它是否快速？是否安全？是否强大？是否适合我们的项目？”</p><h3 style=\"text-indent:2em;\" id=\"minor1.2\">
	Yii 适合做什么？</h3><p style=\"text-indent:2em;\">
	Yii 是一个通用的轻量级 Web 编程框架，可以用于开发几乎所有的 Web 应用。具备它成熟的缓存机制，特别适用于开发高流量的应用，例如门户网站，论坛，内容管理系统（CMS），电子商务系统等等。</p><h3 style=\"text-indent:2em;\" id=\"minor1.3\">
	Yii 和其他软件相比有哪些优势？</h3><p style=\"text-indent:2em;\">
	和大多数 PHP 框架类似，Yii 是一个 MVC 框架，通过分离业务逻辑和用户界面，使开发者可以很容易地进行修改而不影响其它部分。</p><p style=\"text-indent:2em;\">
	Yii 在设计时借鉴和集成了很多其他著名 Web 编程框架和应用，最大程度地考虑了 Web 应用开发的各种需要。所以 Yii 无论是在优异的性能上，还是丰富的功能和清晰的文档上，都使得它从众多 PHP 框架中脱颖而出。</p><p style=\"text-indent:2em;\" class=\"ibm-ind-link ibm-back-to-top\"><br/></p><h2 style=\"text-indent:2em;\" id=\"major2\">
	Yii 的安装及配置</h2><h3 style=\"text-indent:2em;\" id=\"minor2.1\">
	安装前的准备</h3><p style=\"text-indent:2em;\">
	在
安装和使用 Yii 之前，你需要有一个安装好 PHP 和 Web 
服务器的环境。目前，有很多集成环境软件可以轻松的实现这部分的安装。比如我们在这里使用的 WampServer。你可以从 WampServer 
的官方网站上下载和安装。WampServer 的安装非常简单，双击执行就可以了。安装过程中，它会自动为你安装 Apache， MySQL 和 
PHP，不需要任何额外的配置，一切都完成得既轻松又简单。</p><h3 style=\"text-indent:2em;\" id=\"minor2.2\">
	Yii 的安装</h3><p style=\"text-indent:2em;\">
	Yii 的安装更是简单得让你难以想象，只需要执行下面两个步骤，就可以开始使用了。</p><p style=\"text-indent:2em;\">
	一：从 Yii 的官方网站下载 Yii 框架</p><p style=\"text-indent:2em;\">
	二：把下载的文件解压缩到一个 Web 可以访问的文件夹里</p><p style=\"text-indent:2em;\">
	如果想验证 Yii 是否安装成功，只需要在浏览器中输入下面的 URL 就可以了。</p><pre class=\"displaycode\"><pre class=\"prettyprint lang-php\">http://hostname/path/to/yii/requirements/index.php</pre><br/></pre><p style=\"text-indent:2em;\">
	下面是我们从浏览器里看到的页面显示。</p><h5 style=\"text-indent:2em;\" id=\"fig1\">
	图 1. Yii 安装成功的页面显示</h5><p style=\"text-indent:2em;\"><img alt=\"图 1. Yii 安装成功的页面显示\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image001.jpg\" width=\"581\"/> </p><p style=\"text-indent:2em;\" class=\"ibm-ind-link ibm-back-to-top\"><br/></p><h2 style=\"text-indent:2em;\" id=\"major3\">
	如何使用 Yii 创建 Web 应用</h2><h3 style=\"text-indent:2em;\" id=\"minor3.1\">
	使用命令行工具 yiic 创建 web 应用</h3><p style=\"text-indent:2em;\">
	Yiic 是一个命令行工具，通过它，你可以通过简单的使用一条命令，来创建一个完整的应用。</p><p style=\"text-indent:2em;\">
	YiiRoot/framework/yiic webapp WebRoot/testdrive</p><p style=\"text-indent:2em;\">
	比如：C:\\wamp\\www\\yii\\framework&gt;yiic.bat webapp c:\\wamp\\www\\abc</p><p style=\"text-indent:2em;\">
	这条命令在 www 目录下面自动为你创建了一个名为 abc 的 Yii 的代码框架。你可以通过下面这个 URL 在本地访问这个刚刚创建的应用。</p><p style=\"text-indent:2em;\">
	http://localhost/abc/index.php</p><p style=\"text-indent:2em;\">
	下图就是我们刚刚创建的 Web 应用</p><h5 style=\"text-indent:2em;\" id=\"fig2\">
	图 2. 使用 yiic 创建的 Web 应用</h5><p style=\"text-indent:2em;\"><img alt=\"图 2. 使用 yiic 创建的 Web 应用\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image002.jpg\" width=\"582\"/> </p><p style=\"text-indent:2em;\" class=\"ibm-ind-link ibm-back-to-top\"><br/></p><h2 style=\"text-indent:2em;\" id=\"major4\">
	实例讲解基于 Yii 的测试数据维护系统的实现</h2><p style=\"text-indent:2em;\">
	我们通过一个简单的测试数据维护系统来向大家演示如何使用 Yii framework 快速开发一个 Web 应用，来满足我们工作上的需要。</p><p style=\"text-indent:2em;\">
	下面我来简要介绍一下这个 web 应用的基本需求：</p><p style=\"text-indent:2em;\">
	这个 Web 应用主要实现对测试数据的维护和存储，包括增删改查等基本的功能。测试数据由两个二维表组成，两个表之间是“头 - 明细”的关系。所有数据存放在关系型数据库中，方便统计查询和日后的扩展。</p><h3 style=\"text-indent:2em;\" id=\"minor4.1\">
	应用程序的设计和准备</h3><p style=\"text-indent:2em;\"><strong>功能需求</strong> </p><p style=\"text-indent:2em;\">
	最基本的功能就是“增删改查”。这里就是分别对测试数据的主表和明细表两个表的进行增删改查的操作。</p><p style=\"text-indent:2em;\">
	要求使用者用各自的用户登录使用，并记录最近修改人和日期。</p><p style=\"text-indent:2em;\"><strong>数据库的选择和设计</strong> </p><p style=\"text-indent:2em;\">
	选用 SQLite 进行数据的存储。</p><p style=\"text-indent:2em;\">
	SQLite 是一种小型的嵌入式数据库，它小巧灵活，资源占用少，处理速度快，非常适合中小型应用的数据存储。由于其各方面的出色表现，得到越来越多的开发人员的青睐。</p><p style=\"text-indent:2em;\"><strong>创建表：</strong> </p><p style=\"text-indent:2em;\">
	根据应用程序的需要，我们将测试数据分别存放在两张表中。一个是主表，存放文件信息（file）；另一个是明细表，存在文件中的内容信息（pii）。两个表之间是“头 - 明细”的关系。</p><h5 style=\"text-indent:2em;\" id=\"listing1\"><span style=\"font-size:14px;\">清单 1. 创建表 pii 和 file 的 SQL 语句</span></h5><pre class=\"displaycode\">&nbsp;CREATE&nbsp;TABLE&nbsp;file&nbsp;(&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;INTEGER&nbsp;NOT&nbsp;NULL&nbsp;PRIMARY&nbsp;KEY&nbsp;AUTOINCREMENT,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;Package&nbsp;VARCHAR(50)&nbsp;NOT&nbsp;NULL,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;PiiFile&nbsp;VARCHAR(255)&nbsp;NOT&nbsp;NULL,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;FileInServer&nbsp;VARCHAR(255),&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;Comment&nbsp;VARCHAR(255)&nbsp;
&nbsp;)&nbsp;
&nbsp;CREATE&nbsp;TABLE&nbsp;&quot;pii&quot;&nbsp;(&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;INTEGER&nbsp;NOT&nbsp;NULL&nbsp;PRIMARY&nbsp;KEY&nbsp;AUTOINCREMENT,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;PiiFileId&nbsp;INTEGER&nbsp;NOT&nbsp;NULL,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;PiiStr&nbsp;VARCHAR(1000)&nbsp;NOT&nbsp;NULL,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;CaseNo&nbsp;VARCHAR(18)&nbsp;default&nbsp;&#39;-&#39;,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;Category&nbsp;VARCHAR(50),&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;Shipment&nbsp;INTEGER,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;UpdatedAt&nbsp;DATETIME,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;ModifiedBy&nbsp;VARCHAR(30),&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;Comment&nbsp;VARCHAR(255)&nbsp;
&nbsp;)</pre><p style=\"text-indent:2em;\"><strong>数据初始化：</strong> </p><p style=\"text-indent:2em;\">
	使用 SQLite Manager 导入数据。SQLite Manager 是一个 Firefox 的插件，可以方便的管理和维护 SQLite 数据库。</p><p style=\"text-indent:2em;\">
	将
准备好的测试数据整理成 csv, txt 等格式，通过 SQLite Manager 
进行导入。数据即可快速准备就绪。所有的数据都存放在嵌入式数据库 SQLite 中。在应用程序框架建立后，我们将准备好的数据库文件复制到目录 
C:\\wamp\\www\\pii\\protected\\data 下。</p><h3 style=\"text-indent:2em;\" id=\"minor4.2\">
	创建应用程序框架</h3><p style=\"text-indent:2em;\">
	在上面我们提到“使用命令行工具 yiic 创建 web 应用”，这里，我们就演示一下如何通过命令行的方式来创建一个应用程序。</p><pre class=\"displaycode\">&nbsp;C:\\wamp\\www\\yii\\framework&gt;yiic.bat&nbsp;webapp&nbsp;c:\\wamp\\www\\pii</pre><p style=\"text-indent:2em;\">
	这条命令在 www 目录下面自动为你创建了一个名为 pii 的 Yii 的代码框架。你可以通过下面这个 URL 在本地访问这个刚刚创建的应用。</p><p style=\"text-indent:2em;\">
	http://localhost/pii/index.php</p><p style=\"text-indent:2em;\">
	这时，我们看到 web 页面上有 4 个缺省的 tab：“Home”，“About”，“Contact”和“Login”。下面我们将在页面上加入一些基本功能的实现。</p><h3 style=\"text-indent:2em;\" id=\"minor4.3\">
	加入基本功能</h3><p style=\"text-indent:2em;\"><strong>实现表的 CRUD 功能</strong> </p><p style=\"text-indent:2em;\">
	首先，我们需要实现对文件信息的增删改查，即对表 file 中的数据进行操作和维护。</p><p style=\"text-indent:2em;\"><strong>1. 连接数据库：</strong> </p><p style=\"text-indent:2em;\">
	将准备好的数据库文件 pii.sqlite 放置在 C:\\wamp\\www\\pii\\protected\\data 目录下。</p><p style=\"text-indent:2em;\">
	在文件 C:\\wamp\\www\\pii\\protected\\config\\main.php 中，定义使用的数据库文件。</p><h5 style=\"text-indent:2em;\" id=\"listing2\"><span style=\"font-size:14px;\">清单 2. 定义数据库文件</span></h5><pre class=\"displaycode\"><pre class=\"prettyprint lang-php\">&#39;db&#39;=&gt;array(&nbsp;
&nbsp;&#39;connectionString&#39;&nbsp;=&gt;&nbsp;&#39;sqlite:&#39;.dirname(__FILE__).&#39;/../data/pii.sqlite&#39;,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;),</pre><br/></pre><p style=\"text-indent:2em;\"><strong>2. 配置 Gii 代码生成器</strong> </p><p style=\"text-indent:2em;\">
	Gii 是一个强大 web 应用代码生成器，可以取代或者简化开发者的工作量，自动生成代码实现标准的功能模块。在使用前，我们需要对文件 C:\\wamp\\www\\pii\\protected\\config\\main.php 做些定义。</p><h5 style=\"text-indent:2em;\" id=\"listing3\"><span style=\"font-size:14px;\">清单 3. 配置 Gii 代码生成器</span></h5><pre class=\"displaycode\"><pre class=\"prettyprint lang-php\">&#39;import&#39;=&gt;array(&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&#39;application.models.*&#39;,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&#39;application.components.*&#39;,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;),&nbsp;
&nbsp;&nbsp;&#39;modules&#39;=&gt;array(&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&#39;gii&#39;=&gt;array(&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;class&#39;=&gt;&#39;system.gii.GiiModule&#39;,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;password&#39;=&gt;&#39;password&#39;,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;),&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;),</pre><br/></pre><p style=\"text-indent:2em;\">
	定义之后，我们可以通过 URL http://hostname/pii/index.php?r=gii 来访问 Gii。</p><h5 style=\"text-indent:2em;\" id=\"fig3\"><span style=\"font-size:14px;\">图 3. Gii 代码生成器</span></h5><p style=\"text-indent:2em;\"><img alt=\"图 3. Gii 代码生成器\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image003.jpg\" width=\"503\"/> </p><h3 style=\"text-indent:2em;\" id=\"listing4\">
	3. 使用 Gii 为数据表建模</h3><p style=\"text-indent:2em;\">
	在 Gii 中，我们将使用 Model Generator 为数据库中的表建模。我们选择 Model Generator 之后，可以看到下面的页面。</p><h5 style=\"text-indent:2em;\" id=\"fig4\">
	图 4. 使用 Model Generator 生成模块代码</h5><p style=\"text-indent:2em;\"><img alt=\"图 4. 使用 Model Generator 生成模块代码\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image004.jpg\" width=\"517\"/> </p><p style=\"text-indent:2em;\">
	预览并生成代码，这个生成器会在 protected/models 生成模块文件 File.php。</p><p style=\"text-indent:2em;\"><strong>4. 为表创建 CRUD 代码</strong> </p><p style=\"text-indent:2em;\">
	有了模块文件，我们需要使用 Gii 中的 Crud Generator 为这个模块生成 CRUD 代码。</p><h5 style=\"text-indent:2em;\" id=\"fig5\">
	图 5. 使用 CRUD 生成器生成代码</h5><p style=\"text-indent:2em;\"><img alt=\"图 5. 使用 CRUD 生成器生成代码\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image005.jpg\" width=\"582\"/> </p><p style=\"text-indent:2em;\">
	这时，通过 http://localhost/pii/index.php?r=file，你就可以看到 File 的维护界面了。</p><h5 style=\"text-indent:2em;\" id=\"fig6\">
	图 6. 生成的 Files 维护界面</h5><p style=\"text-indent:2em;\"><img alt=\"图 6. 生成的 Files 维护界面\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image006.jpg\" width=\"582\"/> </p><p style=\"text-indent:2em;\">
	使用同样的方法，我们也可以为明细表 pii 创建了相应的 php 文件和维护页面。</p><p style=\"text-indent:2em;\"><strong>5. 将创建的功能加入到 Web 应用中</strong> </p><p style=\"text-indent:2em;\">
	下面，我们要介绍如何把刚刚创建的功能加入到 Web 应用中。首先，我们需要对文件 C:\\wamp\\www\\pii_OK\\protected\\views\\layouts\\main.php 进行一点修改。</p><p style=\"text-indent:2em;\">
	在
这个文件里，我们可以根据自己的需要来定制将要显示的页面。比如，看下面的代码，我们做了两处改动：第一是取消了 Home 和 Contact 两个 
tab 的显示，我们通过加“//”注释了这两行代码。第二是增加了两个 tab：Files 和 
PIIs，新增加的两行代码实现了显示上面步骤里我们创建的两个页面。</p><h5 style=\"text-indent:2em;\" id=\"listing5\"><span style=\"font-size:14px;\">清单 4. 自定义标签页</span></h5><pre class=\"displaycode\">&nbsp;&lt;div&nbsp;id=&quot;mainmenu&quot;&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&lt;?php&nbsp;$this-&gt;widget(&#39;zii.widgets.CMenu&#39;,array(&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&#39;items&#39;=&gt;array(&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;array(&#39;label&#39;=&gt;&#39;Home&#39;,&nbsp;&#39;url&#39;=&gt;array(&#39;/site/index&#39;)),&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;array(&#39;label&#39;=&gt;&#39;Files&#39;,&nbsp;&#39;url&#39;=&gt;array(&#39;/file/admin&#39;)),&nbsp;&nbsp;//&nbsp;new&nbsp;added
	&nbsp;&nbsp;&nbsp;array(&#39;label&#39;=&gt;&#39;PIIs&#39;,&nbsp;&#39;url&#39;=&gt;array(&#39;/pii/admin&#39;)),&nbsp;&nbsp;&nbsp;//&nbsp;new&nbsp;added
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;array(&#39;label&#39;=&gt;&#39;About&#39;,&nbsp;&#39;url&#39;=&gt;array(&#39;/site/page&#39;,&nbsp;&#39;view&#39;=&gt;&#39;about&#39;)),&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;array(&#39;label&#39;=&gt;&#39;Contact&#39;,&nbsp;&#39;url&#39;=&gt;array(&#39;/site/contact&#39;)),&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;array(&#39;label&#39;=&gt;&#39;Login&#39;,&nbsp;&#39;url&#39;=&gt;array(&#39;/site/login&#39;),&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;visible&#39;=&gt;Yii::app()-&gt;user-&gt;isGuest),&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;array(&#39;label&#39;=&gt;&#39;Logout&nbsp;(&#39;.Yii::app()-&gt;user-&gt;name.&#39;)&#39;,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;url&#39;=&gt;array(&#39;/site/logout&#39;),&nbsp;&#39;visible&#39;=&gt;!Yii::app()-&gt;user-&gt;isGuest)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;),&nbsp;
&nbsp;&nbsp;&nbsp;));&nbsp;?&gt;&nbsp;
&nbsp;&lt;/div&gt;&lt;!--&nbsp;mainmenu&nbsp;--&gt;</pre><p style=\"text-indent:2em;\">
	现在来看看效果吧。果然，Home 和 Contact 页面不见了，取代它们的是 Files 和 PIIs 页面。</p><h5 style=\"text-indent:2em;\" id=\"fig7\"><span style=\"font-size:14px;\">图 7. 加入了 Files 和 PIIs 的 Web 应用</span></h5><p style=\"text-indent:2em;\"><img alt=\"图 7. 加入了 Files 和 PIIs 的 Web 应用\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image007.jpg\" width=\"581\"/> </p><p style=\"text-indent:2em;\">
	通过这一步，我们将新创建的两个数据表 DRUD 的应用就添加到我们的网页中了。我们已经可以直接通过这两个页面来维护表里面的数据了。</p><h3 style=\"text-indent:2em;\" id=\"minor4.4\">
	完善功能</h3><p style=\"text-indent:2em;\">
	到
目前为止，一个关于数据表维护的 Web 
应用的主要功能就基本实现了。当然，我们经常会根据自己使用上的需要对现有的功能做一些完善。比如，我们需要对最后一个修改数据的人和日期做一个记录，我
们需要隐藏一些字段的显示，调整一些字段的显示顺序，我们可能还需要增加一些用户来使用这个系统。因为大部分的代码框架已经通过 Gii 
实现了，我们只需要在此基础上做一些简单的添加和修改，就可以实现我们所需要的功能。现在，我们用记录最后修改人和修改日期为例，看看我们如何通过修改一
些代码来完善想要的功能的。</p><p style=\"text-indent:2em;\">
	比如，我们需要记录对 Pii 数据表最后做修改的用户和日期信息。我们首先要找到维护 Pii 表的那个 PHP 文件。在这个例子中，是文件 C:\\wamp\\www\\pii\\protected\\models\\Pii.php。我们在文件的最后增加下面的代码：</p><h5 style=\"text-indent:2em;\" id=\"listing6\"><span style=\"font-size:14px;\">清单 5. 记录修改日期和用户名</span></h5><p></p><pre class=\"prettyprint lang-php\">&nbsp;public&nbsp;function&nbsp;beforeSave()&nbsp;
&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;date_default_timezone_set(&quot;Asia/Shanghai&quot;);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;UpdatedAt=date(&#39;Y-m-d&nbsp;H:i:s&#39;);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;ModifiedBy=Yii::app()-&gt;user-&gt;name;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;parent::beforeSave();&nbsp;
&nbsp;&nbsp;&nbsp;}</pre><p></p><p style=\"text-indent:2em;\">
	这段代码在保存数据前为 UpdateAt 和 ModifiedBy 
字段设置了用户名和修改日期，然后调用了父类的 beforeSave 方法。保存之后，你会发现，在页面上修改 Pii 数据之后，Updated 
At 和 Modified By 字段的值被自动填入了默认的内容。</p><h5 style=\"text-indent:2em;\" id=\"fig8\">
	图 8. 自动填写 Updated At 和 Modified By 字段</h5><p style=\"text-indent:2em;\"><img alt=\"图 8. 自动填写 Updated At 和 Modified By 字段\" src=\"http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/images/image008.jpg\" width=\"582\"/> </p><p style=\"text-indent:2em;\" class=\"ibm-ind-link ibm-back-to-top\"><br/></p><h2 style=\"text-indent:2em;\" id=\"major5\">
	结束语</h2><p style=\"text-indent:2em;\">
	通
过这篇文章，我们了解了 Yii 这个当今最为流行的 PHP 框架，并通过搭建一个测试数据维护系统的具体实例，学习了如何使用 Yii 
框架来创建一个 Web 应用。在这个实例中，我们还通过使用 Gii 代码生成器为应用自动创建代码框架，更好地体会到 Yii 在创建 Web 
应用上的快捷优势。我们期待这篇文章能起到一个“抛砖引玉”的作用，希望更多的人了解和使用这个框架，并开发出更多更好的应用。</p><p style=\"text-indent:2em;\"><br/></p>','developworks','http://www.ibm.com/developerworks/cn/opensource/os-cn-yii/','','php,mysql,web,sql,apache,yii,cms,文章,IT,服务器','36','N','N','','','0','0','N','1408692660','0','Y','0','Y','1407136800');
INSERT INTO `yiif_post` VALUES('30','1','阅读jQuery源代码带给我们的18个惊喜','','','','','2','0','相信大家都非常熟悉jQuery类库，绝对最受欢迎的JS框架，如果你也有兴趣阅读v源代码的话，或者你也会有同感。以下便是阅读jQuery源代码后挖掘的18条令人惊奇的信息：1. sizzle的大小Sizzle是用来帮助jQuery实现','','','','','<p>
	相信大家都非常熟悉jQuery类库，绝对最受欢迎的JS框架，如果你也有兴趣阅读v源代码的话，或者你也会有同感。
</p>
<p>
	以下便是阅读jQuery源代码后挖掘的18条令人惊奇的信息：
</p>
<h2>
	1. sizzle的大小
</h2>
<p>
	Sizzle是用来帮助jQuery实现DOM查询操作的引擎，可能你不知道它占用了jQuery源代码的22%。
</p>
<p>
	其次最大的特性是$.ajax，占用了jQuery源代码中的8%。
</p>
<h2>
	2. $.grep
</h2>
<p>
	这个方法类似underscore中的_.filter方法，使用两个参数，一个数组变量和一个回调函数，返回通过回调函数为true的元素。
</p>
<h2>
	3. 冒泡提醒
</h2>
<p>
	jQuery特意的阻止了一个事件类型的气泡。这就是load事件，jQuery传递了一个特别的noBubble:true来阻止事件冒泡到window对象（这可能导致错误的匹配了window.load事件）
</p>
<h2>
	4. 缺省的动画速度
</h2>
<p>
	jQuery通过快速的变化元素样式属性来实现动画。每一个变化被叫做一个\"滴答\"。缺省的动画速度是每13毫秒滴答一次，你可以通过重写jQuery.fx.interval来修改缺省的值
</p>
<h2>
	5. $.fn.addClass接受一个方法
</h2>
<p>
	我们通常提供$.fn.addClass一个class定义名称。但是它同样可以支持方法。你只需要方法返回一个空格分隔的字符串class定义即可。这个方法甚至接受元素的索引为参数，这样我们可以构建自己的只能class名。
</p>
<h2>
	6. $.fn.removeClass同样支持
</h2>
<p>
	这个方法也可以支持接受方法为参数，和$.fn.addClass一样。
</p>
<h2>
	7. :empty伪选择器
</h2>
<p>
	这个伪选择器可以匹配所有没有子元素的元素
</p>
<h2>
	8. :lt和:gt伪选择器
</h2>
<p>
	这些伪选择器基于索引来匹配。例如，$(\'div:gt(2)\')将会返回所有的div除了前３个元素（基于０索引）。如果你提供一个负值，那么就从末尾算起。
</p>
<h2>
	9. $(document.ready()使用了promise
</h2>
<p>
	jQuery内部使用了jQuery的deferred来保证DOM完整被加载
</p>
<h2>
	10. $.type
</h2>
<p>
	大家可能都熟悉typeof来判断数据类型，但是你是否知道jQuery提供了.type()方法？这个方法比浏览器本地版本更智能。
</p>
<p>
	例如，typeof(new Number(3))返回了“object”，然而$.type(new Number(3))放回数字。
</p>
<p>
	更确切的说$.type告诉你返回对象的值类型
</p>
<h2>
	11. $.fn.queue
</h2>
<p>
	你可以使用$(\'div\').queue()来检查一个元素的特效队列。这对于你想了解多少个特效还保持在对象元素很有好处。
</p>
<p>
	更有用的在于，你可以直接操作队列来添加自己的特效，如下：<br />
<br />
<img alt=\"\\\" src=\"http://www.php100.com/uploadfile/2014/0804/20140804100813484.jpg\" style=\"width:774px;height:397px;\" />
</p>
<div>
	<div>
		<div>
			<div>
				<div>
					&nbsp;
				</div>
			</div>
		</div>
	</div>
</div>
<h2>
	12. Click事件针对禁用元素将失效
</h2>
<p>
	jQuery针对禁用的元素自动中断点击事件，这样可以有效优化保证让你不用书写更多代码来检测这种情况
</p>
<h2>
	13. $.fn.on 接受多个对象
</h2>
<p>
	你是否知道$.fn.on方法接受对象来添加多个事件？下面是例子：<br />
<br />
<img alt=\"\\\" src=\"http://www.php100.com/uploadfile/2014/0804/20140804100859826.jpg\" style=\"width:792px;height:277px;\" />
</p>
<div>
	<div>
		<div>
			<div>
				<div>
					&nbsp;
				</div>
				<div>
					&nbsp;
				</div>
			</div>
		</div>
	</div>
</div>
<h2>
	14. $.camelCase
</h2>
<p>
	这个方法帮助你将破折号风格字符串转化为驼峰拼写方式，如下：
</p>
<p>
	background-color 转化为 backgroundColor
</p>
<h2>
	15. $.active
</h2>
<p>
	调用$.active返回活动的XHR查询数量。这个可以用来强制限制同时处理多少个ajax请求
</p>
<h2>
	16. $.fn.parentsUntil/$.fn.nextUntil/$.fn.prevUntil
</h2>
<p>
	我过去非常熟悉.parents()，.next()和.prev()方法，但是不知道其它版本。
</p>
<p>
	他们匹配所有父层/下一个元素/上一个元素直到遇到了停止条件元素
</p>
<h2>
	17. $.fn.clone参数
</h2>
<p>
	这个方法带的参数可以通过传递参数true来帮助你确认拷贝数据属性和事件
</p>
<h2>
	18. 更多$.fn.clone参数
</h2>
<p>
	除了上面参数，你也可以通过传递另外一个参数true来克隆子元素的数据属性和事件，这叫做深层次克隆。
</p>
<p>
	第二参数缺省使用第一个参数值。如果你第一个参数为true，那么第二个参数也为true的话，就可以省略
</p>
<p>
	&nbsp;
</p>','php100','http://www.php100.com','','php,js,jquery','40','N','N','','','0','0','N','1407140334','0','Y','0','Y','1407140334');
INSERT INTO `yiif_post` VALUES('31','1','安装eaccelerator加速PHP','','','','','17','0','一、安装eaccelerator-0.9.5

 1、首先下载并安装ZendOptimizer-3.3.9
       把ZendOptimizer.so COPY到一个目录，执行以下命令：
      chcon -t texrel_shlib_t /usr/lib/ZendOptimizer.so 
      execstack -c /usr/lib/ZendOptimizer.so 
      service httpd restart
      service mysqld restart
     基本上可以OK。

 2、再安装eaccelerator-0.9.6加速软件

 # wget ht...','','','','','<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">一、安装eaccelerator-0.9.5</span><br />
<br />
<span style=\"font-size:14px;\"> 1、首先下载并安装ZendOptimizer-3.3.9</span><br />
<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 把ZendOptimizer.so COPY到一个目录，执行以下命令：</span><br />
<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;chcon -t texrel_shlib_t /usr/lib/ZendOptimizer.so&nbsp;</span><br />
<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;execstack -c /usr/lib/ZendOptimizer.so&nbsp;</span><br />
<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;service httpd restart</span><br />
<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;service mysqld restart</span><br />
<span style=\"font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp; 基本上可以OK。</span><br />
<br />
<span style=\"font-size:14px;\"> 2、再安装eaccelerator-0.9.6加速软件</span><br />
<br />
<span style=\"font-size:14px;\"> # wget </span><a href=\"http://bart.eaccelerator.net/source/0.9.6/eaccelerator-0.9.6.tar.bz2\"><span style=\"font-size:14px;\">http://bart.eaccelerator.net/source/0.9.6/eaccelerator-0.9.6.tar.bz2</span></a>
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\"># tar jxvf eaccelerator-0.9.6.tar.bz2</span><br />
<span style=\"font-size:14px;\"> # cd eaccelerator-0.9.6</span><br />
<span style=\"font-size:14px;\"> #&nbsp; phpize </span><br />
<span style=\"font-size:14px;\"> # ./configure --enable-eaccelerator=shared --with-php-config=/usr/bin/php-config</span><br />
<span style=\"font-size:14px;\"> # make</span><br />
<span style=\"font-size:14px;\"> # make install</span><br />
<br />
<span style=\"font-size:14px;\"> 这时会将eaccelerator安装到php目录中，屏幕会显示eaccelerator.so所在路径，例如：</span><br />
<span style=\"font-size:14px;\"> Installing shared extensions:&nbsp; /usr/lib/php/modules　　记住这个路径。</span>
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">安装完成后需要修改/etc/ld.so.conf</span>
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">#vim /etc/lod.so.conf</span>
</p>
<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">再最后一行添加 include /usr/lib/php/modules/*.so 后保存退出</span><br />
<br />
<span style=\"font-size:14px;\"> eaccelerator即可以安装为PHP扩展，也可以安装为zend扩展，以下安装为PHP扩展。</span><br />
<br />
<span style=\"font-size:14px;\"> 在最后一行加入以下内容</span>
</p>
<div>
	<div id=\"highlighter_177088\" class=\"syntaxhighlighter php\">
<pre class=\"prettyprint lang-bsh\">[eaccelerator]
extension=\"eaccelerator.so\"
eaccelerator.shm_size=\"16\"
eaccelerator.cache_dir=\"tmp/eaccelerator\"
eaccelerator.enable=\"1\"
eaccelerator.Optimizer=\"1\"
eaccelerator.check_mttime=\"1\"
eaccelerator.debug=\"0\"
eaccelerator.filter=\"\"
eaccelerator.shm_max=\"0\"
eaccelerator.shm_ttl=\"0\"
eaccelerator.shm_prune_period=\"0\"
eaccelerator.shm_only=\"0\"
eaccelerator.compress=\"1\"
eaccelerator.compress_level=\"9\"</pre>
<br />
	</div>
</div>
<p style=\"text-indent:2em;\">
	<br />
<span style=\"font-size:14px;\"> 建立缓存目录：</span><br />
<span style=\"font-size:14px;\">&nbsp;　# mkdir -p /tmp/eaccelerator</span><br />
<span style=\"font-size:14px;\">&nbsp;　# chmod 777 /tmp/eaccelerator</span><br />
<br />
<span style=\"font-size:14px;\"> 重启Apache：</span><br />
<span style=\"font-size:14px;\"> # service httpd restart</span><br />
<br />
<br />
<span style=\"font-size:14px;\"> 3、检查ZendOptimizer和eaccelerator是否安装成功</span><br />
<br />
<span style=\"font-size:14px;\"> 创建一个phpinfo.php文件，内容如下：</span><br />
<span style=\"font-size:14px;\"> &lt;?php</span><br />
<span style=\"font-size:14px;\"> &nbsp; &nbsp;phpinfo();</span><br />
<span style=\"font-size:14px;\"> ?&gt;</span><br />
<br />
<span style=\"font-size:14px;\"> 将该文件放置到网站目录，在浏览器中访问，如果出现以下内容则安装成功：</span><br />
<span style=\"font-size:14px;\"> This program makes use of the Zend Scripting Language Engine:</span><br />
<span style=\"font-size:14px;\"> Zend Engine v2.2.0, Copyright (c) 1998-2007 Zend Technologies</span><br />
<span style=\"font-size:14px;\"> &nbsp; &nbsp;with eAccelerator v0.9.5, Copyright (c) 2004-2006 eAccelerator, by eAccelerator</span><br />
<span style=\"font-size:14px;\"> &nbsp; &nbsp;with Zend Extension Manager v1.0.11, Copyright (c) 2003-2006, by Zend Technologies</span><br />
<span style=\"font-size:14px;\"> &nbsp; &nbsp;with Zend Optimizer v3.2.2, Copyright (c) 1998-2006, by Zend Technologies </span><br />
<br />
<br />
<br />
<span style=\"font-size:14px;\"> 二、eaccelerator配置信息详解(根据官方英文说明翻译)</span><br />
<br />
<span style=\"font-size:14px;\"> extension=\"/data/webserver/php/lib/php/extensions/no-debug-zts-20060613/eaccelerator.so\"</span><br />
<br />
<span style=\"font-size:14px;\"> 解释：PHP扩展eaccelerator.so的路径。</span><br />
<br />
<span style=\"font-size:14px;\"> --------------------</span><br />
<br />
<span style=\"font-size:14px;\"> eaccelerator.shm_size=\"32\"</span><br />
<br />
<span style=\"font-size:14px;\"> 解释：eaccelerator可使用的共享内存大小(单位为MB)。</span><br />
<br />
<span style=\"font-size:14px;\"> 在Linux下，单个进程的最大内存使用量受/proc/sys/kernel/shmmax中设置的数字限制(单位为字节)，例如CentOS 4.4的shmmax默认值为33554432字节(33554432bytes/1024/1024=32MB)。</span><br />
<br />
<span style=\"font-size:14px;\"> 临时更改该值：</span><br />
<span style=\"font-size:14px;\"> # echo 字节数 &gt; /proc/sys/kernel/shmmax</span><br />
<br />
<span style=\"font-size:14px;\"> 按照以上方法更改，在每次重启系统时，该值会被自动还原。如果想永久更改，可以修改/etc/sysctl.conf文件，设置：</span><br />
<span style=\"font-size:14px;\"> kernel.shmmax = 字节数</span><br />
<br />
<span style=\"font-size:14px;\"> --------------------</span><br />
<br />
<span style=\"font-size:14px;\"> eaccelerator.cache_dir=\"/data/cache/eaccelerator\"</span><br />
<br />
<span style=\"font-size:14px;\"> 解释：缓存路径，可以使用命令mkdir -p /data/cache/eaccelerator创建该目录，然后使用命令chmod 0777 /data/cache/eaccelerator设置该目录权限为0777</span><br />
<br />
<span style=\"font-size:14px;\"> --------------------</span><br />
<br />
<span style=\"font-size:14px;\"> eaccelerator.enable=\"1\"</span><br />
<br />
<span style=\"font-size:14px;\"> 解释：打开或者关闭eaccelerator。\"1\"指打开，\"0\"指关闭。默认值为\"1\"。</span><br />
<br />
<span style=\"font-size:14px;\"> --------------------</span><br />
<br />
<span style=\"font-size:14px;\"> eaccelerator.optimizer=\"1\"</span><br />
<br />
<span style=\"font-size:14px;\"> 解释：打开或者关闭代码优化，开启可以加快代码的执行速度。\"1\"指打开，\"0\"指关闭。默认值为\"1\"。</span><br />
<br />
<span style=\"font-size:14px;\"> --------------------</span><br />
<br />
<span style=\"font-size:14px;\"> eaccelerator.check_mtime=\"1\"</span><br />
<br />
<span style=\"font-size:14px;\"> 解释：当打开此项时，eaccelerator会在每次请求时检查php文件的修改时间，看其是否被修改过，这会耗费一点时间，如果php文件被修改
过，eaccelerator会重新编译缓存该php文件。当关闭此项时，如果php文件被修改，则需要手工删除eaccelerator缓存，才能显示
被修改的php文件。\"1\"指打开，\"0\"指关闭。默认值为\"1\"。</span><br />
<br />
<span style=\"font-size:14px;\"> --------------------</span><br />
<br />
<span style=\"font-size:14px;\"> eaccelerator.debug=\"0\"</span><br />
<br />
<span style=\"font-size:14px;\"> 解释：打开或者关闭调试记录。当打开时，eaccelerator会将对一个缓存文件的每次请求都写进log。打开此项只对调试eaccelerator是否有BUG时有益处。\"1\"指打开，\"0\"指关闭。默认值为\"0\"。</span><br />
<br />
<span style=\"font-size:14px;\"> --------------------</span><br />
<br />
<span style=\"font-size:14px;\"> eaccelerator.filter=\"\"</span><br />
<br />
<span style=\"font-size:14px;\"> 解释：决定哪些PHP文件应该被缓存。可以指定一个范围(比如\"*.php *.phtml\")，这样被指定的文件就会被缓存。如果该范围以!开头，被指定的文件就不会被缓存。默认值为\"\"，表示缓存所有的PHP文件。 </span><br />
<br />
<span style=\"font-size:14px;\"> --------------------</span><br />
<br />
<span style=\"font-size:14px;\"> eaccelerator.shm_max=\"0\"</span><br />
<br />
<span style=\"font-size:14px;\"> 解释：一个用户使用例如eaccelerator_put之类的函数能够往共享内存中加载的最大数据。默认值为\"0\"，表示不限制。(单位为字节)</span><br />
<br />
<span style=\"font-size:14px;\"> --------------------</span><br />
<br />
<span style=\"font-size:14px;\"> eaccelerator.shm_ttl=\"0\"</span><br />
<br />
<span style=\"font-size:14px;\"> 解释：当没有足够的空闲共享内存去尝试缓冲一个新脚本时，将删除至少在shm_ttl秒之前没有被访问过的文件。默认值为\"0\"，表示不尝试从共享内存中删除任何旧的脚本。(单位为秒)</span><br />
<br />
<span style=\"font-size:14px;\"> --------------------</span><br />
<br />
<span style=\"font-size:14px;\"> eaccelerator.shm_prune_period=\"0\"</span><br />
<br />
<span style=\"font-size:14px;\"> 解释：当没有足够的空闲共享内存去尝试缓冲一个新脚本时，将删所有旧脚本，前提是这个尝试在超过shm_prune_period秒之前被执行过。默认值为\"0\"，表示不尝试从共享内存中删除任何旧的脚本。(单位为秒)</span><br />
<br />
<span style=\"font-size:14px;\"> --------------------</span><br />
<br />
<span style=\"font-size:14px;\"> eaccelerator.shm_only=\"0\"</span><br />
<br />
<span style=\"font-size:14px;\"> 解释：打开或者关闭在磁盘上缓存编译过的脚本。这个参数对会话数据和内容缓存没有效果。默认值为\"0\"，表示使用磁盘和共享内存来缓存。</span><br />
<br />
<span style=\"font-size:14px;\"> --------------------</span><br />
<br />
<span style=\"font-size:14px;\"> eaccelerator.compress=\"1\"</span><br />
<br />
<span style=\"font-size:14px;\"> 解释：打开或者关闭缓存内容压缩。\"1\"指打开，\"0\"指关闭。默认值为\"1\"。</span><br />
<br />
<span style=\"font-size:14px;\"> --------------------</span><br />
<br />
<span style=\"font-size:14px;\"> eaccelerator.compress_level=\"9\"</span><br />
<br />
<span style=\"font-size:14px;\"> 解释：内存压缩的级别。默认值为\"9\"，表示最大压缩。</span>
</p>','','','','php,mysql,web,html,sql,apache','55','N','N','','','0','0','N','1407223078','0','Y','0','Y','1407223078');
INSERT INTO `yiif_post` VALUES('32','1','Nginx的gzip配置参数说明','','','','','3','0','gzip
决定是否开启gzip模块
param:on|off
example:gzip on;
	
	
		gzip_buffers 
设置gzip申请内存的大小,其作用是按块大小的倍数申请内存空间
param1:int
param2:int(k) 后面单位是k
example: gzip_buffers 4 8k;
	
	
		gzip_comp_level
设置gzip压缩等级，等级越底压缩速度越快文件压缩比越小，反之速度越慢文件压缩比越大
param:1-9
example:gzip_com_level 1;
	
	
		gzip_min_length
当返回内容大于此值...','','','','','<div id=\"cnblogs_post_body\">
	<p>
		<strong><span style=\"font-size:14px;line-height:2;\">gzip</span></strong><br />
<span style=\"font-size:14px;line-height:2;\">决定是否开启gzip模块</span><br />
<span style=\"font-size:14px;line-height:2;\">param:on|off</span><br />
<span style=\"font-size:14px;line-height:2;\">example:gzip on;</span>
	</p>
	<p>
		<strong><span style=\"font-size:14px;line-height:2;\">gzip_buffers&nbsp;</span></strong><br />
<span style=\"font-size:14px;line-height:2;\">设置gzip申请内存的大小,其作用是按块大小的倍数申请内存空间</span><br />
<span style=\"font-size:14px;line-height:2;\">param1:int</span><br />
<span style=\"font-size:14px;line-height:2;\">param2:int(k) 后面单位是k</span><br />
<span style=\"font-size:14px;line-height:2;\">example: gzip_buffers 4 8k;</span>
	</p>
	<p>
		<strong><span style=\"font-size:14px;line-height:2;\">gzip_comp_level</span></strong><br />
<span style=\"font-size:14px;line-height:2;\">设置gzip压缩等级，等级越底压缩速度越快文件压缩比越小，反之速度越慢文件压缩比越大</span><br />
<span style=\"font-size:14px;line-height:2;\">param:1-9</span><br />
<span style=\"font-size:14px;line-height:2;\">example:gzip_com_level 1;</span>
	</p>
	<p>
		<strong><span style=\"font-size:14px;line-height:2;\">gzip_min_length</span></strong><br />
<span style=\"font-size:14px;line-height:2;\">当返回内容大于此值时才会使用gzip进行压缩,以K为单位,当值为0时，所有页面都进行压缩</span><br />
<span style=\"font-size:14px;line-height:2;\">param:int</span><br />
<span style=\"font-size:14px;line-height:2;\">example:gzip_min_length 1000;</span>
	</p>
	<p>
		<strong><span style=\"font-size:14px;line-height:2;\">gzip_http_version</span></strong><br />
<span style=\"font-size:14px;line-height:2;\">用于识别http协议的版本，早期的浏览器不支持gzip压缩，用户会看到乱码，所以为了支持前期版本加了此选项,目前此项基本可以忽略</span><br />
<span style=\"font-size:14px;line-height:2;\">param: 1.0|1.1</span><br />
<span style=\"font-size:14px;line-height:2;\">example:gzip_http_version 1.0</span>
	</p>
	<p>
		<strong><span style=\"font-size:14px;line-height:2;\">gzip_proxied</span></strong><br />
<span style=\"font-size:14px;line-height:2;\">Nginx做为反向代理的时候启用，</span><br />
<span style=\"font-size:14px;line-height:2;\">param:off|expired|no-cache|no-sotre|private|no_last_modified|no_etag|auth|any]</span><br />
<span style=\"font-size:14px;line-height:2;\">expample:gzip_proxied no-cache;</span><br />
<span style=\"font-size:14px;line-height:2;\">off – 关闭所有的代理结果数据压缩</span><br />
<span style=\"font-size:14px;line-height:2;\">expired – 启用压缩，如果header中包含”Expires”头信息</span><br />
<span style=\"font-size:14px;line-height:2;\">no-cache – 启用压缩，如果header中包含”Cache-Control:no-cache”头信息</span><br />
<span style=\"font-size:14px;line-height:2;\">no-store – 启用压缩，如果header中包含”Cache-Control:no-store”头信息</span><br />
<span style=\"font-size:14px;line-height:2;\">private – 启用压缩，如果header中包含”Cache-Control:private”头信息</span><br />
<span style=\"font-size:14px;line-height:2;\">no_last_modified – 启用压缩，如果header中包含”Last_Modified”头信息</span><br />
<span style=\"font-size:14px;line-height:2;\">no_etag – 启用压缩，如果header中包含“ETag”头信息</span><br />
<span style=\"font-size:14px;line-height:2;\">auth – 启用压缩，如果header中包含“Authorization”头信息</span><br />
<span style=\"font-size:14px;line-height:2;\">any – 无条件压缩所有结果数据</span>
	</p>
	<p>
		<strong><span style=\"font-size:14px;line-height:2;\">gzip_types</span></strong><br />
<span style=\"font-size:14px;line-height:2;\">设置需要压缩的MIME类型,非设置值不进行压缩</span><br />
<span style=\"font-size:14px;line-height:2;\">param:text/html|application/x-javascript|text/css|application/xml</span><br />
<span style=\"font-size:14px;line-height:2;\">example:gzip_types text/html;</span>
	</p>
	<p>
		<strong><span style=\"font-size:14px;line-height:2;\">Demo</span></strong><br />
<span style=\"font-size:14px;line-height:2;\">gzip on;</span><br />
<span style=\"font-size:14px;line-height:2;\">gzip_min_length 1000;</span><br />
<span style=\"font-size:14px;line-height:2;\">gzip_buffers 4 8k;</span><br />
<span style=\"font-size:14px;line-height:2;\">gzip_types text/html application/x-javascript text/css application/xml;</span>
	</p>
</div>
<p style=\"text-indent:2em;\">
	<br />
</p>','','','','html,nginx','41','N','N','','','0','0','N','1407313916','0','Y','0','Y','1407313916');
INSERT INTO `yiif_post` VALUES('34','1','mysql的数据类型int、bigint、smallint 和 tinyint取值范围','','','','','18','0','使用整数数据的精确数字数据类型。      bigint      从 -2^63 (-9223372036854775808) 到 2^63-1 (9223372036854775807) 的整型数据（所有数字）。存储大小为 8 个字节。      int      从 -2^31 (-2,147,483,648) 到 2^31 - 1 (2,147,483,647) 的整型数据（所有数字）。存储大小为 4 个字节。int 的 SQL-92 同义字为 integer。      smallint      从 -2^15 (-32,768) 到 2^15 - 1 (32,767) 的整型数据。存储大小为 2 个字...','','','','','<div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		使用整数数据的精确数字数据类型。
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<br />
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<strong>bigint</strong>
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<br />
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		从 -2^63 (-9223372036854775808) 到 2^63-1 (9223372036854775807) 的整型数据（所有数字）。存储大小为<span>&nbsp;</span><span style=\"color:red;\">8</span><span>&nbsp;</span>个字节。
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<br />
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<strong>int</strong>
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<br />
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		从 -2^31 (-2,147,483,648) 到 2^31 - 1 (2,147,483,647) 的整型数据（所有数字）。存储大小为<span>&nbsp;</span><span style=\"color:red;\">4</span><span>&nbsp;</span>个字节。int 的 SQL-92 同义字为 integer。
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<br />
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<strong>smallint</strong>
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<br />
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		从 -2^15 (-32,768) 到 2^15 - 1 (32,767) 的整型数据。存储大小为<span>&nbsp;</span><span style=\"color:red;\">2</span><span>&nbsp;</span>个字节。
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<br />
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<strong>tinyint</strong>
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<br />
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		从 0 到 255 的整型数据。存储大小为<span>&nbsp;</span><span style=\"color:red;\">1</span><span>&nbsp;</span>字节。
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<br />
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		注释
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<br />
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		在支持整数值的地方支持 bigint 数据类型。但是，bigint 用于某些特殊的情况，当整数值超过 int 数据类型支持的范围时，就可以采用 bigint。在 SQL Server 中，int 数据类型是主要的整数数据类型。
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<br />
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		在数据类型优先次序表中，bigint 位于 smallmoney 和 int 之间。
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		<br />
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		只有当参数表达式是 bigint 数据类型时，函数才返回 bigint。SQL Server 不会自动将其它整数数据类型（tinyint、smallint 和 int）提升为 bigint。
	</div>
</div>','','','','mysql,web,sql','39','N','N','','','0','0','N','1407480402','0','Y','0','Y','1407480402');
INSERT INTO `yiif_post` VALUES('35','1','Mysql基本用法','','','','','18','0','#登录数据库   mysql -hlocalhost -uroot -p;   #修改密码   mysqladmin -uroot -pold password new;           #显示数据库   show databases;   #显示数据表   show tables;   #选择数据库   use examples;   #创建数据库并设置编码utf-8 多语言   create database `examples` default character set utf8 collate utf8_general_ci;   #删除数据库   drop database examples;   #创建表   create table test(   ...','','','','','<div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#登录数据库
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		mysql -hlocalhost -uroot -p;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#修改密码
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		mysqladmin -uroot -pold<span>&nbsp;</span>password<span>&nbsp;</span>new;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#显示数据库
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		show databases;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#显示数据表
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		show tables;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#选择数据库
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		use examples;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#创建数据库并设置编码utf-8 多语言
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		create<span>&nbsp;</span>database<span>&nbsp;</span>`examples`<span>&nbsp;</span>default<span>&nbsp;</span>character<span>&nbsp;</span>set<span>&nbsp;</span>utf8<span>&nbsp;</span>collate<span>&nbsp;</span>utf8_general_ci;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#删除数据库
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		drop<span>&nbsp;</span>database<span>&nbsp;</span>examples;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#创建表
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		create<span>&nbsp;</span>table<span>&nbsp;</span>test(
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;&nbsp;&nbsp;&nbsp;id<span>&nbsp;</span>int(10) unsigned zerofill<span>&nbsp;</span>not<span>&nbsp;</span>null<span>&nbsp;</span>auto_increment,
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;&nbsp;&nbsp;&nbsp;email<span>&nbsp;</span>varchar(40)<span>&nbsp;</span>not<span>&nbsp;</span>null,
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;&nbsp;&nbsp;&nbsp;ip<span>&nbsp;</span>varchar(15)<span>&nbsp;</span>not<span>&nbsp;</span>null,
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;&nbsp;&nbsp;&nbsp;state<span>&nbsp;</span>int(10)<span>&nbsp;</span>not<span>&nbsp;</span>null<span>&nbsp;</span>default<span>&nbsp;</span>\'-1\',
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;&nbsp;&nbsp;&nbsp;primary<span>&nbsp;</span>key<span>&nbsp;</span>(id)
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		)engine=InnoDB;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#显示表结构
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		describe
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#删除表
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		drop<span>&nbsp;</span>table<span>&nbsp;</span>test；
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#重命名表
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		alter<span>&nbsp;</span>table<span>&nbsp;</span>test_old rename test_new;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#添加列
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		alter<span>&nbsp;</span>table<span>&nbsp;</span>test<span>&nbsp;</span>add<span>&nbsp;</span>cn<span>&nbsp;</span>int(4)<span>&nbsp;</span>not<span>&nbsp;</span>null;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#修改列
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		alter<span>&nbsp;</span>table<span>&nbsp;</span>test change id id1<span>&nbsp;</span>varchar(10)<span>&nbsp;</span>not<span>&nbsp;</span>null;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#删除列
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		alter<span>&nbsp;</span>table<span>&nbsp;</span>test<span>&nbsp;</span>drop<span>&nbsp;</span>cn;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#创建索引
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		alter<span>&nbsp;</span>table<span>&nbsp;</span>test<span>&nbsp;</span>add<span>&nbsp;</span>index<span>&nbsp;</span>(cn,id);
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#删除索引
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		alter<span>&nbsp;</span>table<span>&nbsp;</span>test<span>&nbsp;</span>drop<span>&nbsp;</span>index<span>&nbsp;</span>cn
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#插入数据
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		insert<span>&nbsp;</span>into<span>&nbsp;</span>test (id,email,ip,state)<span>&nbsp;</span>values(2,\'qq@qq.com\',\'127.0.0.1\',\'0\');
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#删除数据
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		delete<span>&nbsp;</span>from<span>&nbsp;</span>test<span>&nbsp;</span>where<span>&nbsp;</span>id = 1;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#修改数据
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		update<span>&nbsp;</span>test<span>&nbsp;</span>set<span>&nbsp;</span>id=\'1\',email=\'q@qq.com\'<span>&nbsp;</span>where<span>&nbsp;</span>id=1;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#查数据
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>*<span>&nbsp;</span>from<span>&nbsp;</span>test;&nbsp; #取所有数据
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>*<span>&nbsp;</span>from<span>&nbsp;</span>test limit 0,2;&nbsp; #取前两条数据
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>*<span>&nbsp;</span>from<span>&nbsp;</span>test email<span>&nbsp;</span>like<span>&nbsp;</span>\'%qq%\'<span>&nbsp;</span>#查含有qq字符 _表示一个 %表示多个
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>*<span>&nbsp;</span>from<span>&nbsp;</span>test<span>&nbsp;</span>order<span>&nbsp;</span>by<span>&nbsp;</span>id<span>&nbsp;</span>asc;#降序desc
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>*<span>&nbsp;</span>from<span>&nbsp;</span>test id<span>&nbsp;</span>not<span>&nbsp;</span>in(\'2\',\'3\');#id不含2,3或者去掉not表示含有
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>*<span>&nbsp;</span>from<span>&nbsp;</span>test timer<span>&nbsp;</span>between<span>&nbsp;</span>1<span>&nbsp;</span>and<span>&nbsp;</span>10;#数据在1,10之间
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#---------------------------表连接知识------------------------------
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#等值连接又叫内链接<span>&nbsp;</span>inner<span>&nbsp;</span>join<span>&nbsp;</span>只返回两个表中连接字段相等的行
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>*<span>&nbsp;</span>from<span>&nbsp;</span>A<span>&nbsp;</span>inner<span>&nbsp;</span>join<span>&nbsp;</span>B<span>&nbsp;</span>on<span>&nbsp;</span>A.id = B.id; #写法1
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>*<span>&nbsp;</span>from<span>&nbsp;</span>A,B<span>&nbsp;</span>where<span>&nbsp;</span>A.id = B.id; #写法2
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>a.id,a.title<span>&nbsp;</span>from<span>&nbsp;</span>A a<span>&nbsp;</span>inner<span>&nbsp;</span>join<span>&nbsp;</span>B b<span>&nbsp;</span>on<span>&nbsp;</span>a.id=b.id<span>&nbsp;</span>and<span>&nbsp;</span>a.id=1;#写法3 表的临时名称
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>a.id<span>&nbsp;</span>as<span>&nbsp;</span>ID,a.title<span>&nbsp;</span>as<span>&nbsp;</span>标题<span>&nbsp;</span>from<span>&nbsp;</span>A<span>&nbsp;</span>inner<span>&nbsp;</span>join<span>&nbsp;</span>B<span>&nbsp;</span>on<span>&nbsp;</span>A.id=B.id;#添加as字句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#左连接又叫外连接<span>&nbsp;</span>left<span>&nbsp;</span>join<span>&nbsp;</span>返回左表中所有记录和右表中连接字段相等的记录
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>*<span>&nbsp;</span>from<span>&nbsp;</span>A<span>&nbsp;</span>left<span>&nbsp;</span>join<span>&nbsp;</span>B<span>&nbsp;</span>on<span>&nbsp;</span>A.id = B.id;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>*<span>&nbsp;</span>from<span>&nbsp;</span>A<span>&nbsp;</span>left<span>&nbsp;</span>join<span>&nbsp;</span>(B,C,D)<span>&nbsp;</span>on<span>&nbsp;</span>(B.i1=A.i1<span>&nbsp;</span>and<span>&nbsp;</span>C.i2=A.i2<span>&nbsp;</span>and<span>&nbsp;</span>D.i3 = A.i3);#复杂连接
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#右连接又叫外连接<span>&nbsp;</span>right<span>&nbsp;</span>join<span>&nbsp;</span>返回右表中所有记录和左表中连接字段相等的记录
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>*<span>&nbsp;</span>from<span>&nbsp;</span>A<span>&nbsp;</span>right<span>&nbsp;</span>join<span>&nbsp;</span>B<span>&nbsp;</span>on<span>&nbsp;</span>A.id = B.id;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#完整外部链接<span>&nbsp;</span>full<span>&nbsp;</span>join<span>&nbsp;</span>返回左右表中所有数据
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>*<span>&nbsp;</span>from<span>&nbsp;</span>A<span>&nbsp;</span>full<span>&nbsp;</span>join<span>&nbsp;</span>B<span>&nbsp;</span>on<span>&nbsp;</span>A.id = B.id;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#交叉连接 没有where字句 返回卡迪尔积
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>*<span>&nbsp;</span>from<span>&nbsp;</span>A<span>&nbsp;</span>cross<span>&nbsp;</span>join<span>&nbsp;</span>B;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		-------------------------表连接结束------------------------------------------------------------
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		-----------------索引创建------------------------------------------------
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		show<span>&nbsp;</span>index<span>&nbsp;</span>from<span>&nbsp;</span>A #查看索引
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		alter<span>&nbsp;</span>table<span>&nbsp;</span>A<span>&nbsp;</span>add<span>&nbsp;</span>primary<span>&nbsp;</span>key(id) #主键索引
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		alter<span>&nbsp;</span>table<span>&nbsp;</span>A<span>&nbsp;</span>add<span>&nbsp;</span>unique(name) #唯一索引
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		alter<span>&nbsp;</span>table<span>&nbsp;</span>A<span>&nbsp;</span>add<span>&nbsp;</span>index<span>&nbsp;</span>name(name) #普通索引
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		alter<span>&nbsp;</span>table<span>&nbsp;</span>A<span>&nbsp;</span>add<span>&nbsp;</span>fulltext(name) #全文索引
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		alter<span>&nbsp;</span>table<span>&nbsp;</span>A<span>&nbsp;</span>add<span>&nbsp;</span>index<span>&nbsp;</span>name(id,name) #多列索引
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#常用函数
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		abs(-1)#绝对值
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		pi()#pi值
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		sqrt(2)#平方根
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		mod(-5,3)#取余-2
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		ceil(10.6)#进位+1 结果11 ceil(10.0)结果10
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		floor(10.6)#取整 10
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		round(2.5)#四舍五入到整数 结果3
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		round(2.5,2)#保留两位小数 结果2.50
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		truncate(2.5234,3)#取小数后3位不四舍五入 2.523
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		sign(-2);#符号函数 返回-1 0还是0 正数返回1
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		pow(2,3),exp(2);#2的3次幂 或e的2次幂
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		log(2),log10(2);#求对数
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		radians(180),degrees(0.618);#角度弧度转换
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		sin(0.5),asin(0.5)#正弦和反正弦 类似cos acos tan atan
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		length(\'hi\')#计算字符长度
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		concat(\'1\',1,\'hi\')#合并字符串
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		insert(\'12345\',1,0,\'7890\');#从开头第1个字符开始到0个结束，替换成后边字符串，0表示在最前边插入
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		ucase(\'a\'),lcase(\'A\')#转成大写和小写
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		left(\'abcd\',2),right(\'abcd\',2);#返回前两个字符和后两个字符
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		ltrim(\'&nbsp; 0&nbsp; \'),rtrim(\' 0 \'),trim(\'&nbsp; 0&nbsp; \')#删除空格
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		replace(\'1234567890\',\'345678\',\'0\');#替换输出12090
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		substring(\'12345\',1,2)#取字符 输出12 1是位置 2是长度
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		instr(\'1234\',\'234\');#取得234位置是2
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		reverse(\'1234\');#反序输出4321
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		current()#返回日期
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		curtime()#返回时间
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		now()#返回日期时间
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		month(now())#当前月份 monthname 英文月份
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		dayname(now())#星期英文 dayofweek()1是星期天 weekday()1是星期二
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		week(now())#本年第多少周
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		dayofyear(now()),dayofmonth(now())#今天是本年第多少天 今天是本月第多少天
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		year(now()),month(now()),day(now()),hour(now()),minute(now()),second(now())#返回年月日 时分秒
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		time_to_sec(now()),sec_to_time(3600*8);#转换时间为秒和还原
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		version()#mysql版本
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		database()#当前连接的数据库 没有为null
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		user()#获取用户名
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		md5(\'a\')#加密字符串
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		ascii(\'a\')#ascii值97
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		bin(100),hex(100),oct(100)#返回二进制 十六进制 八进制
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		conv(10001,2,8);#各种进制相互转换
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		rand()#生成0到1之间随机数
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		sleep(0.02)#暂停秒数
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		数据库优化
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		.开启缓存，尽量使用php函数而不是mysql
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		. explain<span>&nbsp;</span>select<span>&nbsp;</span>语句可以知道性能
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		.一行数据使用 limit 1；
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		.为搜索字段重建索引 比如关键字 标签
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		.表连接join保证字段类型相同并且有其索引
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		.随机查询使用php $r = mysql_query(\"SELECT count(*) FROM user\");
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$d = mysql_fetch_row($r);
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$rand = mt_rand(0,$d[0] - 1);
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$r = mysql_query(\"SELECT username FROM user LIMIT $rand, 1\");
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		.避免使用select<span>&nbsp;</span>* 应该使用具体字段
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		.每张表都是用id主键，并且是unsigned<span>&nbsp;</span>int
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		.对于取值有限而固定使用enum类型，如性别 国家 名族 部门 状态
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		.尽可能使用not<span>&nbsp;</span>null<span>&nbsp;</span>ip存储使用int(4),使用ip 转化函数ip2long()相互long2ip()
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		.delete和insert语句会锁表，所以可以采用分拆语句操作
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;&nbsp;&nbsp;&nbsp;while(1){操作语句;usleep(2000);}
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		.选择正确的存储引擎；MyISAM适合大量查询 写操作多用InnoDB支持事务
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#存储过程
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#存储程序
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		delimiter #定义存储程序
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		create<span>&nbsp;</span>procedure<span>&nbsp;</span>getversion(out<span>&nbsp;</span>params<span>&nbsp;</span>varchar(20)) #params是传出参数<span>&nbsp;</span>in传进<span>&nbsp;</span>out传出 inout传回
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		begin
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>version()<span>&nbsp;</span>into<span>&nbsp;</span>params; #版本信息赋值params
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		end
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		call getversion(@a); #调用存储过程
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>@a;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		delimiter #定义存储函数
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		create<span>&nbsp;</span>function<span>&nbsp;</span>display(w<span>&nbsp;</span>varchar(20))<span>&nbsp;</span>returns<span>&nbsp;</span>varchar(20)
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		begin
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		return<span>&nbsp;</span>concat(\'hello\',w);
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		end
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select<span>&nbsp;</span>display(\'world\');
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		drop<span>&nbsp;</span>procedure<span>&nbsp;</span>if exists spName; #删除一个存储过程
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		alter<span>&nbsp;</span>function<span>&nbsp;</span>spName [];#修改一个存储过程
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		show<span>&nbsp;</span>create<span>&nbsp;</span>procedure<span>&nbsp;</span>spName;#显示存储过程信息
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		declare<span>&nbsp;</span>varName type<span>&nbsp;</span>default<span>&nbsp;</span>value;#声明局部变量
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#if语句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		if 条件<span>&nbsp;</span>then<span>&nbsp;</span>语句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		elseif 条件<span>&nbsp;</span>then<span>&nbsp;</span>语句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		else<span>&nbsp;</span>语句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		end<span>&nbsp;</span>if
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#case语句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		case<span>&nbsp;</span>条件
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		when<span>&nbsp;</span>条件<span>&nbsp;</span>then<span>&nbsp;</span>语句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		when<span>&nbsp;</span>条件<span>&nbsp;</span>then<span>&nbsp;</span>语句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		else<span>&nbsp;</span>语句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		end<span>&nbsp;</span>case
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#loop语句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		fn:loop
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		语句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		end<span>&nbsp;</span>loop fn;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		leave fn #退出循环
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#while语句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		fn：while 条件 do
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		语句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		end<span>&nbsp;</span>while fn
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#mysql使用帮助资料
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		? contents; #列出帮助类型
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		? data types;#列出数据类型
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		？<span>&nbsp;</span>int;#列出具体类型
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		? show;#show语句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		?<span>&nbsp;</span>create<span>&nbsp;</span>table;#
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#常见表的比较
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;Myisam&nbsp;&nbsp; BDB&nbsp;&nbsp;&nbsp; Memory&nbsp;&nbsp;&nbsp; InnoDB&nbsp;&nbsp;&nbsp; Archive
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		存储限制&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;</span>no&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;</span>no&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;</span>yes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 64T&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;</span>no
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		事物安全&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 支持&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 支持&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		锁机制&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 表锁&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 页锁&nbsp;&nbsp;&nbsp; 表锁&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 行锁&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 行锁
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		全文索引&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 支持
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		外键支持&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 支持
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		myisam&nbsp; frm存储表定义 MYD存储数据 MYI存储索引
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		InnoDB 用于事务处理
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		char<span>&nbsp;</span>和<span>&nbsp;</span>varchar保存和索引都不相同
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		浮点数float(10,2) 定点数decimal(10,2)
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		长度一定下，浮点数表示更大数据范围，缺点是引起精度丢失，货币等使用定点数存储
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		索引适合于where字句或者连接字句列
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		对于唯一值使用唯一索引
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		&nbsp;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		添加新用户<span>&nbsp;</span>grant<span>&nbsp;</span>select,insert,update,delete<span>&nbsp;</span>on<span>&nbsp;</span>*.*<span>&nbsp;</span>to<span>&nbsp;</span>Yoby@localhost identified<span>&nbsp;</span>by<span>&nbsp;</span>\'mysql\';
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *.* 数据库名.表名，限制登录某一个数据库 test.*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; localhost是本地主机 网络可以使用<span>&nbsp;</span>\'%\'代替所有主机&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;</span>\'mysql\'是密码 Yoby是用户名&nbsp; 所有权限可以用<span>&nbsp;</span>all代替
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		查看用户权限 show grants<span>&nbsp;</span>for<span>&nbsp;</span>\'root\'@\'localhost\';
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		移除权限&nbsp;<span>&nbsp;</span>revoke<span>&nbsp;</span>all<span>&nbsp;</span>on<span>&nbsp;</span>*.*<span>&nbsp;</span>from<span>&nbsp;</span>root@localhost;
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		group<span>&nbsp;</span>by<span>&nbsp;</span>id 分组
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		having<span>&nbsp;</span>限制字句
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select1<span>&nbsp;</span>union<span>&nbsp;</span>select2 联合查询有重复去掉保留一行
	</div>
	<div style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;font-size:medium;\">
		select2<span>&nbsp;</span>union<span>&nbsp;</span>all<span>&nbsp;</span>select2 所有行合并到结果集中去
	</div>
</div>','','','','php,mysql,web,sql','37','N','N','','','0','0','N','1407480442','0','Y','0','Y','1407480442');
INSERT INTO `yiif_post` VALUES('36','1','MySQL主从复制与读写分离','','','','','18','0','MySQL主从复制(Master-Slave)与读写分离(MySQL-Proxy)实践   Mysql作为目前世界上使用最广泛的免费数据库，相信所有从事系统运维的工程师都一定接触过。但在实际的生产环境中，由单台Mysql作为独立的数据库是完全不能满足实际需求的，无论是在安全性，高可用性以及高并发等各个方面。   因此，一般来说都是通过 主从复制（Master-Slave）的方式来同步数据，再通过读写分离（MySQL-Proxy）来提升数据库的并发负载能力 这样的方案来...','','','','','<p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		MySQL主从复制(Master-Slave)与读写分离(MySQL-Proxy)实践	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		Mysql作为目前世界上使用最广泛的免费数据库，相信所有从事系统运维的工程师都一定接触过。但在实际的生产环境中，由单台Mysql作为独立的数据库是完全不能满足实际需求的，无论是在安全性，高可用性以及高并发等各个方面。	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		因此，一般来说都是通过 主从复制（Master-Slave）的方式来同步数据，再通过读写分离（MySQL-Proxy）来提升数据库的并发负载能力 这样的方案来进行部署与实施的。	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		如下图所示：<br/><img src=\"/uploads/attached/image/201408/74d131944d5.jpg\" alt=\"\"/></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		下面是我在实际工作过程中所整理的笔记，在此分享出来，以供大家参考。	</p><p><strong>一、MySQL的安装与配置</strong><br/>具体的安装过程，建议参考我的这一篇文章：<a href=\"http://heylinux.com/archives/993.html\" target=\"_blank\"><span style=\"color:#2D83D5;\">http://heylinux.com/archives/993.html</span></a><br/>值得一提的是，我的安装过程都是源码包编译安装的，并且所有的配置与数据等都统一规划到了/opt/mysql目录中，因此在一台服务器上安装完成以后，可以将整个mysql目录打包，然后传到其它服务器上解包，便可立即使用。	</p><p>
		&nbsp;&nbsp;主库my.ini</p><p>
		&nbsp; <img src=\"/uploads/attached/image/201408/3f872683b37.png\" alt=\"\"/><br/></p><p><br/></p><p><strong>二、MySQL主从复制</strong><br/>&nbsp;&nbsp;&nbsp;&nbsp; 场景描述：<br/>&nbsp;&nbsp;&nbsp;&nbsp; 主数据库服务器：192.168.10.130，MySQL已经安装，并且无应用数据。<br/></p><p>
			从数据库服务器：192.168.10.131，MySQL已经安装，并且无应用数据。		</p><p><br/></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><strong>2.1 主服务器上进行的操作</strong><br/>&nbsp;&nbsp;&nbsp;&nbsp; 启动mysql服务<br/>&nbsp;&nbsp;&nbsp;&nbsp;/opt/mysql/init.d/mysql start	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		&nbsp;&nbsp;&nbsp;&nbsp;通过命令行登录管理MySQL服务器<br/>&nbsp;&nbsp;&nbsp;&nbsp;/opt/mysql/bin/mysql -uroot -p&#39;new-password&#39;	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		&nbsp;&nbsp;&nbsp;&nbsp;授权给从数据库服务器192.168.10.131	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		&nbsp;&nbsp;	</p><pre class=\"prettyprint lang-bsh\">mysql&gt;&nbsp;GRANT&nbsp;REPLICATION&nbsp;SLAVE&nbsp;ON&nbsp;*.*&nbsp;to&nbsp;&#39;rep1&#39;@&#39;192.168.10.131&#39;&nbsp;identified&nbsp;by&nbsp;‘password’;</pre><p><br/></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		查询主数据库状态	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><br/>Mysql&gt; show master status;<br/>+------------------+----------+--------------+------------------+<br/>| File | Position | Binlog_Do_DB | Binlog_Ignore_DB |<br/>+------------------+----------+--------------+------------------+<br/>| mysql-bin.000005 | 261 | | |<br/>+------------------+----------+--------------+------------------+	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		记录下 FILE 及 Position 的值，在后面进行从服务器操作的时候需要用到。	</p><p><strong>2.2 配置从服务器</strong><br/>修改从服务器的配置文件/opt/mysql/etc/my.cnf<br/>将 server-id = 1修改为 server-id = 10，并确保这个ID没有被别的MySQL服务所使用。	</p><p><br/></p><p>
		启动mysql服务	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		/opt/mysql/init.d/mysql start	</p><p>
		通过命令行登录管理MySQL服务器<br/>/opt/mysql/bin/mysql -uroot -p&#39;new-password&#39;	</p><p><br/></p><p><br/>设置连接MASTER MASTER_LOG_FILE为主库的File，MASTER_LOG_POS为主库的Position&nbsp;	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		执行同步SQL语句	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><br/></p><pre class=\"prettyprint lang-bsh\">mysql&gt;&nbsp;change&nbsp;master&nbsp;to
master_host=’192.168.10.130’,
master_user=’rep1’,
master_password=’password’,
master_log_file=’mysql-bin.000005’,
master_log_pos=261;</pre><p><br/></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		正确执行后启动Slave同步进程<br/>mysql&gt; start slave;	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		主从同步检查<br/>mysql&gt; show slave status\\G<br/>==============================================<br/>**************** 1. row *******************<br/>Slave_IO_State:<br/>Master_Host: 192.168.10.130<br/>Master_User: rep1<br/>Master_Port: 3306<br/>Connect_Retry: 60<br/>Master_Log_File: mysql-bin.000005<br/>Read_Master_Log_Pos: 415<br/>Relay_Log_File: localhost-relay-bin.000008<br/>Relay_Log_Pos: 561<br/>Relay_Master_Log_File: mysql-bin.000005<br/>Slave_IO_Running: YES<br/>Slave_SQL_Running: YES<br/>Replicate_Do_DB:<br/>……………省略若干……………<br/>Master_Server_Id: 1<br/>1 row in set (0.01 sec)<br/>==============================================	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		其中Slave_IO_Running 与 Slave_SQL_Running 的值都必须为YES，才表明状态正常。	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><br/></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><strong>如果主服务器已经存在应用数据，则在进行主从复制时，需要做以下处理：</strong></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><br/>(1)主数据库进行锁表操作，不让数据再进行写入动作<br/>mysql&gt; FLUSH TABLES WITH READ LOCK;	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><br/></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		(2)查看主数据库状态<br/>mysql&gt; show master status;	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><br/></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		(3)记录下 FILE 及 Position 的值。<br/>将主服务器的数据文件（整个/opt/mysql/data目录）复制到从服务器，建议通过tar归档压缩后再传到从服务器解压。	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><br/></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		(4)取消主数据库锁定<br/>mysql&gt; UNLOCK TABLES;	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><br/></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><strong>2.3 验证主从复制效果</strong></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><strong>主服务器上的操作</strong><br/>在主服务器上创建数据库first_db<br/>mysql&gt; create database first_db;<br/>Query Ok, 1 row affected (0.01 sec)	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		在主服务器上创建表first_tb<br/>mysql&gt; create table first_tb(id int(3),name char(10));<br/>Query Ok, 1 row affected (0.00 sec)	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		在主服务器上的表first_tb中插入记录<br/>mysql&gt; insert into first_tb values (001,’myself’);<br/>Query Ok, 1 row affected (0.00 sec)	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><strong>在从服务器上查看</strong></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><br/>mysql&gt; show databases;<br/>=============================<br/>+--------------------+<br/>| Database |<br/>+--------------------+<br/>| information_schema |<br/>| first_db |<br/>| mysql |<br/>| performance_schema |<br/>| test |<br/>+--------------------+<br/>5 rows in set (0.01 sec)<br/>=============================<br/>数据库first_db已经自动生成	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		mysql&gt; use first_db<br/>Database chaged	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		mysql&gt; show tables;<br/>=============================<br/>+--------------------+<br/>| Tables_in_first_db |<br/>+--------------------+<br/>| first_tb |<br/>+--------------------+<br/>1 row in set (0.02 sec)<br/>=============================<br/>数据库表first_tb也已经自动创建	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><br/></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		mysql&gt; select * from first_tb;<br/>=============================<br/>+------+------+<br/>| id | name |<br/>+------+------+<br/>| 1 | myself |<br/>+------+------+<br/>1 rows in set (0.00 sec)<br/>=============================<br/>记录也已经存在	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		由此，整个MySQL主从复制的过程就完成了，接下来，我们进行MySQL读写分离的安装与配置。	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><strong>三、MySQL读写分离</strong></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><br/>场景描述：<br/>数据库Master主服务器：192.168.10.130<br/>数据库Slave从服务器：192.168.10.131<br/>MySQL-Proxy调度服务器：192.168.10.132	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		以下操作，均是在192.168.10.132即MySQL-Proxy调度服务器 上进行的。	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><strong>3.1 MySQL的安装与配置</strong><br/>具体的安装过程与上文相同。	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><strong>3.2 检查系统所需软件包</strong><br/>通过 rpm -qa | grep name 的方式验证以下软件包是否已全部安装。<br/>gcc* gcc-c++* autoconf* automake* zlib* libxml* ncurses-devel* libmcrypt* libtool* flex* pkgconfig*<br/>libevent* glib*	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		若缺少相关的软件包，可通过yum -y install方式在线安装，或直接从系统安装光盘中找到并通过rpm -ivh方式安装。	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><strong>3.3 编译安装lua</strong><br/>MySQL-Proxy的读写分离主要是通过rw-splitting.lua脚本实现的，因此需要安装lua。	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		lua可通过以下方式获得<br/>从http://www.lua.org/download.html下载源码包	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		从rpm.pbone.net搜索相关的rpm包<br/>download.fedora.redhat.com/pub/fedora/epel/5/i386/lua-5.1.4-4.el5.i386.rpm<br/>download.fedora.redhat.com/pub/fedora/epel/5/x86_64/lua-5.1.4-4.el5.x86_64.rpm	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		这里我们建议采用源码包进行安装<br/>cd /opt/install<br/>wget http://www.lua.org/ftp/lua-5.1.4.tar.gz<br/>tar zvfx lua-5.1.4.tar.gz<br/>cd lua-5.1.4	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		vi src/Makefile<br/>在 CFLAGS= -O2 -Wall $(MYCFLAGS) 这一行记录里加上-fPIC，更改为 CFLAGS= -O2 -Wall -fPIC $(MYCFLAGS) 来避免编译过程中出现错误。	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		make linux<br/>make install	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		cp etc/lua.pc /usr/lib/pkgconfig/<br/>export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/lib/pkgconfig	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><strong>3.4 安装配置MySQL-Proxy</strong><br/>MySQL-Proxy可通过以下网址获得：<br/><a href=\"http://mysql.cdpa.nsysu.edu.tw/Downloads/MySQL-Proxy/\" target=\"_blank\"><span style=\"color:#2D83D5;\">http://mysql.cdpa.nsysu.edu.tw/Downloads/MySQL-Proxy/</span></a></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		推荐采用已经编译好的二进制版本，因为采用源码包进行编译时，最新版的MySQL-Proxy对automake，glib以及libevent的版本都有很高的要求，而这些软件包都是系统的基础套件，不建议强行进行更新。<br/>并且这些已经编译好的二进制版本在解压后都在统一的目录内，因此建议选择以下版本：<br/>32位RHEL5平台：<br/><a href=\"http://mysql.cdpa.nsysu.edu.tw/Downloads/MySQL-Proxy/mysql-proxy-0.8.1-linux-rhel5-x86-32bit.tar.gz\" target=\"_blank\"><span style=\"color:#2D83D5;\">http://mysql.cdpa.nsysu.edu.tw/Downloads/MySQL-Proxy/mysql-proxy-0.8.1-linux-rhel5-x86-32bit.tar.gz</span></a><br/>64位RHEL5平台：<br/><a href=\"http://mysql.cdpa.nsysu.edu.tw/Downloads/MySQL-Proxy/mysql-proxy-0.8.1-linux-rhel5-x86-64bit.tar.gz\" target=\"_blank\"><span style=\"color:#2D83D5;\">http://mysql.cdpa.nsysu.edu.tw/Downloads/MySQL-Proxy/mysql-proxy-0.8.1-linux-rhel5-x86-64bit.tar.gz</span></a></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		测试平台为RHEL5 32位，因此选择32位的软件包<br/>wget http://mysql.cdpa.nsysu.edu.tw/Downloads/MySQL-Proxy/mysql-proxy-0.8.1-linux-rhel5-x86-32bit.tar.gz	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		tar xzvf mysql-proxy-0.8.1-linux-rhel5-x86-32bit.tar.gz<br/>mv mysql-proxy-0.8.1-linux-rhel5-x86-32bit /opt/mysql-proxy	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		创建mysql-proxy服务管理脚本<br/>mkdir /opt/mysql-proxy/init.d/	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		vim mysql-proxy	</p><pre class=\"prettyprint lang-bsh\">#!/bin/sh
#
#&nbsp;mysql-proxy&nbsp;This&nbsp;script&nbsp;starts&nbsp;and&nbsp;stops&nbsp;the&nbsp;mysql-proxy&nbsp;daemon
#
#&nbsp;chkconfig:&nbsp;-&nbsp;78&nbsp;30
#&nbsp;processname:&nbsp;mysql-proxy
#&nbsp;description:&nbsp;mysql-proxy&nbsp;is&nbsp;a&nbsp;proxy&nbsp;daemon&nbsp;to&nbsp;mysql
&nbsp;&nbsp;
#&nbsp;Source&nbsp;function&nbsp;library.
.&nbsp;/etc/rc.d/init.d/functions
&nbsp;&nbsp;
#PROXY_PATH=/usr/local/bin
PROXY_PATH=/opt/mysql-proxy/bin
&nbsp;&nbsp;
prog=&quot;mysql-proxy&quot;
&nbsp;&nbsp;
#&nbsp;Source&nbsp;networking&nbsp;configuration.
.&nbsp;/etc/sysconfig/network
&nbsp;&nbsp;
#&nbsp;Check&nbsp;that&nbsp;networking&nbsp;is&nbsp;up.
[&nbsp;${NETWORKING}&nbsp;=&nbsp;&quot;no&quot;&nbsp;]&nbsp;&amp;&amp;&nbsp;exit&nbsp;0
&nbsp;&nbsp;
#&nbsp;Set&nbsp;default&nbsp;mysql-proxy&nbsp;configuration.
#PROXY_OPTIONS=&quot;--daemon&quot;
PROXY_OPTIONS=&quot;--admin-username=root&nbsp;--admin-password=password&nbsp;--proxy-read-only-backend-addresses=192.168.10.131:3306&nbsp;--proxy-backend-addresses=192.168.10.130:3306&nbsp;&nbsp;--admin-lua-script=/opt/mysql-proxy/lib/mysql-proxy/lua/admin.lua&nbsp;--proxy-lua-script=/opt/mysql-proxy/scripts/rw-splitting.lua&quot;
PROXY_PID=/opt/mysql-proxy/run/mysql-proxy.pid
&nbsp;&nbsp;
#&nbsp;Source&nbsp;mysql-proxy&nbsp;configuration.
if&nbsp;[&nbsp;-f&nbsp;/etc/sysconfig/mysql-proxy&nbsp;];&nbsp;then
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.&nbsp;/etc/sysconfig/mysql-proxy
fi
&nbsp;&nbsp;
PATH=$PATH:/usr/bin:/usr/local/bin:$PROXY_PATH
&nbsp;&nbsp;
#&nbsp;By&nbsp;default&nbsp;it&#39;s&nbsp;all&nbsp;good
RETVAL=0
&nbsp;&nbsp;
#&nbsp;See&nbsp;how&nbsp;we&nbsp;were&nbsp;called.
case&nbsp;&quot;$1&quot;&nbsp;in
&nbsp;&nbsp;start)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#&nbsp;Start&nbsp;daemon.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;-n&nbsp;$&quot;Starting&nbsp;$prog:&nbsp;&quot;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$NICELEVEL&nbsp;$PROXY_PATH/mysql-proxy&nbsp;$PROXY_OPTIONS&nbsp;--daemon&nbsp;--pid-file=$PROXY_PID&nbsp;--user=mysql&nbsp;--log-level=warning&nbsp;--log-file=/opt/mysql-proxy/log/mysql-proxy.log
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RETVAL=$?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;[&nbsp;$RETVAL&nbsp;=&nbsp;0&nbsp;];&nbsp;then
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;touch&nbsp;/var/lock/subsys/mysql-proxy
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;;
&nbsp;&nbsp;stop)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#&nbsp;Stop&nbsp;daemons.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;-n&nbsp;$&quot;Stopping&nbsp;$prog:&nbsp;&quot;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;killproc&nbsp;$prog
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RETVAL=$?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;[&nbsp;$RETVAL&nbsp;=&nbsp;0&nbsp;];&nbsp;then
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rm&nbsp;-f&nbsp;/var/lock/subsys/mysql-proxy
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rm&nbsp;-f&nbsp;$PROXY_PID
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fi
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;;
&nbsp;&nbsp;restart)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$0&nbsp;stop
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sleep&nbsp;3
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$0&nbsp;start
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;;
&nbsp;&nbsp;condrestart)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[&nbsp;-e&nbsp;/var/lock/subsys/mysql-proxy&nbsp;]&nbsp;&amp;&amp;&nbsp;$0&nbsp;restart
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;;
&nbsp;&nbsp;status)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;status&nbsp;mysql-proxy
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RETVAL=$?
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;;
&nbsp;&nbsp;*)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&quot;Usage:&nbsp;$0&nbsp;{start|stop|restart|status|condrestart}&quot;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RETVAL=1
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;;
esac
&nbsp;&nbsp;
exit&nbsp;$RETVAL</pre><p><br/></p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><strong>脚本参数详解：</strong><br/>==============================================<br/>PROXY_PATH=/opt/mysql-proxy/bin //定义mysql-proxy服务二进制文件路径</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">PROXY_OPTIONS=&quot;--admin-username=root \\ //定义内部管理服务器账号<br/>--admin-password=password \\ //定义内部管理服务器密码<br/>--proxy-read-only-backend-addresses=192.168.10.131:3306 \\ //定义后端只读从服务器地址<br/>--proxy-backend-addresses=192.168.10.130:3306 \\ //定义后端主服务器地址<br/>--admin-lua-script=/opt/mysql-proxy/lib/mysql-proxy/lua/admin.lua \\ //定义lua管理脚本路径<br/>--proxy-lua-script=/opt/mysql-proxy/scripts/rw-splitting.lua&quot; \\ //定义lua读写分离脚本路径</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">PROXY_PID=/opt/mysql-proxy/run/mysql-proxy.pid //定义mysql-proxy PID文件路径</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">$NICELEVEL $PROXY_PATH/mysql-proxy $PROXY_OPTIONS \\<br/>--daemon \\ //定义以守护进程模式启动<br/>--keepalive \\ //使进程在异常关闭后能够自动恢复<br/>--pid-file=$PROXY_PID \\ //定义mysql-proxy PID文件路径<br/>--user=mysql \\ //以mysql用户身份启动服务<br/>--log-level=warning \\ //定义log日志级别，由高到低分别有(error|warning|info|message|debug)<br/>--log-file=/opt/mysql-proxy/log/mysql-proxy.log //定义log日志文件路径<br/>==============================================</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">cp mysql-proxy /opt/mysql-proxy/init.d/<br/>chmod +x /opt/mysql-proxy/init.d/mysql-proxy</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">mkdir /opt/mysql-proxy/run<br/>mkdir /opt/mysql-proxy/log</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">mkdir /opt/mysql-proxy/scripts</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><strong>配置并使用rw-splitting.lua读写分离脚本</strong><br/>最新的脚本我们可以从最新的mysql-proxy源码包中获取<br/>cd /opt/install	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		wget http://mysql.cdpa.nsysu.edu.tw/Downloads/MySQL-Proxy/mysql-proxy-0.8.1.tar.gz	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		tar xzvf mysql-proxy-0.8.1.tar.gz<br/>cd mysql-proxy-0.8.1<br/>cp lib/rw-splitting.lua /opt/mysql-proxy/scripts	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		修改读写分离脚本rw-splitting.lua<br/>修改默认连接，进行快速测试，不修改的话要达到连接数为4时才启用读写分离<br/>vim /opt/mysql-proxy/scripts/rw-splitting.lua<br/>=============================<br/>-- connection pool<br/>if not proxy.global.config.rwsplit then<br/>proxy.global.config.rwsplit = {<br/>min_idle_connections = 1, //默认为4<br/>max_idle_connections = 1, //默认为8<br/>is_debug = false<br/>}<br/>end<br/>=============================	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		修改完成后，启动mysql-proxy<br/>/opt/mysql-proxy/init.d/mysql-proxy start	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><strong>3.5 测试读写分离效果</strong><br/>创建用于读写分离的数据库连接用户<br/>登陆主数据库服务器192.168.10.130，通过命令行登录管理MySQL服务器<br/>/opt/mysql/bin/mysql -uroot -p&#39;new-password&#39;<br/>mysql&gt; GRANT ALL ON *.* TO &#39;proxy1&#39;@&#39;192.168.10.132&#39; IDENTIFIED BY &#39;password&#39;;<br/>由于我们配置了主从复制功能，因此从数据库服务器192.168.10.131上已经同步了此操作。	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		为了清晰的看到读写分离的效果，需要暂时关闭MySQL主从复制功能<br/>登陆从数据库服务器192.168.10.131，通过命令行登录管理MySQL服务器<br/>/opt/mysql/bin/mysql -uroot -p&#39;new-password&#39;	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		关闭Slave同步进程<br/>mysql&gt; stop slave;<br/>Query OK, 0 rows affected (0.00 sec)	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		连接MySQL-Proxy<br/>/opt/mysql/bin/mysql -uproxy1 -p&#39;password&#39; -P4040 -h192.168.10.132	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		登陆成功后，在first_db数据的first_tb表中插入两条记录<br/>mysql&gt; use first_db;<br/>Database changed<br/>mysql&gt; insert into first_tb values (007,’first’);<br/>Query Ok, 1 row affected (0.00 sec)<br/>mysql&gt; insert into first_tb values (110,’second’);<br/>Query Ok, 1 row affected (0.00 sec)	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		查询记录<br/>mysql&gt; select * from first_tb;<br/>=============================<br/>+------+------+<br/>| id | name |<br/>+------+------+<br/>| 1 | myself |<br/>+------+------+<br/>1 rows in set (0.00 sec)<br/>=============================<br/>通过读操作并没有看到新记录	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		mysql&gt; quit<br/>退出MySQL-Proxy	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		下面，分别登陆到主从数据库服务器，对比记录信息<br/>首先，检查主数据库服务器<br/>mysql&gt; select * from first_tb;<br/>=============================<br/>+------+------+<br/>| id | name |<br/>+------+------+<br/>| 1 | myself |<br/>+------+------+<br/>| 007 | first |<br/>+------+------+<br/>| 110 | second |<br/>+------+------+<br/>3 rows in set (0.00 sec)<br/>=============================<br/>两条新记录都已经存在	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		然后，检查从数据库服务器<br/>mysql&gt; select * from first_tb;<br/>=============================<br/>+------+------+<br/>| id | name |<br/>+------+------+<br/>| 1 | myself |<br/>+------+------+<br/>1 rows in set (0.00 sec)<br/>=============================<br/>没有新记录存在	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		由此验证，我们已经实现了MySQL读写分离，目前所有的写操作都全部在Master主服务器上，用来避免数据的不同步；<br/>另外，所有的读操作都分摊给了其它各个Slave从服务器上，用来分担数据库压力。	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\"><strong>经验分享：</strong><br/>1.当MySQL主从复制在 show slave status\\G 时出现Slave_IO_Running或Slave_SQL_Running 的值不为YES时，需要首先通过 stop slave 来停止从服务器，然后再执行一次本文 2.1与2.2 章节中的步骤即可恢复，但如果想尽可能的同步更多的数据，可以在Slave上将master_log_pos节点的值在之前同步失效的值的基础上增大一 些，然后反复测试，直到同步OK。因为MySQL主从复制的原理其实就是从服务器读取主服务器的binlog，然后根据binlog的记录来更新数据库。	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		2.MySQL-Proxy的rw-splitting.lua脚本在网上有很多版本，但是最准确无误的版本仍然是源码包中所附带的lib/rw-splitting.lua脚本，如果有lua脚本编程基础的话，可以在这个脚本的基础上再进行优化；	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		3.MySQL-Proxy实际上非常不稳定，在高并发或有错误连接的情况下，进程很容易自动关闭，因此打开--keepalive参数让进程自动 恢复是个比较好的办法，但还是不能从根本上解决问题，因此通常最稳妥的做法是在每个从服务器上安装一个MySQL-Proxy供自身使用，虽然比较低效但 却能保证稳定性；	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		4.一主多从的架构并不是最好的架构，通常比较优的做法是通过程序代码和中间件等方面，来规划，比如设置对表数据的自增id值差异增长等方式来实现两个或多个主服务器，但一定要注意保证好这些主服务器数据的完整性，否则效果会比多个一主多从的架构还要差；	</p><p style=\"color:#000000;font-family:Tahoma;font-style:normal;font-weight:normal;text-align:-webkit-auto;text-indent:0px;font-size:medium;\">
		5.MySQL-Cluster 的稳定性也不是太好；	</p><p>
		6.Amoeba for MySQL 是一款优秀的中间件软件，同样可以实现读写分离，负载均衡等功能，并且稳定性要大大超过MySQL-Proxy，建议大家用来替代MySQL-Proxy，甚至MySQL-Cluster。 <br/></p><hr/><p style=\"text-indent:2em;\">相关文章：</p><p style=\"text-indent:2em;\"><a href=\"http://www.yiifcms.com/post/35/\" title=\"Mysql基本用法\" target=\"_blank\" style=\"\">Mysql基本用法</a></p><p style=\"text-indent:2em;\"><a href=\"http://www.yiifcms.com/post/34/\" title=\"mysql的数据类型int、bigint、smallint 和 tinyint取值范围\" target=\"_blank\" style=\"\">mysql的数据类型int、bigint、smallint 和 ...</a></p><p style=\"text-indent:2em;\"><br/></p>','','','','mysql,html,sql,yii,linux,cms,文章,IT,服务器','37','N','N','','','0','0','N','1408692627','0','Y','0','Y','1407480819');
INSERT INTO `yiif_post` VALUES('37','1','yii下实现sitemap自动生成','','a:1:{s:4:\"bold\";s:1:\"Y\";}','','','20','0','今天借鉴推酷的一篇文章，结合自己的网站特点，也成功的实现了sitemap的自动生成，拿来了原来的Ui格式，还是比较满意的。

现根据当前的yiifcms系统，特意分享代码如下：','','','','','<p>
	今天借鉴<a target=\"_blank\" href=\"http://www.tuicool.com/articles/6rUZfe\">推酷</a>的一篇文章，结合自己的网站特点，也成功的实现了sitemap的自动生成，拿来了原来的Ui格式，还是比较满意的。
</p>
<p>
	现根据当前的<a target=\"_blank\" href=\"http://www.yiifcms.com/\">yiifcms</a>系统，特意分享代码如下：
</p>
<p>
	<br />
</p>
<p>
	1.&nbsp;&nbsp;&nbsp;创建Sitemap.php&nbsp;放到组件protected/components下：
</p>
<p>
	&nbsp;
</p>
<pre class=\"prettyprint lang-php\">&lt;?php
/**
 * 生成网站地图组件
 * @author zhao jinhan &lt;326196998@qq.com&gt;
 * @version 1.0
 *
 */
class Sitemap extends CController{
	
    protected $webSiteTitle = \'\';
    protected $changefreq = \'\';
    protected $content = \'\';
    protected $priority = \'\';
    protected $postItems = array();
    protected $imageItems = array();
    protected $softItems = array();
    protected $downloadItems = array();
    protected $tagItems = array();
    protected $categoryItems = array();
    protected $items = array();
    
    /**
     * 添加基本信息
     * @param string $title
     * @param string $link
     * @param string $description
     */
    public function __construct() {
       	$this-&gt;webSiteTitle = Yii::app()-&gt;request-&gt;hostinfo;       	
       	$this-&gt;changefreq = \'weekly\'; //always hourly daily weekly monthly yearly never
       	$this-&gt;priority = 0.5;
   	}
   	  

    /**
     * 栏目分类
     */
    private function categorySitemap(){
        $criteria = new CDbCriteria();
        $criteria-&gt;condition = \'status=:status\';
        $criteria-&gt;params = array(\':status\'=&gt;\'Y\');
        $criteria-&gt;order = \'id ASC\';
        $result = Catalog::model()-&gt;findAll($criteria);

        foreach($result as $k=&gt;$v){
        	switch($v-&gt;type){
        		case 1:
        			$type = \'post\';
        			break;
        		case 2:
        			$type = \'image\';
        			break;
        		case 3:
        			$type = \'soft\';
        	}
            $this-&gt;categoryItems[] = array(            	
                \'url\'=&gt;$this-&gt;createUrl($type.\'/index\',array(\'catalog_id\'=&gt;$v-&gt;id)),
                \'date\'=&gt;date(DATE_W3C, $v-&gt;update_time)
            );
        }
    }

    /**
     * 文章
     */
    private function postSitemap(){
        $criteria = new CDbCriteria();
        $criteria-&gt;condition = \"status = \'Y\'\";
        $criteria-&gt;select = \'id, tags, update_time\';
        $criteria-&gt;order = \'id DESC\';
        $model = Post::model()-&gt;findAll($criteria);
        $tagItems = array();
        foreach($model as $k=&gt;$v){
            $this-&gt;postItems[] = array(
                \'url\'=&gt;$this-&gt;createUrl(\'post/view\', array(\'id\'=&gt;$v-&gt;id)),
                \'date\'=&gt;date(DATE_W3C, $v-&gt;update_time)
            );

            $tagArr = preg_split(\'/,|，/i\', $v-&gt;tags);

            if(!empty($tagArr)){
                foreach($tagArr as $k=&gt;$v){
                    if(!in_array($v,$this-&gt;tagItems)){
                        $tagItems[] = $v;
                    }
                }
            }
        }

        //创建临时函数数组
        $tmp = array();
        $tmp = $tagItems;       
        foreach($tmp as $k=&gt;$v){
            $this-&gt;tagItems[] = array(
                \'url\'=&gt;$this-&gt;createUrl(\'tag/index\', array(\'tag_name\'=&gt;$v)),
                \'date\'=&gt;date(DATE_W3C, time())
            );
        }
        unset($tmp);
    }
    
    /**
     * 图集
     */
    private function imageSitemap(){
    	$criteria = new CDbCriteria();
    	$criteria-&gt;condition = \"status = \'Y\'\";
    	$criteria-&gt;select = \'id, tags, update_time\';
    	$criteria-&gt;order = \'id DESC\';
    	$model = Image::model()-&gt;findAll($criteria);
    	$tagItems = array();
    	foreach($model as $k=&gt;$v){
    		$this-&gt;imageItems[] = array(
    				\'url\'=&gt;$this-&gt;createUrl(\'image/view\', array(\'id\'=&gt;$v-&gt;id)),
    				\'date\'=&gt;date(DATE_W3C, $v-&gt;update_time)
    		);
    
    		$tagArr = preg_split(\'/,|，/i\', $v-&gt;tags);
    
    		if(!empty($tagArr)){
    			foreach($tagArr as $k=&gt;$v){
    				if(!in_array($v,$this-&gt;tagItems)){
    					$tagItems[] = $v;
    				}
    			}
    		}
    	}   

    	//创建临时函数数组
    	$tmp = array();
    	$tmp = $tagItems;    	
    	foreach($tmp as $k=&gt;$v){
    		$this-&gt;tagItems[] = array(
    				\'url\'=&gt;$this-&gt;createUrl(\'tag/index\', array(\'tag_name\'=&gt;$v)),
    				\'date\'=&gt;date(DATE_W3C, time())
    		);
    	}
    	unset($tmp);
    	
    }
    
    /**
     * 
     * 下载
     */  
    private function downloadSitemap(){
    	$criteria = new CDbCriteria();
    	$criteria-&gt;condition = \"status = \'Y\'\";
    	$criteria-&gt;select = \'id, update_time\';
    	$criteria-&gt;order = \'id DESC\';
    	$model = Soft::model()-&gt;findAll($criteria);
    	foreach($model as $k=&gt;$v){
    		$this-&gt;downloadItems[] = array(
    				\'url\'=&gt;$this-&gt;createUrl(\'soft/view\', array(\'id\'=&gt;$v-&gt;id)),
    				\'date\'=&gt;date(DATE_W3C, $v-&gt;update_time)
    		);
    		
    	}
    
    }


    /**
     * 构建xml元素
     */
     public function buildSitemap() {
        $postitem = \'\';
        foreach($this-&gt;postItems as $k=&gt;$v){
            $postitem .= &lt;&lt;&lt;POST
            &lt;url&gt;\\r\\n
                &lt;loc&gt;{$this-&gt;webSiteTitle}{$v[\'url\']}&lt;/loc&gt;\\r\\n
                &lt;lastmod&gt;{$v[\'date\']}&lt;/lastmod&gt;\\r\\n
                &lt;changefreq&gt;{$this-&gt;changefreq}&lt;/changefreq&gt;\\r\\n
                &lt;priority&gt;{$this-&gt;priority}&lt;/priority&gt;\\r\\n
            &lt;/url&gt;\\r\\n
POST;

        }
        
        $imageitem = \'\';
        foreach($this-&gt;imageItems as $k=&gt;$v){
        	$imageitem .= &lt;&lt;&lt;POST
            &lt;url&gt;\\r\\n
                &lt;loc&gt;{$this-&gt;webSiteTitle}{$v[\'url\']}&lt;/loc&gt;\\r\\n
                &lt;lastmod&gt;{$v[\'date\']}&lt;/lastmod&gt;\\r\\n
                &lt;changefreq&gt;{$this-&gt;changefreq}&lt;/changefreq&gt;\\r\\n
                &lt;priority&gt;{$this-&gt;priority}&lt;/priority&gt;\\r\\n
            &lt;/url&gt;\\r\\n
POST;
        
        }
        
        $downloaditem = \'\';
        foreach($this-&gt;downloadItems as $k=&gt;$v){
        	$downloaditem .= &lt;&lt;&lt;POST
            &lt;url&gt;\\r\\n
                &lt;loc&gt;{$this-&gt;webSiteTitle}{$v[\'url\']}&lt;/loc&gt;\\r\\n
                &lt;lastmod&gt;{$v[\'date\']}&lt;/lastmod&gt;\\r\\n
                &lt;changefreq&gt;{$this-&gt;changefreq}&lt;/changefreq&gt;\\r\\n
                &lt;priority&gt;{$this-&gt;priority}&lt;/priority&gt;\\r\\n
            &lt;/url&gt;\\r\\n
POST;
        
        }        

        $categoryitem = \'\';
        foreach($this-&gt;categoryItems as $k=&gt;$v){
            $categoryitem .= &lt;&lt;&lt;POST
            &lt;url&gt;\\r\\n
                &lt;loc&gt;{$this-&gt;webSiteTitle}{$v[\'url\']}&lt;/loc&gt;\\r\\n
                &lt;lastmod&gt;{$v[\'date\']}&lt;/lastmod&gt;\\r\\n
                &lt;changefreq&gt;{$this-&gt;changefreq}&lt;/changefreq&gt;\\r\\n
                &lt;priority&gt;{$this-&gt;priority}&lt;/priority&gt;\\r\\n
            &lt;/url&gt;\\r\\n
POST;

        }
        $tagitem = \'\';
        foreach($this-&gt;tagItems as $k=&gt;$v){
            $tagitem .= &lt;&lt;&lt;POST
            &lt;url&gt;\\r\\n
                &lt;loc&gt;{$this-&gt;webSiteTitle}{$v[\'url\']}&lt;/loc&gt;\\r\\n
                &lt;lastmod&gt;{$v[\'date\']}&lt;/lastmod&gt;\\r\\n
                &lt;changefreq&gt;{$this-&gt;changefreq}&lt;/changefreq&gt;\\r\\n
                &lt;priority&gt;{$this-&gt;priority}&lt;/priority&gt;\\r\\n
            &lt;/url&gt;\\r\\n
POST;

        }


        $this-&gt;content = &lt;&lt;&lt;SITEMAP
&lt;?xml version=\'1.0\' encoding=\'UTF-8\'?&gt;\\r\\n
&lt;?xml-stylesheet type=\"text/xsl\" href=\"{$this-&gt;webSiteTitle}/site/sitemapxsl\"?&gt;
&lt;!-- generator=\"GoWhich/1.0\" --&gt;
&lt;!-- sitemap-generator-url=\"{$this-&gt;webSiteTitle}\" sitemap-generator-version=\"1.0.0\" --&gt;
&lt;urlset xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\\r\\n
        xsi:schemaLocation=\"http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd\"\\r\\n
        xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\"&gt;\\r\\n
            {$postitem}
            {$imageitem}
            {$downloaditem}
            {$categoryitem}
            {$tagitem}
&lt;/urlset&gt;\\r\\n
SITEMAP;
   	}

  /**
   * 输出sitemap内容
   */
  function show() {
        $this-&gt;postSitemap();
        $this-&gt;imageSitemap();
        $this-&gt;downloadSitemap();
        $this-&gt;categorySitemap();
    	if (empty($this-&gt;content)) {
    		$this-&gt;buildSitemap();
    	}
       	return $this-&gt;content;
  }


  /**
   * 将rss保存为文件
   * @param String $fname
   * @return boolean
   */
   	function saveToFile($fname) {
       	$handle = fopen($fname, \'wb\');
       	if ($handle === false){
       		return false;
       	}
       	fwrite($handle, $this-&gt;content);
       	fclose($handle);
   	}

   	/**
   	 * 获取文件的内容
   	 * @param String $fname
   	 * @return boolean
   	 */
   	function getFile($fname) {
       	$handle = fopen($fname, \'r\');
       	if ($handle === false){
       		return false;
       	}
    	while(!feof($handle)){
            echo fgets($handle);
    	}
       	fclose($handle);
   	}
}
?&gt; 
</pre>
<p>
	<br />
</p>
<p>
	2.&nbsp;&nbsp;&nbsp;创建在控制器SiteController.php下&nbsp;创建2个action ：
</p>
<p>
	<br />
</p>
<pre class=\"prettyprint lang-php\">        /**
	 * sitemap列表
	 */
	public function actionSitemap(){
		$this-&gt;layout = false;
		//rss创建
		$obj = new Sitemap();
	
		$this-&gt;render(\'sitemap\',array(\'rss\'=&gt;$obj-&gt;show()));
	}
	
	/**
	 * sitemap索引
	 */
	public function actionSitemapXsl(){
		
		$this-&gt;render(\'sitemapxsl\');
	}</pre>
&nbsp;&nbsp; 3.&nbsp;&nbsp;&nbsp;对应的模板文件:
<p>
	<br />
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sitemap.php
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<pre class=\"prettyprint lang-php\">&lt;?php
/* @var $this FeedController */
header(\"Content-Type: text/xml; charset=utf-8\");
echo $rss;
exit;
?&gt;</pre>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sitemapxsl.php
<p>
	<br />
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<pre class=\"prettyprint lang-php\">&lt;?php
header(\"Content-Type: text/xml; charset=utf-8\");?&gt;
&lt;?php 
$xml = &lt;&lt;&lt;XML
&lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt;
&lt;xsl:stylesheet version=\"2.0\"
                xmlns:html=\"http://www.w3.org/TR/REC-html40\"
                xmlns:sitemap=\"http://www.sitemaps.org/schemas/sitemap/0.9\"
                xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;
    &lt;xsl:output method=\"html\" version=\"1.0\" encoding=\"UTF-8\" indent=\"yes\"/&gt;
    &lt;xsl:template match=\"/\"&gt;
        &lt;html xmlns=\"http://www.w3.org/1999/xhtml\"&gt;
        &lt;head&gt;
            &lt;title&gt;XML Sitemap&lt;/title&gt;
            &lt;meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /&gt;
            &lt;style type=\"text/css\"&gt;
                body {
                    font-family:\"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,Verdana;
                    font-size:13px;
                }

                #intro {
                    background-color:#CFEBF7;
                    border:1px #2580B2 solid;
                    padding:5px 13px 5px 13px;
                    margin:10px;
                }

                #intro p {
                    line-height:	16.8667px;
                }

                td {
                    font-size:11px;
                }

                th {
                    text-align:left;
                    padding-right:30px;
                    font-size:11px;
                }

                tr.high {
                    background-color:whitesmoke;
                }

                #footer {
                    padding:2px;
                    margin:10px;
                    font-size:8pt;
                    color:gray;
                }

                #footer a {
                    color:gray;
                }

                a {
                    color:black;
                }
            &lt;/style&gt;
        &lt;/head&gt;
        &lt;body&gt;
        &lt;h1&gt;XML Sitemap&lt;/h1&gt;
        &lt;div id=\"intro\"&gt;
            &lt;p&gt;
                This is a XML Sitemap which is supposed to be processed by search engines like &lt;a href=\"http://www.baidu.com\"&gt;百度&lt;/a&gt;,  &lt;a href=\"http://www.sogou.com\"&gt;搜狗&lt;/a&gt;, &lt;a href=\"http://www.so.com\"&gt;360搜索&lt;/a&gt;, &lt;a href=\"http://www.google.com\"&gt;Google&lt;/a&gt;, &lt;a href=\"http://search.msn.com\"&gt;MSN Search&lt;/a&gt; and &lt;a href=\"http://www.yahoo.com\"&gt;YAHOO&lt;/a&gt;.&lt;br /&gt;
                It was generated using the Blogging-Software &lt;a href=\"http://gowhich.com/\"&gt;GoWhich&lt;/a&gt; and the &lt;a href=\"http://www.gowhich.com/sitemap.xml\" title=\"Google Sitemap Generator Plugin for GoWhich\"&gt;Google Sitemap Generator Plugin&lt;/a&gt; by &lt;a href=\"http://www.gowhich.com/\"&gt;GoWhich&lt;/a&gt;.&lt;br /&gt;
                You can find more information about XML sitemaps on &lt;a href=\"http://sitemaps.org\"&gt;sitemaps.org&lt;/a&gt; and Google\'s &lt;a href=\"http://code.google.com/sm_thirdparty.html\"&gt;list of sitemap programs&lt;/a&gt;.
            &lt;/p&gt;
        &lt;/div&gt;
        &lt;div id=\"content\"&gt;
            &lt;table cellpadding=\"5\"&gt;
                &lt;tr style=\"border-bottom:1px black solid;\"&gt;
                    &lt;th&gt;URL&lt;/th&gt;
                    &lt;th&gt;Priority&lt;/th&gt;
                    &lt;th&gt;Change Frequency&lt;/th&gt;
                    &lt;th&gt;LastChange (GMT)&lt;/th&gt;
                &lt;/tr&gt;
                &lt;xsl:variable name=\"lower\" select=\"\'abcdefghijklmnopqrstuvwxyz\'\"/&gt;
                &lt;xsl:variable name=\"upper\" select=\"\'ABCDEFGHIJKLMNOPQRSTUVWXYZ\'\"/&gt;
                &lt;xsl:for-each select=\"sitemap:urlset/sitemap:url\"&gt;
                    &lt;tr&gt;
                        &lt;xsl:if test=\"position() mod 2 != 1\"&gt;
                            &lt;xsl:attribute  name=\"class\"&gt;high&lt;/xsl:attribute&gt;
                        &lt;/xsl:if&gt;
                        &lt;td&gt;
                            &lt;xsl:variable name=\"itemURL\"&gt;
                                &lt;xsl:value-of select=\"sitemap:loc\"/&gt;
                            &lt;/xsl:variable&gt;
                            &lt;a href=\"{\\$itemURL}\"&gt;
                                &lt;xsl:value-of select=\"sitemap:loc\"/&gt;
                            &lt;/a&gt;
                        &lt;/td&gt;
                        &lt;td&gt;
                            &lt;xsl:value-of select=\"concat(sitemap:priority*100,\'%\')\"/&gt;
                        &lt;/td&gt;
                        &lt;td&gt;
                            &lt;xsl:value-of select=\"concat(translate(substring(sitemap:changefreq, 1, 1),concat(\\$lower, \\$upper),concat(\\$upper, \\$lower)),substring(sitemap:changefreq, 2))\"/&gt;
                        &lt;/td&gt;
                        &lt;td&gt;
                            &lt;xsl:value-of select=\"concat(substring(sitemap:lastmod,0,11),concat(\' \', substring(sitemap:lastmod,12,5)))\"/&gt;
                        &lt;/td&gt;
                    &lt;/tr&gt;
                &lt;/xsl:for-each&gt;
            &lt;/table&gt;
        &lt;/div&gt;
        &lt;div id=\"footer\"&gt;
            Generated with &lt;a href=\"http://www.gowhich.com/sitemap.xml\" title=\"Google Sitemap Generator Plugin for GoWhich\"&gt;Google Sitemap Generator Plugin for GoWhich&lt;/a&gt; by &lt;a href=\"http://www.gowhich.com/\"&gt;GoWhich&lt;/a&gt;. This XSLT template is released under GPL.
        &lt;/div&gt;
        &lt;/body&gt;
        &lt;/html&gt;
    &lt;/xsl:template&gt;
&lt;/xsl:stylesheet&gt;
XML;
echo $xml;
exit;
?&gt;</pre>
<p>
	<br />
</p>
<p>
	<br />
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.&nbsp; 然后配置 config/main.php的路由规则：
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<pre class=\"prettyprint lang-php\">\'sitemap\\.xml\' =&gt; \'site/sitemap\', //网站地图
\'sitemap\\.xsl\' =&gt; \'site/sitemapxsl\', //网站索引
</pre>
<p>
	<br />
</p>
<p>
	&nbsp;&nbsp;&nbsp; 这样整体就配置好了，搜索引擎搜索的时候，就会访问网站的sitemap:&nbsp;<a target=\"_blank\" href=\"http://www.yiifcms.com/sitemap.xml\"> http://www.yiifcms.com/sitemap.xml</a> 
</p>
<p>
	<br />
</p>
<p>
	&nbsp;&nbsp;&nbsp;哈哈 ，不错吧&nbsp;&nbsp;你也来试试把。&nbsp;如果感觉好用&nbsp;就分享给大家，然大家多来光顾下。
</p>','推酷','http://www.tuicool.com/articles/6rUZfe','','php,web,html,yii,cms,baidu,文章,图集','51','N','N','','','1','0','Y','1408021745','0','Y','0','Y','1408021357');
INSERT INTO `yiif_post` VALUES('38','1','关于人人网开发平台提供的sdk的问题','','','','','20','0','今天做人人网登录接口的时候 下来官网的sdk  发现里面有个很低级的错误 导致获取token的时候 老是失败      先分析下：          1.   rennclient/RennClientBase.php 文件中 的 authWithAuthorizationCode函数：                   /** * 用code来授权：通过code来获得token * * @param string $code */ public function authWithAuthorizationCode($code, $redirectUri) { $keys = array (); $keys [&#039;code&#039;]...','','','','','<p>
	<span style=\"font-size:14px;\">今天做人人网登录接口的时候 下来官网的sdk&nbsp; 发现里面有个很低级的错误 导致获取token的时候 老是失败</span>
</p>
<p>
	<br />
</p>
<p>
	<span style=\"font-size:14px;\">先分析下：&nbsp; <br />
</span>
</p>
<p>
	<span style=\"font-size:14px;\">&nbsp; 1.&nbsp;&nbsp; rennclient/RennClientBase.php 文件中 的 authWithAuthorizationCode函数：</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<pre class=\"prettyprint lang-php\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/**
	 * 用code来授权：通过code来获得token
	 *
	 * @param string $code        	
	 */
	public function authWithAuthorizationCode($code, $redirectUri) {
		$keys = array ();
		$keys [\'code\'] = $code;
		$keys [\'redirect_uri\'] = $redirectUri;
		try {
			// 根据code来获得token
			$token = $this-&gt;getTokenFromTokenEndpoint ( \'code\', $keys );
			
		} catch ( RennException $e ) {
			throw new InvalideAuthorizationException ( \"Authorization failed with Authorization Code. \" . $e-&gt;getMessage () );
		}
	}</pre>
&nbsp;&nbsp;&nbsp;<span style=\"font-size:14px;\">&nbsp;&nbsp; 这是一个公有方法public ,再看getTokenFromTokenEndpoint函数：</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<pre class=\"prettyprint lang-php\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/**
	 * 从token endpoint获得token
	 *
	 * @param string $grantType
	 *        	请求的类型,可以为:code, password, token
	 * @param array $keys
	 *        	其他参数：
	 *        	- 当$grant_type为code时： array(\'code\'=&gt;..., \'redirect_uri\'=&gt;...)
	 *        	- 当$grant_type为password时： array(\'username\'=&gt;..., \'password\'=&gt;...)
	 *        	- 当$grant_type为token时： array(\'refresh_token\'=&gt;...)
	 * @param
	 *        	string token_type token的类型,可以为:bearer,mac
	 * @return array
	 */
	private function getTokenFromTokenEndpoint($grantType, $keys, $tokenType = TokenType::MAC) {
		$params = array ();</pre>
<p>
	<br />
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:14px;\">&nbsp;&nbsp; 这是一个私有方法private</span><span id=\"__kindeditor_bookmark_start_51__\"> </span><span style=\"font-size:14px;\">,&nbsp; demo里面的callback.php:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<pre class=\"prettyprint lang-php\">&nbsp;&nbsp;&nbsp;&nbsp;$rennClient = new RennClient ( APP_KEY, APP_SECRET );
&nbsp;&nbsp;&nbsp;&nbsp;$rennClient-&gt;setDebug ( DEBUG_MODE );

&nbsp;&nbsp;&nbsp;&nbsp;// 处理code -- 根据code来获得token
&nbsp;&nbsp;&nbsp;&nbsp;if (isset ( $_REQUEST [\'code\'] )) {
	$keys = array ();
	
	// 验证state，防止伪造请求跨站攻击
	$state = $_REQUEST [\'state\'];
	if (empty ( $state ) || $state !== $_SESSION [\'renren_state\']) {
		echo \'非法请求！\';
		exit ();
	}
	unset ( $_SESSION [\'renren_state\'] );
	
	// 获得code
	$keys [\'code\'] = $_REQUEST [\'code\'];
	$keys [\'redirect_uri\'] = CALLBACK_URL;
	try {
		// 根据code来获得token
		$token = $rennClient-&gt;getTokenFromTokenEndpoint ( \'code\', $keys );
	} catch ( RennException $e ) {
		var_dump ( $e );
	}
}</pre>
<p>
	&nbsp;&nbsp; <span style=\"font-size:14px;\">仔细看会发现，$rennClient对象访问了getTokenFromTokenEndpoint</span><span style=\"font-size:14px;\" id=\"__kindeditor_bookmark_start_78__\">()方法，这很明显是不对的。私有方法是不能在外部使用的。于是我找到了一个公有方法获取token,就是上面的那个authWithAuthorizationCode()&nbsp; 原以为这样就可以了 但是还是没有token 仔细看了这个函数 竟然没有返回值？&nbsp; 这。。。 难道不对 ？由找了这个方法的其他用途 发现没有。这很明显也是个低级错误，吐槽了一下，加个返回值 return&nbsp; $token;吧 。</span>
</p>
<p>
	&nbsp;
</p>
<pre class=\"prettyprint lang-php\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/**
	 * 用code来授权：通过code来获得token
	 *
	 * @param string $code        	
	 */
	public function authWithAuthorizationCode($code, $redirectUri) {
		$keys = array ();
		$keys [\'code\'] = $code;
		$keys [\'redirect_uri\'] = $redirectUri;
		try {
			// 根据code来获得token
			$token = $this-&gt;getTokenFromTokenEndpoint ( \'code\', $keys );
			return $token;
		} catch ( RennException $e ) {
			throw new InvalideAuthorizationException ( \"Authorization failed with Authorization Code. \" . $e-&gt;getMessage () );
		}
	}</pre>
&nbsp;
<p>
	<br />
</p>
<p>
	<span id=\"__kindeditor_bookmark_start_78__\">&nbsp;&nbsp;<span style=\"font-size:14px;\"> 哈哈，结果就是成功了！</span></span><span style=\"font-size:14px;\">&nbsp;&nbsp; </span>
</p>
<p>
	<span style=\"font-size:14px;\">&nbsp;&nbsp; 分享出来，奉献给需要的童鞋们吧！</span>
</p>
<p>
	<br />
</p>
<p>
	============================by 惜暮(Sim) &lt;326196998@qq.com&gt;===========================
</p>','原创','http://www.yiifcms/post/','','php,接口,人人网','36','N','N','','','2','1','N','1408091448','0','Y','0','Y','1408091323');
INSERT INTO `yiif_post` VALUES('39','1',' yii 操作cookie的用法详解','','','','','20','0','设置cookie:    $cookie = new CHttpCookie(&#039;mycookie&#039;,&#039;this is my cookie&#039;); $cookie-&gt;expire = time()+60*60*24*30; //有限期30天 Yii::app()-&gt;request-&gt;cookies[&#039;mycookie&#039;]=$cookie; 读取cookie:   $cookie = Yii::app()-&gt;request-&gt;getCookies(); echo $cookie[&#039;mycookie&#039;]-&gt;value;  销毁cookie:   $cookie = Yii::app()-&gt;request-&gt;getCookies(); unset($cookie[$name]);       ==========================by 惜暮(Sim) &lt;326...','','','','','<p>
	<span style=\"line-height:22px;color:#002200;font-family:georgia;font-size:16px;\">设置cookie:</span>
</p>
<p>
<pre class=\"prettyprint lang-php\"> $cookie = new CHttpCookie(\'mycookie\',\'this is my cookie\');
 $cookie-&gt;expire = time()+60*60*24*30;  //有限期30天
 Yii::app()-&gt;request-&gt;cookies[\'mycookie\']=$cookie;</pre>
<span style=\"font-size:16px;\">读取cookie:</span>
</p>
<p>
<pre class=\"prettyprint lang-php\">$cookie = Yii::app()-&gt;request-&gt;getCookies();
echo $cookie[\'mycookie\']-&gt;value;
</pre>
<span style=\"font-size:16px;\">销毁cookie:</span>
</p>
<p>
<pre class=\"prettyprint lang-php\">$cookie = Yii::app()-&gt;request-&gt;getCookies();
unset($cookie[$name]);
</pre>
</p>
<p>
	<br />
</p>
<p>
	==========================by&nbsp;惜暮(Sim) &lt;326196998@qq.com&gt; ====================<br />
<span style=\"line-height:22px;color:#002200;font-family:georgia;font-size:16px;\"></span><span style=\"font-size:14px;\"></span>
</p>','csdn','http://blog.csdn.net/xiaojun1288/article/details/7351626','','php,yii','23','N','N','','','0','0','N','1408108154','0','Y','0','Y','1408108154');
INSERT INTO `yiif_post` VALUES('40','1','nginx+apache反向代理配置详解','','','','','3','0','很早就了解到nginx用作反向代理服务器，结合Apache，如今我也试着配置了一下，很荣幸成功了，下面详解下安装与配置   1.  先安装Apache，我采用编译安装     wget http://mirrors.hust.edu.cn/apache/httpd/httpd-2.4.10.tar.gz tar -zxvf httpd-2.4.10.tar.gz cd httpd-2.4.10 ./configure --prefix=/usr/local/apache --with-apr=/usr/local/apr --with-apr-util=/usr/local/apr-util --enable-so --enable-mods-shared=most --...','','','','','<p style=\"text-indent:2em;\">
	<span style=\"font-size:14px;\">很早就了解到nginx用作反向代理服务器，结合Apache，如今我也试着配置了一下，很荣幸成功了，下面详解下安装与配置</span> 
</p>
<p style=\"text-indent:2em;\">
	<strong><span style=\"font-size:14px;\">1.&nbsp; 先安装Apache，我采用编译安装</span></strong> 
</p>
<pre class=\"prettyprint lang-bsh\">wget http://mirrors.hust.edu.cn/apache/httpd/httpd-2.4.10.tar.gz
tar -zxvf httpd-2.4.10.tar.gz
cd httpd-2.4.10
./configure --prefix=/usr/local/apache --with-apr=/usr/local/apr --with-apr-util=/usr/local/apr-util --enable-so --enable-mods-shared=most --with-mpm=worker 
make &amp;&amp; make install</pre>
<p style=\"text-indent:2em;\">
	#首先以apachectl脚本为模板生成Apache服务控制脚本：
</p>
<pre class=\"prettyprint lang-bsh\">grep -v \"#\" /usr/local/apache/bin/apachectl  &gt; /etc/init.d/apache </pre>
<p style=\"text-indent:2em;\">
	用vi编辑Apache服务控制脚本/etc/init.d/apache：
</p>
<pre class=\"prettyprint lang-bsh\"> vi /etc/init.d/apache </pre>
在文件最前面插入下面的行，使其支持chkconfig命令：
<pre class=\"prettyprint lang-bsh\">#!/bin/sh
# chkconfig: 2345 85 15
# description: Apache is a World Wide Web server. </pre>
保存后退出vi编辑器，执行下面的命令增加Apache服务控制脚本执行权限：
<pre class=\"prettyprint lang-bsh\">chmod  +x  /etc/init.d/apache </pre>
执行下面的命令将Apache服务加入到系统服务：
<pre class=\"prettyprint lang-bsh\">chkconfig --add apache </pre>
执行下面的命令检查Apache服务是否已经生效：
<pre class=\"prettyprint lang-bsh\">chkconfig --list apache </pre>
命令输出类似下面的结果：
<pre class=\"prettyprint lang-bsh\">apache          0:off 1:off 2:on 3:on 4:on 5:on 6:off </pre>
<p>
	表明apache服务已经生效，在2、3、4、5运行级别随系统启动而自动启动，以后可以使用service命令控制Apache的启动和停止
</p>
<p>
	<br />
</p>
<p>
	配置apache 端口8080 修改httpd.conf
</p>
<p>
<pre class=\"prettyprint lang-bsh\">Listen 8080
ServerName localhost</pre>
</p>
<p style=\"text-indent:2em;\">
	<strong><span style=\"font-size:14px;\">2. 编译安装php5.5.14</span></strong> 
</p>
<div>
	<div>
		<span style=\"line-height:1;\">首先是编译准备工作：&nbsp;</span> 
	</div>
	<div>
<pre>

<pre class=\"prettyprint lang-bsh\">yum groupinstall \"Development tools\"
</pre>
</pre>
<pre>然后是编译安装 PHP 5.5.x 需要用到的 devel 包：
<pre class=\"prettyprint lang-bsh\">yum install libxml2-devel gd-devel libmcrypt-devel libcurl-devel openssl-devel 
</pre>
</pre>
<pre>从官方下载，解压：
<pre class=\"prettyprint lang-bsh\">wget http://cn2.php.net/get/php-5.5.14.tar.gz/from/this/mirror
tar -xvf php-5.5.14.tar.gz
cd php-5.5.14 
</pre>
</pre>
<pre>编译安装 php 5.5 的参数(如果内存大于1G可以去除--disable-fileinfo)：
<pre class=\"prettyprint lang-bsh\">./configure --prefix=/usr/local/php-5.5.14 <span class=\"top11\">--with-config-file-path</span>=/etc/ --with-apxs2=/usr/local/apache/bin/apxs --with-iconv=/usr/local/ –disable-fileinfo --disable-cli --enable-shared --with-libxml-dir --with-gd --with-openssl --enable-mbstring --with-mcrypt --with-mysqli --with-mysql --enable-opcache --enable-mysqlnd --enable-zip --with-zlib-dir --with-pdo-mysql --with-jpeg-dir --with-freetype-dir --with-curl --without-pdo-sqlite --without-sqlite3</pre>
开始编译安装
<pre class=\"prettyprint lang-bsh\">make
make install 

</pre>
3.配置nginx.conf 使之反向代理<br />
<pre class=\"prettyprint lang-bsh\">server {
    listen       80;
    server_name  demo.yiifcms.com;
    index index.html index.htm index.php;
    root /alidata/www/demo.yiifcms.com;
    location ~ .*\\.(php|php5)?$
    {
        proxy_pass        http://127.0.0.1:8080;

        proxy_set_header  X-Real-IP  $remote_addr;
        proxy_connect_timeout 300s;
        proxy_send_timeout 900;
        proxy_read_timeout 900;
        proxy_buffer_size 32k;
        proxy_buffers 4 64k;
        proxy_busy_buffers_size 128k;
        proxy_redirect off;
        proxy_hide_header Vary;
        proxy_set_header Accept-Encoding \'\';
        proxy_set_header Referer $http_referer;
        proxy_set_header Cookie $http_cookie;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

    }
    #location ~ .*\\.(php|php5)?$
    #{
    #   fastcgi_pass  127.0.0.1:9000;
    #   fastcgi_index index.php;
    #   include fastcgi.conf;
    #}
    location ~ .*\\.(gif|jpg|jpeg|png|bmp|swf)$
    {
        expires 30d;
    }
    location ~ .*\\.(js|css)?$
    {
        expires 30d;
    }
    access_log  /alidata/log/nginx/access/demo.yiifcms.com.log default;
}
</pre>
&nbsp;</pre>
	</div>
</div>','','','','php,mysql,web,html,js,sql,apache,nginx,yii,cms','46','N','N','','','0','0','N','1408429775','0','Y','0','Y','1408428291');
INSERT INTO `yiif_post` VALUES('41','1','yii框架下使用ueditor插件详解','','','','','20','0','用了一段时间的KindEditor, 虽然功能还不错，但编辑时的代码插入不方便，索性就换了个百度的Ueditor，结合自己的yiifmcs网站，也顺利的搭建成功了，下面分享下步骤：下载Ueditor (http://ueditor.baidu.com/website/)解压后，放到新建的widget/ueditor目录下，结构如图：去除一些无用的文件,可以看到ueditor下新建了Ueditor.php文件，作为widget的运行程序：    Ueditor.php&lt;?php /**  * YiifCMS Ueditor Widget  *  * ...','','','','','<p><span style=\"font-size: 16px;\">用了一段时间的KindEditor, 虽然功能还不错，但编辑时的代码插入不方便，索性就换了个百度的Ueditor，结合自己的yiifcms网站，也顺利的搭建成功了，下面分享下步骤：</span></p><p><span style=\"font-size: 16px;\">1. 下载Ueditor (</span><a style=\"font-size: 16px; text-decoration: underline;\" title=\"Ueditor\" target=\"_blank\" href=\"http://ueditor.baidu.com/website/\"><span style=\"font-size: 16px;\">http://ueditor.baidu.com/website/</span></a><span style=\"font-size: 16px;\">)<br/></span></p><p><span style=\"font-size: 16px;\">2. 解压后，放到新建的widget/ueditor目录下，结构如图：</span></p><p><img alt=\"1.png\" src=\"/uploads/ueditor/image/20140820/1408525452904809.png\" title=\"1408525452904809.png\"/></p><p><br/></p><p><span style=\"font-size: 16px;\">3. 去除一些无用的文件,可以看到ueditor下新建了Ueditor.php文件，作为widget的运行程序：<br/></span></p><p><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp;&nbsp;Ueditor.php</span></p><pre class=\"brush:php;toolbar:false\">&lt;?php
/**
&nbsp;*&nbsp;YiifCMS&nbsp;Ueditor&nbsp;Widget
&nbsp;*
&nbsp;*&nbsp;@author&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sim&nbsp;&lt;326196998@qq.com&gt;
&nbsp;*&nbsp;@copyright&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Copyright&nbsp;(c)&nbsp;2007-2013&nbsp;bagesoft.&nbsp;All&nbsp;rights&nbsp;reserved.
&nbsp;*&nbsp;@link&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://www.yiifcms.com
&nbsp;*&nbsp;@package&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;YiiCMS.Widget
&nbsp;*&nbsp;@license&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://www.yiifcms.com/license
&nbsp;*&nbsp;@version&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;v1.0.0
&nbsp;*&nbsp;@example&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;widget(&#39;application.widget.ueditor.Ueditor&#39;,
&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;array(&#39;htmlOptions&#39;=&gt;
&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;array(
&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;id&#39;=&gt;&#39;Post_content&#39;,//页面中输入框（或其他初始化容器）的ID
&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;name&#39;=&gt;&#39;editor&#39;,//指定ueditor实例的名称,个页面有多个ueditor实例时使用
&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;config&#39;=&gt;&nbsp;array(
&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;initialFrameHeight&#39;=&gt;&#39;400&#39;,
&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;initialFrameWidth&#39;=&gt;&#39;80%&#39;,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;),
&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)
&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)
&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;);
&nbsp;*/

class&nbsp;Ueditor&nbsp;extends&nbsp;CInputWidget{
&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;$language&nbsp;=&nbsp;&#39;zh-cn&#39;;

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;获取资源文件路径
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;[type]&nbsp;[description]
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;function&nbsp;getAssetsPath()&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$baseDir&nbsp;=&nbsp;dirname(&nbsp;__FILE__&nbsp;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;Yii::app()-&gt;getAssetManager()-&gt;publish(&nbsp;$baseDir.DIRECTORY_SEPARATOR.&#39;assets&#39;&nbsp;);
&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;生成编辑器
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;[type]&nbsp;[description]
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;function&nbsp;makeOptions()&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$id&nbsp;=&nbsp;$this-&gt;htmlOptions[&#39;id&#39;];
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$name&nbsp;=&nbsp;$this-&gt;htmlOptions[&#39;name&#39;];
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$config&nbsp;=&nbsp;$this-&gt;htmlOptions[&#39;config&#39;];
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$systemDefault&nbsp;=&nbsp;$this-&gt;combineParams(&nbsp;$config&nbsp;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$script&nbsp;=&nbsp;&quot;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;{$name}&nbsp;=&nbsp;UE.getEditor(&#39;&quot;.$id.&quot;&#39;,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;serverUrl&#39;:&nbsp;&#39;&quot;.Yii::app()-&gt;createUrl(&#39;/admin/ueditor&#39;).&quot;&#39;,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$systemDefault
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;);&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;$script;
&nbsp;&nbsp;&nbsp;&nbsp;}


&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;组合参数
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@param&nbsp;[type]&nbsp;&nbsp;$items&nbsp;[description]
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;[type]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[description]
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;protected&nbsp;function&nbsp;combineParams(&nbsp;$items&nbsp;)&nbsp;{

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$script&nbsp;=&nbsp;&#39;&#39;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;(&nbsp;(array)$items&nbsp;as&nbsp;$key&nbsp;=&gt;&nbsp;$item&nbsp;)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(&nbsp;is_array(&nbsp;$item&nbsp;)&nbsp;)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(&nbsp;self::_checkType(&nbsp;$item&nbsp;)&nbsp;==&nbsp;&#39;arr&#39;&nbsp;)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$script&nbsp;.=&nbsp;$dot&nbsp;.self::_arr(&nbsp;$key,&nbsp;$item&nbsp;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$script&nbsp;.=&nbsp;$dot&nbsp;.self::_obj($key,&nbsp;$item);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$script&nbsp;.=&nbsp;&nbsp;$dot&nbsp;.&quot;&#39;$key&#39;:&#39;$item&#39;&nbsp;&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$dot&nbsp;=&nbsp;&quot;,\\n&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;$script;

&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;检测类型
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;protected&nbsp;function&nbsp;_checkType(&nbsp;$var&nbsp;)&nbsp;{

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(&nbsp;gettype(&nbsp;$var&nbsp;)&nbsp;==&nbsp;&#39;array&#39;&nbsp;)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;&#39;arr&#39;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;&#39;obj&#39;;
&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;对象
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;protected&nbsp;function&nbsp;_obj(&nbsp;$key,&nbsp;$item)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$script&nbsp;.=&nbsp;&nbsp;$dot&nbsp;.&quot;&#39;$key&#39;:{&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$subDot&nbsp;=&nbsp;&#39;&#39;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;(&nbsp;$item&nbsp;as&nbsp;$keys=&gt;$value&nbsp;)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arrkeys&nbsp;=&nbsp;array_keys($value);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach($arrkeys&nbsp;as&nbsp;$row){
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$script&nbsp;.=&nbsp;$subDot.&nbsp;&quot;&#39;$row&#39;:&#39;{$value[$row]}&#39;&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$subDot&nbsp;=&nbsp;&quot;,&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$script&nbsp;.=&quot;}&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;$script;
&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;数组
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;protected&nbsp;function&nbsp;_arr(&nbsp;$key,&nbsp;$item&nbsp;)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$script&nbsp;.=&nbsp;&nbsp;$dot&nbsp;.&quot;&#39;$key&#39;:[&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$subDot&nbsp;=&nbsp;&#39;&#39;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;(&nbsp;$item&nbsp;as&nbsp;$value&nbsp;)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$script&nbsp;.=&nbsp;$subDot.&nbsp;&quot;&#39;$value&#39;&nbsp;&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$subDot&nbsp;=&nbsp;&quot;,&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$script&nbsp;.=&quot;]&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;$script;
&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;运行
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;function&nbsp;run()&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;parent::run();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$assets&nbsp;=&nbsp;$this-&gt;getAssetsPath();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$clientScript&nbsp;=&nbsp;Yii::app()-&gt;getClientScript();&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$clientScript-&gt;registerScriptFile(&nbsp;$assets.&#39;/ueditor.config.js&#39;,&nbsp;CClientScript::POS_END&nbsp;);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$clientScript-&gt;registerScriptFile(&nbsp;$assets.&#39;/ueditor.all.min.js&#39;,&nbsp;CClientScript::POS_END&nbsp;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$clientScript-&gt;registerScriptFile(&nbsp;$assets.&#39;/lang/&#39;.$this-&gt;language.&#39;/&#39;.$this-&gt;language.&#39;.js&#39;,&nbsp;CClientScript::POS_END&nbsp;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$clientScript-&gt;registerScript(&nbsp;&#39;content&#39;,&nbsp;$this-&gt;makeOptions(),&nbsp;CClientScript::POS_END&nbsp;);
&nbsp;&nbsp;&nbsp;&nbsp;}
}
?&gt;</pre><p><br/></p><p><span style=\"font-size: 16px;\">4. 增加extensions/ueditor, 目录结构如下：</span></p><p>&nbsp; <img alt=\"1408525680877264.jpg\" src=\"/uploads/ueditor/image/20140820/1408525680877264.jpg\" title=\"1408525680877264.jpg\"/></p><p>&nbsp;&nbsp; <br/></p><p>&nbsp;&nbsp; <span style=\"font-size: 16px;\">UeditorUploader.class.php文件：</span></p><pre class=\"brush:php;toolbar:false\">&lt;?php

/**
&nbsp;*&nbsp;Created&nbsp;by&nbsp;JetBrains&nbsp;PhpStorm.
&nbsp;*&nbsp;User:&nbsp;taoqili
&nbsp;*&nbsp;Date:&nbsp;12-7-18
&nbsp;*&nbsp;Time:&nbsp;上午11:&nbsp;32
&nbsp;*&nbsp;UEditor编辑器通用上传类
&nbsp;*/
class&nbsp;UeditorUploader
{
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;$fileField;&nbsp;//文件域名
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;$file;&nbsp;//文件上传对象
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;$base64;&nbsp;//文件上传对象
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;$config;&nbsp;//配置信息
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;$oriName;&nbsp;//原始文件名
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;$fileName;&nbsp;//新文件名
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;$fullName;&nbsp;//完整文件名,即从当前配置目录开始的URL
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;$filePath;&nbsp;//完整文件名,即从当前配置目录开始的URL
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;$fileSize;&nbsp;//文件大小
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;$fileType;&nbsp;//文件类型
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;$stateInfo;&nbsp;//上传状态信息,
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;$stateMap&nbsp;=&nbsp;array(&nbsp;//上传状态映射表，国际化用户需考虑此处数据的国际化
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;SUCCESS&quot;,&nbsp;//上传成功标记，在UEditor中内不可改变，否则flash判断会出错
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;文件大小超出&nbsp;upload_max_filesize&nbsp;限制&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;文件大小超出&nbsp;MAX_FILE_SIZE&nbsp;限制&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;文件未被完整上传&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;没有文件被上传&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;上传文件为空&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;ERROR_TMP_FILE&quot;&nbsp;=&gt;&nbsp;&quot;临时文件错误&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;ERROR_TMP_FILE_NOT_FOUND&quot;&nbsp;=&gt;&nbsp;&quot;找不到临时文件&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;ERROR_SIZE_EXCEED&quot;&nbsp;=&gt;&nbsp;&quot;文件大小超出网站限制&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;ERROR_TYPE_NOT_ALLOWED&quot;&nbsp;=&gt;&nbsp;&quot;文件类型不允许&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;ERROR_CREATE_DIR&quot;&nbsp;=&gt;&nbsp;&quot;目录创建失败&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;ERROR_DIR_NOT_WRITEABLE&quot;&nbsp;=&gt;&nbsp;&quot;目录没有写权限&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;ERROR_FILE_MOVE&quot;&nbsp;=&gt;&nbsp;&quot;文件保存时出错&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;ERROR_FILE_NOT_FOUND&quot;&nbsp;=&gt;&nbsp;&quot;找不到上传文件&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;ERROR_WRITE_CONTENT&quot;&nbsp;=&gt;&nbsp;&quot;写入文件内容错误&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;ERROR_UNKNOWN&quot;&nbsp;=&gt;&nbsp;&quot;未知错误&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;ERROR_DEAD_LINK&quot;&nbsp;=&gt;&nbsp;&quot;链接不可用&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;ERROR_HTTP_LINK&quot;&nbsp;=&gt;&nbsp;&quot;链接不是http链接&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;ERROR_HTTP_CONTENTTYPE&quot;&nbsp;=&gt;&nbsp;&quot;链接contentType不正确&quot;
&nbsp;&nbsp;&nbsp;&nbsp;);

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;构造函数
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@param&nbsp;string&nbsp;$fileField&nbsp;表单名称
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@param&nbsp;array&nbsp;$config&nbsp;配置项
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@param&nbsp;bool&nbsp;$base64&nbsp;是否解析base64编码，可省略。若开启，则$fileField代表的是base64编码的字符串表单名
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;function&nbsp;__construct($fileField,&nbsp;$config,&nbsp;$type&nbsp;=&nbsp;&quot;upload&quot;)
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;fileField&nbsp;=&nbsp;$fileField;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;config&nbsp;=&nbsp;$config;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;type&nbsp;=&nbsp;$type;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;($type&nbsp;==&nbsp;&quot;remote&quot;)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;saveRemote();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;if($type&nbsp;==&nbsp;&quot;base64&quot;)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;upBase64();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;upFile();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateMap[&#39;ERROR_TYPE_NOT_ALLOWED&#39;]&nbsp;=&nbsp;iconv(&#39;unicode&#39;,&nbsp;&#39;utf-8&#39;,&nbsp;$this-&gt;stateMap[&#39;ERROR_TYPE_NOT_ALLOWED&#39;]);
&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;上传文件的主处理方法
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;mixed
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;function&nbsp;upFile()
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$file&nbsp;=&nbsp;$this-&gt;file&nbsp;=&nbsp;$_FILES[$this-&gt;fileField];
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!$file)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_FILE_NOT_FOUND&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;($this-&gt;file[&#39;error&#39;])&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo($file[&#39;error&#39;]);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;if&nbsp;(!file_exists($file[&#39;tmp_name&#39;]))&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_TMP_FILE_NOT_FOUND&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;if&nbsp;(!is_uploaded_file($file[&#39;tmp_name&#39;]))&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_TMPFILE&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;oriName&nbsp;=&nbsp;$file[&#39;name&#39;];
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;fileSize&nbsp;=&nbsp;$file[&#39;size&#39;];
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;fileType&nbsp;=&nbsp;$this-&gt;getFileExt();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;fullName&nbsp;=&nbsp;$this-&gt;getFullName();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;filePath&nbsp;=&nbsp;$this-&gt;getFilePath();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;fileName&nbsp;=&nbsp;$this-&gt;getFileName();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$dirname&nbsp;=&nbsp;dirname($this-&gt;filePath);

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//检查文件大小是否超出限制
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!$this-&gt;checkSize())&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_SIZE_EXCEED&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//检查是否不允许的文件格式
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!$this-&gt;checkType())&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_TYPE_NOT_ALLOWED&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//创建目录失败
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!file_exists($dirname)&nbsp;&amp;&amp;&nbsp;!mkdir($dirname,&nbsp;0777,&nbsp;true))&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_CREATE_DIR&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;if&nbsp;(!is_writeable($dirname))&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_DIR_NOT_WRITEABLE&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//移动文件
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!(move_uploaded_file($file[&quot;tmp_name&quot;],&nbsp;$this-&gt;filePath)&nbsp;&amp;&amp;&nbsp;file_exists($this-&gt;filePath)))&nbsp;{&nbsp;//移动失败
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_FILE_MOVE&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{&nbsp;//移动成功
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;stateMap[0];
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;处理base64编码的图片上传
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;mixed
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;function&nbsp;upBase64()
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$base64Data&nbsp;=&nbsp;$_POST[$this-&gt;fileField];
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$img&nbsp;=&nbsp;base64_decode($base64Data);

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;oriName&nbsp;=&nbsp;$this-&gt;config[&#39;oriName&#39;];
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;fileSize&nbsp;=&nbsp;strlen($img);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;fileType&nbsp;=&nbsp;$this-&gt;getFileExt();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;fullName&nbsp;=&nbsp;$this-&gt;getFullName();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;filePath&nbsp;=&nbsp;$this-&gt;getFilePath();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;fileName&nbsp;=&nbsp;$this-&gt;getFileName();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$dirname&nbsp;=&nbsp;dirname($this-&gt;filePath);

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//检查文件大小是否超出限制
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!$this-&gt;checkSize())&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_SIZE_EXCEED&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//创建目录失败
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!file_exists($dirname)&nbsp;&amp;&amp;&nbsp;!mkdir($dirname,&nbsp;0777,&nbsp;true))&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_CREATE_DIR&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;if&nbsp;(!is_writeable($dirname))&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_DIR_NOT_WRITEABLE&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//移动文件
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!(file_put_contents($this-&gt;filePath,&nbsp;$img)&nbsp;&amp;&amp;&nbsp;file_exists($this-&gt;filePath)))&nbsp;{&nbsp;//移动失败
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_WRITE_CONTENT&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{&nbsp;//移动成功
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;stateMap[0];
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;拉取远程图片
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;mixed
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;function&nbsp;saveRemote()
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$imgUrl&nbsp;=&nbsp;htmlspecialchars($this-&gt;fileField);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$imgUrl&nbsp;=&nbsp;str_replace(&quot;&amp;amp;&quot;,&nbsp;&quot;&amp;&quot;,&nbsp;$imgUrl);

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//http开头验证
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(strpos($imgUrl,&nbsp;&quot;http&quot;)&nbsp;!==&nbsp;0)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_HTTP_LINK&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//获取请求头并检测死链
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$heads&nbsp;=&nbsp;get_headers($imgUrl);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!(stristr($heads[0],&nbsp;&quot;200&quot;)&nbsp;&amp;&amp;&nbsp;stristr($heads[0],&nbsp;&quot;OK&quot;)))&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_DEAD_LINK&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//格式验证(扩展名验证和Content-Type验证)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$fileType&nbsp;=&nbsp;strtolower(strrchr($imgUrl,&nbsp;&#39;.&#39;));
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!in_array($fileType,&nbsp;$this-&gt;config[&#39;allowFiles&#39;])&nbsp;||&nbsp;stristr($heads[&#39;Content-Type&#39;],&nbsp;&quot;image&quot;))&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_HTTP_CONTENTTYPE&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//打开输出缓冲区并获取远程图片
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ob_start();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$context&nbsp;=&nbsp;stream_context_create(
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;array(&#39;http&#39;&nbsp;=&gt;&nbsp;array(
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;follow_location&#39;&nbsp;=&gt;&nbsp;false&nbsp;//&nbsp;don&#39;t&nbsp;follow&nbsp;redirects
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;))
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;readfile($imgUrl,&nbsp;false,&nbsp;$context);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$img&nbsp;=&nbsp;ob_get_contents();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ob_end_clean();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;preg_match(&quot;/[\\/]([^\\/]*)[\\.]?[^\\.\\/]*$/&quot;,&nbsp;$imgUrl,&nbsp;$m);

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;oriName&nbsp;=&nbsp;$m&nbsp;?&nbsp;$m[1]:&quot;&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;fileSize&nbsp;=&nbsp;strlen($img);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;fileType&nbsp;=&nbsp;$this-&gt;getFileExt();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;fullName&nbsp;=&nbsp;$this-&gt;getFullName();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;filePath&nbsp;=&nbsp;$this-&gt;getFilePath();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;fileName&nbsp;=&nbsp;$this-&gt;getFileName();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$dirname&nbsp;=&nbsp;dirname($this-&gt;filePath);

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//检查文件大小是否超出限制
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!$this-&gt;checkSize())&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_SIZE_EXCEED&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//创建目录失败
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!file_exists($dirname)&nbsp;&amp;&amp;&nbsp;!mkdir($dirname,&nbsp;0777,&nbsp;true))&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_CREATE_DIR&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;if&nbsp;(!Helper::is_writeable($dirname))&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_DIR_NOT_WRITEABLE&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//移动文件
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!(file_put_contents($this-&gt;filePath,&nbsp;$img)&nbsp;&amp;&amp;&nbsp;file_exists($this-&gt;filePath)))&nbsp;{&nbsp;//移动失败
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;getStateInfo(&quot;ERROR_WRITE_CONTENT&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{&nbsp;//移动成功
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;stateInfo&nbsp;=&nbsp;$this-&gt;stateMap[0];
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;上传错误检查
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@param&nbsp;$errCode
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;string
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;function&nbsp;getStateInfo($errCode)
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;!$this-&gt;stateMap[$errCode]&nbsp;?&nbsp;$this-&gt;stateMap[&quot;ERROR_UNKNOWN&quot;]&nbsp;:&nbsp;$this-&gt;stateMap[$errCode];
&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;获取文件扩展名
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;string
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;function&nbsp;getFileExt()
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;strtolower(strrchr($this-&gt;oriName,&nbsp;&#39;.&#39;));
&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;重命名文件
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;string
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;function&nbsp;getFullName()
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//替换日期事件
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$t&nbsp;=&nbsp;time();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$d&nbsp;=&nbsp;explode(&#39;-&#39;,&nbsp;date(&quot;Y-y-m-d-H-i-s&quot;));
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$format&nbsp;=&nbsp;$this-&gt;config[&quot;pathFormat&quot;];
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$format&nbsp;=&nbsp;str_replace(&quot;{yyyy}&quot;,&nbsp;$d[0],&nbsp;$format);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$format&nbsp;=&nbsp;str_replace(&quot;{yy}&quot;,&nbsp;$d[1],&nbsp;$format);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$format&nbsp;=&nbsp;str_replace(&quot;{mm}&quot;,&nbsp;$d[2],&nbsp;$format);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$format&nbsp;=&nbsp;str_replace(&quot;{dd}&quot;,&nbsp;$d[3],&nbsp;$format);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$format&nbsp;=&nbsp;str_replace(&quot;{hh}&quot;,&nbsp;$d[4],&nbsp;$format);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$format&nbsp;=&nbsp;str_replace(&quot;{ii}&quot;,&nbsp;$d[5],&nbsp;$format);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$format&nbsp;=&nbsp;str_replace(&quot;{ss}&quot;,&nbsp;$d[6],&nbsp;$format);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$format&nbsp;=&nbsp;str_replace(&quot;{time}&quot;,&nbsp;$t,&nbsp;$format);

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//过滤文件名的非法自负,并替换文件名
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$oriName&nbsp;=&nbsp;substr($this-&gt;oriName,&nbsp;0,&nbsp;strrpos($this-&gt;oriName,&nbsp;&#39;.&#39;));
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$oriName&nbsp;=&nbsp;preg_replace(&quot;/[\\|\\?\\&quot;\\&lt;\\&gt;\\/\\*\\\\\\\\]+/&quot;,&nbsp;&#39;&#39;,&nbsp;$oriName);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$format&nbsp;=&nbsp;str_replace(&quot;{filename}&quot;,&nbsp;$oriName,&nbsp;$format);

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//替换随机字符串
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$randNum&nbsp;=&nbsp;rand(1,&nbsp;10000000000)&nbsp;.&nbsp;rand(1,&nbsp;10000000000);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(preg_match(&quot;/\\{rand\\:([\\d]*)\\}/i&quot;,&nbsp;$format,&nbsp;$matches))&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$format&nbsp;=&nbsp;preg_replace(&quot;/\\{rand\\:[\\d]*\\}/i&quot;,&nbsp;substr($randNum,&nbsp;0,&nbsp;$matches[1]),&nbsp;$format);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$ext&nbsp;=&nbsp;$this-&gt;getFileExt();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;$format&nbsp;.&nbsp;$ext;
&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;获取文件名
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;string
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;function&nbsp;getFileName&nbsp;()&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;substr($this-&gt;filePath,&nbsp;strrpos($this-&gt;filePath,&nbsp;&#39;/&#39;)&nbsp;+&nbsp;1);
&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;获取文件完整路径
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;string
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;function&nbsp;getFilePath()
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$fullname&nbsp;=&nbsp;$this-&gt;fullName;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$rootPath&nbsp;=&nbsp;$_SERVER[&#39;DOCUMENT_ROOT&#39;];

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(substr($fullname,&nbsp;0,&nbsp;1)&nbsp;!=&nbsp;&#39;/&#39;)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$fullname&nbsp;=&nbsp;&#39;/&#39;&nbsp;.&nbsp;$fullname;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;$rootPath&nbsp;.&nbsp;$fullname;
&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;文件类型检测
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;bool
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;function&nbsp;checkType()
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;in_array($this-&gt;getFileExt(),&nbsp;$this-&gt;config[&quot;allowFiles&quot;]);
&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;文件大小检测
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;bool
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;function&nbsp;&nbsp;checkSize()
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;$this-&gt;fileSize&nbsp;&lt;=&nbsp;($this-&gt;config[&quot;maxSize&quot;]);
&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;获取当前上传成功文件的各项信息
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;array
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;function&nbsp;getFileInfo()
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;array(
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;state&quot;&nbsp;=&gt;&nbsp;$this-&gt;stateInfo,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;url&quot;&nbsp;=&gt;&nbsp;$this-&gt;fullName,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;title&quot;&nbsp;=&gt;&nbsp;$this-&gt;fileName,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;original&quot;&nbsp;=&gt;&nbsp;$this-&gt;oriName,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;type&quot;&nbsp;=&gt;&nbsp;$this-&gt;fileType,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;size&quot;&nbsp;=&gt;&nbsp;$this-&gt;fileSize
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;);
&nbsp;&nbsp;&nbsp;&nbsp;}

}</pre><p>&nbsp;&nbsp; <br/></p><p>&nbsp;&nbsp;&nbsp;然后在模板页调用：</p><pre class=\"brush:php;toolbar:false\">&lt;?php&nbsp;echo&nbsp;$form-&gt;textArea($model.&#39;content&#39;);&nbsp;?&gt;
&lt;?php
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;widget(&#39;application.widget.ueditor.Ueditor&#39;,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;array(&#39;htmlOptions&#39;=&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;array(
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;id&#39;=&gt;&#39;Post_content&#39;,//页面中输入框（或其他初始化容器）的ID
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;name&#39;=&gt;&#39;editor&#39;,//指定ueditor实例的名称,个页面有多个ueditor实例时使用
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;config&#39;=&gt;&nbsp;array(
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;initialFrameHeight&#39;=&gt;&#39;400&#39;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;initialFrameWidth&#39;=&gt;&#39;80%&#39;,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;),
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;);
&nbsp;&nbsp;&nbsp;&nbsp;?&gt;</pre><hr/><p>相关文章：</p><p><a href=\"http://www.yiifcms.com/post/42/\" title=\"增加Ueditor在线管理图片删除功能\" target=\"_blank\" style=\"\">增加Ueditor在线管理图片删除功能</a></p><p><a href=\"http://www.yiifcms.com/post/39/\" title=\" yii 操作cookie的用法详解\" target=\"_blank\" style=\"\">yii 操作cookie的用法详解</a></p><p><a href=\"http://www.yiifcms.com/post/38/\" title=\"关于人人网开发平台提供的sdk的问题\" target=\"_blank\" style=\"\">关于人人网开发平台提供的sdk的问题</a></p><p><a href=\"http://www.yiifcms.com/post/37/\" title=\"yii下实现sitemap自动生成\" target=\"_blank\" style=\"font-weight:bold;\">yii下实现sitemap自动生成</a></p><p><br/></p>','原创','','','php,web,html,js,yii,cms,baidu,ueditor,kindeditor,IT','86','N','N','','','1','0','N','1408691092','0','Y','0','Y','1408516638');
INSERT INTO `yiif_post` VALUES('42','1','增加Ueditor在线管理图片删除功能','','','','','21','0','前天我提到了 yii下安装并使用ueditor 在使用过程中 遇到了一些问题 虽然不大 但对于追求完美的人来说 还是欲除之而后快。下面我就两个问题说下解决方案：  编辑器中图片拉伸的问题  其实可以修改成等比拉伸 这样可以避免误操作引起的图片不好看的问题 如果您不介意 那么可以不 用看：修改ueditor.all.js 大约16970行 (如果您用的是ueditor.all.min.js 那么你最好先更新下ueditor.all.js然后压缩成mini版，这里就不多说了)：  ...','','','','','<p><span style=\"font-size: 16px;\">前天我提到了 </span><a style=\"font-size: 16px; text-decoration: underline;\" title=\"yii框架下使用ueditor插件详解\" target=\"_blank\" href=\"http://www.yiifcms.com/post/41/\"><span style=\"font-size: 16px;\">yii下安装并使用ueditor</span></a><span style=\"font-size: 16px;\"> 在使用过程中 遇到了一些问题 虽然不大 但对于追求完美的人来说 还是欲除之而后快。</span></p><p><span style=\"font-size: 16px;\">下面我就两个问题说下解决方案：</span></p><p><span style=\"font-size: 16px;\">1. <strong>编辑器中图片拉伸的问题</strong>&nbsp; <br/></span></p><p><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp;&nbsp;其实可以修改成等比拉伸 这样可以避免误操作引起的图片不好看的问题 如果您不介意 那么可以不 用看：<br/></span></p><p><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp;&nbsp;修改ueditor.all.js 大约16970行 (如果您用的是ueditor.all.min.js 那么你最好先更新下ueditor.all.js然后压缩成mini版，这里就不多说了)：</span></p><pre class=\"brush:js;toolbar:false;\">/*if&nbsp;(rect[dir][2]&nbsp;!=&nbsp;0)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tmp&nbsp;=&nbsp;dom.clientWidth&nbsp;+&nbsp;rect[dir][2]&nbsp;*&nbsp;offset.x;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dom.style.width&nbsp;=&nbsp;me._validScaledProp(&#39;width&#39;,&nbsp;tmp)&nbsp;+&nbsp;&#39;px&#39;;
}
if&nbsp;(rect[dir][3]&nbsp;!=&nbsp;0)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tmp&nbsp;=&nbsp;dom.clientHeight&nbsp;+&nbsp;rect[dir][3]&nbsp;*&nbsp;offset.y;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dom.style.height&nbsp;=&nbsp;me._validScaledProp(&#39;height&#39;,&nbsp;tmp)&nbsp;+&nbsp;&#39;px&#39;;
}*/
//等比缩放图片
if&nbsp;(rect[dir][2]&nbsp;!=&nbsp;0)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;tmp&nbsp;=&nbsp;dom.clientWidth&nbsp;+&nbsp;rect[dir][2]&nbsp;*&nbsp;offset.x;
&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;tmpwh&nbsp;=&nbsp;parseInt(dom.style.width)/parseInt(dom.style.height);
&nbsp;&nbsp;&nbsp;&nbsp;dom.style.width&nbsp;=&nbsp;me._validScaledProp(&#39;width&#39;,&nbsp;tmp)&nbsp;+&nbsp;&#39;px&#39;;
&nbsp;&nbsp;&nbsp;&nbsp;dom.style.height&nbsp;=&nbsp;me._validScaledProp(&#39;height&#39;,&nbsp;tmp/tmpwh)&nbsp;+&nbsp;&#39;px&#39;;
}
if&nbsp;(rect[dir][3]&nbsp;!=&nbsp;0)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;tmp&nbsp;=&nbsp;dom.clientHeight&nbsp;+&nbsp;rect[dir][3]&nbsp;*&nbsp;offset.y;
&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;tmpwh&nbsp;=&nbsp;parseInt(dom.style.width)/parseInt(dom.style.height);
&nbsp;&nbsp;&nbsp;&nbsp;dom.style.height&nbsp;=&nbsp;me._validScaledProp(&#39;height&#39;,&nbsp;tmp)&nbsp;+&nbsp;&#39;px&#39;;
&nbsp;&nbsp;&nbsp;&nbsp;dom.style.width&nbsp;=&nbsp;me._validScaledProp(&#39;width&#39;,&nbsp;tmp*tmpwh)&nbsp;+&nbsp;&#39;px&#39;;
}</pre><p><span style=\"font-size: 16px;\">2.&nbsp; <strong>就是本文要说的在线管理图片没有删除功能的问题</strong> <br/></span></p><p><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp;&nbsp;我的原理是 检索出图片之后 增加一个删除的按钮或者链接 然后请求服务端删除 接收返回结果 提示是否成功删除：</span></p><p><span style=\"font-size: 16px;\">&nbsp;&nbsp; 第一步： 需要增加一个后端请求删除的url&nbsp; 这样可以在config.json里面增加一项即可&nbsp; 我这里在控制器层初始化了$CONFIG：</span></p><pre class=\"brush:php;toolbar:false\">&#39;imageDelUrl&#39;&nbsp;=&gt;&nbsp;$this-&gt;createUrl(&#39;uploadify/ajaxDel&#39;),&nbsp;//在线图片管理删除操作请求url</pre><p>&nbsp;&nbsp; <span style=\"font-size: 16px;\">第二步：增加js删除方法，放到ueditor/dialogs/image/image.html里面 ：</span></p><pre class=\"brush:js;toolbar:false\">&lt;script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;//新增在线管理删除图片
&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;uedel(path,&nbsp;id){
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(confirm(&#39;您确定要删除它吗？删除后不可恢复！&#39;)){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;url&nbsp;=&nbsp;editor.getOpt(&#39;imageDelUrl&#39;);&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$.get(url,{&#39;path&#39;:path},function(data){
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(data.state&nbsp;==&nbsp;&#39;success&#39;)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alert(data.message);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&quot;#&quot;+id).parent(&quot;li&quot;).remove();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alert(data.message);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},&#39;json&#39;);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&lt;/script&gt;</pre><p>&nbsp;&nbsp; <span style=\"font-size: 16px;\">大家可以看到 我用了一句</span></p><pre class=\"brush:js;toolbar:false\">editor.getOpt(&#39;imageDelUrl&#39;);</pre><p>&nbsp;&nbsp; <span style=\"font-size: 16px;\">这是自带的方法 可以自定义url&nbsp; 由于已经加载了jquery 所以我也就直接ajax请求了</span></p><p><span style=\"font-size: 16px;\">&nbsp;&nbsp; 第三步： 修改ueditor/dialogs/image/image.js文件（大约902行）</span></p><pre class=\"brush:js;toolbar:false;\">&nbsp;&nbsp;&nbsp;&nbsp;del&nbsp;=&nbsp;document.createElement(&#39;a&#39;);&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;del.innerHTML&nbsp;=&nbsp;&#39;删除&#39;;
&nbsp;&nbsp;&nbsp;&nbsp;domUtils.addClass(del,&nbsp;&#39;del&#39;);
&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;delid=&#39;imagelist_&#39;+i;
&nbsp;&nbsp;&nbsp;&nbsp;del.setAttribute(&#39;id&#39;,delid);
&nbsp;&nbsp;&nbsp;&nbsp;del.setAttribute(&#39;href&#39;,&#39;javascript:;&#39;);
&nbsp;&nbsp;&nbsp;&nbsp;del.setAttribute(&#39;onclick&#39;,&#39;uedel(&quot;&#39;+list[i].url+&#39;&quot;,&quot;&#39;+delid+&#39;&quot;)&#39;);</pre><p>&nbsp;&nbsp;&nbsp; <span style=\"font-size: 16px;\">924行 增加一句：item.appendChild(del); 为了把a标签加载进去</span></p><p><span style=\"font-size: 16px;\">&nbsp;&nbsp;&nbsp; 到这里 我们可以看到 已经有了“删除”链接了&nbsp; 具体样式修改 ueditor/dialogs/image/image.css 我是直接在末尾添加：</span></p><pre class=\"brush:css;toolbar:false\">/*&nbsp;新增在线管理删除图片样式*/
#online&nbsp;li&nbsp;a.del&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;width:&nbsp;auto;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;position:&nbsp;absolute;
&nbsp;&nbsp;&nbsp;&nbsp;top:&nbsp;0;
&nbsp;&nbsp;&nbsp;&nbsp;right:&nbsp;0;
&nbsp;&nbsp;&nbsp;&nbsp;color:#F00;
&nbsp;&nbsp;&nbsp;&nbsp;background-color:#DDDDDD;
&nbsp;&nbsp;&nbsp;&nbsp;opacity:0.8;
&nbsp;&nbsp;&nbsp;&nbsp;filter:alpha(80);
&nbsp;&nbsp;&nbsp;&nbsp;border:&nbsp;0;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;z-index:3;
&nbsp;&nbsp;&nbsp;&nbsp;text-align:right;
&nbsp;&nbsp;&nbsp;&nbsp;text-decoration:none;&nbsp;&nbsp;&nbsp;&nbsp;
}</pre><p>&nbsp;&nbsp; <span style=\"font-size: 16px;\">第四步：实现删除图片的服务端方法(放到您的控制器里面即可,我的是UploadifyController 和第一步的$this-&gt;createUrl(&#39;uploadify/ajaxDel&#39;);相对应 )：</span></p><pre class=\"brush:php;toolbar:false\">&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;直接删除路径文件
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;function&nbsp;actionAjaxDel(){
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$file&nbsp;=&nbsp;$this-&gt;_request-&gt;getParam(&#39;path&#39;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$firstchar&nbsp;=&nbsp;substr($file,0,1);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(in_array($firstchar,&nbsp;array(&#39;/&#39;,&#39;\\\\&#39;))){
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$file&nbsp;=&nbsp;substr($file,1);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if($file&nbsp;&amp;&amp;&nbsp;file_exists($file)){
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unlink($file);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$var[&#39;state&#39;]&nbsp;=&nbsp;&#39;success&#39;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$var[&#39;message&#39;]&nbsp;=&nbsp;&#39;删除完成&#39;;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$var[&#39;state&#39;]&nbsp;=&nbsp;&#39;error&#39;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$var[&#39;message&#39;]&nbsp;=&nbsp;&#39;删除失败，未找到&#39;.$file;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;catch&nbsp;(Exception&nbsp;$e){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$var[&#39;state&#39;]&nbsp;=&nbsp;&#39;error&#39;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$var[&#39;message&#39;]&nbsp;=&nbsp;&#39;删除失败：&#39;.$e-&gt;getMessage();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exit(CJSON::encode($var));
&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p><br/></p><p><span style=\"font-size: 16px;\">已测试通过， 如果还有不明白的地方，欢迎探讨。</span><br/></p>','原创','http://www.yiifcms.com/post/42/','','html,js,jquery,yii,cms,ueditor,IT','45','N','N','','','0','0','N','1408689354','0','Y','0','Y','1408613519');
INSERT INTO `yiif_post` VALUES('43','1','Linux crontab 命令格式与详细例子 ','','','','','3','0','基本格式 :*　　*　　*　　*　　*　　command分　时　日　月　周　命令第1列表示分钟1～59 每分钟用*或者 */1表示第2列表示小时1～23（0表示0点）第3列表示日期1～31第4列表示月份1～12第5列标识号星期0～6（0表示星期天）第6列要运行的命令crontab文件的一些例子：30 21 * * * /usr/local/etc/rc.d/lighttpd restart上面的例子表示每晚的21:30重启apache。45 4 1,10,22 * * /usr/local/etc/rc.d/lighttpd restart上面...','','','','','<p><span style=\"font-size: 16px;\">基本格式 :<br/>*　　*　　*　　*　　*　　command<br/>分　时　日　月　周　命令</span></p><p><span style=\"font-size: 16px;\">第1列表示分钟1～59 每分钟用*或者 */1表示<br/>第2列表示小时1～23（0表示0点）<br/>第3列表示日期1～31<br/>第4列表示月份1～12<br/>第5列标识号星期0～6（0表示星期天）<br/>第6列要运行的命令</span></p><p><span style=\"font-size: 16px;\">crontab文件的一些例子：</span></p><pre class=\"brush:bash;toolbar:false\">30&nbsp;21&nbsp;*&nbsp;*&nbsp;*&nbsp;/usr/local/etc/rc.d/lighttpd&nbsp;restart</pre><p><span style=\"font-size: 16px;\">上面的例子表示每晚的21:30重启apache。</span><br/></p><pre class=\"brush:bash;toolbar:false\">45&nbsp;4&nbsp;1,10,22&nbsp;*&nbsp;*&nbsp;/usr/local/etc/rc.d/lighttpd&nbsp;restart</pre><p><span style=\"font-size: 16px;\">上面的例子表示每月1、10、22日的4 : 45重启apache。</span><br/></p><pre class=\"brush:bash;toolbar:false\">10&nbsp;1&nbsp;*&nbsp;*&nbsp;6,0&nbsp;/usr/local/etc/rc.d/lighttpd&nbsp;restart</pre><p><span style=\"font-size: 16px;\">上面的例子表示每周六、周日的1 : 10重启apache。</span><br/></p><pre class=\"brush:bash;toolbar:false\">0,30&nbsp;18-23&nbsp;*&nbsp;*&nbsp;*&nbsp;/usr/local/etc/rc.d/lighttpd&nbsp;restart</pre><p><span style=\"font-size: 16px;\">上面的例子表示在每天18 : 00至23 : 00之间每隔30分钟重启apache。</span><br/></p><pre class=\"brush:bash;toolbar:false\">0&nbsp;23&nbsp;*&nbsp;*&nbsp;6&nbsp;/usr/local/etc/rc.d/lighttpd&nbsp;restart</pre><p><span style=\"font-size: 16px;\">上面的例子表示每星期六的11 : 00 pm重启apache。</span><br/></p><pre class=\"brush:bash;toolbar:false\">*&nbsp;*/1&nbsp;*&nbsp;*&nbsp;*&nbsp;/usr/local/etc/rc.d/lighttpd&nbsp;restart</pre><p><span style=\"font-size: 16px;\">每一小时重启apache</span><br/></p><pre class=\"brush:bash;toolbar:false\">*&nbsp;23-7/1&nbsp;*&nbsp;*&nbsp;*&nbsp;/usr/local/etc/rc.d/lighttpd&nbsp;restart</pre><p><span style=\"font-size: 16px;\">晚上11点到早上7点之间，每隔一小时重启apache</span><br/></p><pre class=\"brush:bash;toolbar:false\">0&nbsp;11&nbsp;4&nbsp;*&nbsp;mon-wed&nbsp;/usr/local/etc/rc.d/lighttpd&nbsp;restart</pre><p><span style=\"font-size: 16px;\">每月的4号与每周一到周三的11点重启apache</span><br/></p><pre class=\"brush:bash;toolbar:false\">0&nbsp;4&nbsp;1&nbsp;jan&nbsp;*&nbsp;/usr/local/etc/rc.d/lighttpd&nbsp;restart</pre><p><span style=\"font-size: 16px;\">一月一号的4点重启apache</span><br/></p><p><span style=\"font-size: 16px;\">&nbsp;</span></p><p><strong><span style=\"font-size: 16px;\">名称 : crontab </span></strong></p><p><span style=\"font-size: 16px;\">使用权限 : 所有使用者 </span></p><p><span style=\"font-size: 16px;\">使用方式 : </span></p><p><span style=\"font-size: 16px;\">crontab file [-u user]-用指定的文件替代目前的crontab。 </span></p><p><span style=\"font-size: 16px;\">crontab-[-u user]-用标准输入替代目前的crontab. </span></p><p><span style=\"font-size: 16px;\">crontab-1[user]-列出用户目前的crontab. </span></p><p><span style=\"font-size: 16px;\">crontab-e[user]-编辑用户目前的crontab. </span></p><p><span style=\"font-size: 16px;\">crontab-d[user]-删除用户目前的crontab. </span></p><p><span style=\"font-size: 16px;\">crontab-c dir- 指定crontab的目录。 </span></p><p><span style=\"font-size: 16px;\">crontab文件的格式：M H D m d cmd. </span></p><p><span style=\"font-size: 16px;\">&nbsp;</span></p><p><span style=\"font-size: 16px;\">M: 分钟（0-59）。 </span></p><p><span style=\"font-size: 16px;\">H：小时（0-23）。 </span></p><p><span style=\"font-size: 16px;\">D：天（1-31）。 </span></p><p><span style=\"font-size: 16px;\">m: 月（1-12）。 </span></p><p><span style=\"font-size: 16px;\">d: 一星期内的天（0~6，0为星期天）。 </span></p><p><span style=\"font-size: 16px;\">cmd要运行的程序，程序被送入sh执行，这个shell只有USER,HOME,SHELL这三个环境变量</span></p><p><span style=\"font-size: 16px;\">说明 : </span></p><p><span style=\"font-size: 16px;\">crontab 是用来让使用者在固定时间或固定间隔执行程序之用，换句话说，也就是类似使用者的时程表。-u user 是指设定指定 </span></p><p><span style=\"font-size: 16px;\">user 的时程表，这个前提是你必须要有其权限(比如说是 root)才能够指定他人的时程表。如果不使用 -u user 的话，就是表示设</span></p><p><span style=\"font-size: 16px;\">定自己的时程表。 </span></p><p><span style=\"font-size: 16px;\">&nbsp;</span></p><p><span style=\"font-size: 16px;\">&nbsp;</span></p><p><span style=\"font-size: 16px;\">参数 : </span></p><p><span style=\"font-size: 16px;\">crontab -e : 执行文字编辑器来设定时程表，内定的文字编辑器是 VI，如果你想用别的文字编辑器，则请先设定 VISUAL 环境变数</span></p><p><span style=\"font-size: 16px;\">来指定使用那个文字编辑器(比如说 setenv VISUAL joe) </span></p><p><span style=\"font-size: 16px;\">crontab -r : 删除目前的时程表 </span></p><p><span style=\"font-size: 16px;\">crontab -l : 列出目前的时程表 </span></p><p><span style=\"font-size: 16px;\">crontab file [-u user]-用指定的文件替代目前的crontab。</span></p><p><span style=\"font-size: 16px;\">时程表的格式如下 : </span></p><p><span style=\"font-size: 16px;\">f1 f2 f3 f4 f5 program </span></p><p><span style=\"font-size: 16px;\">其中 f1 是表示分钟，f2 表示小时，f3 表示一个月份中的第几日，f4 表示月份，f5 表示一个星期中的第几天。program 表示要执</span></p><p><span style=\"font-size: 16px;\">行的程序。 </span></p><p><span style=\"font-size: 16px;\">当 f1 为 * 时表示每分钟都要执行 program，f2 为 * 时表示每小时都要执行程序，其馀类推 </span></p><p><span style=\"font-size: 16px;\">当 f1 为 a-b 时表示从第 a 分钟到第 b 分钟这段时间内要执行，f2 为 a-b 时表示从第 a 到第 b 小时都要执行，其馀类推 </span></p><p><span style=\"font-size: 16px;\">当 f1 为 */n 时表示每 n 分钟个时间间隔执行一次，f2 为 */n 表示每 n 小时个时间间隔执行一次，其馀类推 </span></p><p><span style=\"font-size: 16px;\">当 f1 为 a, b, c,... 时表示第 a, b, c,... 分钟要执行，f2 为 a, b, c,... 时表示第 a, b, c...个小时要执行，其馀类推 </span></p><p><span style=\"font-size: 16px;\">使用者也可以将所有的设定先存放在档案 file 中，用 crontab file 的方式来设定时程表。 </span></p><p><span style=\"font-size: 16px;\">例子 : </span></p><p><span style=\"font-size: 16px;\"></span></p><pre class=\"brush:bash;toolbar:false\">#每天早上7点执行一次&nbsp;/bin/ls&nbsp;:&nbsp;
0&nbsp;7&nbsp;*&nbsp;*&nbsp;*&nbsp;/bin/ls</pre><p><span style=\"font-size: 16px;\"></span></p><pre class=\"brush:bash;toolbar:false\">#在&nbsp;12&nbsp;月内,&nbsp;每天的早上&nbsp;6&nbsp;点到&nbsp;12&nbsp;点中，每隔3个小时执行一次&nbsp;/usr/bin/backup&nbsp;:&nbsp;
0&nbsp;6-12/3&nbsp;*&nbsp;12&nbsp;*&nbsp;/usr/bin/backup</pre><p><span style=\"font-size: 16px;\"></span></p><pre class=\"brush:bash;toolbar:false\">#周一到周五每天下午&nbsp;5:00&nbsp;寄一封信给&nbsp;alex@domain.name&nbsp;:&nbsp;
0&nbsp;17&nbsp;*&nbsp;*&nbsp;1-5&nbsp;mail&nbsp;-s&nbsp;&quot;hi&quot;&nbsp;alex@domain.name&nbsp;&lt;&nbsp;/tmp/maildata</pre><p><span style=\"font-size: 16px;\"></span></p><pre class=\"brush:bash;toolbar:false\">#每月每天的午夜&nbsp;0&nbsp;点&nbsp;20&nbsp;分,&nbsp;2&nbsp;点&nbsp;20&nbsp;分,&nbsp;4&nbsp;点&nbsp;20&nbsp;分....执行&nbsp;echo&nbsp;&quot;haha&quot;&nbsp;
20&nbsp;0-23/2&nbsp;*&nbsp;*&nbsp;*&nbsp;echo&nbsp;&quot;haha&quot;</pre><p><span style=\"font-size: 16px;\">注意 : </span></p><p><span style=\"font-size: 16px;\">当程序在你所指定的时间执行后，系统会寄一封信给你，显示该程序执行的内容，若是你不希望收到这样的信，请在每一行空一格之</span></p><p><span style=\"font-size: 16px;\">后加上<strong> &gt; /dev/null 2&gt;&amp;1 </strong>即可</span></p><p><span style=\"font-size: 16px;\">&nbsp;</span></p><p><span style=\"font-size: 16px;\">例子2 :</span></p><p><span style=\"font-size: 16px;\">#每天早上6点10分 </span></p><p><span style=\"font-size: 16px;\">10 6 * * * date </span></p><p><span style=\"font-size: 16px;\">#每两个小时 </span></p><p><span style=\"font-size: 16px;\">0 */2 * * * date </span></p><p><span style=\"font-size: 16px;\">#晚上11点到早上8点之间每两个小时，早上8点 </span></p><p><span style=\"font-size: 16px;\">0 23-7/2，8 * * * date </span></p><p><span style=\"font-size: 16px;\">#每个月的4号和每个礼拜的礼拜一到礼拜三的早上11点 </span></p><p><span style=\"font-size: 16px;\">0 11 4 * mon-wed date </span></p><p><span style=\"font-size: 16px;\">#1月份日早上4点 </span></p><p><span style=\"font-size: 16px;\">0 4 1 jan * date </span></p><p><span style=\"font-size: 16px;\">范例 </span></p><p><span style=\"font-size: 16px;\">$crontab -l 列出用户目前的crontab.</span></p><p><br/></p>','csdb','http://blog.csdn.net/ethanzhao/article/details/4406017','','apache,linux','29','N','N','','','2','0','N','1408690763','0','Y','0','Y','1408689318');
INSERT INTO `yiif_post` VALUES('44','1','Linux下查看文件和文件夹大小','','','','','3','0','当磁盘大小超过标准时会有报警提示，这时如果掌握df和du命令是非常明智的选择。    df可以查看一级文件夹大小、使用比例、档案系统及其挂入点，但对文件却无能为力。    du可以查看文件及文件夹的大小。    两者配合使用，非常有效。比如用df查看哪个一级目录过大，然后用df查看文件夹或文件的大小，如此便可迅速确定症结。    下面分别简要介绍    df命令可以显示目前所有文件系统的可用空间及使用情形，请看下列...','','','','','<p>当磁盘大小超过标准时会有报警提示，这时如果掌握df和du命令是非常明智的选择。</p><p>&nbsp;&nbsp;&nbsp; df可以查看一级文件夹大小、使用比例、档案系统及其挂入点，但对文件却无能为力。<br/>&nbsp;&nbsp;&nbsp; du可以查看文件及文件夹的大小。</p><p>&nbsp;&nbsp;&nbsp; 两者配合使用，非常有效。比如用df查看哪个一级目录过大，然后用df查看文件夹或文件的大小，如此便可迅速确定症结。</p><p>&nbsp;&nbsp;&nbsp; 下面分别简要介绍</p><p>&nbsp;&nbsp;&nbsp; <strong>df命令可以显示目前所有文件系统的可用空间及使用情形</strong>，请看下列这个例子：</p><pre class=\"brush:bash;toolbar:false\">以下是代码片段：
[yayug@yayu&nbsp;~]$&nbsp;df&nbsp;-h
Filesystem&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Size&nbsp;&nbsp;Used&nbsp;Avail&nbsp;Use%&nbsp;Mounted&nbsp;on
/dev/sda1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.9G&nbsp;&nbsp;300M&nbsp;&nbsp;3.4G&nbsp;&nbsp;&nbsp;8%&nbsp;/
/dev/sda7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100G&nbsp;&nbsp;188M&nbsp;&nbsp;&nbsp;95G&nbsp;&nbsp;&nbsp;1%&nbsp;/data0
/dev/sdb1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;133G&nbsp;&nbsp;&nbsp;80G&nbsp;&nbsp;&nbsp;47G&nbsp;&nbsp;64%&nbsp;/data1
/dev/sda6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7.8G&nbsp;&nbsp;218M&nbsp;&nbsp;7.2G&nbsp;&nbsp;&nbsp;3%&nbsp;/var
/dev/sda5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7.8G&nbsp;&nbsp;166M&nbsp;&nbsp;7.2G&nbsp;&nbsp;&nbsp;3%&nbsp;/tmp
/dev/sda3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9.7G&nbsp;&nbsp;2.5G&nbsp;&nbsp;6.8G&nbsp;&nbsp;27%&nbsp;/usr
tmpfs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.0G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;2.0G&nbsp;&nbsp;&nbsp;0%&nbsp;/dev/shm</pre><p>&nbsp; 参数 -h 表示使用「Human-readable」的输出，也就是在档案系统大小使用 GB、MB 等易读的格式。</p><p>&nbsp;&nbsp;&nbsp; 上面的命令输出的第一个字段（Filesystem）及最后一个字段（Mounted on）分别是档案系统及其挂入点。我们可以看到 /dev/sda1 这个分割区被挂在根目录下。</p><p>&nbsp;&nbsp;&nbsp; 接下来的四个字段 Size、Used、Avail、及 Use% 分别是该分割区的容量、已使用的大小、剩下的大小、及使用的百分比。 
FreeBSD下，当硬盘容量已满时，您可能会看到已使用的百分比超过 100%，因为 FreeBSD 会留一些空间给 root，让 root 
在档案系统满时，还是可以写东西到该档案系统中，以进行管理。</p><p>&nbsp;&nbsp;&nbsp;<strong> du：查询文件或文件夹的磁盘使用空间 </strong></p><p>&nbsp;&nbsp;&nbsp; 
如果当前目录下文件和文件夹很多，使用不带参数du的命令，可以循环列出所有文件和文件夹所使用的空间。这对查看究竟是那个地方过大是不利的，所以得指定
深入目录的层数，参数：--max-depth=，这是个极为有用的参数！如下，注意使用“*”，可以得到文件的使用空间大小.</p><p>&nbsp;&nbsp;&nbsp; <strong>提醒</strong>：一向命令比linux复杂的FreeBSD，它的du命令指定深入目录的层数却是比linux简化，为 -d。</p><pre class=\"brush:bash;toolbar:false\">以下是代码片段：
[root@bsso&nbsp;yayu]#&nbsp;du&nbsp;-h&nbsp;--max-depth=1&nbsp;work/testing
27M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;work/testing/logs
35M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;work/testing
[root@bsso&nbsp;yayu]#&nbsp;du&nbsp;-h&nbsp;--max-depth=1&nbsp;work/testing/*
8.0K&nbsp;&nbsp;&nbsp;&nbsp;work/testing/func.php
27M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;work/testing/logs
8.1M&nbsp;&nbsp;&nbsp;&nbsp;work/testing/nohup.out
8.0K&nbsp;&nbsp;&nbsp;&nbsp;work/testing/testing_c.php
12K&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;work/testing/testing_func_reg.php
8.0K&nbsp;&nbsp;&nbsp;&nbsp;work/testing/testing_get.php
8.0K&nbsp;&nbsp;&nbsp;&nbsp;work/testing/testing_g.php
8.0K&nbsp;&nbsp;&nbsp;&nbsp;work/testing/var.php
[root@bsso&nbsp;yayu]#&nbsp;du&nbsp;-h&nbsp;--max-depth=1&nbsp;work/testing/logs/
27M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;work/testing/logs/
[root@bsso&nbsp;yayu]#&nbsp;du&nbsp;-h&nbsp;--max-depth=1&nbsp;work/testing/logs/*
24K&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;work/testing/logs/errdate.log_show.log
8.0K&nbsp;&nbsp;&nbsp;&nbsp;work/testing/logs/pertime_show.log
27M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;work/testing/logs/show.log</pre><p>值得注意的是，看见一个针对du和df命令异同的文章：《<a href=\"http://www.diybl.com/course/6_system/linux/Linuxjs/2008716/133217.html\">du df 差异导致文件系统误报解决</a>》。</p><p>&nbsp;&nbsp;&nbsp; du 统计文件大小相加 <br/>&nbsp;&nbsp;&nbsp; df&nbsp; 统计数据块使用情况</p><p>&nbsp;&nbsp;&nbsp; 如果有一个进程在打开一个大文件的时候,这个大文件直接被rm 或者mv掉，则du会更新统计数值，df不会更新统计数值,还是认为空间没有释放。直到这个打开大文件的进程被Kill掉。</p><p>&nbsp;&nbsp;&nbsp; 如此一来在定期删除 /var/spool/clientmqueue下面的文件时，如果没有杀掉其进程，那么空间一直没有释放。</p><p>&nbsp;&nbsp;&nbsp; 使用下面的命令杀掉进程之后，系统恢复。<br/>&nbsp;&nbsp;&nbsp; fuser -u /var/spool/clientmqueue</p><p><span style=\"font-size: 10pt\"><strong>查看linux文件目录的大小和文件夹包含的文件数</strong></span></p><p>&nbsp;&nbsp;&nbsp; 统计总数大小</p><p>&nbsp;&nbsp;&nbsp; du -sh xmldb/</p><p>&nbsp;&nbsp;&nbsp; du -sm * | sort -n //统计当前目录大小 并安大小 排序</p><p>&nbsp;&nbsp;&nbsp; du -sk * | sort -n</p><p>&nbsp;&nbsp;&nbsp; du -sk * | grep guojf //看一个人的大小</p><p>&nbsp;&nbsp;&nbsp; du -m | cut -d &quot;/&quot; -f 2 //看第二个/ 字符前的文字</p><p>&nbsp;&nbsp;&nbsp; 查看此文件夹有多少文件 /*/*/* 有多少文件</p><p>&nbsp;&nbsp;&nbsp; du xmldb/</p><p>&nbsp;&nbsp;&nbsp; du xmldb/*/*/* |wc -l</p><p>&nbsp;&nbsp;&nbsp; 40752</p><p>&nbsp;&nbsp;&nbsp; 解释：</p><p>&nbsp;&nbsp;&nbsp; wc [-lmw]</p><p>&nbsp;&nbsp;&nbsp; 参数说明：</p><p>&nbsp;&nbsp;&nbsp; -l :多少行</p><p>&nbsp;&nbsp;&nbsp; -m:多少字符</p><p>&nbsp;&nbsp;&nbsp; -w:多少字</p><pre class=\"brush:bash;toolbar:false\">Linux:ls以K、M、G为单位查看文件大小
#man&nbsp;ls

……

-h,&nbsp;--human-readable

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;print&nbsp;sizes&nbsp;in&nbsp;human&nbsp;readable&nbsp;format&nbsp;(e.g.,&nbsp;1K&nbsp;234M&nbsp;2G)

……

#&nbsp;ls

cuss.war&nbsp;&nbsp;&nbsp;&nbsp;nohup.out

#&nbsp;ls&nbsp;-l

total&nbsp;30372

-rw-r--r--&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;root&nbsp;root&nbsp;31051909&nbsp;May&nbsp;24&nbsp;10:07&nbsp;cuss.war

-rw-------&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;root&nbsp;root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;Mar&nbsp;20&nbsp;13:52&nbsp;nohup.out

#&nbsp;ls&nbsp;-lh

total&nbsp;30M

-rw-r--r--&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;root&nbsp;root&nbsp;30M&nbsp;May&nbsp;24&nbsp;10:07&nbsp;cuss.war

-rw-------&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;root&nbsp;root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;Mar&nbsp;20&nbsp;13:52&nbsp;nohup.out

#&nbsp;ll&nbsp;-h

total&nbsp;30M

-rw-r--r--&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;root&nbsp;root&nbsp;30M&nbsp;May&nbsp;24&nbsp;10:07&nbsp;cuss.war

-rw-------&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;root&nbsp;root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;Mar&nbsp;20&nbsp;13:52&nbsp;nohup.out</pre><hr/><p>相关文章：</p><p><a href=\"http://www.yiifcms.com/post/43/\" title=\"Linux crontab 命令格式与详细例子 \" target=\"_blank\" style=\"\">Linux crontab 命令格式与详细例子</a></p><p><a href=\"http://www.yiifcms.com/post/40/\" title=\"nginx+apache反向代理配置详解\" target=\"_blank\" style=\"\">nginx+apache反向代理配置详解</a></p><p><a href=\"http://www.yiifcms.com/post/33/\" title=\"Linux之编辑器Vim篇（配置与高级技巧） \" target=\"_blank\" style=\"\">Linux之编辑器Vim篇（配置与高级技巧）</a></p><p><br/></p>','cnblogs','http://www.cnblogs.com/benio/archive/2010/10/13/1849946.html','','php,html,js,apache,nginx,yii,linux,cms,文章,IT','49','N','N','','','2','0','N','1408695544','0','Y','0','Y','1408690639');
INSERT INTO `yiif_post` VALUES('45','1','Yii CDbCriteria的常用方法','','','','','20','0','这是Yii CDbCriteria的一些笔记和常用用法：$criteria = new CDbCriteria;       $criteria-&gt;addCondition(&quot;id=1&quot;); //查询条件，即where id = 1   $criteria-&gt;addInCondition(&#039;id&#039;, array(1,2,3,4,5)); //代表where id IN (1,23,,4,5,);   $criteria-&gt;addNotInCondition(&#039;id&#039;, array(1,2,3,4,5));//与上面正好相法，是NOT IN   $criteria-&gt;addCondition(&#039;id=1&#039;,&#039;OR&#039;);//这是OR条件，多个条件的时候，该...','','','','','<p><span style=\"font-size: 14px;\">这是Yii CDbCriteria的一些笔记和常用用法：</span></p><pre class=\"brush:php;toolbar:false\">$criteria&nbsp;=&nbsp;new&nbsp;CDbCriteria;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
$criteria-&gt;addCondition(&quot;id=1&quot;);&nbsp;//查询条件，即where&nbsp;id&nbsp;=&nbsp;1&nbsp;&nbsp;
$criteria-&gt;addInCondition(&#39;id&#39;,&nbsp;array(1,2,3,4,5));&nbsp;//代表where&nbsp;id&nbsp;IN&nbsp;(1,23,,4,5,);&nbsp;&nbsp;
$criteria-&gt;addNotInCondition(&#39;id&#39;,&nbsp;array(1,2,3,4,5));//与上面正好相法，是NOT&nbsp;IN&nbsp;&nbsp;
$criteria-&gt;addCondition(&#39;id=1&#39;,&#39;OR&#39;);//这是OR条件，多个条件的时候，该条件是OR而非AND&nbsp;&nbsp;
$criteria-&gt;addSearchCondition(&#39;name&#39;,&nbsp;&#39;分类&#39;);//搜索条件，其实代表了。。where&nbsp;name&nbsp;like&nbsp;&#39;%分类%&#39;&nbsp;&nbsp;
$criteria-&gt;addBetweenCondition(&#39;id&#39;,&nbsp;1,&nbsp;4);//between&nbsp;1&nbsp;and&nbsp;4&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
$criteria-&gt;compare(&#39;id&#39;,&nbsp;1);&nbsp;&nbsp;&nbsp;&nbsp;//这个方法比较特殊，他会根据你的参数自动处理成addCondition或者addInCondition，&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//即如果第二个参数是数组就会调用addInCondition&nbsp;&nbsp;
/**&nbsp;
&nbsp;*&nbsp;传递变量&nbsp;
&nbsp;*/&nbsp;&nbsp;
$criteria-&gt;addCondition(&quot;id&nbsp;=&nbsp;:id&quot;);&nbsp;&nbsp;
$criteria-&gt;params[&#39;:id&#39;]=1;&nbsp;&nbsp;
/**&nbsp;
&nbsp;*&nbsp;一些public&nbsp;vars&nbsp;
&nbsp;*/&nbsp;&nbsp;
$criteria-&gt;select&nbsp;=&nbsp;&#39;id,parentid,name&#39;;&nbsp;//代表了要查询的字段，默认select=&#39;*&#39;;&nbsp;&nbsp;
$criteria-&gt;join&nbsp;=&nbsp;&#39;xxx&#39;;&nbsp;//连接表&nbsp;&nbsp;
$criteria-&gt;with&nbsp;=&nbsp;&#39;xxx&#39;;&nbsp;//调用relations&nbsp;&nbsp;&nbsp;
$criteria-&gt;limit&nbsp;=&nbsp;10;&nbsp;&nbsp;&nbsp;&nbsp;//取1条数据，如果小于0，则不作处理&nbsp;&nbsp;
$criteria-&gt;offset&nbsp;=&nbsp;1;&nbsp;&nbsp;&nbsp;//两条合并起来，则表示&nbsp;limit&nbsp;10&nbsp;offset&nbsp;1,或者代表了。limit&nbsp;1,10&nbsp;&nbsp;
$criteria-&gt;order&nbsp;=&nbsp;&#39;xxx&nbsp;DESC,XXX&nbsp;ASC&#39;&nbsp;;//排序条件&nbsp;&nbsp;
$criteria-&gt;group&nbsp;=&nbsp;&#39;group&nbsp;条件&#39;;&nbsp;&nbsp;
$criteria-&gt;having&nbsp;=&nbsp;&#39;having&nbsp;条件&nbsp;&#39;;&nbsp;&nbsp;
$criteria-&gt;distinct&nbsp;=&nbsp;FALSE;&nbsp;//是否唯一查询</pre><hr/><p>相关文章：</p><p><a href=\"http://www.yiifcms.com/post/39/\" title=\" yii 操作cookie的用法详解\" target=\"_blank\" style=\"font-size: 16px; text-decoration: underline;\"><span style=\"font-size: 16px;\">yii 操作cookie的用法详解</span></a></p><p><a href=\"http://www.yiifcms.com/post/38/\" title=\"关于人人网开发平台提供的sdk的问题\" target=\"_blank\" style=\"font-size: 16px; text-decoration: underline;\"><span style=\"font-size: 16px;\">关于人人网开发平台提供的sdk的问题</span></a></p><p><a href=\"http://www.yiifcms.com/post/37/\" title=\"yii下实现sitemap自动生成\" target=\"_blank\" style=\"font-weight: bold; font-size: 16px; text-decoration: underline;\"><span style=\"font-size: 16px;\">yii下实现sitemap自动生成</span></a></p><p><a href=\"http://www.yiifcms.com/post/29/\" title=\"Yii 框架创建自己的 web 应用\" target=\"_blank\" style=\"font-size: 16px; text-decoration: underline;\"><span style=\"font-size: 16px;\">Yii 框架创建自己的 web 应用</span></a><br/></p>','原创','','','web,yii,cms,IT,文章,人人网','42','N','N','','','0','0','N','1408699249','0','Y','0','Y','1408698921');
INSERT INTO `yiif_post` VALUES('46','1','php遍历文件夹','','','','','17','0','遍历文件夹、文件目录、可递归遍历    /**      * 遍历文件夹      * @param string $dir      * @param boolean $all  true表示递归遍历      * @return array      */     public static function scanfDir($dir=&#039;&#039;, $all = false, &amp;$ret = array()){             if ( false !== ($handle = opendir ( $dir ))) {             while ...','','','','','<p>遍历文件夹、文件目录、可递归遍历</p><pre class=\"brush:php;toolbar:false\">&nbsp;&nbsp;&nbsp;&nbsp;/**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;遍历文件夹
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@param&nbsp;string&nbsp;$dir
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@param&nbsp;boolean&nbsp;$all&nbsp;&nbsp;true表示递归遍历
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;@return&nbsp;array
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;static&nbsp;function&nbsp;scanfDir($dir=&#39;&#39;,&nbsp;$all&nbsp;=&nbsp;false,&nbsp;&amp;$ret&nbsp;=&nbsp;array()){&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(&nbsp;false&nbsp;!==&nbsp;($handle&nbsp;=&nbsp;opendir&nbsp;(&nbsp;$dir&nbsp;)))&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while&nbsp;(&nbsp;false&nbsp;!==&nbsp;($file&nbsp;=&nbsp;readdir&nbsp;(&nbsp;$handle&nbsp;))&nbsp;)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!in_array($file,&nbsp;array(&#39;.&#39;,&nbsp;&#39;..&#39;,&nbsp;&#39;.git&#39;,&nbsp;&#39;.gitignore&#39;,&nbsp;&#39;.svn&#39;,&nbsp;&#39;.htaccess&#39;,&nbsp;&#39;.buildpath&#39;,&#39;.project&#39;)))&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$cur_path&nbsp;=&nbsp;$dir&nbsp;.&nbsp;&#39;/&#39;&nbsp;.&nbsp;$file;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(is_dir&nbsp;(&nbsp;$cur_path&nbsp;))&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$ret[&#39;dirs&#39;][]&nbsp;=$cur_path;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$all&nbsp;&amp;&amp;&nbsp;self::scanfDir(&nbsp;$cur_path,&nbsp;$all,&nbsp;$ret);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$ret&nbsp;[&#39;files&#39;]&nbsp;[]&nbsp;=&nbsp;$cur_path;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;closedir&nbsp;(&nbsp;$handle&nbsp;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;$ret;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p><br/></p><p><span style=\"font-size: 16px;\"><strong>返回的$ret[&#39;dirs&#39;]是所有目录 $ret[&#39;files&#39;]是所有文件，如果想对目录或者文件排序 可以用asort();</strong></span><br/></p>','原创','http://www.yiifcms.com/post/46/','','php,IT','23','N','N','','','0','0','N','1409031824','0','Y','0','Y','1409031776');
INSERT INTO `yiif_post` VALUES('47','1','php5.5.14编译安装参数','','','','','3','0',' 昨天我在阿里云主机上安装redis.so扩展的时候 发现一直安装失败 提示 PHP startup: Unable to load dynamic library 可是redis已经编译安装了呀 为什么php启动的时候 反而不通过呢  后来发现了 我的安装了多个版本的php(php.5.4.27/php.5.5.14) 也不知当初怎么安装的 竟然成功的安装到同一个目录下 编译redis的时候 由于要先phpize查看下版本 发现问题了 php.5.4.17应该是 PHP Version 20100525 但是却显示PHP Version 20121212...','','','','','<p>
	&nbsp;昨天我在阿里云主机上安装redis.so扩展的时候 发现一直安装失败 提示 PHP startup: Unable to load dynamic library 可是redis已经编译安装了呀 为什么php启动的时候 反而不通过呢&nbsp; 后来发现了 我的安装了多个版本的php(php.5.4.27/php.5.5.14) 也不知当初怎么安装的 竟然成功的安装到同一个目录下 编译redis的时候 由于要先phpize查看下版本 发现问题了 php.5.4.17应该是 PHP Version 20100525 但是却显示PHP Version 20121212 好吧 我知道 这两个php冲突了&nbsp; 无奈 重新编译个php吧 也懒得下载 直接用php5.5.14吧
</p>
<p>
	&nbsp; 以前总是看教程，搜资料编译php，如今我也试着记忆编译参数：(支持apache,fpm)
</p>
<pre class=\"prettyprint linenums lang-bsh\">cd php.5.5.14
./configure --prefix=/alidata/server/php-5.5.14/ --with-config-file-path=/alidata/server/php-5.5.14/etc  
--with-apxs2=/alidata/server/apache/bin/apxs  --with-mysql --with-mysqli --with-pdo-mysql --with-libxml-dir 
--with-gd --with-freetype-dir --with-curl --with-xmlrpc --with-curl --with-iconv=/usr/local/ --with-zlib 
--with-jpeg-dir --with-png-dir --with-openssl --enable-fpm --enable-static --disable-inline-optimization --enable-sockets 
--enable-zip --enable-calendar --enable-bcmath --enable-soap --enable-ftp --with-mcrypt --enable-shared --disable-fileinfo
make ZEND_EXTRA_LIBS=\'-liconv\'
make install</pre>
<br />
<p>
	<br />
</p>','原创','http://www.yiifcms.com/post/47/','','php,mysql,sql,apache,IT','47','N','N','','','4','0','N','1412915906','0','Y','0','Y','1409197669');
INSERT INTO `yiif_post` VALUES('48','1','mysql启动失败Starting MySQL.. ERROR! The server quit without updating PID file','','','','','1','0','最近发现mysql 启动失败  有warning 警告[Warning] &#039;--log_slow_queries&#039; is deprecated and will be removed in a future release. Please use &#039;&#039;--slow_query_log&#039;/&#039;--slow_query_log_file&#039;&#039; instead后来发现 mysql5.1以上的版本 弃用了log-slow-query 设置慢查询日志的路径  新的这样设置：slow-query-log=1                                     #开启慢查询 slow-query-log_file = ...','','','','','<p>
	最近发现mysql 启动失败&nbsp; 有warning 警告[Warning] \'--log_slow_queries\' is deprecated and will be removed in a 
future release. Please use \'\'--slow_query_log\'/\'--slow_query_log_file\'\' 
instead
	<hr style=\"page-break-after:always;\" class=\"ke-pagebreak\" />
</p>
<p>
	后来发现 mysql5.1以上的版本 弃用了log-slow-query 设置慢查询日志的路径&nbsp; 新的这样设置：
</p>
<p>
	<br />
</p>
<pre class=\"prettyprint linenums\">slow-query-log=1                                     #开启慢查询
slow-query-log_file = /alidata/log/mysql/slow.log    #慢查询日志目录
long_query_time = 1                          #记录下查询时间超过1秒</pre>
<p>
	<br />
</p>
<p>
	<br />
</p>','原创','http://www.yiifcms.com/post/48/','','mysql,sql,IT','189','N','N','','','12','0','N','1417574226','0','Y','0','Y','1409198078');

DROP TABLE IF EXISTS `yiif_question`;
CREATE TABLE `yiif_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户',
  `realname` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮箱',
  `telephone` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `qq` varchar(12) DEFAULT NULL COMMENT 'qq',
  `question` text NOT NULL COMMENT '内容',
  `client_ip` varchar(15) DEFAULT NULL COMMENT 'ip',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='留言反馈表';

INSERT INTO `yiif_question` VALUES('1','0','zjh','326196998@qq.com','','','yiiCms是一款基于php5+mysql5开发的多功能开源的网站内容管理系统。使用高性能的PHP5的web应用程序开发框架YII构建，具有操作简单、稳定、安全、高效、跨平台等特点。采用MVC设计模式，模板定制方便灵活，内置小挂工具，方便制作各类功能和效果，yiicms可用于企业建站、个人博客、资讯门户、图片站等各类型站点。','','1379546643');

DROP TABLE IF EXISTS `yiif_recommend`;
CREATE TABLE `yiif_recommend` (
  `id` int(10) unsigned NOT NULL COMMENT '推荐位id',
  `content_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推荐内容id',
  `sort_order` int(10) unsigned DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`,`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐内容表';

INSERT INTO `yiif_recommend` VALUES('1','15','0');
INSERT INTO `yiif_recommend` VALUES('1','16','1');

DROP TABLE IF EXISTS `yiif_recommend_position`;
CREATE TABLE `yiif_recommend_position` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '推荐位id',
  `recommend_name` varchar(100) DEFAULT NULL COMMENT '推荐位名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '栏目类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='推荐位表';

INSERT INTO `yiif_recommend_position` VALUES('1','首页资讯推荐','1');
INSERT INTO `yiif_recommend_position` VALUES('2','首页图集推荐','2');
INSERT INTO `yiif_recommend_position` VALUES('3','首页软件推荐','3');
INSERT INTO `yiif_recommend_position` VALUES('4','图集视频推荐','4');
INSERT INTO `yiif_recommend_position` VALUES('5','首页商品推荐','5');

DROP TABLE IF EXISTS `yiif_reply`;
CREATE TABLE `yiif_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '回复id',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT '用户id',
  `cid` int(10) unsigned DEFAULT NULL COMMENT '评论id',
  `reply_id` int(10) unsigned DEFAULT NULL COMMENT '上级回复的id',
  `content` text COMMENT '回复内容',
  `status` enum('Y','N') DEFAULT 'Y' COMMENT '显示状态',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='评论回复表';

INSERT INTO `yiif_reply` VALUES('2','1','33','0','正好五个字','Y','1402993685');
INSERT INTO `yiif_reply` VALUES('3','31','33','2','太没营养了吧 <img src=\"public/emoticons/images/13.gif\" alt=\"\" border=\"0\" /><br />','Y','1402997219');
INSERT INTO `yiif_reply` VALUES('4','31','33','2','<pre class=\"prettyprint lang-php\">  phpinfo();</pre>','Y','1402998048');
INSERT INTO `yiif_reply` VALUES('5','31','33','2','<pre class=\"prettyprint lang-html\">&lt;link type=\"text/css\" rel=\"stylesheet\" href=\"./kindeditor/plugins/code/prettify.css\"/&gt;</pre>','Y','1402998870');
INSERT INTO `yiif_reply` VALUES('6','1','33','5','<pre class=\"prettyprint lang-php\">echo \"&lt;pre&gt;\";

echo \"谁说代码不能换行！！\";

</pre>','Y','1403184353');
INSERT INTO `yiif_reply` VALUES('7','1','43','0','1231asdfasdfsad','Y','1418630229');
INSERT INTO `yiif_reply` VALUES('8','33','43','7','<img src=\"http://www.yii.local/assets/aa05ecec/plugins/emoticons/images/20.gif\" border=\"0\" alt=\"\" />不错吧&nbsp;','Y','1418630324');

DROP TABLE IF EXISTS `yiif_session`;
CREATE TABLE `yiif_session` (
  `id` char(32) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='session表';

INSERT INTO `yiif_session` VALUES('d8tl4fmkr023pl7v337m31b101','1418874210','admin__returnUrl|s:9:\"/?r=admin\";Yii.CCaptchaAction.c5585911.admin/default.captcha|s:4:\"k8jj\";Yii.CCaptchaAction.c5585911.admin/default.captchacount|i:3;admin__id|s:1:\"1\";admin__name|s:9:\"zjh_admin\";adminstatus|s:1:\"1\";adminnickname|s:11:\"惜暮(Sim)\";admingroupid|s:2:\"10\";admingroupname|s:15:\"系统管理员\";adminemail|s:14:\"xb_zjh@126.com\";admin__states|a:5:{s:6:\"status\";b:1;s:8:\"nickname\";b:1;s:7:\"groupid\";b:1;s:9:\"groupname\";b:1;s:5:\"email\";b:1;}');

DROP TABLE IF EXISTS `yiif_setting`;
CREATE TABLE `yiif_setting` (
  `scope` varchar(30) NOT NULL DEFAULT '' COMMENT '范围',
  `variable` varchar(50) NOT NULL COMMENT '变量',
  `value` text COMMENT '值',
  PRIMARY KEY (`variable`,`scope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统配置';

INSERT INTO `yiif_setting` VALUES('base','admin_email','xb_zjh@126.com');
INSERT INTO `yiif_setting` VALUES('base','admin_logger','open');
INSERT INTO `yiif_setting` VALUES('base','admin_telephone','180000000');
INSERT INTO `yiif_setting` VALUES('email','email_fromname','');
INSERT INTO `yiif_setting` VALUES('email','email_host','');
INSERT INTO `yiif_setting` VALUES('email','email_password','');
INSERT INTO `yiif_setting` VALUES('email','email_port','25');
INSERT INTO `yiif_setting` VALUES('email','email_timeout','2');
INSERT INTO `yiif_setting` VALUES('email','email_totest','');
INSERT INTO `yiif_setting` VALUES('email','email_username','');
INSERT INTO `yiif_setting` VALUES('base','safe_str','!(*&%');
INSERT INTO `yiif_setting` VALUES('seo','seo_description','yiifcms是基于yii框架开发的内容管理系统，功能强大，运行高效，稳定安全，是学习php和建站的良好选择。');
INSERT INTO `yiif_setting` VALUES('seo','seo_keywords','yii,cms,framework,php,mysql,html,nginx,web,js,下载,手册,版本,系统');
INSERT INTO `yiif_setting` VALUES('seo','seo_title','yiifcms打造顶级内容管理系统');
INSERT INTO `yiif_setting` VALUES('base','site_closed_summary','系统维护中，请稍候......');
INSERT INTO `yiif_setting` VALUES('base','site_copyright','Copyright @ 2014-2015');
INSERT INTO `yiif_setting` VALUES('base','site_domain','/');
INSERT INTO `yiif_setting` VALUES('base','site_icp','京ICP备14037201号-1');
INSERT INTO `yiif_setting` VALUES('base','site_name','yiifcms打造顶级内容管理系统');
INSERT INTO `yiif_setting` VALUES('base','site_stats','');
INSERT INTO `yiif_setting` VALUES('base','site_status','open');
INSERT INTO `yiif_setting` VALUES('base','site_status_intro','网站目前正在维护，请稍后访问，谢谢....');
INSERT INTO `yiif_setting` VALUES('template','template','default');
INSERT INTO `yiif_setting` VALUES('template','theme','default');
INSERT INTO `yiif_setting` VALUES('upload','upload_allow_ext','jpg,gif,bmp,jpeg,png,doc,zip,rar,7z,txt,sql,pdf,chm,avi,mp4,flv,swf');
INSERT INTO `yiif_setting` VALUES('upload','upload_max_size','20480');
INSERT INTO `yiif_setting` VALUES('upload','upload_water_alpha','50');
INSERT INTO `yiif_setting` VALUES('upload','upload_water_pic','public/watermark.png');
INSERT INTO `yiif_setting` VALUES('upload','upload_water_scope','100x100');
INSERT INTO `yiif_setting` VALUES('upload','upload_water_size','100x100');
INSERT INTO `yiif_setting` VALUES('upload','upload_water_status','open');
INSERT INTO `yiif_setting` VALUES('base','user_mail_verify','open');
INSERT INTO `yiif_setting` VALUES('base','user_status','open');
INSERT INTO `yiif_setting` VALUES('custom','_address','北京市朝阳区');
INSERT INTO `yiif_setting` VALUES('custom','_fax','传真:XXXXXX');
INSERT INTO `yiif_setting` VALUES('custom','_mobile','180000000');
INSERT INTO `yiif_setting` VALUES('custom','_telephone','XXXXXXXXXXX');
INSERT INTO `yiif_setting` VALUES('access','','');
INSERT INTO `yiif_setting` VALUES('email','email_active','close');
INSERT INTO `yiif_setting` VALUES('access','deny_register_ip','');
INSERT INTO `yiif_setting` VALUES('base','encrypt','crypt');
INSERT INTO `yiif_setting` VALUES('access','deny_access_ip','192.168.1.1
');

DROP TABLE IF EXISTS `yiif_soft`;
CREATE TABLE `yiif_soft` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '' COMMENT '软件标题',
  `catalog_id` smallint(5) unsigned DEFAULT '0' COMMENT '分类id ',
  `soft_icon` varchar(100) DEFAULT NULL COMMENT '软件图标',
  `cover_image` varchar(100) DEFAULT '' COMMENT '封面图片',
  `fileid` varchar(255) DEFAULT NULL COMMENT '文件id',
  `filetype` varchar(10) NOT NULL DEFAULT '' COMMENT '文件类型',
  `language` varchar(10) NOT NULL DEFAULT '' COMMENT '软件语言',
  `softtype` varchar(10) NOT NULL DEFAULT '' COMMENT '软件类型',
  `os` varchar(100) NOT NULL DEFAULT '' COMMENT '操作系统',
  `softrank` enum('5','4','3','2','1') NOT NULL DEFAULT '5' COMMENT '软件等级',
  `softsize` varchar(10) NOT NULL DEFAULT '' COMMENT '软件大小',
  `softlink` varchar(100) DEFAULT '' COMMENT '软件外部下载链接',
  `introduce` text COMMENT '软件简介',
  `pay` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '支付费用',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '最近更新时间',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '发布时间',
  `view_count` int(10) unsigned DEFAULT '0' COMMENT '浏览次数',
  `down_count` smallint(8) unsigned DEFAULT '0' COMMENT '下载次数',
  `status` enum('Y','N') DEFAULT 'Y' COMMENT '是否显示',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_description` text COMMENT 'SEO描述',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='软件管理表';

INSERT INTO `yiif_soft` VALUES('6','PHP手册','19','uploads/images/201408/73dfcb3485a.png','uploads/images/201408/03997c899d4.jpg','97','','zh_cn','domestic','Linux,Win2003,WinXP,Win8','5','','','','0.00','1408695774','1407122953','68','72','Y','','','php,手册');
INSERT INTO `yiif_soft` VALUES('7','Yii手册','19','uploads/images/201408/60b1ea65393.jpg','uploads/images/201408/967aa8df981.jpg','98','','zh_cn','domestic','','5','','','<p>相关下载：</p><p><a href=\"http://www.yiifcms.com/soft/13/\" title=\"YiifCMS1.3版本安装包\" target=\"_blank\">YiifCMS1.3版本安装包</a><br/></p><p><a href=\"http://www.yiifcms.com/soft/11/\" title=\"jquery1.8.3手册\" target=\"_blank\">jquery1.8.3手册</a></p><p><a href=\"http://www.yiifcms.com/soft/10/\" title=\"w3cscholl手册\" target=\"_blank\">w3cscholl手册</a></p><p><a href=\"http://www.yiifcms.com/soft/9/\" title=\"正则表达式手册\" target=\"_blank\">正则表达式手册</a></p><p><a href=\"http://www.yiifcms.com/soft/8/\" title=\"smarty完全中文手册\" target=\"_blank\">smarty完全中文手册</a></p><p><a href=\"http://www.yiifcms.com/soft/7/\" title=\"Yii手册\" target=\"_blank\">Yii手册</a></p><p><a href=\"http://www.yiifcms.com/soft/6/\" title=\"PHP手册\" target=\"_blank\">PHP手册</a></p><p><br/></p><p><br/></p>','0.00','1408697106','1407132737','55','102','Y','','','php,jquery,yii,cms,IT,w3c,手册');
INSERT INTO `yiif_soft` VALUES('8','smarty完全中文手册','19','uploads/images/201408/39932dbe29c.png','uploads/images/201408/6d084c027a9.png','99','','zh_cn','domestic','','5','','','<p>相关下载：</p><p><a href=\"http://www.yiifcms.com/soft/13/\" title=\"YiifCMS1.3版本安装包\" target=\"_blank\">YiifCMS1.3版本安装包</a><br/></p><p><a href=\"http://www.yiifcms.com/soft/11/\" title=\"jquery1.8.3手册\" target=\"_blank\">jquery1.8.3手册</a></p><p><a href=\"http://www.yiifcms.com/soft/10/\" title=\"w3cscholl手册\" target=\"_blank\">w3cscholl手册</a></p><p><a href=\"http://www.yiifcms.com/soft/9/\" title=\"正则表达式手册\" target=\"_blank\">正则表达式手册</a></p><p><a href=\"http://www.yiifcms.com/soft/8/\" title=\"smarty完全中文手册\" target=\"_blank\">smarty完全中文手册</a></p><p><a href=\"http://www.yiifcms.com/soft/7/\" title=\"Yii手册\" target=\"_blank\">Yii手册</a></p><p><a href=\"http://www.yiifcms.com/soft/6/\" title=\"PHP手册\" target=\"_blank\">PHP手册</a></p><p><br/></p>','0.00','1408695706','1407134329','44','25','Y','','','php,jquery,yii,cms,IT');
INSERT INTO `yiif_soft` VALUES('9','php正则表达式手册','19','uploads/images/201408/ed56bd2b151.png','uploads/images/201408/3a66d1eb329.png','100','','zh_cn','domestic','','5','','','<p style=\"text-indent:2em;\"><a target=\"_blank\" href=\"https://www.apachefriends.org/zh_cn/index.html\"><span style=\"font-size:16px;\"><br/></span></a></p><p>相关下载：</p><p><a href=\"http://www.yiifcms.com/soft/13/\" title=\"YiifCMS1.3版本安装包\" target=\"_blank\">YiifCMS1.3版本安装包</a><br/></p><p><a href=\"http://www.yiifcms.com/soft/11/\" title=\"jquery1.8.3手册\" target=\"_blank\">jquery1.8.3手册</a></p><p><a href=\"http://www.yiifcms.com/soft/10/\" title=\"w3cscholl手册\" target=\"_blank\">w3cscholl手册</a></p><p><a href=\"http://www.yiifcms.com/soft/9/\" title=\"正则表达式手册\" target=\"_blank\">正则表达式手册</a></p><p><a href=\"http://www.yiifcms.com/soft/8/\" title=\"smarty完全中文手册\" target=\"_blank\">smarty完全中文手册</a></p><p><a href=\"http://www.yiifcms.com/soft/7/\" title=\"Yii手册\" target=\"_blank\">Yii手册</a></p><p><a href=\"http://www.yiifcms.com/soft/6/\" title=\"PHP手册\" target=\"_blank\">PHP手册</a></p><p><br/></p>','0.00','1408695696','1407134780','50','18','Y','','','php,html,jquery,apache,yii,cms,IT');
INSERT INTO `yiif_soft` VALUES('10','w3cscholl手册','19','uploads/images/201408/d03c775d1aa.png','uploads/images/201408/ed526c07fda.jpg','101','','zh_cn','domestic','','5','','','<p>相关下载：</p><p><a href=\"http://www.yiifcms.com/soft/13/\" title=\"YiifCMS1.3版本安装包\" target=\"_blank\">YiifCMS1.3版本安装包</a><br/></p><p><a href=\"http://www.yiifcms.com/soft/11/\" title=\"jquery1.8.3手册\" target=\"_blank\">jquery1.8.3手册</a></p><p><a href=\"http://www.yiifcms.com/soft/10/\" title=\"w3cscholl手册\" target=\"_blank\">w3cscholl手册</a></p><p><a href=\"http://www.yiifcms.com/soft/9/\" title=\"正则表达式手册\" target=\"_blank\">正则表达式手册</a></p><p><a href=\"http://www.yiifcms.com/soft/8/\" title=\"smarty完全中文手册\" target=\"_blank\">smarty完全中文手册</a></p><p><a href=\"http://www.yiifcms.com/soft/7/\" title=\"Yii手册\" target=\"_blank\">Yii手册</a></p><p><a href=\"http://www.yiifcms.com/soft/6/\" title=\"PHP手册\" target=\"_blank\">PHP手册</a></p><p><br/></p>','0.00','1408695825','1407135406','77','75','Y','','','php,jquery,yii,cms,IT,w3c,手册');
INSERT INTO `yiif_soft` VALUES('11','jquery1.8.3手册','19','uploads/images/201408/f3726027223.png','uploads/images/201408/4ccb775793b.jpg','102','','zh_cn','domestic','','5','','','<p>相关下载：</p><p><a href=\"http://www.yiifcms.com/soft/13/\" title=\"YiifCMS1.3版本安装包\" target=\"_blank\">YiifCMS1.3版本安装包</a><br/></p><p><a href=\"http://www.yiifcms.com/soft/11/\" title=\"jquery1.8.3手册\" target=\"_blank\">jquery1.8.3手册</a></p><p><a href=\"http://www.yiifcms.com/soft/10/\" title=\"w3cscholl手册\" target=\"_blank\">w3cscholl手册</a></p><p><a href=\"http://www.yiifcms.com/soft/9/\" title=\"正则表达式手册\" target=\"_blank\">正则表达式手册</a></p><p><a href=\"http://www.yiifcms.com/soft/8/\" title=\"smarty完全中文手册\" target=\"_blank\">smarty完全中文手册</a></p><p><a href=\"http://www.yiifcms.com/soft/7/\" title=\"Yii手册\" target=\"_blank\">Yii手册</a></p><p><a href=\"http://www.yiifcms.com/soft/6/\" title=\"PHP手册\" target=\"_blank\">PHP手册</a></p><p><br/></p>','0.00','1408695787','1407135653','51','17','Y','','','php,jquery,yii,cms,IT,手册');
INSERT INTO `yiif_soft` VALUES('12','xampp集成安装包','15','uploads/images/201408/78d6575b09b.jpg','uploads/images/201408/c708dd2645c.jpg','','','zh_cn','foreign','Linux,Win2003,WinXP,Win8','5','','https://www.apachefriends.org/zh_cn/index.html','<p style=\"text-indent:2em;\"><span style=\"font-size:16px;\">软件官网：</span><a target=\"_blank\" href=\"https://www.apachefriends.org/zh_cn/index.html\"><span style=\"font-size:16px;\">https://www.apachefriends.org/zh_cn/index.html</span></a></p><p style=\"text-indent:2em;\"><a target=\"_blank\" href=\"https://www.apachefriends.org/zh_cn/index.html\"><span style=\"font-size:16px;\"><br/></span></a></p>_ueditor_page_break_tag_<p style=\"text-indent:2em;\"><a target=\"_blank\" href=\"https://www.apachefriends.org/zh_cn/index.html\"><span style=\"font-size:16px;\"><br/></span></a></p><p>相关下载：</p><p><a href=\"http://www.yiifcms.com/soft/13/\" title=\"YiifCMS1.3版本安装包\" target=\"_blank\">YiifCMS1.3版本安装包</a><br/></p><p><a href=\"http://www.yiifcms.com/soft/11/\" title=\"jquery1.8.3手册\" target=\"_blank\">jquery1.8.3手册</a></p><p><a href=\"http://www.yiifcms.com/soft/10/\" title=\"w3cscholl手册\" target=\"_blank\">w3cscholl手册</a></p><p><a href=\"http://www.yiifcms.com/soft/9/\" title=\"正则表达式手册\" target=\"_blank\">正则表达式手册</a></p><p><a href=\"http://www.yiifcms.com/soft/8/\" title=\"smarty完全中文手册\" target=\"_blank\">smarty完全中文手册</a></p><p><a href=\"http://www.yiifcms.com/soft/7/\" title=\"Yii手册\" target=\"_blank\">Yii手册</a></p><p><a href=\"http://www.yiifcms.com/soft/6/\" title=\"PHP手册\" target=\"_blank\">PHP手册</a></p><p style=\"text-indent:2em;\"><a target=\"_blank\" href=\"https://www.apachefriends.org/zh_cn/index.html\"><span style=\"font-size:16px;\"><br/></span></a><br/></p>','0.00','1408695647','1407136237','42','0','Y','','','php,html,jquery,apache,yii,cms,IT');
INSERT INTO `yiif_soft` VALUES('5','YiifCMS1.2版本安装包','11','uploads/images/201407/252fd6459ae.jpg','','','','zh_cn','domestic','Linux,Win2003,WinXP,Win8','5','','http://yun.baidu.com/s/1hq67qyK','','0.00','1407132883','1404715423','48','0','Y','','','yii,cms');
INSERT INTO `yiif_soft` VALUES('13','YiifCMS1.3版本安装包','11','uploads/images/201408/db2fbab86b3.jpg','uploads/images/201408/254bbdc7fe7.jpg','104','','zh_cn','domestic','Linux,Win2003,WinXP,Win7,Win8','5','','http://pan.baidu.com/share/link?shareid=2489134354&uk=2769120659','<p>相关下载：</p><p><a href=\"http://www.yiifcms.com/soft/11/\" title=\"jquery1.8.3手册\" target=\"_blank\">jquery1.8.3手册</a></p><p><a href=\"http://www.yiifcms.com/soft/12/\" title=\"xampp集成安装包\" target=\"_blank\">xampp集成安装包</a></p><p><a href=\"http://www.yiifcms.com/soft/10/\" title=\"w3cscholl手册\" target=\"_blank\">w3cscholl手册</a></p><p><a href=\"http://www.yiifcms.com/soft/9/\" title=\"正则表达式手册\" target=\"_blank\">正则表达式手册</a></p><p><a href=\"http://www.yiifcms.com/soft/8/\" title=\"smarty完全中文手册\" target=\"_blank\">smarty完全中文手册</a></p><p><a href=\"http://www.yiifcms.com/soft/7/\" title=\"Yii手册\" target=\"_blank\">Yii手册</a></p><p><a href=\"http://www.yiifcms.com/soft/6/\" title=\"PHP手册\" target=\"_blank\">PHP手册</a></p><p><br/></p>','0.00','1408695614','1407395582','165','397','Y','','','php,jquery,yii,cms,IT');

DROP TABLE IF EXISTS `yiif_special`;
CREATE TABLE `yiif_special` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `title_alias` varchar(255) NOT NULL DEFAULT '' COMMENT '标题别名',
  `intro` text COMMENT '描述',
  `content` text COMMENT '详细介绍',
  `attach_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `attach_file` varchar(255) NOT NULL DEFAULT '' COMMENT '附件名称',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo描述',
  `template` varchar(50) NOT NULL DEFAULT '' COMMENT '模板',
  `status` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '入库时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='专题';

INSERT INTO `yiif_special` VALUES('1','专题二','special2','美国特斯拉电动汽车公司（Tesla Motors）首席执行官艾伦•马斯克（Elon Musk）周二表示，该公司力争在未来三年里推出能够“自动驾驶”的汽车，从而正式加入到拥有谷歌(微博)和多家汽车厂商的无人驾驶汽车市场的争夺之中','<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	美国特斯拉电动汽车公司（Tesla Motors）首席执行官艾伦•马斯克（Elon Musk）周二表示，该公司力争在未来三年里推出能够“自动驾驶”的汽车，从而正式加入到拥有<a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/GOOG.OQ.htm\" target=\"_blank\">谷歌</a>(<a href=\"http://t.qq.com/googlechina#pref=qqcom.keyword\" target=\"_blank\">微博</a>)和多家汽车厂商的无人驾驶汽车市场的争夺之中。</p><p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	马斯克在接受英国《金融时报》的采访时表示，特斯拉自动驾驶汽车将会让司机把90%的驾驶权转交给汽车的电脑系统，而全自动无人驾驶汽车则需要更长的研发时间。</p><p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	马斯克指出，特斯拉的自动驾驶汽车将由该公司采用自有技术进行内部研发，并不会外包给其他公司。这一点也得到了该公司一位新闻发言人的证实。</p><p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	特斯拉官网近日发布了一个招聘“高级驾驶员辅助系统控制工程师”的启示，负责帮助“特斯拉成为自动驾驶汽车市场的领导者”。</p>','uploads/thumbs/201403/small_8e9e89a2e6a.png','uploads/images/201403/8e9e89a2e6a.png','','','','','Y','0','4','1379547110');
INSERT INTO `yiif_special` VALUES('2','专题一','special1','','<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	随着移动科技的不断发展，人们生活的方方面面都感受到了新科技所带来的巨大影响，餐饮领域自然也不例外。无论是在餐馆的餐桌上放置平板电脑、还是推出可互动的点菜、买单应用都是餐饮企业为进一步促进消费者来店消费所想出的妙招。其中，美国知名餐厅运营商Brinker International.Inc旗下Chili\'s Grill &amp; Bar最近做出的动作便是移动化大潮来袭下的一个最好示范。</p><p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	<img src=\"/cms/uploads/201309/523a380d1d4c0.jpg\" alt=\"\" /> </p><p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	目前，该公司已经在旗下部分餐厅中测试由Ziosk研发的桌面服务系统，该系统可以使消费者在无需服务员出现的情况完成点菜、买单等操作，甚至还可以利用该系统玩游戏。对此，Chili\'s Grill &amp; Bar品牌战略高级副总裁表示，“由于消费者更倾向于在配备了这类桌面系统的餐厅花费更多金钱，因此这一科技可以帮助公司有效提高销售额。”</p><p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	事实上，由于桌面服务系统会时不时的显示一些甜品的图片，Chili\'s Grill &amp; Bar餐厅的甜品销量已经迎来了大约20%的提升。因此我们不难想象，如果Chili\'s Grill &amp; Bar未来将这一图片展示的范围扩大到酒精类饮品和其他拥有更大利润率的菜品时能够取得怎样的效果。</p><p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">	与此同时，桌面服务设备中自带的那些看似不起眼的小游戏也有望为餐厅带来额外收入。比如，Chili\'s Grill &amp; Bar会向每位需要使用游戏服务的消费者收取0.99美元的费用，其中Chili\'s Grill &amp; Bar将可以拿到50%的分成，而另一半则由Ziosk收取。考虑到Chili\'s Grill &amp; Bar目前仅仅是从Ziosk处以租赁的形式拿到这些设备的这一事实，这样的分成比例还算比较公平。</p>','uploads/thumbs/201403/small_9e6fac7a8c2.png','uploads/images/201403/9e6fac7a8c2.png','','','','','Y','0','24','1379547152');

DROP TABLE IF EXISTS `yiif_tag`;
CREATE TABLE `yiif_tag` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(100) NOT NULL COMMENT 'tag名称',
  `data_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数据总数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='新闻标签';

INSERT INTO `yiif_tag` VALUES('37','程序员','1');
INSERT INTO `yiif_tag` VALUES('41','操作系统','1');
INSERT INTO `yiif_tag` VALUES('42','国产','1');
INSERT INTO `yiif_tag` VALUES('43','中科','1');
INSERT INTO `yiif_tag` VALUES('44','超级计算机','1');
INSERT INTO `yiif_tag` VALUES('45','中国','1');
INSERT INTO `yiif_tag` VALUES('46','微软','2');
INSERT INTO `yiif_tag` VALUES('47','计划','1');
INSERT INTO `yiif_tag` VALUES('87','文章','5');
INSERT INTO `yiif_tag` VALUES('49','创意','1');
INSERT INTO `yiif_tag` VALUES('50','亚马逊','1');
INSERT INTO `yiif_tag` VALUES('57','美女','10');
INSERT INTO `yiif_tag` VALUES('62','机顶盒','1');
INSERT INTO `yiif_tag` VALUES('63','苹果','1');
INSERT INTO `yiif_tag` VALUES('67','谷歌','1');
INSERT INTO `yiif_tag` VALUES('68','巴西','1');
INSERT INTO `yiif_tag` VALUES('69','世界杯','2');
INSERT INTO `yiif_tag` VALUES('77','web','8');
INSERT INTO `yiif_tag` VALUES('78','yii','17');
INSERT INTO `yiif_tag` VALUES('79','php','20');
INSERT INTO `yiif_tag` VALUES('80','js','5');
INSERT INTO `yiif_tag` VALUES('81','jquery','9');
INSERT INTO `yiif_tag` VALUES('82','mysql','8');
INSERT INTO `yiif_tag` VALUES('83','html','11');
INSERT INTO `yiif_tag` VALUES('84','sql','8');
INSERT INTO `yiif_tag` VALUES('85','apache','8');
INSERT INTO `yiif_tag` VALUES('86','nginx','3');
INSERT INTO `yiif_tag` VALUES('88','cms','16');
INSERT INTO `yiif_tag` VALUES('89','baidu','2');
INSERT INTO `yiif_tag` VALUES('90','图集','1');
INSERT INTO `yiif_tag` VALUES('91','接口','1');
INSERT INTO `yiif_tag` VALUES('93','ueditor','2');
INSERT INTO `yiif_tag` VALUES('94','kindeditor','1');
INSERT INTO `yiif_tag` VALUES('95','IT','16');
INSERT INTO `yiif_tag` VALUES('96','linux','3');
INSERT INTO `yiif_tag` VALUES('97','服务器','2');
INSERT INTO `yiif_tag` VALUES('98','手册','4');
INSERT INTO `yiif_tag` VALUES('99','w3c','2');

DROP TABLE IF EXISTS `yiif_tag_data`;
CREATE TABLE `yiif_tag_data` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0',
  `content_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned DEFAULT '1' COMMENT '栏目类型',
  `status` enum('Y','N') DEFAULT 'Y' COMMENT '是否显示',
  PRIMARY KEY (`tag_id`,`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容标签关联表';

INSERT INTO `yiif_tag_data` VALUES('82','34','1','Y');
INSERT INTO `yiif_tag_data` VALUES('37','16','1','N');
INSERT INTO `yiif_tag_data` VALUES('83','33','1','Y');
INSERT INTO `yiif_tag_data` VALUES('84','36','1','Y');
INSERT INTO `yiif_tag_data` VALUES('41','15','1','N');
INSERT INTO `yiif_tag_data` VALUES('42','15','1','N');
INSERT INTO `yiif_tag_data` VALUES('43','15','1','N');
INSERT INTO `yiif_tag_data` VALUES('44','14','1','N');
INSERT INTO `yiif_tag_data` VALUES('45','14','1','N');
INSERT INTO `yiif_tag_data` VALUES('46','24','1','N');
INSERT INTO `yiif_tag_data` VALUES('46','26','1','N');
INSERT INTO `yiif_tag_data` VALUES('47','24','1','N');
INSERT INTO `yiif_tag_data` VALUES('84','34','1','Y');
INSERT INTO `yiif_tag_data` VALUES('49','26','1','N');
INSERT INTO `yiif_tag_data` VALUES('50','27','1','N');
INSERT INTO `yiif_tag_data` VALUES('57','2','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','4','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','5','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','6','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','7','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','8','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','9','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','10','2','Y');
INSERT INTO `yiif_tag_data` VALUES('57','11','2','Y');
INSERT INTO `yiif_tag_data` VALUES('77','34','1','Y');
INSERT INTO `yiif_tag_data` VALUES('62','27','1','N');
INSERT INTO `yiif_tag_data` VALUES('63','27','1','N');
INSERT INTO `yiif_tag_data` VALUES('67','27','1','N');
INSERT INTO `yiif_tag_data` VALUES('68','2','2','Y');
INSERT INTO `yiif_tag_data` VALUES('69','2','2','Y');
INSERT INTO `yiif_tag_data` VALUES('69','11','2','Y');
INSERT INTO `yiif_tag_data` VALUES('83','36','1','Y');
INSERT INTO `yiif_tag_data` VALUES('77','36','1','Y');
INSERT INTO `yiif_tag_data` VALUES('82','36','1','Y');
INSERT INTO `yiif_tag_data` VALUES('84','35','1','Y');
INSERT INTO `yiif_tag_data` VALUES('77','35','1','Y');
INSERT INTO `yiif_tag_data` VALUES('82','35','1','Y');
INSERT INTO `yiif_tag_data` VALUES('79','35','1','Y');
INSERT INTO `yiif_tag_data` VALUES('77','29','1','Y');
INSERT INTO `yiif_tag_data` VALUES('78','29','1','Y');
INSERT INTO `yiif_tag_data` VALUES('79','30','1','Y');
INSERT INTO `yiif_tag_data` VALUES('80','30','1','Y');
INSERT INTO `yiif_tag_data` VALUES('81','30','1','Y');
INSERT INTO `yiif_tag_data` VALUES('79','31','1','Y');
INSERT INTO `yiif_tag_data` VALUES('82','31','1','Y');
INSERT INTO `yiif_tag_data` VALUES('77','31','1','Y');
INSERT INTO `yiif_tag_data` VALUES('83','31','1','Y');
INSERT INTO `yiif_tag_data` VALUES('84','31','1','Y');
INSERT INTO `yiif_tag_data` VALUES('85','31','1','Y');
INSERT INTO `yiif_tag_data` VALUES('83','32','1','Y');
INSERT INTO `yiif_tag_data` VALUES('86','32','1','Y');
INSERT INTO `yiif_tag_data` VALUES('87','36','1','Y');
INSERT INTO `yiif_tag_data` VALUES('79','37','1','Y');
INSERT INTO `yiif_tag_data` VALUES('77','37','1','Y');
INSERT INTO `yiif_tag_data` VALUES('83','37','1','Y');
INSERT INTO `yiif_tag_data` VALUES('78','37','1','Y');
INSERT INTO `yiif_tag_data` VALUES('88','37','1','Y');
INSERT INTO `yiif_tag_data` VALUES('89','37','1','Y');
INSERT INTO `yiif_tag_data` VALUES('87','37','1','Y');
INSERT INTO `yiif_tag_data` VALUES('90','37','1','Y');
INSERT INTO `yiif_tag_data` VALUES('79','38','1','Y');
INSERT INTO `yiif_tag_data` VALUES('91','38','1','Y');
INSERT INTO `yiif_tag_data` VALUES('92','38','1','Y');
INSERT INTO `yiif_tag_data` VALUES('79','39','1','Y');
INSERT INTO `yiif_tag_data` VALUES('78','39','1','Y');
INSERT INTO `yiif_tag_data` VALUES('77','40','1','Y');
INSERT INTO `yiif_tag_data` VALUES('85','40','1','Y');
INSERT INTO `yiif_tag_data` VALUES('86','40','1','Y');
INSERT INTO `yiif_tag_data` VALUES('79','40','1','Y');
INSERT INTO `yiif_tag_data` VALUES('82','40','1','Y');
INSERT INTO `yiif_tag_data` VALUES('83','40','1','Y');
INSERT INTO `yiif_tag_data` VALUES('80','40','1','Y');
INSERT INTO `yiif_tag_data` VALUES('84','40','1','Y');
INSERT INTO `yiif_tag_data` VALUES('78','40','1','Y');
INSERT INTO `yiif_tag_data` VALUES('88','40','1','Y');
INSERT INTO `yiif_tag_data` VALUES('79','41','1','Y');
INSERT INTO `yiif_tag_data` VALUES('77','41','1','Y');
INSERT INTO `yiif_tag_data` VALUES('83','41','1','Y');
INSERT INTO `yiif_tag_data` VALUES('80','41','1','Y');
INSERT INTO `yiif_tag_data` VALUES('78','41','1','Y');
INSERT INTO `yiif_tag_data` VALUES('88','41','1','Y');
INSERT INTO `yiif_tag_data` VALUES('89','41','1','Y');
INSERT INTO `yiif_tag_data` VALUES('93','41','1','Y');
INSERT INTO `yiif_tag_data` VALUES('94','41','1','Y');
INSERT INTO `yiif_tag_data` VALUES('95','41','1','Y');
INSERT INTO `yiif_tag_data` VALUES('83','42','1','Y');
INSERT INTO `yiif_tag_data` VALUES('80','42','1','Y');
INSERT INTO `yiif_tag_data` VALUES('81','42','1','Y');
INSERT INTO `yiif_tag_data` VALUES('78','42','1','Y');
INSERT INTO `yiif_tag_data` VALUES('88','42','1','Y');
INSERT INTO `yiif_tag_data` VALUES('93','42','1','Y');
INSERT INTO `yiif_tag_data` VALUES('95','42','1','Y');
INSERT INTO `yiif_tag_data` VALUES('85','43','1','Y');
INSERT INTO `yiif_tag_data` VALUES('79','44','1','Y');
INSERT INTO `yiif_tag_data` VALUES('83','44','1','Y');
INSERT INTO `yiif_tag_data` VALUES('80','44','1','Y');
INSERT INTO `yiif_tag_data` VALUES('96','44','1','Y');
INSERT INTO `yiif_tag_data` VALUES('87','44','1','Y');
INSERT INTO `yiif_tag_data` VALUES('96','43','1','Y');
INSERT INTO `yiif_tag_data` VALUES('78','36','1','Y');
INSERT INTO `yiif_tag_data` VALUES('96','36','1','Y');
INSERT INTO `yiif_tag_data` VALUES('88','36','1','Y');
INSERT INTO `yiif_tag_data` VALUES('95','36','1','Y');
INSERT INTO `yiif_tag_data` VALUES('97','36','1','Y');
INSERT INTO `yiif_tag_data` VALUES('79','29','1','Y');
INSERT INTO `yiif_tag_data` VALUES('82','29','1','Y');
INSERT INTO `yiif_tag_data` VALUES('84','29','1','Y');
INSERT INTO `yiif_tag_data` VALUES('85','29','1','Y');
INSERT INTO `yiif_tag_data` VALUES('88','29','1','Y');
INSERT INTO `yiif_tag_data` VALUES('87','29','1','Y');
INSERT INTO `yiif_tag_data` VALUES('95','29','1','Y');
INSERT INTO `yiif_tag_data` VALUES('97','29','1','Y');
INSERT INTO `yiif_tag_data` VALUES('85','44','1','Y');
INSERT INTO `yiif_tag_data` VALUES('86','44','1','Y');
INSERT INTO `yiif_tag_data` VALUES('78','44','1','Y');
INSERT INTO `yiif_tag_data` VALUES('88','44','1','Y');
INSERT INTO `yiif_tag_data` VALUES('95','44','1','Y');
INSERT INTO `yiif_tag_data` VALUES('79','13','3','Y');
INSERT INTO `yiif_tag_data` VALUES('81','13','3','Y');
INSERT INTO `yiif_tag_data` VALUES('78','13','3','Y');
INSERT INTO `yiif_tag_data` VALUES('88','13','3','Y');
INSERT INTO `yiif_tag_data` VALUES('95','13','3','Y');
INSERT INTO `yiif_tag_data` VALUES('79','12','3','Y');
INSERT INTO `yiif_tag_data` VALUES('83','12','3','Y');
INSERT INTO `yiif_tag_data` VALUES('81','12','3','Y');
INSERT INTO `yiif_tag_data` VALUES('85','12','3','Y');
INSERT INTO `yiif_tag_data` VALUES('78','12','3','Y');
INSERT INTO `yiif_tag_data` VALUES('88','12','3','Y');
INSERT INTO `yiif_tag_data` VALUES('95','12','3','Y');
INSERT INTO `yiif_tag_data` VALUES('79','11','3','Y');
INSERT INTO `yiif_tag_data` VALUES('81','11','3','Y');
INSERT INTO `yiif_tag_data` VALUES('78','11','3','Y');
INSERT INTO `yiif_tag_data` VALUES('88','11','3','Y');
INSERT INTO `yiif_tag_data` VALUES('95','11','3','Y');
INSERT INTO `yiif_tag_data` VALUES('79','9','3','Y');
INSERT INTO `yiif_tag_data` VALUES('83','9','3','Y');
INSERT INTO `yiif_tag_data` VALUES('81','9','3','Y');
INSERT INTO `yiif_tag_data` VALUES('85','9','3','Y');
INSERT INTO `yiif_tag_data` VALUES('78','9','3','Y');
INSERT INTO `yiif_tag_data` VALUES('88','9','3','Y');
INSERT INTO `yiif_tag_data` VALUES('95','9','3','Y');
INSERT INTO `yiif_tag_data` VALUES('79','8','3','Y');
INSERT INTO `yiif_tag_data` VALUES('81','8','3','Y');
INSERT INTO `yiif_tag_data` VALUES('78','8','3','Y');
INSERT INTO `yiif_tag_data` VALUES('88','8','3','Y');
INSERT INTO `yiif_tag_data` VALUES('95','8','3','Y');
INSERT INTO `yiif_tag_data` VALUES('78','7','3','Y');
INSERT INTO `yiif_tag_data` VALUES('98','7','3','Y');
INSERT INTO `yiif_tag_data` VALUES('79','6','3','Y');
INSERT INTO `yiif_tag_data` VALUES('98','6','3','Y');
INSERT INTO `yiif_tag_data` VALUES('98','11','3','Y');
INSERT INTO `yiif_tag_data` VALUES('79','10','3','Y');
INSERT INTO `yiif_tag_data` VALUES('81','10','3','Y');
INSERT INTO `yiif_tag_data` VALUES('78','10','3','Y');
INSERT INTO `yiif_tag_data` VALUES('88','10','3','Y');
INSERT INTO `yiif_tag_data` VALUES('95','10','3','Y');
INSERT INTO `yiif_tag_data` VALUES('98','10','3','Y');
INSERT INTO `yiif_tag_data` VALUES('99','10','3','Y');
INSERT INTO `yiif_tag_data` VALUES('79','7','3','Y');
INSERT INTO `yiif_tag_data` VALUES('81','7','3','Y');
INSERT INTO `yiif_tag_data` VALUES('88','7','3','Y');
INSERT INTO `yiif_tag_data` VALUES('95','7','3','Y');
INSERT INTO `yiif_tag_data` VALUES('99','7','3','Y');
INSERT INTO `yiif_tag_data` VALUES('78','45','1','Y');
INSERT INTO `yiif_tag_data` VALUES('95','45','1','Y');
INSERT INTO `yiif_tag_data` VALUES('77','45','1','Y');
INSERT INTO `yiif_tag_data` VALUES('88','45','1','Y');
INSERT INTO `yiif_tag_data` VALUES('87','45','1','Y');
INSERT INTO `yiif_tag_data` VALUES('92','45','1','Y');
INSERT INTO `yiif_tag_data` VALUES('79','46','1','Y');
INSERT INTO `yiif_tag_data` VALUES('95','46','1','Y');
INSERT INTO `yiif_tag_data` VALUES('79','47','1','Y');
INSERT INTO `yiif_tag_data` VALUES('82','47','1','Y');
INSERT INTO `yiif_tag_data` VALUES('84','47','1','Y');
INSERT INTO `yiif_tag_data` VALUES('85','47','1','Y');
INSERT INTO `yiif_tag_data` VALUES('95','47','1','Y');
INSERT INTO `yiif_tag_data` VALUES('82','48','1','Y');
INSERT INTO `yiif_tag_data` VALUES('84','48','1','Y');
INSERT INTO `yiif_tag_data` VALUES('95','48','1','Y');

DROP TABLE IF EXISTS `yiif_upload`;
CREATE TABLE `yiif_upload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户名',
  `real_name` varchar(255) NOT NULL DEFAULT '' COMMENT '原始文件名称',
  `file_name` varchar(100) NOT NULL DEFAULT '' COMMENT '带路径文件名',
  `thumb_name` varbinary(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `file_ext` varchar(5) NOT NULL DEFAULT 'jpg' COMMENT '扩展名称',
  `file_mime` varchar(50) NOT NULL DEFAULT '' COMMENT '文件头信息',
  `file_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `down_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='附件';

INSERT INTO `yiif_upload` VALUES('45','1','xiaomi_note.jpg','uploads/images/201405/6bf7dd586e7.jpg','','jpg','application/octet-stream','245509','0','1401092533');
INSERT INTO `yiif_upload` VALUES('68','1','AliIM2014_taobao(8.00.34C).exe','uploads/files/201406/AliIM2014_taobao(8.00.34C).exe','','exe','application/octet-stream','41074080','0','1403082064');
INSERT INTO `yiif_upload` VALUES('69','1','111.jpg','uploads/attached/image/201406/3078e9f0bff.jpg','','jpg','image/jpeg','13633','0','1404109948');
INSERT INTO `yiif_upload` VALUES('70','1','223.jpg','uploads/attached/image/201406/f6cf41e3649.jpg','','jpg','image/jpeg','155671','0','1404110187');
INSERT INTO `yiif_upload` VALUES('71','1','111.jpg','uploads/attached/image/201406/468a9574708.jpg','','jpg','image/jpeg','22855','0','1404110527');
INSERT INTO `yiif_upload` VALUES('77','1','121.jpg','uploads/images/201407/2d8af2a52c9.jpg','uploads/thumbs/201407/small_2d8af2a52c9.jpg','jpg','application/octet-stream','71454','0','1404181897');
INSERT INTO `yiif_upload` VALUES('78','1','122.jpg','uploads/images/201407/830c15efce6.jpg','uploads/thumbs/201407/small_830c15efce6.jpg','jpg','application/octet-stream','39486','0','1404182170');
INSERT INTO `yiif_upload` VALUES('79','1','123.jpg','uploads/images/201407/8068f3a90b7.jpg','uploads/thumbs/201407/small_8068f3a90b7.jpg','jpg','application/octet-stream','193075','0','1404182633');
INSERT INTO `yiif_upload` VALUES('80','1','121.jpg','uploads/images/201407/4be229705ba.jpg','uploads/thumbs/201407/small_4be229705ba.jpg','jpg','application/octet-stream','124344','0','1404184718');
INSERT INTO `yiif_upload` VALUES('81','1','122.jpg','uploads/images/201407/ed5693e7e2d.jpg','uploads/thumbs/201407/small_ed5693e7e2d.jpg','jpg','application/octet-stream','67515','0','1404184749');
INSERT INTO `yiif_upload` VALUES('82','1','121.jpg','uploads/images/201407/f60eb1cfb67.jpg','uploads/thumbs/201407/small_f60eb1cfb67.jpg','jpg','application/octet-stream','124344','0','1404184753');
INSERT INTO `yiif_upload` VALUES('83','1','123.jpg','uploads/images/201407/cef6cf4f134.jpg','uploads/thumbs/201407/small_cef6cf4f134.jpg','jpg','application/octet-stream','127531','0','1404184775');
INSERT INTO `yiif_upload` VALUES('84','1','121.jpg','uploads/images/201407/8a0a9d8cb7b.jpg','uploads/thumbs/201407/small_8a0a9d8cb7b.jpg','jpg','application/octet-stream','124344','0','1404184775');
INSERT INTO `yiif_upload` VALUES('85','1','122.jpg','uploads/images/201407/4464b4046d1.jpg','uploads/thumbs/201407/small_4464b4046d1.jpg','jpg','application/octet-stream','67515','0','1404184775');
INSERT INTO `yiif_upload` VALUES('86','1','124.jpg','uploads/images/201407/4efea9bddd1.jpg','uploads/thumbs/201407/small_4efea9bddd1.jpg','jpg','application/octet-stream','84725','0','1404184803');
INSERT INTO `yiif_upload` VALUES('87','1','123.jpg','uploads/images/201407/9706bae28d1.jpg','uploads/thumbs/201407/small_9706bae28d1.jpg','jpg','application/octet-stream','127531','0','1404184806');
INSERT INTO `yiif_upload` VALUES('88','1','125.jpg','uploads/images/201407/b0d4552362e.jpg','uploads/thumbs/201407/small_b0d4552362e.jpg','jpg','application/octet-stream','279084','0','1404184834');
INSERT INTO `yiif_upload` VALUES('89','1','126.jpg','uploads/images/201407/2e13e0a3ed9.jpg','uploads/thumbs/201407/small_2e13e0a3ed9.jpg','jpg','application/octet-stream','75536','0','1404184865');
INSERT INTO `yiif_upload` VALUES('90','1','122.jpg','uploads/images/201407/2a2d8e16cb0.jpg','uploads/thumbs/201407/small_2a2d8e16cb0.jpg','jpg','application/octet-stream','67515','0','1404184869');
INSERT INTO `yiif_upload` VALUES('91','1','125.jpg','uploads/images/201407/825a8ac9d80.jpg','uploads/thumbs/201407/small_825a8ac9d80.jpg','jpg','application/octet-stream','279084','0','1404184870');
INSERT INTO `yiif_upload` VALUES('92','1','112.jpg','uploads/images/201407/e62833cd62c.jpg','uploads/thumbs/201407/small_e62833cd62c.jpg','jpg','application/octet-stream','25932','0','1404287877');
INSERT INTO `yiif_upload` VALUES('93','1','11.jpg','uploads/images/201407/2c48ccb19e2.jpg','uploads/thumbs/201407/small_2c48ccb19e2.jpg','jpg','application/octet-stream','39452','0','1404304925');
INSERT INTO `yiif_upload` VALUES('99','1','smarty完全中文手册.chm','uploads/files/201408/smarty完全中文手册.chm','','chm','application/octet-stream','374731','0','1407134216');
INSERT INTO `yiif_upload` VALUES('97','1','php_enhanced_zh.chm','uploads/files/201408/php_enhanced_zh.chm','','chm','application/octet-stream','27746126','0','1407125246');
INSERT INTO `yiif_upload` VALUES('98','1','Yii.chm','uploads/files/201408/Yii.chm','','chm','application/octet-stream','2643912','0','1407132699');
INSERT INTO `yiif_upload` VALUES('100','1','正则表达式.CHM','uploads/files/201408/正则表达式.CHM','','chm','application/octet-stream','42863','0','1407134758');
INSERT INTO `yiif_upload` VALUES('101','1','W3CSchool全套Web开发手册.chm','uploads/files/201408/W3CSchool全套Web开发手册.chm','','chm','application/octet-stream','11818410','0','1407135396');
INSERT INTO `yiif_upload` VALUES('102','1','jquery1.8.3.chm','uploads/files/201408/jquery1.8.3.chm','','chm','application/octet-stream','401443','0','1407135640');
INSERT INTO `yiif_upload` VALUES('104','1','yiifcms1.3UTF-8.zip','uploads/files/201408/yiifcms1.3UTF-8.zip','','zip','application/octet-stream','11915439','0','1407399882');
INSERT INTO `yiif_upload` VALUES('105','1','1.jpg','uploads/attached/image/201408/74d131944d5.jpg','uploads/thumbs/201408/small_74d131944d5.jpg','jpg','image/jpeg','47727','0','1407480633');
INSERT INTO `yiif_upload` VALUES('106','1','2.png','uploads/attached/image/201408/3f872683b37.png','uploads/thumbs/201408/small_3f872683b37.png','png','image/png','21623','0','1407480657');
INSERT INTO `yiif_upload` VALUES('107','1','flvplayer.swf','uploads/files/201409/flvplayer.swf','','swf','application/octet-stream','25426','0','1411526818');
INSERT INTO `yiif_upload` VALUES('109','1','3.png','uploads/attached/image/201410/a0650d78aeb.png','uploads/thumbs/201410/small_a0650d78aeb.png','png','image/png','1158','0','1412919644');
INSERT INTO `yiif_upload` VALUES('110','1','4.png','uploads/attached/media/201410/d064d2134c5.png','uploads/thumbs/201410/small_d064d2134c5.png','png','image/png','624','0','1412921775');
INSERT INTO `yiif_upload` VALUES('111','1','087.gif','uploads/attached/image/201411/1935fb6b07f.gif','uploads/thumbs/201411/small_1935fb6b07f.gif','gif','image/gif','1051','0','1416817727');
INSERT INTO `yiif_upload` VALUES('112','1','093.gif','uploads/attached/image/201411/cc606713af3.gif','uploads/thumbs/201411/small_cc606713af3.gif','gif','image/gif','1043','0','1416817830');

DROP TABLE IF EXISTS `yiif_user`;
CREATE TABLE `yiif_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `groupid` int(10) unsigned DEFAULT '1' COMMENT '用户组id',
  `status` tinyint(2) DEFAULT '1' COMMENT '-1待审核 0 -禁用  1-通过',
  `addtime` int(10) DEFAULT NULL COMMENT '注册时间',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `sign` varchar(100) DEFAULT NULL COMMENT '个性签名',
  `web` varchar(100) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `qq` varchar(11) DEFAULT NULL COMMENT 'qq号码',
  `register_ip` varchar(15) DEFAULT '0.0.0.0' COMMENT '注册ip',
  `last_login_ip` varchar(15) DEFAULT '0.0.0.0' COMMENT '上次登录ip',
  `logins` int(10) unsigned DEFAULT '0' COMMENT '登录次数',
  `username_editable` enum('Y','N') DEFAULT 'N' COMMENT '用户名是否可编辑',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1 COMMENT='用户表';

INSERT INTO `yiif_user` VALUES('1','admin','$2a$08$NRboXfrm0UWMTHY5zj4SpOnCmrH5H3Ok3QV7JDhx0d6x7Kihi1QV.','xb_zjh@126.com','10','1','1404712097','','惜暮(Sim)','没有最好 只有更好!','http://www.yiifcms.com','','','0.0.0.0','127.0.0.1','50','N');
INSERT INTO `yiif_user` VALUES('2','没那么简单','$2a$08$7XNWXLQfsDE3JNDDb2x/V.JLjeOtfCJIRmt.akQ5aBMf4jwAvFhR.','376685457@qq.com','9','1','1379091600','uploads/avatar/201407/small_2_cc2e86cc790.jpg','','','','','','0.0.0.0','127.0.0.1','7','N');
INSERT INTO `yiif_user` VALUES('31','testUser','$2a$08$QuvI8Ory.KMdKvmaCV/g9O8AoVTQMMvDrS.wvkOnEWBIBJwm3kLsq','1441044277@qq.com','1','1','1399346040','uploads/avatar/201405/small_31_c696db73478.jpg','nicename','这个家伙很懒，什么都不写','http://www.baidu.com','','','0.0.0.0','127.0.0.1','46','N');
INSERT INTO `yiif_user` VALUES('32','test123','$2a$08$IrFpdJZKlMTUoiLS/D79kOiFfy9MInvsRQuoNc5hiCSL9qSISQxIm','test123@qq.com','1','1','1399346280','','','','','','','0.0.0.0','','0','N');
INSERT INTO `yiif_user` VALUES('33','test001','$2a$08$mmxLn6zpboN/Q2BnDfk4MesW4qbcIRD0ONmiuJ/gwv1X1kuinCTge','326196999@qq.com','1','1','1400462626','uploads/avatar/201412/small_33_573d94fddc7.png','','','','','','0.0.0.0','127.0.0.1','11','N');
INSERT INTO `yiif_user` VALUES('37','shiyang','$2a$08$3kBOQjtnf8HQ0clqG986qeB.OzdT/84sMk6DbgY8a.kllKsfCxS6G','894046126@qq.com','1','1','1407477193','','shiyang','','','','','0.0.0.0','171.108.188.44','1','N');
INSERT INTO `yiif_user` VALUES('43','☆①聲友妳☆_qq','$2a$08$TYAtKBG2qHiwspS/U6VmkeMec5HZ.MzYMM7KHKUQO8Iq.PDAdhtpC','','1','1','1407808439','http://qzapp.qlogo.cn/qzapp/101145243/C80EA7633FAB1FF573359881C41E0DCB/100','','','','','','0.0.0.0','124.202.209.114','4','Y');
INSERT INTO `yiif_user` VALUES('44','没那么简单_qq','$2a$08$JRMU.6xqsJsYKGXUs3jj4uQOKLjDU4tlg1B92c15E3yHavp.kvmqW','5558@qq.com','1','1','1407808553','http://qzapp.qlogo.cn/qzapp/101145243/365F9CDC3C18601CCF2F8409EBBA4C67/100','没那么简单','','','','','0.0.0.0','118.186.156.246','15','Y');
INSERT INTO `yiif_user` VALUES('45','哎哟猪呀★_qq','$2a$08$l1zyHOC81SuOjf2DOK72XukrgJ.q871vxcgk4K8Per.U.1xBhgzuK','','1','1','1407817428','http://qzapp.qlogo.cn/qzapp/101145243/692F6AC2EA70ED38A7545D92C2F3A028/100','','','','','','0.0.0.0','118.186.156.246','6','Y');
INSERT INTO `yiif_user` VALUES('47','Ps冷眸_涵_sinawb','$2a$08$vW5x/dtt17iAGNg0WIBue.MDEQZPeQ6CQrWSqZR0irHc382HKXoYG','','1','1','1407834268','http://tp2.sinaimg.cn/1503697997/180/1288014406/1','','','','','','0.0.0.0','118.186.156.246','24','Y');
INSERT INTO `yiif_user` VALUES('48','总攻_qq','$2a$08$.zu6XdeD4ugOtxjByW8eWupG0LC0G29Fw6VMKbnxWr1DjW/.v.PXG','','1','1','1407903794','http://qzapp.qlogo.cn/qzapp/101145243/2CA62C4C3E44055483E2E5786702DC9A/100','','','','','','0.0.0.0','182.131.19.96','1','Y');
INSERT INTO `yiif_user` VALUES('49','咚咚锵锵的蝎子_sinawb','$2a$08$J5NcHu/4qbJhuwFT4D9wFeyXn.2zDQWbWf0if9dxaJVv2Bhhr9cFO','','1','1','1407919844','http://tp4.sinaimg.cn/5244883271/180/0/1','','','','','','0.0.0.0','124.202.209.114','15','Y');
INSERT INTO `yiif_user` VALUES('50','夏至未至lover要开心_sinawb','$2a$08$BtbYaALP4XE4DYl2K8k.dedfPduHorL3lG0wTHdSOxKEHPhKj9dKa','','1','1','1407934979','','','','','','','0.0.0.0','124.202.209.114','3','Y');
INSERT INTO `yiif_user` VALUES('51','赵金涵_renren','$2a$08$BnxiM2MbrOoJjvICyjodi.F0Pbyr4/1RrNrSQzJANT2nxa6THhR96','','1','1','1408075304','http://hd201.xiaonei.com/photos/hd201/20081102/15/10/head_2eUN_4977f198169.jpg','','','','','','0.0.0.0','118.186.156.246','13','Y');
INSERT INTO `yiif_user` VALUES('52','Gavin_qq','$2a$08$NijA8Kyvl/nc..ruhiIRm.7dPDIqidlPFCeCEmKda4avAGh3Y/Z4O','','1','1','1409563389','http://qzapp.qlogo.cn/qzapp/101145243/D8BD3F07EE239BBF57BA6B88F28624C5/100','','','','','','0.0.0.0','140.206.82.242','1','Y');
INSERT INTO `yiif_user` VALUES('53','333333','$2a$08$bn/7UL0jlUD135YurE3BMuytmeHw5.XXAWS71Zw8uczqnKVtR/HlW','soueovip@126.com','1','1','1409802818','','333333','','','','','0.0.0.0','182.18.56.74','2','N');
INSERT INTO `yiif_user` VALUES('54','696969','$2a$08$x64xVuC2byqYsT1rz2SVkeXAkN042zYqA.v7N48ndyqllPz38LCFy','123465@qq.com','1','1','1417579165','','696969','','','','','0.0.0.0','127.0.0.1','1','N');
INSERT INTO `yiif_user` VALUES('56','898989','$2a$08$zHSj2pz1oDoOScZ8mj2SB.13jCLbNB7DODzZqPX0RR47XMOuCXGH.','326196998@qq.com','1','1','1418720612','','8989','','','','','127.0.0.1','127.0.0.1','1','N');

DROP TABLE IF EXISTS `yiif_user_group`;
CREATE TABLE `yiif_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(30) DEFAULT '' COMMENT '用户组名称',
  `acl` text COMMENT '权限控制',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户组';

INSERT INTO `yiif_user_group` VALUES('1','普通用户','');
INSERT INTO `yiif_user_group` VALUES('2','VIP①用户','');
INSERT INTO `yiif_user_group` VALUES('3','VIP②用户','');
INSERT INTO `yiif_user_group` VALUES('4','VIP④用户','');
INSERT INTO `yiif_user_group` VALUES('5','VIP⑤用户','');
INSERT INTO `yiif_user_group` VALUES('6','VIP⑥用户','');
INSERT INTO `yiif_user_group` VALUES('7','VIP⑦用户','');
INSERT INTO `yiif_user_group` VALUES('8','VIP⑧用户','');
INSERT INTO `yiif_user_group` VALUES('9','网站编辑','default|login,catalog|index,menu|index,special|index,post|index,image|index,soft|index,video|index,goods|index,page|index,comment|index,reply|index,tag|index,recommendPosition|index,user|index,question|index,link|index,adPosition|index,ad|index,attach|index,modeltype|index,database|index,cache|index,maillog|index,oAuth|index');
INSERT INTO `yiif_user_group` VALUES('10','系统管理员','Administrator');

DROP TABLE IF EXISTS `yiif_video`;
CREATE TABLE `yiif_video` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '' COMMENT '视频名称',
  `catalog_id` smallint(5) unsigned DEFAULT '0' COMMENT '分类id ',
  `cover_image` varchar(100) DEFAULT '' COMMENT '封面图片',
  `fileid` varchar(255) DEFAULT NULL COMMENT '文件id',
  `language` varchar(10) NOT NULL DEFAULT '' COMMENT '视频语言',
  `video_type` varchar(10) NOT NULL DEFAULT '' COMMENT '视频类型',
  `video_score` decimal(3,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '视频评分',
  `video_size` varchar(10) NOT NULL DEFAULT '' COMMENT '视频大小',
  `download` varchar(100) DEFAULT '' COMMENT '下载链接',
  `introduce` text COMMENT '软件简介',
  `pay` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '支付费用',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '最近更新时间',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '发布时间',
  `view_count` smallint(8) unsigned DEFAULT NULL COMMENT '观看次数',
  `down_count` smallint(8) unsigned DEFAULT '0' COMMENT '下载次数',
  `voted` varchar(100) DEFAULT NULL COMMENT '投票结果',
  `status` enum('Y','N') DEFAULT 'Y' COMMENT '是否显示',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_description` text COMMENT 'SEO描述',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='软件管理表';

INSERT INTO `yiif_video` VALUES('1','美国队长','16','uploads/images/201406/827a03cb8cb.jpg','','englise','science','8.6','','','美国队长','0.00','1407120508','1400834656','79','0','{\"t\":10,\"s\":[0,1,1,2,6]}','Y','','','');
INSERT INTO `yiif_video` VALUES('2','钢铁侠','16','uploads/images/201406/bf941705b16.jpg','','chinese','comedy','0.0','','','','0.00','1407120502','1403148128','4','0','','Y','','','');
INSERT INTO `yiif_video` VALUES('3','明日边缘','16','uploads/images/201406/4cc06a97d5a.jpg','','chinese','comedy','0.0','','','','0.00','1407120495','1403148264','1','0','','Y','','','');
INSERT INTO `yiif_video` VALUES('4','窃听风云3','16','uploads/images/201406/a02a34ce432.jpg','','chinese','comedy','9.0','','','','0.00','1407120487','1403148306','13','0','{\"t\":2,\"s\":[0,0,0,1,1]}','Y','','','');
INSERT INTO `yiif_video` VALUES('5','终结者4','16','uploads/images/201406/0bb513c708b.jpg','','chinese','comedy','10.0','','','','0.00','1407120480','1403148363','11','0','{\"t\":1,\"s\":[0,0,0,0,1]}','Y','','','');
INSERT INTO `yiif_video` VALUES('6','孤胆保镖','16','uploads/images/201406/566eb360159.jpg','107','chinese','active','8.0','','','<p>电影</p>','0.00','1411527190','1403148418','27','0','{\"t\":2,\"s\":[0,0,1,0,1]}','Y','','','电影');
