-- phpMyAdmin SQL Dump
-- version 2.10.0.2
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2008 年 12 月 23 日 16:03
-- 服务器版本: 5.0.27
-- PHP 版本: 5.2.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `app_cn920`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `app_car_cars`
-- 

CREATE TABLE `app_car_cars` (
  `id` int(11) NOT NULL auto_increment,
  `car_name` varchar(255) character set utf8 default NULL,
  `capacity` int(11) default NULL,
  `intro` text character set utf8,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `price` int(11) default NULL,
  `car_logo` varchar(255) character set utf8 default NULL,
  `car_logo_flash` varchar(255) character set utf8 default NULL,
  `car_trademark` varchar(255) character set utf8 default NULL,
  `car_trademarkname` varchar(255) character set utf8 default NULL,
  `car_police` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `app_car_cars`
-- 

INSERT INTO `app_car_cars` (`id`, `car_name`, `capacity`, `intro`, `created_at`, `updated_at`, `price`, `car_logo`, `car_logo_flash`, `car_trademark`, `car_trademarkname`, `car_police`) VALUES 
(1, '二手奥拓', NULL, 'aotuo', '2008-12-23 13:14:30', '2008-12-23 13:14:25', 16000, '/car/img/ty.gif', '', '/car/img/logo_alto.gif', NULL, NULL),
(2, '奥拓小王子', NULL, '奥拓小王子', '2008-12-23 13:18:21', '2008-12-23 13:18:24', 20000, '/car/img/atxwz.gif', NULL, '/car/img/logo_alto.gif', NULL, NULL);

-- --------------------------------------------------------

-- 
-- 表的结构 `app_car_notices`
-- 

CREATE TABLE `app_car_notices` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `from_xid` varchar(255) default NULL,
  `to_xid` varchar(255) default NULL,
  `sented` tinyint(1) default NULL,
  `noticed` tinyint(1) default NULL,
  `ltype` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `column1` varchar(255) default NULL,
  `column2` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_notices_on_from_xid` (`from_xid`),
  KEY `index_notices_on_updated_at` (`updated_at`),
  KEY `index_notices_on_user_id` (`user_id`),
  KEY `index_notices_on_to_xid_and_from_xid` (`to_xid`,`from_xid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `app_car_notices`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `app_car_parks`
-- 

CREATE TABLE `app_car_parks` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `park_updated_at` int(11) default NULL,
  `app_car_usercars_id` int(11) default NULL,
  `ctime` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `app_car_parks`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `app_car_usercars`
-- 

CREATE TABLE `app_car_usercars` (
  `id` int(11) NOT NULL auto_increment,
  `car_name` varchar(255) character set utf8 default NULL,
  `capacity` int(11) default NULL,
  `uid` int(11) default NULL,
  `revivaltime` date default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `park_uid` int(11) default NULL,
  `robof` int(11) default NULL,
  `app_car_park_id` int(11) default NULL,
  `parkid` int(11) default NULL,
  `car_logo` varchar(255) character set utf8 default NULL,
  `car_logo_flash` varchar(255) character set utf8 default NULL,
  `car_trademark` varchar(255) character set utf8 default NULL,
  `car_trademarkname` varchar(255) character set utf8 default NULL,
  `car_police` int(11) default NULL,
  `park_moneyminute` int(11) default NULL,
  `park_profit` varchar(255) character set utf8 default NULL,
  `price` int(11) default NULL,
  `intro` text character set utf8,
  `ctime` int(11) default NULL,
  `park_real_name` varchar(255) character set utf8 default NULL,
  `park_logo20` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_userships_on_user_id` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- 导出表中的数据 `app_car_usercars`
-- 

INSERT INTO `app_car_usercars` (`id`, `car_name`, `capacity`, `uid`, `revivaltime`, `created_at`, `updated_at`, `park_uid`, `robof`, `app_car_park_id`, `parkid`, `car_logo`, `car_logo_flash`, `car_trademark`, `car_trademarkname`, `car_police`, `park_moneyminute`, `park_profit`, `price`, `intro`, `ctime`, `park_real_name`, `park_logo20`) VALUES 
(1, '二手奥拓', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/car/img/ty.gif', NULL, '/car/img/logo_alto.gif', NULL, NULL, NULL, NULL, 16000, 'aotuo', NULL, NULL, NULL),
(2, '二手奥拓', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/car/img/ty.gif', NULL, '/car/img/logo_alto.gif', NULL, NULL, NULL, NULL, 16000, 'aotuo', NULL, NULL, NULL),
(3, '二手奥拓', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/car/img/ty.gif', '', '/car/img/logo_alto.gif', NULL, NULL, NULL, NULL, 16000, 'aotuo', NULL, NULL, NULL),
(4, '二手奥拓', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/car/img/ty.gif', '', '/car/img/logo_alto.gif', NULL, NULL, NULL, NULL, 16000, 'aotuo', NULL, NULL, NULL),
(5, '二手奥拓', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/car/img/ty.gif', '', '/car/img/logo_alto.gif', NULL, NULL, NULL, NULL, 16000, 'aotuo', NULL, NULL, NULL),
(6, '二手奥拓', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/car/img/ty.gif', '', '/car/img/logo_alto.gif', NULL, NULL, NULL, NULL, 16000, 'aotuo', NULL, NULL, NULL),
(7, '奥拓小王子', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/car/img/atxwz.gif', NULL, '/car/img/logo_alto.gif', NULL, NULL, NULL, NULL, 20000, '奥拓小王子', NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- 表的结构 `app_car_users`
-- 

CREATE TABLE `app_car_users` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `car_count` int(11) default NULL,
  `total_money` int(11) default NULL,
  `updated_at` timestamp NULL default NULL,
  `created_at` timestamp NULL default CURRENT_TIMESTAMP,
  `friend_ids` text,
  `money_minute` int(11) default NULL,
  `money_max` int(11) default NULL,
  `avenue` varchar(255) default NULL,
  `scene` varchar(255) default NULL,
  `sceneid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- 导出表中的数据 `app_car_users`
-- 

INSERT INTO `app_car_users` (`id`, `uid`, `car_count`, `total_money`, `updated_at`, `created_at`, `friend_ids`, `money_minute`, `money_max`, `avenue`, `scene`, `sceneid`) VALUES 
(7, 1, NULL, 0, NULL, '2008-12-22 15:16:18', '2,3,4', NULL, NULL, NULL, NULL, NULL),
(8, 2, NULL, 1000, NULL, '2008-12-23 11:37:32', '1,3,4', NULL, NULL, NULL, NULL, NULL),
(9, 4, NULL, 1000, NULL, '2008-12-23 15:48:36', '1,2,3', NULL, NULL, NULL, NULL, NULL),
(10, 3, NULL, 1000, NULL, '2008-12-23 15:53:48', '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- 表的结构 `app_friendsell_notices`
-- 

CREATE TABLE `app_friendsell_notices` (
  `id` int(11) NOT NULL auto_increment,
  `from_uid` int(11) default NULL,
  `to_uid` int(11) default NULL,
  `who_uid` int(11) default NULL,
  `content` text,
  `updated_at` timestamp NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- 导出表中的数据 `app_friendsell_notices`
-- 

INSERT INTO `app_friendsell_notices` (`id`, `from_uid`, `to_uid`, `who_uid`, `content`, `updated_at`) VALUES 
(1, 1, NULL, 2, '<a href=''friend?id=2''>刘欢</a>被<a href=''friend?id=1''>逐渐好</a>以￥500的身价买为奴隶，起个绰号叫“郁郁”', '2008-12-22 19:51:37'),
(2, 1, 2, NULL, '傍晚微风徐徐，主人<a href=''friend?id=1''>逐渐好</a>带着<a href=''friend?id=2''>刘欢</a>到公园里散步，美丽的夕阳投射出两人修长的身影', '2008-12-22 20:18:43'),
(3, 1, 2, NULL, '<a href=''friend?id=1''>逐渐好</a>把<a href=''friend?id=2''>刘欢</a>带到一家高雅的西餐厅，在浪漫的烛光中共进晚餐', '2008-12-22 20:18:58'),
(4, 1, 2, NULL, '<a href=''friend?id=1''>逐渐好</a>给<a href=''friend?id=2''>刘欢</a>穿上漂亮的新衣服', '2008-12-22 20:19:03'),
(5, 1, 2, NULL, '天热又干燥，<a href=''friend?id=1''>逐渐好</a>不辞辛劳亲自给奴隶<a href=''friend?id=2''>刘欢</a>泡了杯菊花茶解渴', '2008-12-22 20:19:09'),
(6, 1, 2, NULL, '傍晚微风徐徐，主人<a href=''friend?id=1''>逐渐好</a>带着<a href=''friend?id=2''>刘欢</a>到公园里散步，美丽的夕阳投射出两人修长的身影', '2008-12-22 20:21:46'),
(7, 1, 2, NULL, '<a href=''friend?id=2''>刘欢</a>被<a href=''friend?id=1''>逐渐好</a>罚跪半天搓衣板', '2008-12-22 20:24:24'),
(8, 1, NULL, 4, '<a href=''friend?id=4''>小彪</a>被<a href=''friend?id=1''>逐渐好</a>以￥500的身价买为奴隶', '2008-12-22 21:33:04');

-- --------------------------------------------------------

-- 
-- 表的结构 `app_friendsell_users`
-- 

CREATE TABLE `app_friendsell_users` (
  `id` int(11) NOT NULL auto_increment,
  `pain_type` int(11) default NULL,
  `pain_updated_at` timestamp NULL default NULL,
  `uid` int(11) NOT NULL,
  `slave_count` int(11) default NULL,
  `sell_price` int(11) default NULL,
  `total_money` int(11) default NULL,
  `updated_at` timestamp NULL default NULL,
  `created_at` timestamp NULL default CURRENT_TIMESTAMP,
  `fawn_updated_at` timestamp NULL default NULL,
  `afflict_updated_at` timestamp NULL default NULL,
  `friend_ids` text,
  `nickname` varchar(255) default NULL,
  `sell_histroy` varchar(255) default NULL,
  `master_id` int(11) default NULL,
  `sell_updated_at` timestamp NULL default NULL,
  `last_sell` varchar(255) default NULL,
  `last_price` int(11) default '0',
  `freeself_updated_at` timestamp NULL default NULL,
  `comforttype` int(11) default NULL,
  `comfort_updated_at` timestamp NULL default NULL,
  `master_nickname` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- 导出表中的数据 `app_friendsell_users`
-- 

INSERT INTO `app_friendsell_users` (`id`, `pain_type`, `pain_updated_at`, `uid`, `slave_count`, `sell_price`, `total_money`, `updated_at`, `created_at`, `fawn_updated_at`, `afflict_updated_at`, `friend_ids`, `nickname`, `sell_histroy`, `master_id`, `sell_updated_at`, `last_sell`, `last_price`, `freeself_updated_at`, `comforttype`, `comfort_updated_at`, `master_nickname`) VALUES 
(1, NULL, NULL, 1, 2, 500, 1300, NULL, '2008-12-22 19:51:25', NULL, NULL, '2,3,4', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(2, 122, '2008-12-22 23:24:00', 2, 0, 650, 1000, NULL, '2008-12-22 19:51:31', NULL, NULL, '1,3,4', '郁郁', NULL, 1, '2008-12-22 19:51:37', '花了<span class=''dgreen''><strong>&yen;500</strong></span>购买', 500, NULL, 203, '2008-12-22 23:21:00', NULL),
(3, NULL, NULL, 4, 0, 650, 1000, NULL, '2008-12-22 21:06:22', NULL, NULL, '1,2,3', '', NULL, 1, '2008-12-22 21:33:04', '花了<span class=''dgreen''><strong>&yen;500</strong></span>购买', 500, NULL, NULL, NULL, '逐渐好'),
(4, NULL, NULL, 3, 0, 500, 1000, NULL, '2008-12-22 21:06:35', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- 表的结构 `app_globals`
-- 

CREATE TABLE `app_globals` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk AUTO_INCREMENT=7 ;

-- 
-- 导出表中的数据 `app_globals`
-- 

INSERT INTO `app_globals` (`id`, `uid`, `money`) VALUES 
(1, 40, 1000),
(2, 1, 30000),
(3, 2, 1000),
(4, 3, 1000),
(5, 4, 1000),
(6, 12, 1000);

-- --------------------------------------------------------

-- 
-- 表的结构 `club_buddys`
-- 

CREATE TABLE `club_buddys` (
  `id` int(10) NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0' COMMENT '登陆会员的id',
  `buddyid` mediumint(8) unsigned NOT NULL default '0' COMMENT '好友id',
  `grade` tinyint(3) unsigned NOT NULL default '1',
  `dateline` int(10) unsigned NOT NULL default '0',
  `description` char(255) NOT NULL default '',
  `start` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `club_buddys`
-- 

INSERT INTO `club_buddys` (`id`, `uid`, `buddyid`, `grade`, `dateline`, `description`, `start`) VALUES 
(1, 1, 2, 1, 0, '', 0),
(2, 1, 3, 1, 0, '', 0),
(3, 1, 4, 1, 0, '', 0),
(4, 2, 1, 1, 0, '', 0),
(5, 2, 3, 1, 0, '', 0),
(6, 2, 4, 1, 0, '', 0),
(7, 4, 1, 1, 0, '', 0),
(8, 4, 2, 1, 0, '', 0),
(9, 4, 3, 1, 0, '', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `club_members`
-- 

CREATE TABLE `club_members` (
  `uid` mediumint(8) unsigned NOT NULL auto_increment,
  `username` char(40) NOT NULL,
  `password` char(32) NOT NULL default '',
  `secques` char(8) NOT NULL default '',
  `gender` tinyint(1) NOT NULL default '0',
  `adminid` tinyint(1) NOT NULL default '0',
  `groupid` smallint(6) unsigned NOT NULL default '0',
  `groupexpiry` int(10) unsigned NOT NULL default '0',
  `extgroupids` char(20) NOT NULL default '',
  `regip` char(15) NOT NULL default '',
  `regdate` int(10) unsigned NOT NULL default '0',
  `lastip` char(15) NOT NULL default '',
  `lastvisit` int(10) unsigned NOT NULL default '0',
  `lastactivity` int(10) unsigned NOT NULL default '0',
  `lastpost` int(10) unsigned NOT NULL default '0',
  `posts` mediumint(8) unsigned NOT NULL default '0',
  `digestposts` smallint(6) unsigned NOT NULL default '0',
  `oltime` smallint(6) unsigned NOT NULL default '0',
  `pageviews` mediumint(8) unsigned NOT NULL default '0',
  `credits` int(10) NOT NULL default '0',
  `extcredits1` int(10) NOT NULL default '0',
  `extcredits2` int(10) NOT NULL default '0',
  `extcredits3` int(10) NOT NULL default '0',
  `extcredits4` int(10) NOT NULL default '0',
  `extcredits5` int(10) NOT NULL default '0',
  `extcredits6` int(10) NOT NULL default '0',
  `extcredits7` int(10) NOT NULL default '0',
  `extcredits8` int(10) NOT NULL default '0',
  `email` char(40) NOT NULL default '',
  `bday` date NOT NULL default '0000-00-00',
  `sigstatus` tinyint(1) NOT NULL default '0',
  `tpp` tinyint(3) unsigned NOT NULL default '0',
  `ppp` tinyint(3) unsigned NOT NULL default '0',
  `styleid` smallint(6) unsigned NOT NULL default '0',
  `dateformat` tinyint(1) NOT NULL default '0',
  `timeformat` tinyint(1) NOT NULL default '0',
  `pmsound` tinyint(1) NOT NULL default '0',
  `showemail` tinyint(1) NOT NULL default '0',
  `newsletter` tinyint(1) NOT NULL default '0',
  `invisible` tinyint(1) NOT NULL default '0',
  `timeoffset` char(4) NOT NULL default '',
  `newpm` tinyint(1) NOT NULL default '0',
  `accessmasks` tinyint(1) NOT NULL default '0',
  `editormode` tinyint(1) unsigned NOT NULL default '2',
  `customshow` tinyint(1) unsigned NOT NULL default '26',
  `xspacestatus` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

-- 
-- 导出表中的数据 `club_members`
-- 

INSERT INTO `club_members` (`uid`, `username`, `password`, `secques`, `gender`, `adminid`, `groupid`, `groupexpiry`, `extgroupids`, `regip`, `regdate`, `lastip`, `lastvisit`, `lastactivity`, `lastpost`, `posts`, `digestposts`, `oltime`, `pageviews`, `credits`, `extcredits1`, `extcredits2`, `extcredits3`, `extcredits4`, `extcredits5`, `extcredits6`, `extcredits7`, `extcredits8`, `email`, `bday`, `sigstatus`, `tpp`, `ppp`, `styleid`, `dateformat`, `timeformat`, `pmsound`, `showemail`, `newsletter`, `invisible`, `timeoffset`, `newpm`, `accessmasks`, `editormode`, `customshow`, `xspacestatus`) VALUES 
(1, 'cn920', '619c6fbec4a36e147cc6170700ef1d55', '', 0, 1, 1, 0, '', 'hidden', 1206975672, '127.0.0.1', 1215031214, 1215368110, 1208106935, 6, 1, 5, 180, 20, 20, 0, 0, 0, 0, 0, 0, 0, 'service@cn920.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '9999', 0, 0, 2, 26, 0),
(4, 'tjls2008', 'e10adc3949ba59abbe56e057f20f883e', '', 1, 1, 11, 0, '', '', 1208138728, '127.0.0.1', 1226335596, 1226856842, 1225810919, 26, 1, 17, 660, 50, 50, 30, 0, 0, 0, 0, 0, 0, 'tjls2008@163.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(3, 'meinv', '619c6fbec4a36e147cc6170700ef1d55', '', 1, 3, 3, 0, '', '', 1208115342, '123.120.209.210', 0, 1208115350, 1208115342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'hou@hou.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(2, 'hou', '619c6fbec4a36e147cc6170700ef1d55', '', 1, 3, 3, 0, '', '', 1208108486, '123.120.207.37', 1209997110, 1210086626, 1208108486, 0, 1, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 'hou@hou.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(5, 'wanmeiss', 'e10adc3949ba59abbe56e057f20f883e', '', 1, 0, 10, 0, '', '', 1208139208, '127.0.0.1', 1216592239, 1226603912, 1214764292, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wanmeiss@tom.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(6, 'riben', '619c6fbec4a36e147cc6170700ef1d55', '', 1, 0, 10, 0, '', '', 1208139568, '127.0.0.1', 1208139578, 1215032943, 1208139568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'hou@hou.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(7, 'tjls_2008', 'e10adc3949ba59abbe56e057f20f883e', '', 1, 0, 10, 0, '', '', 1208139717, '122.70.41.47', 1208153935, 1208157701, 1208139717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'tjls2008@163.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(10, 'ljh', '619c6fbec4a36e147cc6170700ef1d55', '', 1, 0, 10, 0, '', '', 1208714914, '123.120.214.66', 1208714929, 1209920003, 1208714914, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'hasdf@dsas.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(11, 'hoho', '619c6fbec4a36e147cc6170700ef1d55', '', 1, 0, 10, 0, '', '', 1208717834, '123.120.213.63', 0, 1208717860, 1208717834, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'hosdaf@ssd.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(12, '123328888', 'c98703aed69284552ffffea25a1706d9', '', 1, 0, 10, 0, '', '', 1208944250, '', 1208944250, 0, 1208944250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '19liuhui85@163.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(13, 'wjh619321', '596e759805620925b0225c49f56dbdbd', '', 1, 0, 10, 0, '', '', 1209049200, '122.6.166.59', 0, 1209049247, 1209049200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'WJH619321@163.COM', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(14, 'haomiaomiao', '04ec7c4262511fdef52b8755d16ab7cd', '', 2, 0, 10, 0, '', '', 1209054380, '123.118.67.103', 1209054491, 1209370068, 1209054380, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'haomiaomiao_@126.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(15, 'ai105967854', '0f26a828377d2de569a2f4cf12c52938', '', 1, 0, 10, 0, '', '', 1209087143, '121.12.179.16', 0, 1209087227, 1209087143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '105967854@qq.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(16, 'zhangkuen', 'e841dfbb406e905263370636ac56d82d', '', 1, 0, 10, 0, '', '', 1209087175, '121.12.179.16', 0, 1209087249, 1209087175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '58114@126.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(17, '123456', '23cd85963ec5cf812c06f350f4c64a43', '', 1, 0, 10, 0, '', '', 1209179884, '', 1209179884, 0, 1209179884, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '123@126.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(18, '182027102', '6cab1d520a76df87b856c8e5e92c3afc', '', 1, 0, 10, 0, '', '', 1209258618, '', 1209258618, 0, 1209258618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '182027102.love@163.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(19, 'qq412505800', '3c4f3936a465f0b856e8f9d1234d6760', '', 1, 0, 10, 0, '', '', 1209308905, '', 1209308905, 0, 1209308905, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'qq412505800@163.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(20, '185411452', '3c4f3936a465f0b856e8f9d1234d6760', '', 1, 0, 10, 0, '', '', 1209309282, '', 1209309282, 0, 1209309282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'qq412505800@163.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(21, 'a1a2a3a4', '3c4f3936a465f0b856e8f9d1234d6760', '', 1, 0, 10, 0, '', '', 1209309516, '', 1209309516, 0, 1209309516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'qq412505800@163.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(22, 'houtt', '619c6fbec4a36e147cc6170700ef1d55', '', 1, 0, 10, 0, '', '', 1209311536, '127.0.0.1', 1212503913, 1212598662, 1209311536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'asfd@addsa.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(23, 'lala', '4c980ae73dc1faf1ae51e8c2d888d28f', '', 2, 0, 10, 0, '', '', 1209435139, '125.92.210.129', 0, 1209435356, 1209435139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'gdzs73@163.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(24, 'dongjun', '51b619292adbd8d5265c77e6e37091c3', '', 1, 0, 10, 0, '', '', 1209713166, '221.239.29.82', 0, 1209713192, 1209713166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'jiangdongjun2002@yahoo.com.cn', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(25, 'WangYX', 'ade7c1dc609408b28708a9d241f17889', '', 1, 0, 10, 0, '', '', 1209715091, '208.248.82.254', 0, 1209715141, 1209715091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'victor-wang29@hotmail.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(26, 'liqianfeng', '8a5fa585b724d9e0921b8182d3b1019f', '', 1, 0, 10, 0, '', '', 1209738732, '', 1209738732, 0, 1209738732, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'liqianfeng7@126.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(27, 'bbb', 'e10adc3949ba59abbe56e057f20f883e', '', 1, 0, 10, 0, '', '', 1211834627, '127.0.0.1', 0, 1211834786, 1211834627, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'tjlishuang@126.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(28, 'tjls1234', 'e10adc3949ba59abbe56e057f20f883e', '', 1, 0, 10, 0, '', '', 1213214647, '127.0.0.1', 1213214703, 1213285297, 1213214647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'tjlssadsdff@sina.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(29, '001', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0, 0, 0, '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '2008-07-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(31, '123456@126.com', 'e10adc3949ba59abbe56e057f20f883e', '', 1, 0, 10, 0, '', '', 1225724410, '127.0.0.1', 0, 1225834664, 1225834664, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '123456@126.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(39, 'wanmeiss@cn920.com', 'e10adc3949ba59abbe56e057f20f883e', '', 1, 0, 10, 0, '', '', 1225979923, '', 1225979923, 0, 1225979923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'wanmeiss@cn920.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0),
(40, 'ljhynlp2', '619c6fbec4a36e147cc6170700ef1d55', '', 1, 0, 10, 0, '', '', 1227712839, '', 1227712839, 0, 1227712839, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ljhynlp@tt.com', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 2, 26, 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `tongju_users`
-- 

CREATE TABLE `tongju_users` (
  `user_id` mediumint(8) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `nickname` varchar(40) NOT NULL default '',
  `password` varchar(40) NOT NULL default '',
  `user_email` varchar(100) NOT NULL default '',
  `user_gender` set('1','2') NOT NULL default '',
  `user_birth` varchar(15) NOT NULL default '',
  `user_inplace` tinyint(3) NOT NULL default '0',
  `user_incity` varchar(30) NOT NULL default '0',
  `height` smallint(5) default '0',
  `weight` smallint(5) default '0',
  `blood_type` tinyint(3) default '-1',
  `edu` tinyint(3) default '-1',
  `job` tinyint(3) default '-1',
  `income` tinyint(3) default '-1',
  `religion` tinyint(3) default '-1',
  `marriage` tinyint(2) default '-1',
  `smoke` tinyint(2) default NULL,
  `drink` tinyint(2) default NULL,
  `personality` tinyint(2) default NULL,
  `relation` tinyint(2) default NULL,
  `user_astro` tinyint(2) default NULL,
  `aboutme` text,
  `user_roomtype` set('1','2','3') default NULL,
  `last_visit_time` datetime default NULL,
  `user_face` tinyint(3) default NULL,
  `creacetime` datetime default NULL,
  `user_picnum` smallint(5) default NULL COMMENT '照片数',
  `rank_value` int(11) default NULL COMMENT '我设的等级',
  `rank_people` mediumint(8) default NULL,
  `clicktimes` int(11) default NULL,
  `user_money` decimal(10,1) default NULL,
  `album_refresh` int(11) NOT NULL default '0',
  `userpic` varchar(200) default NULL,
  `bfstatus` int(5) NOT NULL default '0' COMMENT '征友状态',
  `isvip` smallint(2) NOT NULL default '0',
  `isunusual` smallint(2) NOT NULL default '0' COMMENT '是否为特殊人群',
  `knowme` varchar(50) default NULL,
  `tel` varchar(11) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

-- 
-- 导出表中的数据 `tongju_users`
-- 

INSERT INTO `tongju_users` (`user_id`, `username`, `nickname`, `password`, `user_email`, `user_gender`, `user_birth`, `user_inplace`, `user_incity`, `height`, `weight`, `blood_type`, `edu`, `job`, `income`, `religion`, `marriage`, `smoke`, `drink`, `personality`, `relation`, `user_astro`, `aboutme`, `user_roomtype`, `last_visit_time`, `user_face`, `creacetime`, `user_picnum`, `rank_value`, `rank_people`, `clicktimes`, `user_money`, `album_refresh`, `userpic`, `bfstatus`, `isvip`, `isunusual`, `knowme`, `tel`) VALUES 
(1, 'cn920', '逐渐好', '619c6fbec4a36e147cc6170700ef1d55', 'ljhynlp@126.com', '2', '1982-1-16', 1, '北京', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, '阿里可是大家弗兰克斯低价房克拉斯的离开福建阿里斯顿看', NULL, '2008-10-07 04:40:19', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL),
(2, 'hou', '刘欢', '619c6fbec4a36e147cc6170700ef1d55', 'hou@hou.com', '1', '1980-12-9', 1, '海口市', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, '啊适当放宽颇为而破解阿斯顿积分离开自己', '3', '2008-09-04 01:58:58', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 1, NULL, NULL),
(3, 'meinv', '美女', 'e10adc3949ba59abbe56e057f20f883e', 'hou@hou.com', '2', '1981-12-9', 1, '', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, '就立刻加热离开他就惹哭了发卡机速度', '2', '2008-04-14 03:35:50', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 1, NULL, NULL),
(4, 'tjls2008', '小彪', 'e10adc3949ba59abbe56e057f20f883e', 'tjls2008@163.com', '1', '1980-12-9', 24, '乌鲁木齐', 170, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, '我是完美时尚的李双！', '2', '2008-11-23 15:04:38', 1, NULL, 2, NULL, NULL, 223, NULL, 1223929876, 'upload/4_01223929876.jpg', 2, 0, 1, NULL, NULL),
(5, 'wanmeiss', 'wanmeiss', 'e10adc3949ba59abbe56e057f20f883e', 'wanmeiss@tom.com', '2', '1988-7-21', 1, '长岭', 155, 60, 1, 3, 21, 0, 2, 0, 1, 0, 0, 3, 9, '我是一个开朗的女生！呵呵', '3', '2008-11-14 01:02:47', 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 1, NULL, NULL),
(6, 'riben', '日本人', '619c6fbec4a36e147cc6170700ef1d55', 'hou@hou.com', '1', '1967-12-9', 1, '', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, '看家本事大家看法看见阿斯顿福师大飞', NULL, '2008-10-09 04:59:08', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 1, NULL, NULL),
(7, 'tjls_2008', '呵呵', 'e10adc3949ba59abbe56e057f20f883e', 'tjls2008@163.com', '1', '1986-1-9', 1, '', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-04-14 15:21:41', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL),
(10, 'ljh', '猴猴', '619c6fbec4a36e147cc6170700ef1d55', 'hasdf@dsas.com', '1', '1980-12-9', 1, '', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-11-26 23:00:33', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL),
(11, 'hoho', '猴卡可', '619c6fbec4a36e147cc6170700ef1d55', 'hosdaf@ssd.com', '1', '1980-12-9', 25, '贺兰', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-04-21 02:57:40', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL),
(12, '123328888', '大地', 'c98703aed69284552ffffea25a1706d9', '19liuhui85@163.com', '1', '1980-12-9', 10, '济南', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-04-23 17:50:50', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL),
(13, 'wjh619321', '雨中漫步', '596e759805620925b0225c49f56dbdbd', 'WJH619321@163.COM', '1', '2000-7-28', 10, '临沂', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-04-24 23:00:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL),
(14, 'haomiaomiao', '郝淼淼', '04ec7c4262511fdef52b8755d16ab7cd', 'haomiaomiao_@126.com', '2', '1984-4-1', 1, '', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-04-25 00:28:11', 2, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL),
(15, 'ai105967854', '傲视@军魂', '0f26a828377d2de569a2f4cf12c52938', '105967854@qq.com', '1', '1985-3-3', 29, '中山', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 11, NULL, NULL, '2008-04-25 09:33:47', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL),
(16, 'zhangkuen', '潇洒少爷', 'e841dfbb406e905263370636ac56d82d', '58114@126.com', '1', '1987-3-11', 29, '中山', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 11, NULL, NULL, '2008-04-25 09:34:09', 19, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 0, NULL, NULL),
(17, '123456', '123456', '23cd85963ec5cf812c06f350f4c64a43', '123@126.com', '1', '1980-12-9', 1, '', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-04-26 11:18:04', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL),
(18, '182027102', '阿里小鹏', '6cab1d520a76df87b856c8e5e92c3afc', '182027102.love@163.com', '1', '1986-9-4', 29, '', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-04-27 09:10:18', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 0, NULL, NULL),
(19, 'qq412505800', '哓方', '3c4f3936a465f0b856e8f9d1234d6760', 'qq412505800@163.com', '1', '1984-12-11', 5, '石家庄', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-04-27 23:08:25', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 1, NULL, NULL),
(20, '185411452', '晓方', '3c4f3936a465f0b856e8f9d1234d6760', 'qq412505800@163.com', '1', '1984-12-9', 5, '石家庄', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, '我就是小方！', NULL, '2008-04-27 23:14:42', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 1, NULL, NULL),
(21, 'a1a2a3a4', 'U客', '3c4f3936a465f0b856e8f9d1234d6760', 'qq412505800@163.com', '1', '1984-5-9', 5, '石家庄', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-04-27 23:18:36', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 0, NULL, NULL),
(22, 'houtt', '猴ha测试', '619c6fbec4a36e147cc6170700ef1d55', 'asfd@addsa.com', '1', '1982-12-9', 1, '北京市', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-06-05 00:57:42', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 0, NULL, NULL),
(23, 'lala', '拉拉', '4c980ae73dc1faf1ae51e8c2d888d28f', 'gdzs73@163.com', '2', '1985-3-16', 29, '', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 11, NULL, NULL, '2008-04-29 10:15:56', 2, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL),
(24, 'dongjun', '跑跑', '51b619292adbd8d5265c77e6e37091c3', 'jiangdongjun2002@yahoo.com.cn', '1', '1983-8-16', 2, '天津市', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-05-02 15:26:32', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 0, NULL, NULL),
(25, 'WangYX', 'Smile', 'ade7c1dc609408b28708a9d241f17889', 'victor-wang29@hotmail.com', '1', '1981-7-29', 22, '成都', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-05-02 15:59:01', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL),
(26, 'liqianfeng', '海的誓言', '8a5fa585b724d9e0921b8182d3b1019f', 'liqianfeng7@126.com', '1', '1986-11-8', 12, '南京', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-05-02 22:32:12', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, 0, NULL, NULL),
(27, 'bbb', 'bbb', 'e10adc3949ba59abbe56e057f20f883e', 'tjlishuang@126.com', '1', '1986-1-14', 1, '北京市', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-11-23 14:54:51', 9, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL),
(28, 'tjls1234', '1234', 'e10adc3949ba59abbe56e057f20f883e', 'tjlssadsdff@sina.com', '1', '1988-12-9', 1, '怀柔县', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-06-12 23:41:37', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL),
(29, '001', '李双', 'e10adc3949ba59abbe56e057f20f883e', '', '1', '1986-1-14', 0, '上海市', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, NULL, '阿斯科利电话费卡拉是大方我客气可如今受到控制房价大时代法第三方爱的身份按时打发似的发生地方阿斯顿飞', NULL, '2008-10-09 04:57:20', NULL, '2008-07-31 02:12:56', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL),
(31, '123456@126.com', '整合', 'e10adc3949ba59abbe56e057f20f883e', '123456@126.com', '1', '1986-1-15', 1, '海淀区', 0, 0, -1, -1, -1, -1, 8, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-11-05 05:24:00', 1, '2008-11-03 23:00:10', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, '网上搜索', '1510240854'),
(39, 'wanmeiss@cn920.com', '傻子', 'e10adc3949ba59abbe56e057f20f883e', 'wanmeiss@cn920.com', '1', '1986-1-15', 1, '海淀区', 0, 0, -1, -1, -1, -1, 0, -1, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2008-11-06 21:59:05', 1, '2008-11-06 21:58:43', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, '朋友介绍', '15810240854'),
(40, 'lhs', '刘欢', '', '', '', '', 0, '0', 0, 0, -1, -1, -1, -1, -1, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'http://pic.kaixin001.com/logo/63/91/120_3639191_1.jpg|http://pic.kaixin001.com/logo/63/91/120_3639191_1.jpg|http://pic.kaixin001.com/logo/63/91/120_3639191_1.jpg', 0, 0, 0, NULL, NULL);
