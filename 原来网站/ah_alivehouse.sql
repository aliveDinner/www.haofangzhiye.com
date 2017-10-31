-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2017-06-06 23:57:43
-- 服务器版本： 10.1.9-MariaDB-log
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ah_alivehouse`
--

-- --------------------------------------------------------

--
-- 表的结构 `ah_auth_assignment`
--

CREATE TABLE IF NOT EXISTS `ah_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '分类权限等级',
  `user_id` bigint(20) NOT NULL COMMENT '分配对象UID',
  `created_at` datetime NOT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `ah_auth_assignment`
--

INSERT INTO `ah_auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('前端权限', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `ah_auth_item`
--

CREATE TABLE IF NOT EXISTS `ah_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '权限名',
  `type` tinyint(1) NOT NULL COMMENT '类型',
  `description` text COLLATE utf8_unicode_ci COMMENT '权限描述',
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '使用规则',
  `data` text COLLATE utf8_unicode_ci COMMENT '补充说明',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `ah_auth_item`
--

INSERT INTO `ah_auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/home/*', 2, NULL, NULL, NULL, '2017-05-27 00:00:00', '2017-05-27 00:00:00'),
('前端权限', 1, NULL, NULL, NULL, '2017-05-27 00:00:00', '2017-05-27 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `ah_auth_item_child`
--

CREATE TABLE IF NOT EXISTS `ah_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '权限上级',
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '权限下级'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='权限上下级关系';

--
-- 转存表中的数据 `ah_auth_item_child`
--

INSERT INTO `ah_auth_item_child` (`parent`, `child`) VALUES
('前端权限', '/home/*');

-- --------------------------------------------------------

--
-- 表的结构 `ah_auth_rule`
--

CREATE TABLE IF NOT EXISTS `ah_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '规则名',
  `data` text COLLATE utf8_unicode_ci COMMENT '规则位置',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `ah_back_ban`
--

CREATE TABLE IF NOT EXISTS `ah_back_ban` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `back_user_id` bigint(20) NOT NULL COMMENT 'UID',
  `ban` tinyint(1) unsigned DEFAULT '0' COMMENT '类型;0=允许;1=禁止;',
  `created_at` datetime NOT NULL COMMENT '变更时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `ah_back_user`
--

CREATE TABLE IF NOT EXISTS `ah_back_user` (
  `id` bigint(20) NOT NULL COMMENT '自增ID',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '时效;0=无效;1=有效;',
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '会员编号ID',
  `department_id` bigint(20) DEFAULT NULL COMMENT '部门表ID',
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `phone_verified` tinyint(1) DEFAULT '0' COMMENT '手机号码是否已验证;"0"表示没有验证,"1"表示已验证',
  `email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `email_verified` tinyint(1) DEFAULT '0' COMMENT '邮箱是否已验证;"0"表示没有验证,"1"表示已验证',
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `nickname` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '昵称',
  `real_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `head_url` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像地址',
  `sex` enum('男','女') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别',
  `signature` varchar(32) COLLATE utf8_unicode_ci DEFAULT '什么都没有留下...' COMMENT '个性签名',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `height` int(3) DEFAULT NULL COMMENT '身高/单位CM',
  `weight` int(3) DEFAULT NULL COMMENT '体重/单位KG',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当前token',
  `auth_key` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '自动密匙',
  `password_reset_token` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '重置密匙',
  `password_reset_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '验证码',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '状态;0:正常,1:异常;2:禁用;',
  `ip` text CHARACTER SET utf8 COMMENT '登录IP',
  `reg_ip` varchar(32) CHARACTER SET utf8 DEFAULT '0.0.0.0' COMMENT '注册IP',
  `reg_type` varchar(15) CHARACTER SET utf8 DEFAULT NULL COMMENT '注册方式',
  `registered_at` datetime DEFAULT NULL COMMENT '注册时间',
  `logined_at` datetime DEFAULT NULL COMMENT '登录时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='前台用户表';

--
-- 转存表中的数据 `ah_back_user`
--

INSERT INTO `ah_back_user` (`id`, `is_delete`, `code`, `department_id`, `phone`, `phone_verified`, `email`, `email_verified`, `username`, `password`, `nickname`, `real_name`, `head_url`, `sex`, `signature`, `birthday`, `height`, `weight`, `token`, `auth_key`, `password_reset_token`, `password_reset_code`, `status`, `ip`, `reg_ip`, `reg_type`, `registered_at`, `logined_at`, `updated_at`) VALUES
(1, 1, '888888', 1, '10086110000', 0, NULL, 0, 'username', '888888', 'nickname', 'realName', NULL, NULL, '什么都没有留下...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0.0.0.0', NULL, NULL, NULL, NULL),
(4, 1, '8888888', 1, '10086110001', 0, NULL, 0, 'usernames', '888888', 'nickname', 'realName', NULL, NULL, '什么都没有留下...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0.0.0.0', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ah_back_user_log`
--

CREATE TABLE IF NOT EXISTS `ah_back_user_log` (
  `id` bigint(20) NOT NULL COMMENT '自增ID',
  `back_user_id` bigint(20) NOT NULL COMMENT '表user主键',
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '路由',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '地址',
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '客户端',
  `gets` text COLLATE utf8_unicode_ci COMMENT 'GET方法',
  `posts` text COLLATE utf8_unicode_ci COMMENT 'POST方法',
  `target` text CHARACTER SET utf8 COMMENT '目标',
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'IP',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='后台访问记录';

-- --------------------------------------------------------

--
-- 表的结构 `ah_building_base`
--

CREATE TABLE IF NOT EXISTS `ah_building_base` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `type` tinyint(1) DEFAULT '1' COMMENT '类型;0=,1=;默认1;',
  `city_id` bigint(20) NOT NULL COMMENT '城市表ID',
  `name` varchar(255) NOT NULL COMMENT '楼盘名',
  `address` varchar(255) NOT NULL COMMENT '地址',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='楼盘表';

--
-- 转存表中的数据 `ah_building_base`
--

INSERT INTO `ah_building_base` (`id`, `is_delete`, `type`, `city_id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 2, '中海国际', '海口中海国际', '2017-06-01 21:51:52', '2017-06-01 21:51:52'),
(3, 1, 1, 4, '怡心花园', '儋州市怡心花园2期', '2017-06-01 21:54:42', '2017-06-01 21:54:42');

-- --------------------------------------------------------

--
-- 表的结构 `ah_building_detail`
--

CREATE TABLE IF NOT EXISTS `ah_building_detail` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `building_base_id` bigint(20) NOT NULL COMMENT '楼盘表ID',
  `description` varchar(255) NOT NULL COMMENT '详细描述',
  `address` varchar(255) NOT NULL COMMENT '详细地址',
  `url` varchar(255) NOT NULL COMMENT '封面宣传',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='楼盘详情表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_city`
--

CREATE TABLE IF NOT EXISTS `ah_city` (
  `id` bigint(20) NOT NULL,
  `is_delete` tinyint(1) unsigned DEFAULT '1' COMMENT '时效;0=无效;1=有效;',
  `region_id` double NOT NULL COMMENT '地区父级',
  `parent` bigint(20) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(1) DEFAULT '2' COMMENT '等级;0=全国,1=省级,2=市级,3=县级',
  `order` bigint(20) NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `short_name_en` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='省市县行政区';

--
-- 转存表中的数据 `ah_city`
--

INSERT INTO `ah_city` (`id`, `is_delete`, `region_id`, `parent`, `name`, `level`, `order`, `code`, `name_en`, `short_name_en`, `data`) VALUES
(1, 1, 22, NULL, '海南省', 1, 0, '460000', 'Hainan Sheng', 'HI', NULL),
(2, 1, 267, 1, '海口', 2, 0, '460100', 'Haikou Shi', 'HAK', NULL),
(3, 1, 268, 1, '三亚', 2, 0, '460200', 'Sanya Shi', 'SYX', NULL),
(4, 1, 2578, 1, '儋州', 2, 0, '469003', 'Danzhou Shi', '2', NULL),
(5, 1, 2577, 1, '琼海', 2, 0, '469002', 'Qionghai Shi', '2', NULL),
(6, 1, 2579, 1, '文昌', 2, 0, '469005', 'Wenchang Shi', '2', NULL),
(7, 1, 2580, 1, '万宁', 2, 0, '469006', 'Wanning Shi', '2', NULL),
(8, 1, 2576, 1, '五指山', 2, 0, '469001', 'Wuzhishan Qu', '2', NULL),
(9, 1, 2581, 1, '东方', 2, 0, '469007', 'Dongfang Shi', '2', NULL),
(10, 1, 2582, 1, '定安', 2, 0, '469021', 'Ding,an Xian', '2', NULL),
(11, 1, 2583, 1, '屯昌', 2, 0, '469022', 'Tunchang Xian', '2', NULL),
(12, 1, 2584, 1, '澄迈', 2, 0, '469023', 'Chengmai Xian', '2', NULL),
(13, 1, 2585, 1, '临高', 2, 0, '469024', 'Lingao Xian', '2', NULL),
(14, 1, 2586, 1, '白沙', 2, 0, '469025', 'Baisha Lizu Zizhixian', '2', NULL),
(15, 1, 2587, 1, '昌江', 2, 0, '469026', 'Changjiang Lizu Zizhixian', '2', NULL),
(16, 1, 2588, 1, '乐东', 2, 0, '469027', 'Ledong Lizu Zizhixian', '2', NULL),
(17, 1, 2589, 1, '陵水', 2, 0, '469028', 'Lingshui Lizu Zizhixian', '2', NULL),
(18, 1, 2590, 1, '保亭', 2, 0, '469029', 'Baoting Lizu Miaozu Zizhixian', '2', NULL),
(19, 1, 2591, 1, '琼中', 2, 0, '469030', 'Qiongzhong Lizu Miaozu Zizhixian', '2', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ah_config`
--

CREATE TABLE IF NOT EXISTS `ah_config` (
  `id` int(10) unsigned NOT NULL COMMENT '配置ID',
  `is_delete` tinyint(1) unsigned DEFAULT '1' COMMENT '时效;0=无效;1=有效;',
  `app` tinyint(1) unsigned DEFAULT '0' COMMENT '应用;0=后台;1=前台;',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '配置标题',
  `name` varchar(32) DEFAULT NULL COMMENT '配置标识',
  `value` text NOT NULL COMMENT '配置值',
  `group` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `type` varchar(16) NOT NULL DEFAULT '' COMMENT '配置类型',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '配置额外值',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '配置说明',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `order` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

--
-- 转存表中的数据 `ah_config`
--

INSERT INTO `ah_config` (`id`, `is_delete`, `app`, `title`, `name`, `value`, `group`, `type`, `options`, `tip`, `created_at`, `updated_at`, `order`, `status`) VALUES
(1, 1, 0, '站点开关', 'TOGGLE_WEB_SITE', '1', 1, 'toggle', '0:关闭\r\n1:开启', '站点关闭后将不能访问', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(2, 1, 0, '网站标题', 'WEB_SITE_TITLE', '[ Alive House ]', 1, 'text', '', '网站标题前台显示标题', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 1),
(3, 1, 0, '网站口号', 'WEB_SITE_SLOGAN', '我房网 出车系统', 1, 'text', '', '网站口号、宣传标语、一句话介绍', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 1),
(4, 1, 0, '网站LOGO', 'WEB_SITE_LOGO', '', 1, 'picture', '', '网站LOGO', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 1),
(5, 1, 0, '网站反色LOGO', 'WEB_SITE_LOGO_INVERSE', '', 1, 'picture', '', '匹配深色背景上的LOGO', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 1),
(6, 1, 0, '网站描述', 'WEB_SITE_DESCRIPTION', '我房网 出车系统', 1, 'textarea', '', '网站搜索引擎描述', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 6, 1),
(7, 1, 0, '网站关键字', 'WEB_SITE_KEYWORD', '我房网 出车系统', 1, 'textarea', '', '网站搜索引擎关键字', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 1),
(8, 1, 0, '版权信息', 'WEB_SITE_COPYRIGHT', 'Copyright © 海南情义房地产营销策划有限公司 All rights reserved.', 1, 'text', '', '设置在网站底部显示的版权信息，如“版权所有 © 2014-2015 科斯克网络科技”', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 1),
(9, 1, 0, '网站备案号', 'WEB_SITE_ICP', 'XXX 号', 1, 'text', '', '设置在网站底部显示的备案号，如“苏ICP备1502009号"', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9, 1),
(10, 1, 0, '站点统计', 'WEB_SITE_STATISTICS', '', 1, 'textarea', '', '支持百度、Google、cnzz等所有Javascript的统计代码', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10, 1),
(11, 1, 0, '公司名称', 'COMPANY_TITLE', '海南我房地产顾问有限公司', 3, 'text', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(12, 1, 0, '公司地址', 'COMPANY_ADDRESS', '海南省海口市琼山区府城街道金霖花园别墅B7幢一楼', 3, 'text', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 1),
(13, 1, 0, '公司邮箱', 'COMPANY_EMAIL', 'service@wofang.com', 3, 'text', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 1),
(14, 1, 0, '公司电话', 'COMPANY_PHONE', 'XXX', 3, 'text', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 1),
(15, 1, 0, '公司QQ', 'COMPANY_QQ', 'XXX', 3, 'text', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 1),
(16, 1, 0, '公司QQ群', 'COMPANY_QQQUN', 'XXX', 3, 'text', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 6, 1),
(17, 1, 0, '网站二维码', 'QR_CODE', '', 3, 'picture', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 1),
(18, 1, 0, 'IOS二维码', 'QR_IOS', '', 3, 'picture', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 1),
(19, 1, 0, '安卓二维码', 'QR_ANDROID', '', 3, 'picture', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9, 1),
(20, 1, 0, '微信二维码', 'QR_WEIXIN', '', 3, 'picture', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10, 1),
(21, 1, 0, '文件上传大小', 'UPLOAD_FILE_SIZE', '2', 5, 'num', '', '文件上传大小单位：MB', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(22, 1, 0, '图片上传大小', 'UPLOAD_IMAGE_SIZE', '0.5', 5, 'num', '', '图片上传大小单位：MB', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 1),
(23, 1, 0, '后台多标签', 'ADMIN_TABS', '0', 5, 'toggle', '0:关闭\r\n1:开启', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 1),
(24, 1, 0, '分页数量', 'ADMIN_PAGE_ROWS', '10', 5, 'num', '', '分页时每页的记录数', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 1),
(25, 1, 0, '后台主题', 'ADMIN_THEME', 'admin', 5, 'select', 'admin:默认主题\r\naliyun:阿里云风格', '后台界面主题', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 1),
(26, 1, 0, '导航分组', 'NAV_GROUP_LIST', 'top:顶部导航\nmain:主导航\nbottom:底部导航\nwap_bottom:Wap底部导航', 5, 'array', '', '导航分组', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 6, 1),
(27, 1, 0, '配置分组', 'CONFIG_GROUP_LIST', '1:基本\r\n3:扩展\r\n5:系统\r\n7:部署', 5, 'array', '', '配置分组', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 1),
(28, 1, 0, '开发模式', 'DEVELOP_MODE', '1', 7, 'toggle', '1:开启\r\n0:关闭', '开发模式下会显示菜单管理、配置管理、数据字典等开发者工具', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(29, 1, 0, '页面Trace', 'APP_TRACE', '0', 7, 'toggle', '0:关闭\r\n1:开启', '是否显示页面Trace信息', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 1),
(30, 1, 0, '', NULL, '', 0, '', '', '', '2017-06-01 21:49:07', '2017-06-01 21:49:07', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ah_contact`
--

CREATE TABLE IF NOT EXISTS `ah_contact` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '时效;0=无效;1=有效;',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '联系人',
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '联系方式',
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '邮箱',
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系地址',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '联系内容',
  `home_user_id` bigint(20) DEFAULT NULL COMMENT '前端用户表ID',
  `back_user_id` bigint(20) DEFAULT NULL COMMENT '后台业务员ID',
  `readed` tinyint(1) DEFAULT '0' COMMENT '是否阅读; 0=未读 ,1=已读',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='联系我们';

-- --------------------------------------------------------

--
-- 表的结构 `ah_contact_read`
--

CREATE TABLE IF NOT EXISTS `ah_contact_read` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) unsigned DEFAULT '1' COMMENT '时效;0=无效;1=有效;',
  `assign` tinyint(1) unsigned DEFAULT '1' COMMENT '分配;0=分配;1=自由;',
  `back_user_id` bigint(20) NOT NULL COMMENT '后台管理员ID',
  `contact_id` bigint(20) NOT NULL COMMENT '联系我们表ID',
  `content` longtext COMMENT '通知信息内容',
  `remark` longtext COMMENT '备注',
  `reback` longtext COMMENT '回馈',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='联系我们审阅表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_customer_service`
--

CREATE TABLE IF NOT EXISTS `ah_customer_service` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '等级;0=普通客服;1=金牌客服;',
  `back_user_id` bigint(20) NOT NULL COMMENT '后台管理员ID',
  `duration` int(11) DEFAULT NULL COMMENT '有效时间',
  `start_at` varchar(10) DEFAULT NULL COMMENT '开始时间',
  `end_at` varchar(10) DEFAULT NULL COMMENT '结束时间',
  `order` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '拖拽顺序',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服推荐表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_delete_log`
--

CREATE TABLE IF NOT EXISTS `ah_delete_log` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `table_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '目标表类型',
  `back_user_id` bigint(20) DEFAULT NULL COMMENT '后台业务员ID',
  `delete_id` bigint(20) NOT NULL COMMENT '被操作ID',
  `remark` longtext COLLATE utf8_unicode_ci COMMENT '备注',
  `created_at` datetime NOT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='删除记录表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_department`
--

CREATE TABLE IF NOT EXISTS `ah_department` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '时效;0=无效;1=有效;',
  `remark` longtext COLLATE utf8_unicode_ci COMMENT '备注',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `parent` bigint(20) DEFAULT NULL COMMENT '上级',
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '编号',
  `order` bigint(20) DEFAULT '0' COMMENT '顺序',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '等级;0=无效;1=默认;',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='部门表';

--
-- 转存表中的数据 `ah_department`
--

INSERT INTO `ah_department` (`id`, `is_delete`, `remark`, `name`, `parent`, `code`, `order`, `level`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '部门一', NULL, '000000', 0, 1, '2017-05-27 00:00:00', '2017-05-27 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `ah_download`
--

CREATE TABLE IF NOT EXISTS `ah_download` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `back_user_id` bigint(20) NOT NULL COMMENT '后台管理员ID',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '资源描述',
  `url` text COLLATE utf8_unicode_ci NOT NULL COMMENT '资源地址',
  `fileName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '资源名称',
  `tb_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '目标表名',
  `tb_id` text COLLATE utf8_unicode_ci NOT NULL COMMENT '表的id',
  `tb_category` text COLLATE utf8_unicode_ci NOT NULL COMMENT '类别信息',
  `created_at` datetime NOT NULL COMMENT '创建时间'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='赛事、福利、新闻 删除记录表';

--
-- 转存表中的数据 `ah_download`
--

INSERT INTO `ah_download` (`id`, `back_user_id`, `title`, `url`, `fileName`, `tb_name`, `tb_id`, `tb_category`, `created_at`) VALUES
(1, 1, '标题', '/static/images/refresh.png', '刷新', 'ah_images', '1', '图片', '2017-06-06 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `ah_guest`
--

CREATE TABLE IF NOT EXISTS `ah_guest` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `server` tinyint(1) NOT NULL DEFAULT '1' COMMENT '服务;0=已正式客户,1=待开发客户;默认1;',
  `ID_cards` varchar(255) DEFAULT NULL COMMENT '身份证',
  `real_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号码',
  `nickname` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '昵称',
  `address` varchar(32) DEFAULT NULL COMMENT '地址',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像地址',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型;0=过客,1=客户;默认1;',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '等级;0=贵宾,1=普通;默认1;',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='客户表';

--
-- 转存表中的数据 `ah_guest`
--

INSERT INTO `ah_guest` (`id`, `is_delete`, `server`, `ID_cards`, `real_name`, `phone`, `nickname`, `address`, `email`, `avatar`, `type`, `level`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '12323232323', '小符', '1026652', '小符', '是的是的', NULL, 'sdsdsdsdsd', 1, 1, '2017-06-02 00:08:59', '2017-06-02 00:08:59'),
(2, 1, 1, '565665', '程度上的', '656656', '是的是的', 'sdsd', NULL, 'SDsd', 1, 1, '2017-06-02 00:09:31', '2017-06-02 00:09:31');

-- --------------------------------------------------------

--
-- 表的结构 `ah_guest_server`
--

CREATE TABLE IF NOT EXISTS `ah_guest_server` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `guest_id` bigint(20) NOT NULL COMMENT '客户表ID',
  `back_user_id` bigint(20) NOT NULL COMMENT '后台管理员ID',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户服务表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_home_user`
--

CREATE TABLE IF NOT EXISTS `ah_home_user` (
  `id` bigint(20) NOT NULL COMMENT '自增ID',
  `is_delete` tinyint(1) unsigned DEFAULT '1' COMMENT '时效;0=无效;1=有效;',
  `code` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '会员编号ID',
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `phone_verified` tinyint(1) unsigned DEFAULT '0' COMMENT '手机号码是否已验证;"0"表示没有验证,"1"表示已验证',
  `email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `email_verified` tinyint(1) unsigned DEFAULT '0' COMMENT '邮箱是否已验证;"0"表示没有验证,"1"表示已验证',
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `nickname` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '昵称',
  `real_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `head_url` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像地址',
  `sex` enum('男','女') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别',
  `signature` varchar(32) COLLATE utf8_unicode_ci DEFAULT '什么都没有留下...' COMMENT '个性签名',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `height` int(3) DEFAULT NULL COMMENT '身高/单位CM',
  `weight` int(3) DEFAULT NULL COMMENT '体重/单位KG',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当前token',
  `auth_key` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '自动密匙',
  `password_reset_token` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '重置密匙',
  `password_reset_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '验证码',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '状态;0:正常,1:异常;2:禁用;',
  `ip` text CHARACTER SET utf8 COMMENT '登录IP',
  `reg_ip` varchar(32) CHARACTER SET utf8 DEFAULT '0.0.0.0' COMMENT '注册IP',
  `reg_type` varchar(15) CHARACTER SET utf8 DEFAULT NULL COMMENT '注册方式',
  `registered_at` datetime DEFAULT NULL COMMENT '注册时间',
  `logined_at` datetime DEFAULT NULL COMMENT '登录时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='前台用户表';

--
-- 转存表中的数据 `ah_home_user`
--

INSERT INTO `ah_home_user` (`id`, `is_delete`, `code`, `phone`, `phone_verified`, `email`, `email_verified`, `username`, `password`, `nickname`, `real_name`, `head_url`, `sex`, `signature`, `birthday`, `height`, `weight`, `token`, `auth_key`, `password_reset_token`, `password_reset_code`, `status`, `ip`, `reg_ip`, `reg_type`, `registered_at`, `logined_at`, `updated_at`) VALUES
(100, 1, '100100', '10086100100', 0, NULL, 0, 'username1', '888888', NULL, NULL, NULL, NULL, '什么都没有留下...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0.0.0.0', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ah_home_user_log`
--

CREATE TABLE IF NOT EXISTS `ah_home_user_log` (
  `id` bigint(20) NOT NULL COMMENT '自增ID',
  `home_user_id` bigint(20) NOT NULL COMMENT '表user主键',
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '路由',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '地址',
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '客户端',
  `user_agent_type` tinyint(1) DEFAULT '1' COMMENT '客户类型;1=PC,2=Android,3=IOS;默认1',
  `gets` text COLLATE utf8_unicode_ci COMMENT 'GET方法',
  `posts` text COLLATE utf8_unicode_ci COMMENT 'POST方法',
  `target` text COLLATE utf8_unicode_ci COMMENT '目标',
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'IP',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='前天访问记录';

-- --------------------------------------------------------

--
-- 表的结构 `ah_hot`
--

CREATE TABLE IF NOT EXISTS `ah_hot` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `is_passed` tinyint(1) NOT NULL DEFAULT '1' COMMENT '审核;0=未通过,1=审核中,2=已通过;默认1;',
  `back_user_id` bigint(20) NOT NULL COMMENT '后台管理员ID',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '父级类型:0=默认,1=首页,2=新房,3=二手房,4=出租,5=楼房,6=客服,7=交易,;默认1;',
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `target` varchar(255) DEFAULT NULL COMMENT '目标地址',
  `title` varchar(80) DEFAULT NULL COMMENT '标题',
  `start_at` varchar(10) DEFAULT NULL COMMENT '开始时间',
  `end_at` varchar(10) DEFAULT NULL COMMENT '结束时间',
  `order` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '拖拽顺序',
  `app` tinyint(1) NOT NULL DEFAULT '1' COMMENT '应用;0=后台;1=前台;',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态;0=失效,1=预定,2=上架,3=下架;默认1;',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推荐表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_house_better`
--

CREATE TABLE IF NOT EXISTS `ah_house_better` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `is_passed` tinyint(1) NOT NULL DEFAULT '1' COMMENT '审核;0=未通过,1=审核中,2=已通过;默认1;',
  `back_user_id` bigint(20) NOT NULL COMMENT '后台管理员ID',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '父级类型:0=默认,1=首页,2=新房,3=二手房,4=楼房,5=联系我们;默认1;',
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `target` varchar(255) DEFAULT NULL COMMENT '目标地址',
  `title` varchar(80) DEFAULT NULL COMMENT '标题',
  `start_at` varchar(10) DEFAULT NULL COMMENT '开始时间',
  `end_at` varchar(10) DEFAULT NULL COMMENT '结束时间',
  `order` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '拖拽顺序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态;0=失效,1=预定,1=上架,2=下架;默认1;',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家装广告表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_house_host`
--

CREATE TABLE IF NOT EXISTS `ah_house_host` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `ID_cards` varchar(255) DEFAULT NULL COMMENT '身份证',
  `real_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号码',
  `nickname` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '昵称',
  `address` varchar(32) DEFAULT NULL COMMENT '地址',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像地址',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `city_id` bigint(20) NOT NULL COMMENT '城市表ID',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型;0=过客,1=客户;默认1;',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房东表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_house_host_server`
--

CREATE TABLE IF NOT EXISTS `ah_house_host_server` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `house_host_id` bigint(20) NOT NULL COMMENT '房东表ID',
  `back_user_id` bigint(20) NOT NULL COMMENT '后台管理员ID',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房东服务表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_label`
--

CREATE TABLE IF NOT EXISTS `ah_label` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '父级类型:0=失效,1=预定,2=客户,3=房东,4=新房,5=二手房,6=楼房,7=客服,8=;默认1;',
  `name` varchar(32) NOT NULL COMMENT '标签',
  `description` varchar(255) DEFAULT NULL COMMENT '标签备注',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='标签表';

--
-- 转存表中的数据 `ah_label`
--

INSERT INTO `ah_label` (`id`, `is_delete`, `type`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '高级别墅', '', '2017-06-06 12:02:20', '2017-06-06 12:02:20'),
(3, 1, 6, '高级住宅', '', '2017-06-06 12:22:57', '2017-06-06 12:22:57'),
(4, 1, 6, '海边景房', '', '2017-06-06 12:23:27', '2017-06-06 12:23:27');

-- --------------------------------------------------------

--
-- 表的结构 `ah_label_park`
--

CREATE TABLE IF NOT EXISTS `ah_label_park` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `label_id` bigint(20) NOT NULL COMMENT '标签表ID',
  `target_id` bigint(20) NOT NULL COMMENT '目标表ID;根据type值外联',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '父级类型:0=失效,1=预定,2=客户,3=房东,4=新房,5=二手房,6=楼房,7=客服,8=;默认1;',
  `name` varchar(32) NOT NULL COMMENT '标签',
  `description` varchar(255) NOT NULL COMMENT '详细描述',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签关系表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_menu`
--

CREATE TABLE IF NOT EXISTS `ah_menu` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `name` varchar(128) NOT NULL COMMENT '名称',
  `parent` int(11) DEFAULT NULL COMMENT '上级',
  `route` varchar(256) DEFAULT NULL COMMENT '路由',
  `order` int(11) DEFAULT NULL COMMENT '排序',
  `type` tinyint(1) DEFAULT '1' COMMENT '菜单类型',
  `data` text COMMENT '补充'
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8 COMMENT='菜单表';

--
-- 转存表中的数据 `ah_menu`
--

INSERT INTO `ah_menu` (`id`, `name`, `parent`, `route`, `order`, `type`, `data`) VALUES
(1, '控制面板', NULL, '/manage/index/home', 0, 1, '{"li_class":"","a_class":"Index-Home","i_class":"fa fa-circle-o"}'),
(2, '业务服务', NULL, NULL, 1, 2, '{"li_class":"","a_class":"User","i_class":"fa fa-circle-o"}'),
(3, '个人信息', NULL, NULL, 2, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(4, '信息录入', NULL, NULL, 3, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(5, '房源管理', NULL, NULL, 4, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(6, '客户管理', NULL, NULL, 5, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(7, '反馈管理', NULL, NULL, 6, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(8, '交易管理', NULL, NULL, 7, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(9, '员工管理', NULL, NULL, 8, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(10, '广告管理', NULL, NULL, 9, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(12, '网站维护', NULL, NULL, 11, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(13, '系统配置', NULL, NULL, 12, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(14, '其他管理', NULL, NULL, 13, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(15, '常见问题', NULL, '/manage/index/faq', 14, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(16, '数据统计', NULL, '/manage/data/index', 0, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(31, '跟进服务', 2, '/manage/services/onServices', 1, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(32, '客户抢接', 2, '/manage/guest/services', 2, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(33, '房源抢接', 2, '/manage/house/services', 3, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(34, '反馈抢接', 2, '/manage/contact/services', 4, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(35, '服务清单', 2, '/manage/services/index', 5, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(50, '我的信息', 3, '/manage/user/view', 0, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(51, '修改密码', 3, '/manage/user/resetPassword', 1, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(52, '日志信息', 3, '/manage/user/log', 2, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(70, '客户录入', 4, '/manage/guest/create', 0, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(71, '房东录入', 4, '/manage/house_host/create', 1, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(72, '新房录入', 4, '/manage/new_house/create', 2, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(73, '二手房录入', 4, '/manage/second_hand_house/create', 3, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(75, '楼盘录入', 4, '/manage/build/create', 5, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(76, '交易录入', 4, '/manage/order/create', 6, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(77, '录入清单', 4, '/manage/import/index', 7, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(90, '我的房源', 5, '/manage/house/index', 0, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(91, '新房录入', 5, '/manage/new_house/create', 1, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(92, '二手房录入', 5, '/manage/second_hand_house/create', 2, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(93, '出租录入', 5, '/manage/rent/create', 3, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(94, '房源抢接', 5, '/manage/house/services', 4, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(95, '房源转接', 5, '/manage/house/transfer', 5, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(96, '房源接收', 5, '/manage/house/receive', 6, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(97, '房源清单', 5, '/manage/house/super', 7, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(98, '楼盘清单', 5, '/manage/build/index', 8, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(110, '我的客户', 6, '/manage/guest/index', 0, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(111, '客户录入', 6, '/manage/guest/create', 1, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(112, '房东录入', 6, '/manage/house_host/create', 2, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(114, '客户分配', 6, '/manage/guest/assign', 4, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(115, '客户抢接', 6, '/manage/guest/services', 5, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(116, '客户转接', 6, '/manage/guest/transfer', 6, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(117, '房源接收', 6, '/manage/house/receive', 7, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(130, '我的求购', 7, '/manage/contact/index', 0, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(131, '求购抢接', 7, '/manage/contact/services', 1, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(132, '求购清单', 7, '/manage/contact/super', 2, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(133, '求购分配', 7, '/manage/contact/assign', 3, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(150, '我的交易', 8, '/manage/order/index', 0, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(151, '交易清单', 8, '/manage/order/super', 1, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(152, '交易录入', 8, '/manage/order/create', 2, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(170, '管理员清单', 9, '/manage/user/index', 0, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(171, '添加管理员', 9, '/manage/user/register', 1, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(172, '权限管理', 9, '/manage/ban/index', 2, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(173, '浏览管理日志', 9, '/manage/guest/log', 3, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(174, '浏览删除日志', 9, '/manage/guest/logDelete', 4, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(175, '客服推荐', 9, '/manage/customer_service/index', 5, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(176, '部门管理', 9, '/manage/department/index', 6, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(190, '首页广告', 10, '/manage/slider/home', 0, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(191, '家装广告', 10, '/manage/slider/homeBetter', 1, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(192, '新房广告', 10, '/manage/slider/newHouse', 2, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(193, '二手房广告', 10, '/manage/slider/secondHandHouse', 3, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(195, '楼盘广告', 10, '/manage/slider/build', 5, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(196, '联系我们广告', 10, '/manage/slider/contact', 6, 2, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(230, '企业信息', 12, '/manage/maintain/company', 0, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(231, '新房资讯', 12, '/manage/newHouse/hot', 1, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(232, '二手房资讯', 12, '/manage/second_hand_house/hot', 2, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(234, '楼盘资讯', 12, '/manage/build/hot', 4, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(235, '楼市资讯', 12, '/manage/hot/index', 5, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(236, '客户反馈', 12, '/manage/opinion/index', 6, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(237, '友情链接', 12, '/manage/links/index', 7, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(238, '广告录入', 12, '/manage/slider/create', 8, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(239, '网站主题', 12, '/manage/maintain/theme', 9, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(240, '生成页面', 12, '/manage/maintain/page', 10, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(241, '数据库管理', 12, '/manage/maintain/database', 11, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(242, '清理缓存', 12, '/manage/maintain/cache', 12, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(243, '通知信息', 12, '/manage/notice/index', 13, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(250, '基本设置', 13, '/manage/config/index', 0, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(251, '站点管理', 13, '/manage/settings/site', 1, 0, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(252, '安全设置', 13, '/manage/settings/safety', 2, 0, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(253, '短信接口设置', 13, '/manage/settings/message', 3, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(254, '推送接口设置', 13, '/manage/settings/push', 4, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(255, '邮箱设置', 13, '/manage/settings/email', 5, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(256, '系统日志管理', 13, '/manage/settings/log', 6, 0, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(257, '防采集管理', 13, '/manage/settings/defend', 7, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(270, '日记管理', 14, '/manage/log/index', 0, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(274, '上传管理', 14, '/manage/upload/index', 4, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(275, '下载管理', 14, '/manage/download/index', 5, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(276, '城市管理', 14, '/manage/city/index', 6, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(277, '用户清单', 14, '/manage/home_user/index', 7, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(278, '标签清单', 14, '/manage/label/index', 8, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}'),
(279, '类型清单', 14, '/manage/type/index', 9, 1, '{"li_class":"","a_class":"Back","i_class":"fa fa-circle-o"}');

-- --------------------------------------------------------

--
-- 表的结构 `ah_new_house`
--

CREATE TABLE IF NOT EXISTS `ah_new_house` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `building_base_id` bigint(20) NOT NULL COMMENT '楼盘表ID',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型;0=,1=;默认1;',
  `room` varchar(255) NOT NULL COMMENT '房号',
  `description` varchar(255) NOT NULL COMMENT '详细描述',
  `address` varchar(255) NOT NULL COMMENT '地址',
  `url` varchar(255) NOT NULL COMMENT '封面宣传',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新房表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_notice`
--

CREATE TABLE IF NOT EXISTS `ah_notice` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) unsigned DEFAULT '1' COMMENT '时效;0=无效;1=有效;',
  `back_user_id` bigint(20) NOT NULL COMMENT '后台管理员ID',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '推送标题',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '推送内容',
  `is_passed` tinyint(1) unsigned DEFAULT '1' COMMENT '状态;0=无效;1=待审核,2=已通过,3=未通过,4=保存,5=已推送;',
  `order` bigint(20) NOT NULL COMMENT '顺序',
  `remark` longtext COLLATE utf8_unicode_ci COMMENT '备注',
  `readed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否阅读; 0=未读 ,1=已读',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `start_at` datetime NOT NULL COMMENT '开始时间',
  `end_at` datetime NOT NULL COMMENT '截止时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='通知信息表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_notice_read`
--

CREATE TABLE IF NOT EXISTS `ah_notice_read` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) unsigned DEFAULT '1' COMMENT '时效;0=无效;1=有效;',
  `back_user_id` bigint(20) NOT NULL COMMENT '后台管理员ID',
  `notice_id` bigint(20) NOT NULL COMMENT '通知信息表ID',
  `content` longtext COMMENT '通知信息内容',
  `remark` longtext COMMENT '备注',
  `reback` longtext COMMENT '回馈',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知信息审阅表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_on_links`
--

CREATE TABLE IF NOT EXISTS `ah_on_links` (
  `id` bigint(20) unsigned NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) unsigned DEFAULT '1' COMMENT '时效;0=无效;1=有效;',
  `app` tinyint(1) unsigned DEFAULT '0' COMMENT '应用;0=后台;1=前台;',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `logo` varchar(255) NOT NULL DEFAULT '' COMMENT 'logo',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `sort` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_opinion`
--

CREATE TABLE IF NOT EXISTS `ah_opinion` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) unsigned DEFAULT '1' COMMENT '时效;0=无效;1=有效;',
  `remark` longtext COMMENT '备注',
  `home_user_id` bigint(20) DEFAULT NULL COMMENT '前端用户表ID',
  `back_user_id` bigint(20) DEFAULT NULL COMMENT '后台业务员ID',
  `content` longtext COMMENT '内容',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '联系人',
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '联系方式',
  `readed` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否阅读;0=未读,1=已读',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='意见表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_opinion_read`
--

CREATE TABLE IF NOT EXISTS `ah_opinion_read` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) unsigned DEFAULT '1' COMMENT '时效;0=无效;1=有效;',
  `assign` tinyint(1) unsigned DEFAULT '1' COMMENT '分配;0=分配;1=自由;',
  `back_user_id` bigint(20) NOT NULL COMMENT '后台管理员ID',
  `opinion_id` bigint(20) NOT NULL COMMENT '意见表ID',
  `content` longtext COMMENT '意见内容',
  `remark` longtext COMMENT '备注',
  `reback` longtext COMMENT '回馈',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='意见审阅表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_region`
--

CREATE TABLE IF NOT EXISTS `ah_region` (
  `id` double NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent` double NOT NULL,
  `level` double NOT NULL,
  `order` double NOT NULL,
  `name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `short_name_en` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=5029 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='省市县行政区';

--
-- 转存表中的数据 `ah_region`
--

INSERT INTO `ah_region` (`id`, `code`, `name`, `parent`, `level`, `order`, `name_en`, `short_name_en`, `data`) VALUES
(1, '全国', '全国', 0, 0, 0, 'Zhong Guo', '2', NULL),
(2, '110000', '北京市', 1, 1, 0, 'Beijing Shi', 'BJ', NULL),
(3, '120000', '天津市', 1, 1, 0, 'Tianjin Shi', 'TJ', NULL),
(4, '130000', '河北省', 1, 1, 0, 'Hebei Sheng', 'HE', NULL),
(5, '140000', '山西省', 1, 1, 0, 'Shanxi Sheng ', 'SX', NULL),
(6, '150000', '内蒙古自治区', 1, 1, 0, 'Nei Mongol Zizhiqu', 'NM', NULL),
(7, '210000', '辽宁省', 1, 1, 0, 'Liaoning Sheng', 'LN', NULL),
(8, '220000', '吉林省', 1, 1, 0, 'Jilin Sheng', 'JL', NULL),
(9, '230000', '黑龙江省', 1, 1, 0, 'Heilongjiang Sheng', 'HL', NULL),
(10, '310000', '上海市', 1, 1, 0, 'Shanghai Shi', 'SH', NULL),
(11, '320000', '江苏省', 1, 1, 0, 'Jiangsu Sheng', 'JS', NULL),
(12, '330000', '浙江省', 1, 1, 0, 'Zhejiang Sheng', 'ZJ', NULL),
(13, '340000', '安徽省', 1, 1, 0, 'Anhui Sheng', 'AH', NULL),
(14, '350000', '福建省', 1, 1, 0, 'Fujian Sheng ', 'FJ', NULL),
(15, '360000', '江西省', 1, 1, 0, 'Jiangxi Sheng', 'JX', NULL),
(16, '370000', '山东省', 1, 1, 0, 'Shandong Sheng ', 'SD', NULL),
(17, '410000', '河南省', 1, 1, 0, 'Henan Sheng', 'HA', NULL),
(18, '420000', '湖北省', 1, 1, 0, 'Hubei Sheng', 'HB', NULL),
(19, '430000', '湖南省', 1, 1, 0, 'Hunan Sheng', 'HN', NULL),
(20, '440000', '广东省', 1, 1, 0, 'Guangdong Sheng', 'GD', NULL),
(21, '450000', '广西壮族自治区', 1, 1, 0, 'Guangxi Zhuangzu Zizhiqu', 'GX', NULL),
(22, '460000', '海南省', 1, 1, 0, 'Hainan Sheng', 'HI', NULL),
(23, '500000', '重庆市', 1, 1, 0, 'Chongqing Shi', 'CQ', NULL),
(24, '510000', '四川省', 1, 1, 0, 'Sichuan Sheng', 'SC', NULL),
(25, '520000', '贵州省', 1, 1, 0, 'Guizhou Sheng', 'GZ', NULL),
(26, '530000', '云南省', 1, 1, 0, 'Yunnan Sheng', 'YN', NULL),
(27, '540000', '西藏自治区', 1, 1, 0, 'Xizang Zizhiqu', 'XZ', NULL),
(28, '610000', '陕西省', 1, 1, 0, 'Shanxi Sheng ', 'SN', NULL),
(29, '620000', '甘肃省', 1, 1, 0, 'Gansu Sheng', 'GS', NULL),
(30, '630000', '青海省', 1, 1, 0, 'Qinghai Sheng', 'QH', NULL),
(31, '640000', '宁夏回族自治区', 1, 1, 0, 'Ningxia Huizu Zizhiqu', 'NX', NULL),
(32, '650000', '新疆维吾尔自治区', 1, 1, 0, 'Xinjiang Uygur Zizhiqu', 'XJ', NULL),
(33, '110100', '市辖区', 2, 0, 0, 'Shixiaqu', '2', NULL),
(34, '110200', '县', 2, 0, 0, 'Xian', '2', NULL),
(35, '120100', '市辖区', 3, 0, 0, 'Shixiaqu', '2', NULL),
(36, '120200', '县', 3, 0, 0, 'Xian', '2', NULL),
(37, '130100', '石家庄市', 4, 0, 0, 'Shijiazhuang Shi', 'SJW', NULL),
(38, '130200', '唐山市', 4, 0, 0, 'Tangshan Shi', 'TGS', NULL),
(39, '130300', '秦皇岛市', 4, 0, 0, 'Qinhuangdao Shi', 'SHP', NULL),
(40, '130400', '邯郸市', 4, 0, 0, 'Handan Shi', 'HDS', NULL),
(41, '130500', '邢台市', 4, 0, 0, 'Xingtai Shi', 'XTS', NULL),
(42, '130600', '保定市', 4, 0, 0, 'Baoding Shi', 'BDS', NULL),
(43, '130700', '张家口市', 4, 0, 0, 'Zhangjiakou Shi ', 'ZJK', NULL),
(44, '130800', '承德市', 4, 0, 0, 'Chengde Shi', 'CDS', NULL),
(45, '130900', '沧州市', 4, 0, 0, 'Cangzhou Shi', 'CGZ', NULL),
(46, '131000', '廊坊市', 4, 0, 0, 'Langfang Shi', 'LFS', NULL),
(47, '131100', '衡水市', 4, 0, 0, 'Hengshui Shi ', 'HGS', NULL),
(48, '140100', '太原市', 5, 0, 0, 'Taiyuan Shi', 'TYN', NULL),
(49, '140200', '大同市', 5, 0, 0, 'Datong Shi ', 'DTG', NULL),
(50, '140300', '阳泉市', 5, 0, 0, 'Yangquan Shi', 'YQS', NULL),
(51, '140400', '长治市', 5, 0, 0, 'Changzhi Shi', 'CZS', NULL),
(52, '140500', '晋城市', 5, 0, 0, 'Jincheng Shi ', 'JCG', NULL),
(53, '140600', '朔州市', 5, 0, 0, 'Shuozhou Shi ', 'SZJ', NULL),
(54, '140700', '晋中市', 5, 0, 0, 'Jinzhong Shi', '2', NULL),
(55, '140800', '运城市', 5, 0, 0, 'Yuncheng Shi', '2', NULL),
(56, '140900', '忻州市', 5, 0, 0, 'Xinzhou Shi', '2', NULL),
(57, '141000', '临汾市', 5, 0, 0, 'Linfen Shi', '2', NULL),
(58, '141100', '吕梁市', 5, 0, 0, 'Lvliang Shi', '2', NULL),
(59, '150100', '呼和浩特市', 6, 0, 0, 'Hohhot Shi', 'Hhht', NULL),
(60, '150200', '包头市', 6, 0, 0, 'Baotou Shi ', 'BTS', NULL),
(61, '150300', '乌海市', 6, 0, 0, 'Wuhai Shi', 'WHM', NULL),
(62, '150400', '赤峰市', 6, 0, 0, 'Chifeng (Ulanhad)Shi', 'CFS', NULL),
(63, '150500', '通辽市', 6, 0, 0, 'Tongliao Shi', '2', NULL),
(64, '150600', '鄂尔多斯市', 6, 0, 0, 'Eerduosi Shi', '2', NULL),
(65, '150700', '呼伦贝尔市', 6, 0, 0, 'Hulunbeier Shi ', '2', NULL),
(66, '150800', '巴彦淖尔市', 6, 0, 0, 'Bayannaoer Shi', '2', NULL),
(67, '150900', '乌兰察布市', 6, 0, 0, 'Wulanchabu Shi', '2', NULL),
(68, '152200', '兴安盟', 6, 0, 0, 'Hinggan Meng', 'HIN', NULL),
(69, '152500', '锡林郭勒盟', 6, 0, 0, 'Xilin Gol Meng', 'XGO', NULL),
(70, '152900', '阿拉善盟', 6, 0, 0, 'Alxa Meng', 'ALM', NULL),
(71, '210100', '沈阳市', 7, 0, 0, 'Shenyang Shi', 'SHE', NULL),
(72, '210200', '大连市', 7, 0, 0, 'Dalian Shi', 'DLC', NULL),
(73, '210300', '鞍山市', 7, 0, 0, 'AnShan Shi', 'ASN', NULL),
(74, '210400', '抚顺市', 7, 0, 0, 'Fushun Shi', 'FSN', NULL),
(75, '210500', '本溪市', 7, 0, 0, 'Benxi Shi', 'BXS', NULL),
(76, '210600', '丹东市', 7, 0, 0, 'Dandong Shi', 'DDG', NULL),
(77, '210700', '锦州市', 7, 0, 0, 'Jinzhou Shi', 'JNZ', NULL),
(78, '210800', '营口市', 7, 0, 0, 'Yingkou Shi', 'YIK', NULL),
(79, '210900', '阜新市', 7, 0, 0, 'Fuxin Shi', 'FXS', NULL),
(80, '211000', '辽阳市', 7, 0, 0, 'Liaoyang Shi', 'LYL', NULL),
(81, '211100', '盘锦市', 7, 0, 0, 'Panjin Shi', 'PJS', NULL),
(82, '211200', '铁岭市', 7, 0, 0, 'Tieling Shi', 'TLS', NULL),
(83, '211300', '朝阳市', 7, 0, 0, 'Chaoyang Shi', 'CYS', NULL),
(84, '211400', '葫芦岛市', 7, 0, 0, 'Huludao Shi', 'HLD', NULL),
(85, '220100', '长春市', 8, 0, 0, 'Changchun Shi ', 'CGQ', NULL),
(86, '220200', '吉林市', 8, 0, 0, 'Jilin Shi ', 'JLS', NULL),
(87, '220300', '四平市', 8, 0, 0, 'Siping Shi', 'SPS', NULL),
(88, '220400', '辽源市', 8, 0, 0, 'Liaoyuan Shi', 'LYH', NULL),
(89, '220500', '通化市', 8, 0, 0, 'Tonghua Shi', 'THS', NULL),
(90, '220600', '白山市', 8, 0, 0, 'Baishan Shi', 'BSN', NULL),
(91, '220700', '松原市', 8, 0, 0, 'Songyuan Shi', 'SYU', NULL),
(92, '220800', '白城市', 8, 0, 0, 'Baicheng Shi', 'BCS', NULL),
(93, '222400', '延边朝鲜族自治州', 8, 0, 0, 'Yanbian Chosenzu Zizhizhou', 'YBZ', NULL),
(94, '230100', '哈尔滨市', 9, 0, 0, 'Harbin Shi', 'HRB', NULL),
(95, '230200', '齐齐哈尔市', 9, 0, 0, 'Qiqihar Shi', 'NDG', NULL),
(96, '230300', '鸡西市', 9, 0, 0, 'Jixi Shi', 'JXI', NULL),
(97, '230400', '鹤岗市', 9, 0, 0, 'Hegang Shi', 'HEG', NULL),
(98, '230500', '双鸭山市', 9, 0, 0, 'Shuangyashan Shi', 'SYS', NULL),
(99, '230600', '大庆市', 9, 0, 0, 'Daqing Shi', 'DQG', NULL),
(100, '230700', '伊春市', 9, 0, 0, 'Yichun Shi', 'YCH', NULL),
(101, '230800', '佳木斯市', 9, 0, 0, 'Jiamusi Shi', 'JMU', NULL),
(102, '230900', '七台河市', 9, 0, 0, 'Qitaihe Shi', 'QTH', NULL),
(103, '231000', '牡丹江市', 9, 0, 0, 'Mudanjiang Shi', 'MDG', NULL),
(104, '231100', '黑河市', 9, 0, 0, 'Heihe Shi', 'HEK', NULL),
(105, '231200', '绥化市', 9, 0, 0, 'Suihua Shi', '2', NULL),
(106, '232700', '大兴安岭地区', 9, 0, 0, 'Da Hinggan Ling Diqu', 'DHL', NULL),
(107, '310100', '市辖区', 10, 0, 0, 'Shixiaqu', '2', NULL),
(108, '310200', '县', 10, 0, 0, 'Xian', '2', NULL),
(109, '320100', '南京市', 11, 0, 0, 'Nanjing Shi', 'NKG', NULL),
(110, '320200', '无锡市', 11, 0, 0, 'Wuxi Shi', 'WUX', NULL),
(111, '320300', '徐州市', 11, 0, 0, 'Xuzhou Shi', 'XUZ', NULL),
(112, '320400', '常州市', 11, 0, 0, 'Changzhou Shi', 'CZX', NULL),
(113, '320500', '苏州市', 11, 0, 0, 'Suzhou Shi', 'SZH', NULL),
(114, '320600', '南通市', 11, 0, 0, 'Nantong Shi', 'NTG', NULL),
(115, '320700', '连云港市', 11, 0, 0, 'Lianyungang Shi', 'LYG', NULL),
(116, '320800', '淮安市', 11, 0, 0, 'Huai,an Xian', '2', NULL),
(117, '320900', '盐城市', 11, 0, 0, 'Yancheng Shi', 'YCK', NULL),
(118, '321000', '扬州市', 11, 0, 0, 'Yangzhou Shi', 'YZH', NULL),
(119, '321100', '镇江市', 11, 0, 0, 'Zhenjiang Shi', 'ZHE', NULL),
(120, '321200', '泰州市', 11, 0, 0, 'Taizhou Shi', 'TZS', NULL),
(121, '321300', '宿迁市', 11, 0, 0, 'Suqian Shi', 'SUQ', NULL),
(122, '330100', '杭州市', 12, 0, 0, 'Hangzhou Shi', 'HGH', NULL),
(123, '330200', '宁波市', 12, 0, 0, 'Ningbo Shi', 'NGB', NULL),
(124, '330300', '温州市', 12, 0, 0, 'Wenzhou Shi', 'WNZ', NULL),
(125, '330400', '嘉兴市', 12, 0, 0, 'Jiaxing Shi', 'JIX', NULL),
(126, '330500', '湖州市', 12, 0, 0, 'Huzhou Shi ', 'HZH', NULL),
(127, '330600', '绍兴市', 12, 0, 0, 'Shaoxing Shi', 'SXG', NULL),
(128, '330700', '金华市', 12, 0, 0, 'Jinhua Shi', 'JHA', NULL),
(129, '330800', '衢州市', 12, 0, 0, 'Quzhou Shi', 'QUZ', NULL),
(130, '330900', '舟山市', 12, 0, 0, 'Zhoushan Shi', 'ZOS', NULL),
(131, '331000', '台州市', 12, 0, 0, 'Taizhou Shi', 'TZZ', NULL),
(132, '331100', '丽水市', 12, 0, 0, 'Lishui Shi', '2', NULL),
(133, '340100', '合肥市', 13, 0, 0, 'Hefei Shi', 'HFE', NULL),
(134, '340200', '芜湖市', 13, 0, 0, 'Wuhu Shi', 'WHI', NULL),
(135, '340300', '蚌埠市', 13, 0, 0, 'Bengbu Shi', 'BBU', NULL),
(136, '340400', '淮南市', 13, 0, 0, 'Huainan Shi', 'HNS', NULL),
(137, '340500', '马鞍山市', 13, 0, 0, 'Ma,anshan Shi', 'MAA', NULL),
(138, '340600', '淮北市', 13, 0, 0, 'Huaibei Shi', 'HBE', NULL),
(139, '340700', '铜陵市', 13, 0, 0, 'Tongling Shi', 'TOL', NULL),
(140, '340800', '安庆市', 13, 0, 0, 'Anqing Shi', 'AQG', NULL),
(141, '341000', '黄山市', 13, 0, 0, 'Huangshan Shi', 'HSN', NULL),
(142, '341100', '滁州市', 13, 0, 0, 'Chuzhou Shi', 'CUZ', NULL),
(143, '341200', '阜阳市', 13, 0, 0, 'Fuyang Shi', 'FYS', NULL),
(144, '341300', '宿州市', 13, 0, 0, 'Suzhou Shi', 'SUZ', NULL),
(145, '341400', '巢湖市', 13, 0, 0, 'Chaohu Shi', '2', NULL),
(146, '341500', '六安市', 13, 0, 0, 'Liu,an Shi', '2', NULL),
(147, '341600', '亳州市', 13, 0, 0, 'Bozhou Shi', '2', NULL),
(148, '341700', '池州市', 13, 0, 0, 'Chizhou Shi', '2', NULL),
(149, '341800', '宣城市', 13, 0, 0, 'Xuancheng Shi', '2', NULL),
(150, '350100', '福州市', 14, 0, 0, 'Fuzhou Shi', 'FOC', NULL),
(151, '350200', '厦门市', 14, 0, 0, 'Xiamen Shi', 'XMN', NULL),
(152, '350300', '莆田市', 14, 0, 0, 'Putian Shi', 'PUT', NULL),
(153, '350400', '三明市', 14, 0, 0, 'Sanming Shi', 'SMS', NULL),
(154, '350500', '泉州市', 14, 0, 0, 'Quanzhou Shi', 'QZJ', NULL),
(155, '350600', '漳州市', 14, 0, 0, 'Zhangzhou Shi', 'ZZU', NULL),
(156, '350700', '南平市', 14, 0, 0, 'Nanping Shi', 'NPS', NULL),
(157, '350800', '龙岩市', 14, 0, 0, 'Longyan Shi', 'LYF', NULL),
(158, '350900', '宁德市', 14, 0, 0, 'Ningde Shi', '2', NULL),
(159, '360100', '南昌市', 15, 0, 0, 'Nanchang Shi', 'KHN', NULL),
(160, '360200', '景德镇市', 15, 0, 0, 'Jingdezhen Shi', 'JDZ', NULL),
(161, '360300', '萍乡市', 15, 0, 0, 'Pingxiang Shi', 'PXS', NULL),
(162, '360400', '九江市', 15, 0, 0, 'Jiujiang Shi', 'JIU', NULL),
(163, '360500', '新余市', 15, 0, 0, 'Xinyu Shi', 'XYU', NULL),
(164, '360600', '鹰潭市', 15, 0, 0, 'Yingtan Shi', '2', NULL),
(165, '360700', '赣州市', 15, 0, 0, 'Ganzhou Shi', 'GZH', NULL),
(166, '360800', '吉安市', 15, 0, 0, 'Ji,an Shi', '2', NULL),
(167, '360900', '宜春市', 15, 0, 0, 'Yichun Shi', '2', NULL),
(168, '361000', '抚州市', 15, 0, 0, 'Wuzhou Shi', '2', NULL),
(169, '361100', '上饶市', 15, 0, 0, 'Shangrao Shi', '2', NULL),
(170, '370100', '济南市', 16, 0, 0, 'Jinan Shi', 'TNA', NULL),
(171, '370200', '青岛市', 16, 0, 0, 'Qingdao Shi', 'TAO', NULL),
(172, '370300', '淄博市', 16, 0, 0, 'Zibo Shi', 'ZBO', NULL),
(173, '370400', '枣庄市', 16, 0, 0, 'Zaozhuang Shi', 'ZZG', NULL),
(174, '370500', '东营市', 16, 0, 0, 'Dongying Shi', 'DYG', NULL),
(175, '370600', '烟台市', 16, 0, 0, 'Yantai Shi', 'YNT', NULL),
(176, '370700', '潍坊市', 16, 0, 0, 'Weifang Shi', 'WEF', NULL),
(177, '370800', '济宁市', 16, 0, 0, 'Jining Shi', 'JNG', NULL),
(178, '370900', '泰安市', 16, 0, 0, 'Tai,an Shi', 'TAI', NULL),
(179, '371000', '威海市', 16, 0, 0, 'Weihai Shi', 'WEH', NULL),
(180, '371100', '日照市', 16, 0, 0, 'Rizhao Shi', 'RZH', NULL),
(181, '371200', '莱芜市', 16, 0, 0, 'Laiwu Shi', 'LWS', NULL),
(182, '371300', '临沂市', 16, 0, 0, 'Linyi Shi', 'LYI', NULL),
(183, '371400', '德州市', 16, 0, 0, 'Dezhou Shi', 'DZS', NULL),
(184, '371500', '聊城市', 16, 0, 0, 'Liaocheng Shi', 'LCH', NULL),
(185, '371600', '滨州市', 16, 0, 0, 'Binzhou Shi', '2', NULL),
(186, '371700', '菏泽市', 16, 3, 0, 'Heze Shi', 'HZ', NULL),
(187, '410100', '郑州市', 17, 0, 0, 'Zhengzhou Shi', 'CGO', NULL),
(188, '410200', '开封市', 17, 0, 0, 'Kaifeng Shi', 'KFS', NULL),
(189, '410300', '洛阳市', 17, 0, 0, 'Luoyang Shi', 'LYA', NULL),
(190, '410400', '平顶山市', 17, 0, 0, 'Pingdingshan Shi', 'PDS', NULL),
(191, '410500', '安阳市', 17, 0, 0, 'Anyang Shi', 'AYS', NULL),
(192, '410600', '鹤壁市', 17, 0, 0, 'Hebi Shi', 'HBS', NULL),
(193, '410700', '新乡市', 17, 0, 0, 'Xinxiang Shi', 'XXS', NULL),
(194, '410800', '焦作市', 17, 0, 0, 'Jiaozuo Shi', 'JZY', NULL),
(195, '410900', '濮阳市', 17, 0, 0, 'Puyang Shi', 'PYS', NULL),
(196, '411000', '许昌市', 17, 0, 0, 'Xuchang Shi', 'XCS', NULL),
(197, '411100', '漯河市', 17, 0, 0, 'Luohe Shi', 'LHS', NULL),
(198, '411200', '三门峡市', 17, 0, 0, 'Sanmenxia Shi', 'SMX', NULL),
(199, '411300', '南阳市', 17, 0, 0, 'Nanyang Shi', 'NYS', NULL),
(200, '411400', '商丘市', 17, 0, 0, 'Shangqiu Shi', 'SQS', NULL),
(201, '411500', '信阳市', 17, 0, 0, 'Xinyang Shi', 'XYG', NULL),
(202, '411600', '周口市', 17, 0, 0, 'Zhoukou Shi', '2', NULL),
(203, '411700', '驻马店市', 17, 0, 0, 'Zhumadian Shi', '2', NULL),
(204, '420100', '武汉市', 18, 0, 0, 'Wuhan Shi', 'WUH', NULL),
(205, '420200', '黄石市', 18, 0, 0, 'Huangshi Shi', 'HIS', NULL),
(206, '420300', '十堰市', 18, 0, 0, 'Shiyan Shi', 'SYE', NULL),
(207, '420500', '宜昌市', 18, 0, 0, 'Yichang Shi', 'YCO', NULL),
(208, '420600', '襄樊市', 18, 0, 0, 'Xiangfan Shi', 'XFN', NULL),
(209, '420700', '鄂州市', 18, 0, 0, 'Ezhou Shi', 'EZS', NULL),
(210, '420800', '荆门市', 18, 0, 0, 'Jingmen Shi', 'JMS', NULL),
(211, '420900', '孝感市', 18, 0, 0, 'Xiaogan Shi', 'XGE', NULL),
(212, '421000', '荆州市', 18, 0, 0, 'Jingzhou Shi', 'JGZ', NULL),
(213, '421100', '黄冈市', 18, 0, 0, 'Huanggang Shi', 'HE', NULL),
(214, '421200', '咸宁市', 18, 0, 0, 'Xianning Xian', 'XNS', NULL),
(215, '421300', '随州市', 18, 0, 0, 'Suizhou Shi', '2', NULL),
(216, '422800', '恩施土家族苗族自治州', 18, 0, 0, 'Enshi Tujiazu Miaozu Zizhizhou', 'ESH', NULL),
(217, '429000', '省直辖县级行政区划', 18, 0, 0, 'shengzhixiaxianjixingzhengquhua', '2', '湖北省'),
(218, '430100', '长沙市', 19, 0, 0, 'Changsha Shi', 'CSX', NULL),
(219, '430200', '株洲市', 19, 0, 0, 'Zhuzhou Shi', 'ZZS', NULL),
(220, '430300', '湘潭市', 19, 0, 0, 'Xiangtan Shi', 'XGT', NULL),
(221, '430400', '衡阳市', 19, 0, 0, 'Hengyang Shi', 'HNY', NULL),
(222, '430500', '邵阳市', 19, 0, 0, 'Shaoyang Shi', 'SYR', NULL),
(223, '430600', '岳阳市', 19, 0, 0, 'Yueyang Shi', 'YYG', NULL),
(224, '430700', '常德市', 19, 0, 0, 'Changde Shi', 'CDE', NULL),
(225, '430800', '张家界市', 19, 0, 0, 'Zhangjiajie Shi', 'ZJJ', NULL),
(226, '430900', '益阳市', 19, 0, 0, 'Yiyang Shi', 'YYS', NULL),
(227, '431000', '郴州市', 19, 0, 0, 'Chenzhou Shi', 'CNZ', NULL),
(228, '431100', '永州市', 19, 0, 0, 'Yongzhou Shi', 'YZS', NULL),
(229, '431200', '怀化市', 19, 0, 0, 'Huaihua Shi', 'HHS', NULL),
(230, '431300', '娄底市', 19, 0, 0, 'Loudi Shi', '2', NULL),
(231, '433100', '湘西土家族苗族自治州', 19, 0, 0, 'Xiangxi Tujiazu Miaozu Zizhizhou ', 'XXZ', NULL),
(232, '440100', '广州市', 20, 0, 0, 'Guangzhou Shi', 'CAN', NULL),
(233, '440200', '韶关市', 20, 0, 0, 'Shaoguan Shi', 'HSC', NULL),
(234, '440300', '深圳市', 20, 0, 0, 'Shenzhen Shi', 'SZX', NULL),
(235, '440400', '珠海市', 20, 0, 0, 'Zhuhai Shi', 'ZUH', NULL),
(236, '440500', '汕头市', 20, 0, 0, 'Shantou Shi', 'SWA', NULL),
(237, '440600', '佛山市', 20, 0, 0, 'Foshan Shi', 'FOS', NULL),
(238, '440700', '江门市', 20, 0, 0, 'Jiangmen Shi', 'JMN', NULL),
(239, '440800', '湛江市', 20, 0, 0, 'Zhanjiang Shi', 'ZHA', NULL),
(240, '440900', '茂名市', 20, 0, 0, 'Maoming Shi', 'MMI', NULL),
(241, '441200', '肇庆市', 20, 0, 0, 'Zhaoqing Shi', 'ZQG', NULL),
(242, '441300', '惠州市', 20, 0, 0, 'Huizhou Shi', 'HUI', NULL),
(243, '441400', '梅州市', 20, 0, 0, 'Meizhou Shi', 'MXZ', NULL),
(244, '441500', '汕尾市', 20, 0, 0, 'Shanwei Shi', 'SWE', NULL),
(245, '441600', '河源市', 20, 0, 0, 'Heyuan Shi', 'HEY', NULL),
(246, '441700', '阳江市', 20, 0, 0, 'Yangjiang Shi', 'YJI', NULL),
(247, '441800', '清远市', 20, 0, 0, 'Qingyuan Shi', 'QYN', NULL),
(248, '441900', '东莞市', 20, 0, 0, 'Dongguan Shi', 'DGG', NULL),
(249, '442000', '中山市', 20, 0, 0, 'Zhongshan Shi', 'ZSN', NULL),
(250, '445100', '潮州市', 20, 0, 0, 'Chaozhou Shi', 'CZY', NULL),
(251, '445200', '揭阳市', 20, 0, 0, 'Jieyang Shi', 'JIY', NULL),
(252, '445300', '云浮市', 20, 0, 0, 'Yunfu Shi', 'YFS', NULL),
(253, '450100', '南宁市', 21, 0, 0, 'Nanning Shi', 'NNG', NULL),
(254, '450200', '柳州市', 21, 0, 0, 'Liuzhou Shi', 'LZH', NULL),
(255, '450300', '桂林市', 21, 0, 0, 'Guilin Shi', 'KWL', NULL),
(256, '450400', '梧州市', 21, 0, 0, 'Wuzhou Shi', 'WUZ', NULL),
(257, '450500', '北海市', 21, 0, 0, 'Beihai Shi', 'BHY', NULL),
(258, '450600', '防城港市', 21, 0, 0, 'Fangchenggang Shi', 'FAN', NULL),
(259, '450700', '钦州市', 21, 0, 0, 'Qinzhou Shi', 'QZH', NULL),
(260, '450800', '贵港市', 21, 0, 0, 'Guigang Shi', 'GUG', NULL),
(261, '450900', '玉林市', 21, 0, 0, 'Yulin Shi', 'YUL', NULL),
(262, '451000', '百色市', 21, 0, 0, 'Baise Shi', '2', NULL),
(263, '451100', '贺州市', 21, 0, 0, 'Hezhou Shi', '2', NULL),
(264, '451200', '河池市', 21, 0, 0, 'Hechi Shi', '2', NULL),
(265, '451300', '来宾市', 21, 0, 0, 'Laibin Shi', '2', NULL),
(266, '451400', '崇左市', 21, 0, 0, 'Chongzuo Shi', '2', NULL),
(267, '460100', '海口市', 22, 0, 0, 'Haikou Shi', 'HAK', NULL),
(268, '460200', '三亚市', 22, 0, 0, 'Sanya Shi', 'SYX', NULL),
(269, '469000', '省直辖县级行政区划', 22, 0, 0, 'shengzhixiaxianjixingzhengquhua', '2', '海南省'),
(270, '500100', '市辖区', 23, 0, 0, 'Shixiaqu', '2', NULL),
(271, '500200', '县', 23, 0, 0, 'Xian', '2', NULL),
(272, '500300', '市', 23, 0, 0, 'Shi', '2', NULL),
(273, '510100', '成都市', 24, 0, 0, 'Chengdu Shi', 'CTU', NULL),
(274, '510300', '自贡市', 24, 0, 0, 'Zigong Shi', 'ZGS', NULL),
(275, '510400', '攀枝花市', 24, 0, 0, 'Panzhihua Shi', 'PZH', NULL),
(276, '510500', '泸州市', 24, 0, 0, 'Luzhou Shi', 'LUZ', NULL),
(277, '510600', '德阳市', 24, 0, 0, 'Deyang Shi', 'DEY', NULL),
(278, '510700', '绵阳市', 24, 0, 0, 'Mianyang Shi', 'MYG', NULL),
(279, '510800', '广元市', 24, 0, 0, 'Guangyuan Shi', 'GYC', NULL),
(280, '510900', '遂宁市', 24, 0, 0, 'Suining Shi', 'SNS', NULL),
(281, '511000', '内江市', 24, 0, 0, 'Neijiang Shi', 'NJS', NULL),
(282, '511100', '乐山市', 24, 0, 0, 'Leshan Shi', 'LES', NULL),
(283, '511300', '南充市', 24, 0, 0, 'Nanchong Shi', 'NCO', NULL),
(284, '511400', '眉山市', 24, 0, 0, 'Meishan Shi', '2', NULL),
(285, '511500', '宜宾市', 24, 0, 0, 'Yibin Shi', 'YBS', NULL),
(286, '511600', '广安市', 24, 0, 0, 'Guang,an Shi', 'GAC', NULL),
(287, '511700', '达州市', 24, 0, 0, 'Dazhou Shi', '2', NULL),
(288, '511800', '雅安市', 24, 0, 0, 'Ya,an Shi', '2', NULL),
(289, '511900', '巴中市', 24, 0, 0, 'Bazhong Shi', '2', NULL),
(290, '512000', '资阳市', 24, 0, 0, 'Ziyang Shi', '2', NULL),
(291, '513200', '阿坝藏族羌族自治州', 24, 0, 0, 'Aba(Ngawa) Zangzu Qiangzu Zizhizhou', 'ABA', NULL),
(292, '513300', '甘孜藏族自治州', 24, 0, 0, 'Garze Zangzu Zizhizhou', 'GAZ', NULL),
(293, '513400', '凉山彝族自治州', 24, 0, 0, 'Liangshan Yizu Zizhizhou', 'LSY', NULL),
(294, '520100', '贵阳市', 25, 0, 0, 'Guiyang Shi', 'KWE', NULL),
(295, '520200', '六盘水市', 25, 0, 0, 'Liupanshui Shi', 'LPS', NULL),
(296, '520300', '遵义市', 25, 0, 0, 'Zunyi Shi', 'ZNY', NULL),
(297, '520400', '安顺市', 25, 0, 0, 'Anshun Xian', '2', NULL),
(298, '522200', '铜仁地区', 25, 0, 0, 'Tongren Diqu', 'TRD', NULL),
(299, '522300', '黔西南布依族苗族自治州', 25, 0, 0, 'Qianxinan Buyeizu Zizhizhou', 'QXZ', NULL),
(300, '522400', '毕节地区', 25, 0, 0, 'Bijie Diqu', 'BJD', NULL),
(301, '522600', '黔东南苗族侗族自治州', 25, 0, 0, 'Qiandongnan Miaozu Dongzu Zizhizhou', 'QND', NULL),
(302, '522700', '黔南布依族苗族自治州', 25, 0, 0, 'Qiannan Buyeizu Miaozu Zizhizhou', 'QNZ', NULL),
(303, '530100', '昆明市', 26, 0, 0, 'Kunming Shi', 'KMG', NULL),
(304, '530300', '曲靖市', 26, 0, 0, 'Qujing Shi', 'QJS', NULL),
(305, '530400', '玉溪市', 26, 0, 0, 'Yuxi Shi', 'YXS', NULL),
(306, '530500', '保山市', 26, 0, 0, 'Baoshan Shi', '2', NULL),
(307, '530600', '昭通市', 26, 0, 0, 'Zhaotong Shi', '2', NULL),
(308, '530700', '丽江市', 26, 0, 0, 'Lijiang Shi', '2', NULL),
(309, '530800', '普洱市', 26, 0, 0, 'Simao Shi', '2', NULL),
(310, '530900', '临沧市', 26, 0, 0, 'Lincang Shi', '2', NULL),
(311, '532300', '楚雄彝族自治州', 26, 0, 0, 'Chuxiong Yizu Zizhizhou', 'CXD', NULL),
(312, '532500', '红河哈尼族彝族自治州', 26, 0, 0, 'Honghe Hanizu Yizu Zizhizhou', 'HHZ', NULL),
(313, '532600', '文山壮族苗族自治州', 26, 0, 0, 'Wenshan Zhuangzu Miaozu Zizhizhou', 'WSZ', NULL),
(314, '532800', '西双版纳傣族自治州', 26, 0, 0, 'Xishuangbanna Daizu Zizhizhou', 'XSB', NULL),
(315, '532900', '大理白族自治州', 26, 0, 0, 'Dali Baizu Zizhizhou', 'DLZ', NULL),
(316, '533100', '德宏傣族景颇族自治州', 26, 0, 0, 'Dehong Daizu Jingpozu Zizhizhou', 'DHG', NULL),
(317, '533300', '怒江傈僳族自治州', 26, 0, 0, 'Nujiang Lisuzu Zizhizhou', 'NUJ', NULL),
(318, '533400', '迪庆藏族自治州', 26, 0, 0, 'Deqen Zangzu Zizhizhou', 'DEZ', NULL),
(319, '540100', '拉萨市', 27, 0, 0, 'Lhasa Shi', 'LXA', NULL),
(320, '542100', '昌都地区', 27, 0, 0, 'Qamdo Diqu', 'QAD', NULL),
(321, '542200', '山南地区', 27, 0, 0, 'Shannan Diqu', 'SND', NULL),
(322, '542300', '日喀则地区', 27, 0, 0, 'Xigaze Diqu', 'XID', NULL),
(323, '542400', '那曲地区', 27, 0, 0, 'Nagqu Diqu', 'NAD', NULL),
(324, '542500', '阿里地区', 27, 0, 0, 'Ngari Diqu', 'NGD', NULL),
(325, '542600', '林芝地区', 27, 0, 0, 'Nyingchi Diqu', 'NYD', NULL),
(326, '610100', '西安市', 28, 0, 0, 'Xi,an Shi', 'SIA', NULL),
(327, '610200', '铜川市', 28, 0, 0, 'Tongchuan Shi', 'TCN', NULL),
(328, '610300', '宝鸡市', 28, 0, 0, 'Baoji Shi', 'BJI', NULL),
(329, '610400', '咸阳市', 28, 0, 0, 'Xianyang Shi', 'XYS', NULL),
(330, '610500', '渭南市', 28, 0, 0, 'Weinan Shi', 'WNA', NULL),
(331, '610600', '延安市', 28, 0, 0, 'Yan,an Shi', 'YNA', NULL),
(332, '610700', '汉中市', 28, 0, 0, 'Hanzhong Shi', 'HZJ', NULL),
(333, '610800', '榆林市', 28, 0, 0, 'Yulin Shi', '2', NULL),
(334, '610900', '安康市', 28, 0, 0, 'Ankang Shi', '2', NULL),
(335, '611000', '商洛市', 28, 0, 0, 'Shangluo Shi', '2', NULL),
(336, '620100', '兰州市', 29, 0, 0, 'Lanzhou Shi', 'LHW', NULL),
(337, '620200', '嘉峪关市', 29, 0, 0, 'Jiayuguan Shi', 'JYG', NULL),
(338, '620300', '金昌市', 29, 0, 0, 'Jinchang Shi', 'JCS', NULL),
(339, '620400', '白银市', 29, 0, 0, 'Baiyin Shi', 'BYS', NULL),
(340, '620500', '天水市', 29, 0, 0, 'Tianshui Shi', 'TSU', NULL),
(341, '620600', '武威市', 29, 0, 0, 'Wuwei Shi', '2', NULL),
(342, '620700', '张掖市', 29, 0, 0, 'Zhangye Shi', '2', NULL),
(343, '620800', '平凉市', 29, 0, 0, 'Pingliang Shi', '2', NULL),
(344, '620900', '酒泉市', 29, 0, 0, 'Jiuquan Shi', '2', NULL),
(345, '621000', '庆阳市', 29, 0, 0, 'Qingyang Shi', '2', NULL),
(346, '621100', '定西市', 29, 0, 0, 'Dingxi Shi', '2', NULL),
(347, '621200', '陇南市', 29, 0, 0, 'Longnan Shi', '2', NULL),
(348, '622900', '临夏回族自治州', 29, 0, 0, 'Linxia Huizu Zizhizhou ', 'LXH', NULL),
(349, '623000', '甘南藏族自治州', 29, 0, 0, 'Gannan Zangzu Zizhizhou', 'GNZ', NULL),
(350, '630100', '西宁市', 30, 0, 0, 'Xining Shi', 'XNN', NULL),
(351, '632100', '海东地区', 30, 0, 0, 'Haidong Diqu', 'HDD', NULL),
(352, '632200', '海北藏族自治州', 30, 0, 0, 'Haibei Zangzu Zizhizhou', 'HBZ', NULL),
(353, '632300', '黄南藏族自治州', 30, 0, 0, 'Huangnan Zangzu Zizhizhou', 'HNZ', NULL),
(354, '632500', '海南藏族自治州', 30, 0, 0, 'Hainan Zangzu Zizhizhou', 'HNN', NULL),
(355, '632600', '果洛藏族自治州', 30, 0, 0, 'Golog Zangzu Zizhizhou', 'GOL', NULL),
(356, '632700', '玉树藏族自治州', 30, 0, 0, 'Yushu Zangzu Zizhizhou', 'YSZ', NULL),
(357, '632800', '海西蒙古族藏族自治州', 30, 0, 0, 'Haixi Mongolzu Zangzu Zizhizhou', 'HXZ', NULL),
(358, '640100', '银川市', 31, 0, 0, 'Yinchuan Shi', 'INC', NULL),
(359, '640200', '石嘴山市', 31, 0, 0, 'Shizuishan Shi', 'SZS', NULL),
(360, '640300', '吴忠市', 31, 0, 0, 'Wuzhong Shi', 'WZS', NULL),
(361, '640400', '固原市', 31, 0, 0, 'Guyuan Shi', '2', NULL),
(362, '640500', '中卫市', 31, 0, 0, 'Zhongwei Shi', '2', NULL),
(363, '650100', '乌鲁木齐市', 32, 0, 0, 'Urumqi Shi', 'URC', NULL),
(364, '650200', '克拉玛依市', 32, 0, 0, 'Karamay Shi', 'KAR', NULL),
(365, '652100', '吐鲁番地区', 32, 0, 0, 'Turpan Diqu', 'TUD', NULL),
(366, '652200', '哈密地区', 32, 0, 0, 'Hami(kumul) Diqu', 'HMD', NULL),
(367, '652300', '昌吉回族自治州', 32, 0, 0, 'Changji Huizu Zizhizhou', 'CJZ', NULL),
(368, '652700', '博尔塔拉蒙古自治州', 32, 0, 0, 'Bortala Monglo Zizhizhou', 'BOR', NULL),
(369, '652800', '巴音郭楞蒙古自治州', 32, 0, 0, 'bayinguolengmengguzizhizhou', '2', NULL),
(370, '652900', '阿克苏地区', 32, 0, 0, 'Aksu Diqu', 'AKD', NULL),
(371, '653000', '克孜勒苏柯尔克孜自治州', 32, 0, 0, 'Kizilsu Kirgiz Zizhizhou', 'KIZ', NULL),
(372, '653100', '喀什地区', 32, 0, 0, 'Kashi(Kaxgar) Diqu', 'KSI', NULL),
(373, '653200', '和田地区', 32, 0, 0, 'Hotan Diqu', 'HOD', NULL),
(374, '654000', '伊犁哈萨克自治州', 32, 0, 0, 'Ili Kazak Zizhizhou', 'ILD', NULL),
(375, '654200', '塔城地区', 32, 0, 0, 'Tacheng(Qoqek) Diqu', 'TCD', NULL),
(376, '654300', '阿勒泰地区', 32, 0, 0, 'Altay Diqu', 'ALD', NULL),
(377, '659000', '自治区直辖县级行政区划', 32, 0, 0, 'zizhiquzhixiaxianjixingzhengquhua', '2', NULL),
(378, '110101', '东城区', 33, 0, 0, 'Dongcheng Qu', 'DCQ', NULL),
(379, '110102', '西城区', 33, 0, 0, 'Xicheng Qu', 'XCQ', NULL),
(382, '110105', '朝阳区', 33, 0, 0, 'Chaoyang Qu', 'CYQ', '北京市'),
(383, '110106', '丰台区', 33, 0, 0, 'Fengtai Qu', 'FTQ', NULL),
(384, '110107', '石景山区', 33, 0, 0, 'Shijingshan Qu', 'SJS', NULL),
(385, '110108', '海淀区', 33, 0, 0, 'Haidian Qu', 'HDN', NULL),
(386, '110109', '门头沟区', 33, 0, 0, 'Mentougou Qu', 'MTG', NULL),
(387, '110111', '房山区', 33, 0, 0, 'Fangshan Qu', 'FSQ', NULL),
(388, '110112', '通州区', 33, 0, 0, 'Tongzhou Qu', 'TZQ', '北京市'),
(389, '110113', '顺义区', 33, 0, 0, 'Shunyi Qu', 'SYI', NULL),
(390, '110114', '昌平区', 33, 0, 0, 'Changping Qu', 'CP Q', NULL),
(391, '110115', '大兴区', 33, 0, 0, 'Daxing Qu', 'DX Q', NULL),
(392, '110116', '怀柔区', 33, 0, 0, 'Huairou Qu', 'HR Q', NULL),
(393, '110117', '平谷区', 33, 0, 0, 'Pinggu Qu', 'PG Q', NULL),
(394, '110228', '密云县', 34, 0, 0, 'Miyun Xian ', 'MYN', NULL),
(395, '110229', '延庆县', 34, 0, 0, 'Yanqing Xian', 'YQX', NULL),
(396, '120101', '和平区', 35, 0, 0, 'Heping Qu', 'HPG', '天津市'),
(397, '120102', '河东区', 35, 0, 0, 'Hedong Qu', 'HDQ', '天津市'),
(398, '120103', '河西区', 35, 0, 0, 'Hexi Qu', 'HXQ', NULL),
(399, '120104', '南开区', 35, 0, 0, 'Nankai Qu', 'NKQ', NULL),
(400, '120105', '河北区', 35, 0, 0, 'Hebei Qu', 'HBQ', NULL),
(401, '120106', '红桥区', 35, 0, 0, 'Hongqiao Qu', 'HQO', NULL),
(404, '120116', '滨海新区', 35, 0, 0, 'Dagang Qu', '2', NULL),
(405, '120110', '东丽区', 35, 0, 0, 'Dongli Qu', 'DLI', NULL),
(406, '120111', '西青区', 35, 0, 0, 'Xiqing Qu', 'XQG', NULL),
(407, '120112', '津南区', 35, 0, 0, 'Jinnan Qu', 'JNQ', NULL),
(408, '120113', '北辰区', 35, 0, 0, 'Beichen Qu', 'BCQ', NULL),
(409, '120114', '武清区', 35, 0, 0, 'Wuqing Qu', 'WQ Q', NULL),
(410, '120115', '宝坻区', 35, 0, 0, 'Baodi Qu', 'BDI', NULL),
(411, '120221', '宁河县', 36, 0, 0, 'Ninghe Xian', 'NHE', NULL),
(412, '120223', '静海县', 36, 0, 0, 'Jinghai Xian', 'JHT', NULL),
(413, '120225', '蓟县', 36, 0, 0, 'Ji Xian', 'JIT', NULL),
(414, '130101', '市辖区', 37, 0, 0, 'Shixiaqu', '2', NULL),
(415, '130102', '长安区', 37, 0, 0, 'Chang,an Qu', 'CAQ', '石家庄市'),
(416, '130103', '桥东区', 37, 0, 0, 'Qiaodong Qu', 'QDQ', '石家庄市'),
(417, '130104', '桥西区', 37, 0, 0, 'Qiaoxi Qu', 'QXQ', '石家庄市'),
(418, '130105', '新华区', 37, 0, 0, 'Xinhua Qu', 'XHK', '石家庄市'),
(419, '130107', '井陉矿区', 37, 0, 0, 'Jingxing Kuangqu', 'JXK', NULL),
(420, '130108', '裕华区', 37, 0, 0, 'Yuhua Qu', '2', NULL),
(421, '130121', '井陉县', 37, 0, 0, 'Jingxing Xian', 'JXJ', NULL),
(422, '130123', '正定县', 37, 0, 0, 'Zhengding Xian', 'ZDJ', NULL),
(423, '130124', '栾城县', 37, 0, 0, 'Luancheng Xian', 'LCG', NULL),
(424, '130125', '行唐县', 37, 0, 0, 'Xingtang Xian', 'XTG', NULL),
(425, '130126', '灵寿县', 37, 0, 0, 'Lingshou Xian ', 'LSO', NULL),
(426, '130127', '高邑县', 37, 0, 0, 'Gaoyi Xian', 'GYJ', NULL),
(427, '130128', '深泽县', 37, 0, 0, 'Shenze Xian', '2', NULL),
(428, '130129', '赞皇县', 37, 0, 0, 'Zanhuang Xian', 'ZHG', NULL),
(429, '130130', '无极县', 37, 0, 0, 'Wuji Xian', 'WJI', NULL),
(430, '130131', '平山县', 37, 0, 0, 'Pingshan Xian', 'PSH', NULL),
(431, '130132', '元氏县', 37, 0, 0, 'Yuanshi Xian', 'YSI', NULL),
(432, '130133', '赵县', 37, 0, 0, 'Zhao Xian', 'ZAO', NULL),
(433, '130181', '辛集市', 37, 0, 0, 'Xinji Shi', 'XJS', NULL),
(434, '130182', '藁城市', 37, 0, 0, 'Gaocheng Shi', 'GCS', NULL),
(435, '130183', '晋州市', 37, 0, 0, 'Jinzhou Shi', 'JZJ', NULL),
(436, '130184', '新乐市', 37, 0, 0, 'Xinle Shi', 'XLE', NULL),
(437, '130185', '鹿泉市', 37, 0, 0, 'Luquan Shi', 'LUQ', NULL),
(438, '130201', '市辖区', 38, 0, 0, 'Shixiaqu', '2', NULL),
(439, '130202', '路南区', 38, 0, 0, 'Lunan Qu', 'LNB', NULL),
(440, '130203', '路北区', 38, 0, 0, 'Lubei Qu', 'LBQ', NULL),
(441, '130204', '古冶区', 38, 0, 0, 'Guye Qu', 'GYE', NULL),
(442, '130205', '开平区', 38, 0, 0, 'Kaiping Qu', 'KPQ', NULL),
(443, '130207', '丰南区', 38, 0, 0, 'Fengnan Qu', '2', NULL),
(444, '130208', '丰润区', 38, 0, 0, 'Fengrun Qu', '2', NULL),
(445, '130223', '滦县', 38, 0, 0, 'Luan Xian', 'LUA', NULL),
(446, '130224', '滦南县', 38, 0, 0, 'Luannan Xian', 'LNJ', NULL),
(447, '130225', '乐亭县', 38, 0, 0, 'Leting Xian', 'LTJ', NULL),
(448, '130227', '迁西县', 38, 0, 0, 'Qianxi Xian', 'QXX', NULL),
(449, '130229', '玉田县', 38, 0, 0, 'Yutian Xian', 'YTJ', NULL),
(450, '130230', '唐海县', 38, 0, 0, 'Tanghai Xian ', 'THA', NULL),
(451, '130281', '遵化市', 38, 0, 0, 'Zunhua Shi', 'ZNH', NULL),
(452, '130283', '迁安市', 38, 0, 0, 'Qian,an Shi', 'QAS', NULL),
(453, '130301', '市辖区', 39, 0, 0, 'Shixiaqu', '2', NULL),
(454, '130302', '海港区', 39, 0, 0, 'Haigang Qu', 'HGG', NULL),
(455, '130303', '山海关区', 39, 0, 0, 'Shanhaiguan Qu', 'SHG', NULL),
(456, '130304', '北戴河区', 39, 0, 0, 'Beidaihe Qu', 'BDH', NULL),
(457, '130321', '青龙满族自治县', 39, 0, 0, 'Qinglong Manzu Zizhixian', 'QLM', NULL),
(458, '130322', '昌黎县', 39, 0, 0, 'Changli Xian', 'CGL', NULL),
(459, '130323', '抚宁县', 39, 0, 0, 'Funing Xian ', 'FUN', NULL),
(460, '130324', '卢龙县', 39, 0, 0, 'Lulong Xian', 'LLG', NULL),
(461, '130401', '市辖区', 40, 0, 0, 'Shixiaqu', '2', NULL),
(462, '130402', '邯山区', 40, 0, 0, 'Hanshan Qu', 'HHD', NULL),
(463, '130403', '丛台区', 40, 0, 0, 'Congtai Qu', 'CTQ', NULL),
(464, '130404', '复兴区', 40, 0, 0, 'Fuxing Qu', 'FXQ', NULL),
(465, '130406', '峰峰矿区', 40, 0, 0, 'Fengfeng Kuangqu', 'FFK', NULL),
(466, '130421', '邯郸县', 40, 0, 0, 'Handan Xian ', 'HDX', NULL),
(467, '130423', '临漳县', 40, 0, 0, 'Linzhang Xian ', 'LNZ', NULL),
(468, '130424', '成安县', 40, 0, 0, 'Cheng,an Xian', 'CAJ', NULL),
(469, '130425', '大名县', 40, 0, 0, 'Daming Xian', 'DMX', NULL),
(470, '130426', '涉县', 40, 0, 0, 'She Xian', 'SEJ', NULL),
(471, '130427', '磁县', 40, 0, 0, 'Ci Xian', 'CIX', NULL),
(472, '130428', '肥乡县', 40, 0, 0, 'Feixiang Xian', 'FXJ', NULL),
(473, '130429', '永年县', 40, 0, 0, 'Yongnian Xian', 'YON', NULL),
(474, '130430', '邱县', 40, 0, 0, 'Qiu Xian', 'QIU', NULL),
(475, '130431', '鸡泽县', 40, 0, 0, 'Jize Xian', 'JZE', NULL),
(476, '130432', '广平县', 40, 0, 0, 'Guangping Xian ', 'GPX', NULL),
(477, '130433', '馆陶县', 40, 0, 0, 'Guantao Xian', 'GTO', NULL),
(478, '130434', '魏县', 40, 0, 0, 'Wei Xian ', 'WEI', NULL),
(479, '130435', '曲周县', 40, 0, 0, 'Quzhou Xian ', 'QZX', NULL),
(480, '130481', '武安市', 40, 0, 0, 'Wu,an Shi', 'WUA', NULL),
(481, '130501', '市辖区', 41, 0, 0, 'Shixiaqu', '2', NULL),
(482, '130502', '桥东区', 41, 0, 0, 'Qiaodong Qu', 'QDG', '邢台市'),
(483, '130503', '桥西区', 41, 0, 0, 'Qiaoxi Qu', 'QXT', '邢台市'),
(484, '130521', '邢台县', 41, 0, 0, 'Xingtai Xian', 'XTJ', NULL),
(485, '130522', '临城县', 41, 0, 0, 'Lincheng Xian ', 'LNC', NULL),
(486, '130523', '内丘县', 41, 0, 0, 'Neiqiu Xian ', 'NQU', NULL),
(487, '130524', '柏乡县', 41, 0, 0, 'Baixiang Xian', 'BXG', NULL),
(488, '130525', '隆尧县', 41, 0, 0, 'Longyao Xian', 'LYO', NULL),
(489, '130526', '任县', 41, 0, 0, 'Ren Xian', 'REN', NULL),
(490, '130527', '南和县', 41, 0, 0, 'Nanhe Xian', 'NHX', NULL),
(491, '130528', '宁晋县', 41, 0, 0, 'Ningjin Xian', 'NJN', NULL),
(492, '130529', '巨鹿县', 41, 0, 0, 'Julu Xian', 'JLU', NULL),
(493, '130530', '新河县', 41, 0, 0, 'Xinhe Xian ', 'XHJ', NULL),
(494, '130531', '广宗县', 41, 0, 0, 'Guangzong Xian ', 'GZJ', NULL),
(495, '130532', '平乡县', 41, 0, 0, 'Pingxiang Xian', 'PXX', NULL),
(496, '130533', '威县', 41, 0, 0, 'Wei Xian ', 'WEX', NULL),
(497, '130534', '清河县', 41, 0, 0, 'Qinghe Xian', 'QHE', NULL),
(498, '130535', '临西县', 41, 0, 0, 'Linxi Xian', 'LXI', NULL),
(499, '130581', '南宫市', 41, 0, 0, 'Nangong Shi', 'NGO', NULL),
(500, '130582', '沙河市', 41, 0, 0, 'Shahe Shi', 'SHS', NULL),
(501, '130601', '市辖区', 42, 0, 0, 'Shixiaqu', '2', NULL),
(502, '130600', '新市区', 42, 0, 0, 'Xinshi Qu', '2', '保定市'),
(503, '130603', '北市区', 42, 0, 0, 'Beishi Qu', 'BSI', NULL),
(504, '130604', '南市区', 42, 0, 0, 'Nanshi Qu', 'NSB', NULL),
(505, '130621', '满城县', 42, 0, 0, 'Mancheng Xian ', 'MCE', NULL),
(506, '130622', '清苑县', 42, 0, 0, 'Qingyuan Xian', 'QYJ', NULL),
(507, '130623', '涞水县', 42, 0, 0, 'Laishui Xian', 'LSM', NULL),
(508, '130624', '阜平县', 42, 0, 0, 'Fuping Xian ', 'FUP', NULL),
(509, '130625', '徐水县', 42, 0, 0, 'Xushui Xian ', 'XSJ', NULL),
(510, '130626', '定兴县', 42, 0, 0, 'Dingxing Xian ', 'DXG', NULL),
(511, '130627', '唐县', 42, 0, 0, 'Tang Xian ', 'TAG', NULL),
(512, '130628', '高阳县', 42, 0, 0, 'Gaoyang Xian ', 'GAY', NULL),
(513, '130629', '容城县', 42, 0, 0, 'Rongcheng Xian ', 'RCX', NULL),
(514, '130630', '涞源县', 42, 0, 0, 'Laiyuan Xian ', 'LIY', NULL),
(515, '130631', '望都县', 42, 0, 0, 'Wangdu Xian ', 'WDU', NULL),
(516, '130632', '安新县', 42, 0, 0, 'Anxin Xian ', 'AXX', NULL),
(517, '130633', '易县', 42, 0, 0, 'Yi Xian', 'YII', NULL),
(518, '130634', '曲阳县', 42, 0, 0, 'Quyang Xian ', 'QUY', NULL),
(519, '130635', '蠡县', 42, 0, 0, 'Li Xian', 'LXJ', NULL),
(520, '130636', '顺平县', 42, 0, 0, 'Shunping Xian ', 'SPI', NULL),
(521, '130637', '博野县', 42, 0, 0, 'Boye Xian ', 'BYE', NULL),
(522, '130638', '雄县', 42, 0, 0, 'Xiong Xian', 'XOX', NULL),
(523, '130681', '涿州市', 42, 0, 0, 'Zhuozhou Shi', 'ZZO', NULL),
(524, '130682', '定州市', 42, 0, 0, 'Dingzhou Shi ', 'DZO', NULL),
(525, '130683', '安国市', 42, 0, 0, 'Anguo Shi ', 'AGO', NULL),
(526, '130684', '高碑店市', 42, 0, 0, 'Gaobeidian Shi', 'GBD', NULL),
(527, '130701', '市辖区', 43, 0, 0, 'Shixiaqu', '2', NULL),
(528, '130702', '桥东区', 43, 0, 0, 'Qiaodong Qu', 'QDZ', '张家口市'),
(529, '130703', '桥西区', 43, 0, 0, 'Qiaoxi Qu', 'QXI', '张家口市'),
(530, '130705', '宣化区', 43, 0, 0, 'Xuanhua Qu', 'XHZ', NULL),
(531, '130706', '下花园区', 43, 0, 0, 'Xiahuayuan Qu ', 'XHY', NULL),
(532, '130721', '宣化县', 43, 0, 0, 'Xuanhua Xian ', 'XHX', NULL),
(533, '130722', '张北县', 43, 0, 0, 'Zhangbei Xian ', 'ZGB', NULL),
(534, '130723', '康保县', 43, 0, 0, 'Kangbao Xian', 'KBO', NULL),
(535, '130724', '沽源县', 43, 0, 0, 'Guyuan Xian', '2', NULL),
(536, '130725', '尚义县', 43, 0, 0, 'Shangyi Xian', 'SYK', NULL),
(537, '130726', '蔚县', 43, 0, 0, 'Yu Xian', 'YXJ', NULL),
(538, '130727', '阳原县', 43, 0, 0, 'Yangyuan Xian', 'YYN', NULL),
(539, '130728', '怀安县', 43, 0, 0, 'Huai,an Xian', 'HAX', NULL),
(540, '130729', '万全县', 43, 0, 0, 'Wanquan Xian ', 'WQN', NULL),
(541, '130730', '怀来县', 43, 0, 0, 'Huailai Xian', 'HLA', NULL),
(542, '130731', '涿鹿县', 43, 0, 0, 'Zhuolu Xian ', 'ZLU', NULL),
(543, '130732', '赤城县', 43, 0, 0, 'Chicheng Xian', 'CCX', NULL),
(544, '130733', '崇礼县', 43, 0, 0, 'Chongli Xian', 'COL', NULL),
(545, '130801', '市辖区', 44, 0, 0, 'Shixiaqu', '2', NULL),
(546, '130802', '双桥区', 44, 0, 0, 'Shuangqiao Qu ', 'SQO', '河北省'),
(547, '130803', '双滦区', 44, 0, 0, 'Shuangluan Qu', 'SLQ', NULL),
(548, '130804', '鹰手营子矿区', 44, 0, 0, 'Yingshouyingzi Kuangqu', 'YSY', NULL),
(549, '130821', '承德县', 44, 0, 0, 'Chengde Xian', 'CDX', NULL),
(550, '130822', '兴隆县', 44, 0, 0, 'Xinglong Xian', 'XLJ', NULL),
(551, '130823', '平泉县', 44, 0, 0, 'Pingquan Xian', 'PQN', NULL),
(552, '130824', '滦平县', 44, 0, 0, 'Luanping Xian ', 'LUP', NULL),
(553, '130825', '隆化县', 44, 0, 0, 'Longhua Xian', 'LHJ', NULL),
(554, '130826', '丰宁满族自治县', 44, 0, 0, 'Fengning Manzu Zizhixian', 'FNJ', NULL),
(555, '130827', '宽城满族自治县', 44, 0, 0, 'Kuancheng Manzu Zizhixian', 'KCX', NULL),
(556, '130828', '围场满族蒙古族自治县', 44, 0, 0, 'Weichang Manzu Menggolzu Zizhixian', 'WCJ', NULL),
(557, '130901', '市辖区', 45, 0, 0, 'Shixiaqu', '2', NULL),
(558, '130902', '新华区', 45, 0, 0, 'Xinhua Qu', 'XHF', '沧州市'),
(559, '130903', '运河区', 45, 0, 0, 'Yunhe Qu', 'YHC', NULL),
(560, '130921', '沧县', 45, 0, 0, 'Cang Xian', 'CAG', NULL),
(561, '130922', '青县', 45, 0, 0, 'Qing Xian', 'QIG', NULL),
(562, '130923', '东光县', 45, 0, 0, 'Dongguang Xian ', 'DGU', NULL),
(563, '130924', '海兴县', 45, 0, 0, 'Haixing Xian', 'HXG', NULL),
(564, '130925', '盐山县', 45, 0, 0, 'Yanshan Xian', 'YNS', NULL),
(565, '130926', '肃宁县', 45, 0, 0, 'Suning Xian ', 'SNG', NULL),
(566, '130927', '南皮县', 45, 0, 0, 'Nanpi Xian', 'NPI', NULL),
(567, '130928', '吴桥县', 45, 0, 0, 'Wuqiao Xian ', 'WUQ', NULL),
(568, '130929', '献县', 45, 0, 0, 'Xian Xian ', 'XXN', NULL),
(569, '130930', '孟村回族自治县', 45, 0, 0, 'Mengcun Huizu Zizhixian', 'MCN', NULL),
(570, '130981', '泊头市', 45, 0, 0, 'Botou Shi ', 'BOT', NULL),
(571, '130982', '任丘市', 45, 0, 0, 'Renqiu Shi', 'RQS', NULL),
(572, '130983', '黄骅市', 45, 0, 0, 'Huanghua Shi', 'HHJ', NULL),
(573, '130984', '河间市', 45, 0, 0, 'Hejian Shi', 'HJN', NULL),
(574, '131001', '市辖区', 46, 0, 0, 'Shixiaqu', '2', NULL),
(575, '131002', '安次区', 46, 0, 0, 'Anci Qu', 'ACI', NULL),
(576, '131003', '广阳区', 46, 0, 0, 'Guangyang Qu', '2', NULL),
(577, '131022', '固安县', 46, 0, 0, 'Gu,an Xian', 'GUA', NULL),
(578, '131023', '永清县', 46, 0, 0, 'Yongqing Xian ', 'YQG', NULL),
(579, '131024', '香河县', 46, 0, 0, 'Xianghe Xian', 'XGH', NULL),
(580, '131025', '大城县', 46, 0, 0, 'Dacheng Xian', 'DCJ', NULL),
(581, '131026', '文安县', 46, 0, 0, 'Wen,an Xian', 'WEA', NULL),
(582, '131028', '大厂回族自治县', 46, 0, 0, 'Dachang Huizu Zizhixian', 'DCG', NULL),
(583, '131081', '霸州市', 46, 0, 0, 'Bazhou Shi', 'BZO', NULL),
(584, '131082', '三河市', 46, 0, 0, 'Sanhe Shi', 'SNH', NULL),
(585, '131101', '市辖区', 47, 0, 0, 'Shixiaqu', '2', NULL),
(586, '131102', '桃城区', 47, 0, 0, 'Taocheng Qu', 'TOC', NULL),
(587, '131121', '枣强县', 47, 0, 0, 'Zaoqiang Xian ', 'ZQJ', NULL),
(588, '131122', '武邑县', 47, 0, 0, 'Wuyi Xian', 'WYI', NULL),
(589, '131123', '武强县', 47, 0, 0, 'Wuqiang Xian ', 'WQG', NULL),
(590, '131124', '饶阳县', 47, 0, 0, 'Raoyang Xian', 'RYG', NULL),
(591, '131125', '安平县', 47, 0, 0, 'Anping Xian', 'APG', NULL),
(592, '131126', '故城县', 47, 0, 0, 'Gucheng Xian', 'GCE', NULL),
(593, '131127', '景县', 47, 0, 0, 'Jing Xian ', 'JIG', NULL),
(594, '131128', '阜城县', 47, 0, 0, 'Fucheng Xian ', 'FCE', NULL),
(595, '131181', '冀州市', 47, 0, 0, 'Jizhou Shi ', 'JIZ', NULL),
(596, '131182', '深州市', 47, 0, 0, 'Shenzhou Shi', 'SNZ', NULL),
(597, '140101', '市辖区', 48, 0, 0, 'Shixiaqu', '2', NULL),
(598, '140105', '小店区', 48, 0, 0, 'Xiaodian Qu', 'XDQ', NULL),
(599, '140106', '迎泽区', 48, 0, 0, 'Yingze Qu', 'YZT', NULL),
(600, '140107', '杏花岭区', 48, 0, 0, 'Xinghualing Qu', 'XHL', NULL),
(601, '140108', '尖草坪区', 48, 0, 0, 'Jiancaoping Qu', 'JCP', NULL),
(602, '140109', '万柏林区', 48, 0, 0, 'Wanbailin Qu', 'WBL', NULL),
(603, '140110', '晋源区', 48, 0, 0, 'Jinyuan Qu', 'JYM', NULL),
(604, '140121', '清徐县', 48, 0, 0, 'Qingxu Xian ', 'QXU', NULL),
(605, '140122', '阳曲县', 48, 0, 0, 'Yangqu Xian ', 'YGQ', NULL),
(606, '140123', '娄烦县', 48, 0, 0, 'Loufan Xian', 'LFA', NULL),
(607, '140181', '古交市', 48, 0, 0, 'Gujiao Shi', 'GUJ', NULL),
(608, '140201', '市辖区', 49, 0, 0, 'Shixiaqu', '2', NULL),
(609, '140202', '城区', 49, 0, 0, 'Chengqu', 'CQD', '大同市'),
(610, '140203', '矿区', 49, 0, 0, 'Kuangqu', 'KQD', '大同市'),
(611, '140211', '南郊区', 49, 0, 0, 'Nanjiao Qu', 'NJQ', NULL),
(612, '140212', '新荣区', 49, 0, 0, 'Xinrong Qu', 'XRQ', NULL),
(613, '140221', '阳高县', 49, 0, 0, 'Yanggao Xian ', 'YGO', NULL),
(614, '140222', '天镇县', 49, 0, 0, 'Tianzhen Xian ', 'TZE', NULL),
(615, '140223', '广灵县', 49, 0, 0, 'Guangling Xian ', 'GLJ', NULL),
(616, '140224', '灵丘县', 49, 0, 0, 'Lingqiu Xian ', 'LQX', NULL),
(617, '140225', '浑源县', 49, 0, 0, 'Hunyuan Xian', 'HYM', NULL),
(618, '140226', '左云县', 49, 0, 0, 'Zuoyun Xian', 'ZUY', NULL),
(619, '140227', '大同县', 49, 0, 0, 'Datong Xian ', 'DTX', NULL),
(620, '140301', '市辖区', 50, 0, 0, 'Shixiaqu', '2', NULL),
(621, '140302', '城区', 50, 0, 0, 'Chengqu', 'CQU', '阳泉市'),
(622, '140303', '矿区', 50, 0, 0, 'Kuangqu', 'KQY', '阳泉市'),
(623, '140311', '郊区', 50, 0, 0, 'Jiaoqu', 'JQY', '阳泉市'),
(624, '140321', '平定县', 50, 0, 0, 'Pingding Xian', 'PDG', NULL),
(625, '140322', '盂县', 50, 0, 0, 'Yu Xian', 'YUX', NULL),
(626, '140401', '市辖区', 51, 0, 0, 'Shixiaqu', '2', NULL),
(627, '140402', '城区', 51, 0, 0, 'Chengqu ', 'CQC', '长治市'),
(628, '140411', '郊区', 51, 0, 0, 'Jiaoqu', 'JQZ', '长治市'),
(629, '140421', '长治县', 51, 0, 0, 'Changzhi Xian', 'CZI', NULL),
(630, '140423', '襄垣县', 51, 0, 0, 'Xiangyuan Xian', 'XYJ', NULL),
(631, '140424', '屯留县', 51, 0, 0, 'Tunliu Xian', 'TNL', NULL),
(632, '140425', '平顺县', 51, 0, 0, 'Pingshun Xian', 'PSX', NULL),
(633, '140426', '黎城县', 51, 0, 0, 'Licheng Xian', 'LIC', NULL),
(634, '140427', '壶关县', 51, 0, 0, 'Huguan Xian', 'HGN', NULL),
(635, '140428', '长子县', 51, 0, 0, 'Zhangzi Xian ', 'ZHZ', NULL),
(636, '140429', '武乡县', 51, 0, 0, 'Wuxiang Xian', 'WXG', NULL),
(637, '140430', '沁县', 51, 0, 0, 'Qin Xian', 'QIN', NULL),
(638, '140431', '沁源县', 51, 0, 0, 'Qinyuan Xian ', 'QYU', NULL),
(639, '140481', '潞城市', 51, 0, 0, 'Lucheng Shi', 'LCS', NULL),
(640, '140501', '市辖区', 52, 0, 0, 'Shixiaqu', '2', NULL),
(641, '140502', '城区', 52, 0, 0, 'Chengqu ', 'CQJ', '晋城市'),
(642, '140521', '沁水县', 52, 0, 0, 'Qinshui Xian', 'QSI', NULL),
(643, '140522', '阳城县', 52, 0, 0, 'Yangcheng Xian ', 'YGC', NULL),
(644, '140524', '陵川县', 52, 0, 0, 'Lingchuan Xian', 'LGC', NULL),
(645, '140525', '泽州县', 52, 0, 0, 'Zezhou Xian', 'ZEZ', NULL),
(646, '140581', '高平市', 52, 0, 0, 'Gaoping Shi ', 'GPG', NULL),
(647, '140601', '市辖区', 53, 0, 0, 'Shixiaqu', '2', NULL),
(648, '140602', '朔城区', 53, 0, 0, 'Shuocheng Qu', 'SCH', NULL),
(649, '140603', '平鲁区', 53, 0, 0, 'Pinglu Qu', 'PLU', NULL),
(650, '140621', '山阴县', 53, 0, 0, 'Shanyin Xian', 'SYP', NULL),
(651, '140622', '应县', 53, 0, 0, 'Ying Xian', 'YIG', NULL),
(652, '140623', '右玉县', 53, 0, 0, 'Youyu Xian ', 'YOY', NULL),
(653, '140624', '怀仁县', 53, 0, 0, 'Huairen Xian', 'HRN', NULL),
(654, '140701', '市辖区', 54, 0, 0, '1', '2', NULL),
(655, '140702', '榆次区', 54, 0, 0, 'Yuci Qu', '2', NULL),
(656, '140721', '榆社县', 54, 0, 0, 'Yushe Xian', '2', NULL),
(657, '140722', '左权县', 54, 0, 0, 'Zuoquan Xian', '2', NULL),
(658, '140723', '和顺县', 54, 0, 0, 'Heshun Xian', '2', NULL),
(659, '140724', '昔阳县', 54, 0, 0, 'Xiyang Xian', '2', NULL),
(660, '140725', '寿阳县', 54, 0, 0, 'Shouyang Xian', '2', NULL),
(661, '140726', '太谷县', 54, 0, 0, 'Taigu Xian', '2', NULL),
(662, '140727', '祁县', 54, 0, 0, 'Qi Xian', '2', NULL),
(663, '140728', '平遥县', 54, 0, 0, 'Pingyao Xian', '2', NULL),
(664, '140729', '灵石县', 54, 0, 0, 'Lingshi Xian', '2', NULL),
(665, '140781', '介休市', 54, 0, 0, 'Jiexiu Shi', '2', NULL),
(666, '140801', '市辖区', 55, 0, 0, '1', '2', NULL),
(667, '140802', '盐湖区', 55, 0, 0, 'Yanhu Qu', '2', NULL),
(668, '140821', '临猗县', 55, 0, 0, 'Linyi Xian', '2', NULL),
(669, '140822', '万荣县', 55, 0, 0, 'Wanrong Xian', '2', NULL),
(670, '140823', '闻喜县', 55, 0, 0, 'Wenxi Xian', '2', NULL),
(671, '140824', '稷山县', 55, 0, 0, 'Jishan Xian', '2', NULL),
(672, '140825', '新绛县', 55, 0, 0, 'Xinjiang Xian', '2', NULL),
(673, '140826', '绛县', 55, 0, 0, 'Jiang Xian', '2', NULL),
(674, '140827', '垣曲县', 55, 0, 0, 'Yuanqu Xian', '2', NULL),
(675, '140828', '夏县', 55, 0, 0, 'Xia Xian ', '2', NULL),
(676, '140829', '平陆县', 55, 0, 0, 'Pinglu Xian', '2', NULL),
(677, '140830', '芮城县', 55, 0, 0, 'Ruicheng Xian', '2', NULL),
(678, '140881', '永济市', 55, 0, 0, 'Yongji Shi ', '2', NULL),
(679, '140882', '河津市', 55, 0, 0, 'Hejin Shi', '2', NULL),
(680, '140901', '市辖区', 56, 0, 0, '1', '2', NULL),
(681, '140902', '忻府区', 56, 0, 0, 'Xinfu Qu', '2', NULL),
(682, '140921', '定襄县', 56, 0, 0, 'Dingxiang Xian', '2', NULL),
(683, '140922', '五台县', 56, 0, 0, 'Wutai Xian', '2', NULL),
(684, '140923', '代县', 56, 0, 0, 'Dai Xian', '2', NULL),
(685, '140924', '繁峙县', 56, 0, 0, 'Fanshi Xian', '2', NULL),
(686, '140925', '宁武县', 56, 0, 0, 'Ningwu Xian', '2', NULL),
(687, '140926', '静乐县', 56, 0, 0, 'Jingle Xian', '2', NULL),
(688, '140927', '神池县', 56, 0, 0, 'Shenchi Xian', '2', NULL),
(689, '140928', '五寨县', 56, 0, 0, 'Wuzhai Xian', '2', NULL),
(690, '140929', '岢岚县', 56, 0, 0, 'Kelan Xian', '2', NULL),
(691, '140930', '河曲县', 56, 0, 0, 'Hequ Xian ', '2', NULL),
(692, '140931', '保德县', 56, 0, 0, 'Baode Xian', '2', NULL),
(693, '140932', '偏关县', 56, 0, 0, 'Pianguan Xian', '2', NULL),
(694, '140981', '原平市', 56, 0, 0, 'Yuanping Shi', '2', NULL),
(695, '141001', '市辖区', 57, 0, 0, '1', '2', NULL),
(696, '141002', '尧都区', 57, 0, 0, 'Yaodu Qu', '2', NULL),
(697, '141021', '曲沃县', 57, 0, 0, 'Quwo Xian ', '2', NULL),
(698, '141022', '翼城县', 57, 0, 0, 'Yicheng Xian', '2', NULL),
(699, '141023', '襄汾县', 57, 0, 0, 'Xiangfen Xian', '2', NULL),
(700, '141024', '洪洞县', 57, 0, 0, 'Hongtong Xian', '2', NULL),
(701, '141025', '古县', 57, 0, 0, 'Gu Xian', '2', NULL),
(702, '141026', '安泽县', 57, 0, 0, 'Anze Xian', '2', NULL),
(703, '141027', '浮山县', 57, 0, 0, 'Fushan Xian ', '2', NULL),
(704, '141028', '吉县', 57, 0, 0, 'Ji Xian', '2', NULL),
(705, '141029', '乡宁县', 57, 0, 0, 'Xiangning Xian', '2', NULL),
(706, '141030', '大宁县', 57, 0, 0, 'Daning Xian', '2', NULL),
(707, '141031', '隰县', 57, 0, 0, 'Xi Xian', '2', NULL),
(708, '141032', '永和县', 57, 0, 0, 'Yonghe Xian', '2', NULL),
(709, '141033', '蒲县', 57, 0, 0, 'Pu Xian', '2', NULL),
(710, '141034', '汾西县', 57, 0, 0, 'Fenxi Xian', '2', NULL),
(711, '141081', '侯马市', 57, 0, 0, 'Houma Shi ', '2', NULL),
(712, '141082', '霍州市', 57, 0, 0, 'Huozhou Shi ', '2', NULL),
(713, '141101', '市辖区', 58, 0, 0, '1', '2', NULL),
(714, '141102', '离石区', 58, 0, 0, 'Lishi Qu', '2', NULL),
(715, '141121', '文水县', 58, 0, 0, 'Wenshui Xian', '2', NULL),
(716, '141122', '交城县', 58, 0, 0, 'Jiaocheng Xian', '2', NULL),
(717, '141123', '兴县', 58, 0, 0, 'Xing Xian', '2', NULL),
(718, '141124', '临县', 58, 0, 0, 'Lin Xian ', '2', NULL),
(719, '141125', '柳林县', 58, 0, 0, 'Liulin Xian', '2', NULL),
(720, '141126', '石楼县', 58, 0, 0, 'Shilou Xian', '2', NULL),
(721, '141127', '岚县', 58, 0, 0, 'Lan Xian', '2', NULL),
(722, '141128', '方山县', 58, 0, 0, 'Fangshan Xian', '2', NULL),
(723, '141129', '中阳县', 58, 0, 0, 'Zhongyang Xian', '2', NULL),
(724, '141130', '交口县', 58, 0, 0, 'Jiaokou Xian', '2', NULL),
(725, '141181', '孝义市', 58, 0, 0, 'Xiaoyi Shi', '2', NULL),
(726, '141182', '汾阳市', 58, 0, 0, 'Fenyang Shi', '2', NULL),
(727, '150101', '市辖区', 59, 0, 0, 'Shixiaqu', '2', NULL),
(728, '150102', '新城区', 59, 0, 0, 'Xincheng Qu', 'XCN', '呼和浩特市'),
(729, '150103', '回民区', 59, 0, 0, 'Huimin Qu', 'HMQ', NULL),
(730, '150104', '玉泉区', 59, 0, 0, 'Yuquan Qu', 'YQN', NULL),
(731, '150105', '赛罕区', 59, 0, 0, 'Saihan Qu', '2', NULL),
(732, '150121', '土默特左旗', 59, 0, 0, 'Tumd Zuoqi', 'TUZ', NULL),
(733, '150122', '托克托县', 59, 0, 0, 'Togtoh Xian', 'TOG', NULL),
(734, '150123', '和林格尔县', 59, 0, 0, 'Horinger Xian', 'HOR', NULL),
(735, '150124', '清水河县', 59, 0, 0, 'Qingshuihe Xian', 'QSH', NULL),
(736, '150125', '武川县', 59, 0, 0, 'Wuchuan Xian', 'WCX', NULL),
(737, '150201', '市辖区', 60, 0, 0, 'Shixiaqu', '2', NULL),
(738, '150202', '东河区', 60, 0, 0, 'Donghe Qu', 'DHE', NULL),
(739, '150203', '昆都仑区', 60, 0, 0, 'Kundulun Qu', '2', NULL),
(740, '150204', '青山区', 60, 0, 0, 'Qingshan Qu', 'QSB', '包头市'),
(741, '150205', '石拐区', 60, 0, 0, 'Shiguai Qu', '2', NULL),
(742, '150206', '白云鄂博矿区', 60, 0, 0, 'Baiyun Kuangqu', '2', NULL),
(743, '150207', '九原区', 60, 0, 0, 'Jiuyuan Qu', '2', NULL),
(744, '150221', '土默特右旗', 60, 0, 0, 'Tumd Youqi', 'TUY', NULL),
(745, '150222', '固阳县', 60, 0, 0, 'Guyang Xian', 'GYM', NULL),
(746, '150223', '达尔罕茂明安联合旗', 60, 0, 0, 'Darhan Muminggan Lianheqi', 'DML', NULL),
(747, '150301', '市辖区', 61, 0, 0, 'Shixiaqu', '2', NULL),
(748, '150302', '海勃湾区', 61, 0, 0, 'Haibowan Qu', 'HBW', NULL),
(749, '150303', '海南区', 61, 0, 0, 'Hainan Qu', 'HNU', NULL),
(750, '150304', '乌达区', 61, 0, 0, 'Ud Qu', 'UDQ', NULL),
(751, '150401', '市辖区', 62, 0, 0, 'Shixiaqu', '2', NULL),
(752, '150402', '红山区', 62, 0, 0, 'Hongshan Qu', 'HSZ', NULL),
(753, '150403', '元宝山区', 62, 0, 0, 'Yuanbaoshan Qu', 'YBO', NULL),
(754, '150404', '松山区', 62, 0, 0, 'Songshan Qu', 'SSQ', NULL),
(755, '150421', '阿鲁科尔沁旗', 62, 0, 0, 'Ar Horqin Qi', 'AHO', NULL),
(756, '150422', '巴林左旗', 62, 0, 0, 'Bairin Zuoqi', 'BAZ', NULL),
(757, '150423', '巴林右旗', 62, 0, 0, 'Bairin Youqi', 'BAY', NULL),
(758, '150424', '林西县', 62, 0, 0, 'Linxi Xian', 'LXM', NULL),
(759, '150425', '克什克腾旗', 62, 0, 0, 'Hexigten Qi', 'HXT', NULL),
(760, '150426', '翁牛特旗', 62, 0, 0, 'Ongniud Qi', 'ONG', NULL),
(761, '150428', '喀喇沁旗', 62, 0, 0, 'Harqin Qi', 'HAR', NULL),
(762, '150429', '宁城县', 62, 0, 0, 'Ningcheng Xian', 'NCH', NULL),
(763, '150430', '敖汉旗', 62, 0, 0, 'Aohan Qi', 'AHN', NULL),
(764, '150501', '市辖区', 63, 0, 0, '1', '2', NULL),
(765, '150502', '科尔沁区', 63, 0, 0, 'Keermi Qu', '2', NULL),
(766, '150521', '科尔沁左翼中旗', 63, 0, 0, 'Horqin Zuoyi Zhongqi', '2', NULL),
(767, '150522', '科尔沁左翼后旗', 63, 0, 0, 'Horqin Zuoyi Houqi', '2', NULL),
(768, '150523', '开鲁县', 63, 0, 0, 'Kailu Xian', '2', NULL),
(769, '150524', '库伦旗', 63, 0, 0, 'Hure Qi', '2', NULL),
(770, '150525', '奈曼旗', 63, 0, 0, 'Naiman Qi', '2', NULL),
(771, '150526', '扎鲁特旗', 63, 0, 0, 'Jarud Qi', '2', NULL),
(772, '150581', '霍林郭勒市', 63, 0, 0, 'Holingol Shi', '2', NULL),
(773, '150602', '东胜区', 64, 0, 0, 'Dongsheng Qu', '2', NULL),
(774, '150621', '达拉特旗', 64, 0, 0, 'Dalad Qi', '2', NULL),
(775, '150622', '准格尔旗', 64, 0, 0, 'Jungar Qi', '2', NULL),
(776, '150623', '鄂托克前旗', 64, 0, 0, 'Otog Qianqi', '2', NULL),
(777, '150624', '鄂托克旗', 64, 0, 0, 'Otog Qi', '2', NULL),
(778, '150625', '杭锦旗', 64, 0, 0, 'Hanggin Qi', '2', NULL),
(779, '150626', '乌审旗', 64, 0, 0, 'Uxin Qi', '2', NULL),
(780, '150627', '伊金霍洛旗', 64, 0, 0, 'Ejin Horo Qi', '2', NULL),
(781, '150701', '市辖区', 65, 0, 0, '1', '2', NULL),
(782, '150702', '海拉尔区', 65, 0, 0, 'Hailaer Qu', '2', NULL),
(783, '150721', '阿荣旗', 65, 0, 0, 'Arun Qi', '2', NULL),
(784, '150722', '莫力达瓦达斡尔族自治旗', 65, 0, 0, 'Morin Dawa Daurzu Zizhiqi', '2', NULL),
(785, '150723', '鄂伦春自治旗', 65, 0, 0, 'Oroqen Zizhiqi', '2', NULL),
(786, '150724', '鄂温克族自治旗', 65, 0, 0, 'Ewenkizu Zizhiqi', '2', NULL),
(787, '150725', '陈巴尔虎旗', 65, 0, 0, 'Chen Barag Qi', '2', NULL),
(788, '150726', '新巴尔虎左旗', 65, 0, 0, 'Xin Barag Zuoqi', '2', NULL),
(789, '150727', '新巴尔虎右旗', 65, 0, 0, 'Xin Barag Youqi', '2', NULL),
(790, '150781', '满洲里市', 65, 0, 0, 'Manzhouli Shi', '2', NULL),
(791, '150782', '牙克石市', 65, 0, 0, 'Yakeshi Shi', '2', NULL),
(792, '150783', '扎兰屯市', 65, 0, 0, 'Zalantun Shi', '2', NULL),
(793, '150784', '额尔古纳市', 65, 0, 0, 'Ergun Shi', '2', NULL),
(794, '150785', '根河市', 65, 0, 0, 'Genhe Shi', '2', NULL),
(795, '150801', '市辖区', 66, 0, 0, '1', '2', NULL),
(796, '150802', '临河区', 66, 0, 0, 'Linhe Qu', '2', NULL),
(797, '150821', '五原县', 66, 0, 0, 'Wuyuan Xian', '2', NULL),
(798, '150822', '磴口县', 66, 0, 0, 'Dengkou Xian', '2', NULL),
(799, '150823', '乌拉特前旗', 66, 0, 0, 'Urad Qianqi', '2', NULL),
(800, '150824', '乌拉特中旗', 66, 0, 0, 'Urad Zhongqi', '2', NULL),
(801, '150825', '乌拉特后旗', 66, 0, 0, 'Urad Houqi', '2', NULL),
(802, '150826', '杭锦后旗', 66, 0, 0, 'Hanggin Houqi', '2', NULL),
(803, '150901', '市辖区', 67, 0, 0, '1', '2', NULL),
(804, '150902', '集宁区', 67, 0, 0, 'Jining Qu', '2', NULL),
(805, '150921', '卓资县', 67, 0, 0, 'Zhuozi Xian', '2', NULL),
(806, '150922', '化德县', 67, 0, 0, 'Huade Xian', '2', NULL),
(807, '150923', '商都县', 67, 0, 0, 'Shangdu Xian', '2', NULL),
(808, '150924', '兴和县', 67, 0, 0, 'Xinghe Xian', '2', NULL),
(809, '150925', '凉城县', 67, 0, 0, 'Liangcheng Xian', '2', NULL),
(810, '150926', '察哈尔右翼前旗', 67, 0, 0, 'Qahar Youyi Qianqi', '2', NULL),
(811, '150927', '察哈尔右翼中旗', 67, 0, 0, 'Qahar Youyi Zhongqi', '2', NULL),
(812, '150928', '察哈尔右翼后旗', 67, 0, 0, 'Qahar Youyi Houqi', '2', NULL),
(813, '150929', '四子王旗', 67, 0, 0, 'Dorbod Qi', '2', NULL),
(814, '150981', '丰镇市', 67, 0, 0, 'Fengzhen Shi', '2', NULL),
(815, '152201', '乌兰浩特市', 68, 0, 0, 'Ulan Hot Shi', 'ULO', NULL),
(816, '152202', '阿尔山市', 68, 0, 0, 'Arxan Shi', 'ARS', NULL),
(817, '152221', '科尔沁右翼前旗', 68, 0, 0, 'Horqin Youyi Qianqi', 'HYQ', NULL),
(818, '152222', '科尔沁右翼中旗', 68, 0, 0, 'Horqin Youyi Zhongqi', 'HYZ', NULL),
(819, '152223', '扎赉特旗', 68, 0, 0, 'Jalaid Qi', 'JAL', NULL),
(820, '152224', '突泉县', 68, 0, 0, 'Tuquan Xian', 'TUQ', NULL),
(821, '152501', '二连浩特市', 69, 0, 0, 'Erenhot Shi', 'ERC', NULL),
(822, '152502', '锡林浩特市', 69, 0, 0, 'Xilinhot Shi', 'XLI', NULL),
(823, '152522', '阿巴嘎旗', 69, 0, 0, 'Abag Qi', 'ABG', NULL),
(824, '152523', '苏尼特左旗', 69, 0, 0, 'Sonid Zuoqi', 'SOZ', NULL),
(825, '152524', '苏尼特右旗', 69, 0, 0, 'Sonid Youqi', 'SOY', NULL),
(826, '152525', '东乌珠穆沁旗', 69, 0, 0, 'Dong Ujimqin Qi', 'DUJ', NULL),
(827, '152526', '西乌珠穆沁旗', 69, 0, 0, 'Xi Ujimqin Qi', 'XUJ', NULL),
(828, '152527', '太仆寺旗', 69, 0, 0, 'Taibus Qi', 'TAB', NULL),
(829, '152528', '镶黄旗', 69, 0, 0, 'Xianghuang(Hobot Xar) Qi', 'XHG', NULL);
INSERT INTO `ah_region` (`id`, `code`, `name`, `parent`, `level`, `order`, `name_en`, `short_name_en`, `data`) VALUES
(830, '152529', '正镶白旗', 69, 0, 0, 'Zhengxiangbai(Xulun Hobot Qagan)Qi', 'ZXB', NULL),
(831, '152530', '正蓝旗', 69, 0, 0, 'Zhenglan(Xulun Hoh)Qi', 'ZLM', NULL),
(832, '152531', '多伦县', 69, 0, 0, 'Duolun (Dolonnur)Xian', 'DLM', NULL),
(833, '152921', '阿拉善左旗', 70, 0, 0, 'Alxa Zuoqi', 'ALZ', NULL),
(834, '152922', '阿拉善右旗', 70, 0, 0, 'Alxa Youqi', 'ALY', NULL),
(835, '152923', '额济纳旗', 70, 0, 0, 'Ejin Qi', 'EJI', NULL),
(836, '210101', '市辖区', 71, 0, 0, 'Shixiaqu', '2', NULL),
(837, '210102', '和平区', 71, 0, 0, 'Heping Qu', 'HEP', '沈阳市'),
(838, '210103', '沈河区', 71, 0, 0, 'Shenhe Qu ', 'SHQ', NULL),
(839, '210104', '大东区', 71, 0, 0, 'Dadong Qu ', 'DDQ', NULL),
(840, '210105', '皇姑区', 71, 0, 0, 'Huanggu Qu', 'HGU', NULL),
(841, '210106', '铁西区', 71, 0, 0, 'Tiexi Qu', 'TXI', '沈阳市'),
(842, '210111', '苏家屯区', 71, 0, 0, 'Sujiatun Qu', 'SJT', NULL),
(843, '210112', '东陵区', 71, 0, 0, 'Dongling Qu ', 'DLQ', NULL),
(844, '210113', '沈北新区', 71, 0, 0, 'Xinchengzi Qu', '2', NULL),
(845, '210114', '于洪区', 71, 0, 0, 'Yuhong Qu ', 'YHQ', NULL),
(846, '210122', '辽中县', 71, 0, 0, 'Liaozhong Xian', 'LZL', NULL),
(847, '210123', '康平县', 71, 0, 0, 'Kangping Xian', 'KPG', NULL),
(848, '210124', '法库县', 71, 0, 0, 'Faku Xian', 'FKU', NULL),
(849, '210181', '新民市', 71, 0, 0, 'Xinmin Shi', 'XMS', NULL),
(850, '210201', '市辖区', 72, 0, 0, 'Shixiaqu', '2', NULL),
(851, '210202', '中山区', 72, 0, 0, 'Zhongshan Qu', 'ZSD', NULL),
(852, '210203', '西岗区', 72, 0, 0, 'Xigang Qu', 'XGD', NULL),
(853, '210204', '沙河口区', 72, 0, 0, 'Shahekou Qu', 'SHK', NULL),
(854, '210211', '甘井子区', 72, 0, 0, 'Ganjingzi Qu', 'GJZ', NULL),
(855, '210212', '旅顺口区', 72, 0, 0, 'Lvshunkou Qu ', 'LSK', NULL),
(856, '210213', '金州区', 72, 0, 0, 'Jinzhou Qu', 'JZH', NULL),
(857, '210224', '长海县', 72, 0, 0, 'Changhai Xian', 'CHX', NULL),
(858, '210281', '瓦房店市', 72, 0, 0, 'Wafangdian Shi', 'WFD', NULL),
(859, '210282', '普兰店市', 72, 0, 0, 'Pulandian Shi', 'PLD', NULL),
(860, '210283', '庄河市', 72, 0, 0, 'Zhuanghe Shi', 'ZHH', NULL),
(861, '210301', '市辖区', 73, 0, 0, 'Shixiaqu', '2', NULL),
(862, '210302', '铁东区', 73, 0, 0, 'Tiedong Qu ', 'TED', '鞍山市'),
(863, '210303', '铁西区', 73, 0, 0, 'Tiexi Qu', 'TXL', '鞍山市'),
(864, '210304', '立山区', 73, 0, 0, 'Lishan Qu', 'LAS', NULL),
(865, '210311', '千山区', 73, 0, 0, 'Qianshan Qu ', 'QSQ', NULL),
(866, '210321', '台安县', 73, 0, 0, 'Tai,an Xian', 'TAX', NULL),
(867, '210323', '岫岩满族自治县', 73, 0, 0, 'Xiuyan Manzu Zizhixian', 'XYL', NULL),
(868, '210381', '海城市', 73, 0, 0, 'Haicheng Shi', 'HCL', NULL),
(869, '210401', '市辖区', 74, 0, 0, 'Shixiaqu', '2', NULL),
(870, '210402', '新抚区', 74, 0, 0, 'Xinfu Qu', 'XFU', NULL),
(871, '210403', '东洲区', 74, 0, 0, 'Dongzhou Qu', '2', NULL),
(872, '210404', '望花区', 74, 0, 0, 'Wanghua Qu', 'WHF', NULL),
(873, '210411', '顺城区', 74, 0, 0, 'Shuncheng Qu', 'SCF', NULL),
(874, '210421', '抚顺县', 74, 0, 0, 'Fushun Xian', 'FSX', NULL),
(875, '210422', '新宾满族自治县', 74, 0, 0, 'Xinbinmanzuzizhi Xian', '2', NULL),
(876, '210423', '清原满族自治县', 74, 0, 0, 'Qingyuanmanzuzizhi Xian', '2', NULL),
(877, '210501', '市辖区', 75, 0, 0, 'Shixiaqu', '2', NULL),
(878, '210502', '平山区', 75, 0, 0, 'Pingshan Qu', 'PSN', NULL),
(879, '210503', '溪湖区', 75, 0, 0, 'Xihu Qu ', 'XHB', NULL),
(880, '210504', '明山区', 75, 0, 0, 'Mingshan Qu', 'MSB', NULL),
(881, '210505', '南芬区', 75, 0, 0, 'Nanfen Qu', 'NFQ', NULL),
(882, '210521', '本溪满族自治县', 75, 0, 0, 'Benxi Manzu Zizhixian', 'BXX', NULL),
(883, '210522', '桓仁满族自治县', 75, 0, 0, 'Huanren Manzu Zizhixian', 'HRL', NULL),
(884, '210601', '市辖区', 76, 0, 0, 'Shixiaqu', '2', NULL),
(885, '210602', '元宝区', 76, 0, 0, 'Yuanbao Qu', 'YBD', NULL),
(886, '210603', '振兴区', 76, 0, 0, 'Zhenxing Qu ', 'ZXQ', NULL),
(887, '210604', '振安区', 76, 0, 0, 'Zhen,an Qu', 'ZAQ', NULL),
(888, '210624', '宽甸满族自治县', 76, 0, 0, 'Kuandian Manzu Zizhixian', 'KDN', NULL),
(889, '210681', '东港市', 76, 0, 0, 'Donggang Shi', 'DGS', NULL),
(890, '210682', '凤城市', 76, 0, 0, 'Fengcheng Shi', 'FCL', NULL),
(891, '210701', '市辖区', 77, 0, 0, 'Shixiaqu', '2', NULL),
(892, '210702', '古塔区', 77, 0, 0, 'Guta Qu', 'GTQ', NULL),
(893, '210703', '凌河区', 77, 0, 0, 'Linghe Qu', 'LHF', NULL),
(894, '210711', '太和区', 77, 0, 0, 'Taihe Qu', '2', NULL),
(895, '210726', '黑山县', 77, 0, 0, 'Heishan Xian', 'HSL', NULL),
(896, '210727', '义县', 77, 0, 0, 'Yi Xian', 'YXL', NULL),
(897, '210781', '凌海市', 77, 0, 0, 'Linghai Shi ', 'LHL', NULL),
(898, '210782', '北镇市', 77, 0, 0, 'Beining Shi', '2', NULL),
(899, '210801', '市辖区', 78, 0, 0, 'Shixiaqu', '2', NULL),
(900, '210802', '站前区', 78, 0, 0, 'Zhanqian Qu', 'ZQQ', NULL),
(901, '210803', '西市区', 78, 0, 0, 'Xishi Qu', 'XII', NULL),
(902, '210804', '鲅鱼圈区', 78, 0, 0, 'Bayuquan Qu', 'BYQ', NULL),
(903, '210811', '老边区', 78, 0, 0, 'Laobian Qu', 'LOB', NULL),
(904, '210881', '盖州市', 78, 0, 0, 'Gaizhou Shi', 'GZU', NULL),
(905, '210882', '大石桥市', 78, 0, 0, 'Dashiqiao Shi', 'DSQ', NULL),
(906, '210901', '市辖区', 79, 0, 0, 'Shixiaqu', '2', NULL),
(907, '210902', '海州区', 79, 0, 0, 'Haizhou Qu', 'HZF', '阜新市'),
(908, '210903', '新邱区', 79, 0, 0, 'Xinqiu Qu', 'XQF', NULL),
(909, '210904', '太平区', 79, 0, 0, 'Taiping Qu', 'TPG', NULL),
(910, '210905', '清河门区', 79, 0, 0, 'Qinghemen Qu', 'QHM', NULL),
(911, '210911', '细河区', 79, 0, 0, 'Xihe Qu', 'XHO', NULL),
(912, '210921', '阜新蒙古族自治县', 79, 0, 0, 'Fuxin Mongolzu Zizhixian', 'FXX', NULL),
(913, '210922', '彰武县', 79, 0, 0, 'Zhangwu Xian', 'ZWU', NULL),
(914, '211001', '市辖区', 80, 0, 0, 'Shixiaqu', '2', NULL),
(915, '211002', '白塔区', 80, 0, 0, 'Baita Qu', 'BTL', NULL),
(916, '211003', '文圣区', 80, 0, 0, 'Wensheng Qu', 'WST', NULL),
(917, '211004', '宏伟区', 80, 0, 0, 'Hongwei Qu', 'HWQ', NULL),
(918, '211005', '弓长岭区', 80, 0, 0, 'Gongchangling Qu', 'GCL', NULL),
(919, '211011', '太子河区', 80, 0, 0, 'Taizihe Qu', 'TZH', NULL),
(920, '211021', '辽阳县', 80, 0, 0, 'Liaoyang Xian', 'LYX', NULL),
(921, '211081', '灯塔市', 80, 0, 0, 'Dengta Shi', 'DTL', NULL),
(922, '211101', '市辖区', 81, 0, 0, 'Shixiaqu', '2', NULL),
(923, '211102', '双台子区', 81, 0, 0, 'Shuangtaizi Qu', 'STZ', NULL),
(924, '211103', '兴隆台区', 81, 0, 0, 'Xinglongtai Qu', 'XLT', NULL),
(925, '211121', '大洼县', 81, 0, 0, 'Dawa Xian', 'DWA', NULL),
(926, '211122', '盘山县', 81, 0, 0, 'Panshan Xian', 'PNS', NULL),
(927, '211201', '市辖区', 82, 0, 0, 'Shixiaqu', '2', NULL),
(928, '211202', '银州区', 82, 0, 0, 'Yinzhou Qu', 'YZU', NULL),
(929, '211204', '清河区', 82, 0, 0, 'Qinghe Qu', 'QHQ', '铁岭市'),
(930, '211221', '铁岭县', 82, 0, 0, 'Tieling Xian', 'TLG', NULL),
(931, '211223', '西丰县', 82, 0, 0, 'Xifeng Xian', 'XIF', NULL),
(932, '211224', '昌图县', 82, 0, 0, 'Changtu Xian', 'CTX', NULL),
(933, '211281', '调兵山市', 82, 0, 0, 'Diaobingshan Shi', '2', NULL),
(934, '211282', '开原市', 82, 0, 0, 'Kaiyuan Shi', 'KYS', NULL),
(935, '211301', '市辖区', 83, 0, 0, 'Shixiaqu', '2', NULL),
(936, '211302', '双塔区', 83, 0, 0, 'Shuangta Qu', 'STQ', NULL),
(937, '211303', '龙城区', 83, 0, 0, 'Longcheng Qu', 'LCL', NULL),
(938, '211321', '朝阳县', 83, 0, 0, 'Chaoyang Xian', 'CYG', NULL),
(939, '211322', '建平县', 83, 0, 0, 'Jianping Xian', 'JPG', NULL),
(940, '211324', '喀喇沁左翼蒙古族自治县', 83, 0, 0, 'Harqin Zuoyi Mongolzu Zizhixian', 'HAZ', NULL),
(941, '211381', '北票市', 83, 0, 0, 'Beipiao Shi', 'BPO', NULL),
(942, '211382', '凌源市', 83, 0, 0, 'Lingyuan Shi', 'LYK', NULL),
(943, '211401', '市辖区', 84, 0, 0, 'Shixiaqu', '2', NULL),
(944, '211402', '连山区', 84, 0, 0, 'Lianshan Qu', 'LSQ', NULL),
(945, '211403', '龙港区', 84, 0, 0, 'Longgang Qu', 'LGD', NULL),
(946, '211404', '南票区', 84, 0, 0, 'Nanpiao Qu', 'NPQ', NULL),
(947, '211421', '绥中县', 84, 0, 0, 'Suizhong Xian', 'SZL', NULL),
(948, '211422', '建昌县', 84, 0, 0, 'Jianchang Xian', 'JCL', NULL),
(949, '211481', '兴城市', 84, 0, 0, 'Xingcheng Shi', 'XCL', NULL),
(950, '220101', '市辖区', 85, 0, 0, 'Shixiaqu', '2', NULL),
(951, '220102', '南关区', 85, 0, 0, 'Nanguan Qu', 'NGN', NULL),
(952, '220103', '宽城区', 85, 0, 0, 'Kuancheng Qu', 'KCQ', NULL),
(953, '220104', '朝阳区', 85, 0, 0, 'Chaoyang Qu ', 'CYC', '长春市'),
(954, '220105', '二道区', 85, 0, 0, 'Erdao Qu', 'EDQ', NULL),
(955, '220106', '绿园区', 85, 0, 0, 'Lvyuan Qu', 'LYQ', NULL),
(956, '220112', '双阳区', 85, 0, 0, 'Shuangyang Qu', 'SYQ', NULL),
(957, '220122', '农安县', 85, 0, 0, 'Nong,an Xian ', 'NAJ', NULL),
(958, '220181', '九台市', 85, 0, 0, 'Jiutai Shi', '2', NULL),
(959, '220182', '榆树市', 85, 0, 0, 'Yushu Shi', 'YSS', NULL),
(960, '220183', '德惠市', 85, 0, 0, 'Dehui Shi', 'DEH', NULL),
(961, '220201', '市辖区', 86, 0, 0, 'Shixiaqu', '2', NULL),
(962, '220202', '昌邑区', 86, 0, 0, 'Changyi Qu', 'CYI', NULL),
(963, '220203', '龙潭区', 86, 0, 0, 'Longtan Qu', 'LTQ', NULL),
(964, '220204', '船营区', 86, 0, 0, 'Chuanying Qu', 'CYJ', NULL),
(965, '220211', '丰满区', 86, 0, 0, 'Fengman Qu', 'FMQ', NULL),
(966, '220221', '永吉县', 86, 0, 0, 'Yongji Xian', 'YOJ', NULL),
(967, '220281', '蛟河市', 86, 0, 0, 'Jiaohe Shi', 'JHJ', NULL),
(968, '220282', '桦甸市', 86, 0, 0, 'Huadian Shi', 'HDJ', NULL),
(969, '220283', '舒兰市', 86, 0, 0, 'Shulan Shi', 'SLN', NULL),
(970, '220284', '磐石市', 86, 0, 0, 'Panshi Shi', 'PSI', NULL),
(971, '220301', '市辖区', 87, 0, 0, 'Shixiaqu', '2', NULL),
(972, '220302', '铁西区', 87, 0, 0, 'Tiexi Qu', 'TXS', '四平市'),
(973, '220303', '铁东区', 87, 0, 0, 'Tiedong Qu ', 'TDQ', '四平市'),
(974, '220322', '梨树县', 87, 0, 0, 'Lishu Xian', 'LSU', NULL),
(975, '220323', '伊通满族自治县', 87, 0, 0, 'Yitong Manzu Zizhixian', 'YTO', NULL),
(976, '220381', '公主岭市', 87, 0, 0, 'Gongzhuling Shi', 'GZL', NULL),
(977, '220382', '双辽市', 87, 0, 0, 'Shuangliao Shi', 'SLS', NULL),
(978, '220401', '市辖区', 88, 0, 0, 'Shixiaqu', '2', NULL),
(979, '220402', '龙山区', 88, 0, 0, 'Longshan Qu', 'LGS', NULL),
(980, '220403', '西安区', 88, 0, 0, 'Xi,an Qu', 'XAA', '辽源市'),
(981, '220421', '东丰县', 88, 0, 0, 'Dongfeng Xian', 'DGF', NULL),
(982, '220422', '东辽县', 88, 0, 0, 'Dongliao Xian ', 'DLX', NULL),
(983, '220501', '市辖区', 89, 0, 0, 'Shixiaqu', '2', NULL),
(984, '220502', '东昌区', 89, 0, 0, 'Dongchang Qu', 'DCT', NULL),
(985, '220503', '二道江区', 89, 0, 0, 'Erdaojiang Qu', 'EDJ', NULL),
(986, '220521', '通化县', 89, 0, 0, 'Tonghua Xian ', 'THX', NULL),
(987, '220523', '辉南县', 89, 0, 0, 'Huinan Xian ', 'HNA', NULL),
(988, '220524', '柳河县', 89, 0, 0, 'Liuhe Xian ', 'LHC', NULL),
(989, '220581', '梅河口市', 89, 0, 0, 'Meihekou Shi', 'MHK', NULL),
(990, '220582', '集安市', 89, 0, 0, 'Ji,an Shi', 'KNC', NULL),
(991, '220601', '市辖区', 90, 0, 0, 'Shixiaqu', '2', NULL),
(992, '220602', '八道江区', 90, 0, 0, 'Badaojiang Qu', 'BDJ', NULL),
(993, '220621', '抚松县', 90, 0, 0, 'Fusong Xian', 'FSG', NULL),
(994, '220622', '靖宇县', 90, 0, 0, 'Jingyu Xian', 'JYJ', NULL),
(995, '220623', '长白朝鲜族自治县', 90, 0, 0, 'Changbaichaoxianzuzizhi Xian', '2', NULL),
(996, '220605', '江源区', 90, 0, 0, 'Jiangyuan Xian', '2', NULL),
(997, '220681', '临江市', 90, 0, 0, 'Linjiang Shi', 'LIN', NULL),
(998, '220701', '市辖区', 91, 0, 0, 'Shixiaqu', '2', NULL),
(999, '220702', '宁江区', 91, 0, 0, 'Ningjiang Qu', 'NJA', NULL),
(1000, '220721', '前郭尔罗斯蒙古族自治县', 91, 0, 0, 'Qian Gorlos Mongolzu Zizhixian', 'QGO', NULL),
(1001, '220722', '长岭县', 91, 0, 0, 'Changling Xian', 'CLG', NULL),
(1002, '220723', '乾安县', 91, 0, 0, 'Qian,an Xian', 'QAJ', NULL),
(1003, '220724', '扶余县', 91, 0, 0, 'Fuyu Xian', 'FYU', NULL),
(1004, '220801', '市辖区', 92, 0, 0, 'Shixiaqu', '2', NULL),
(1005, '220802', '洮北区', 92, 0, 0, 'Taobei Qu', 'TBQ', NULL),
(1006, '220821', '镇赉县', 92, 0, 0, 'Zhenlai Xian', 'ZLA', NULL),
(1007, '220822', '通榆县', 92, 0, 0, 'Tongyu Xian', 'TGY', NULL),
(1008, '220881', '洮南市', 92, 0, 0, 'Taonan Shi', 'TNS', NULL),
(1009, '220882', '大安市', 92, 0, 0, 'Da,an Shi', 'DNA', NULL),
(1010, '222401', '延吉市', 93, 0, 0, 'Yanji Shi', 'YNJ', NULL),
(1011, '222402', '图们市', 93, 0, 0, 'Tumen Shi', 'TME', NULL),
(1012, '222403', '敦化市', 93, 0, 0, 'Dunhua Shi', 'DHS', NULL),
(1013, '222404', '珲春市', 93, 0, 0, 'Hunchun Shi', 'HUC', NULL),
(1014, '222405', '龙井市', 93, 0, 0, 'Longjing Shi', 'LJJ', NULL),
(1015, '222406', '和龙市', 93, 0, 0, 'Helong Shi', 'HEL', NULL),
(1016, '222424', '汪清县', 93, 0, 0, 'Wangqing Xian', 'WGQ', NULL),
(1017, '222426', '安图县', 93, 0, 0, 'Antu Xian', 'ATU', NULL),
(1018, '230101', '市辖区', 94, 0, 0, 'Shixiaqu', '2', NULL),
(1019, '230102', '道里区', 94, 0, 0, 'Daoli Qu', 'DLH', NULL),
(1020, '230103', '南岗区', 94, 0, 0, 'Nangang Qu', 'NGQ', NULL),
(1021, '230104', '道外区', 94, 0, 0, 'Daowai Qu', 'DWQ', NULL),
(1022, '230110', '香坊区', 94, 0, 0, 'Xiangfang Qu', '2', NULL),
(1024, '230108', '平房区', 94, 0, 0, 'Pingfang Qu', 'PFQ', NULL),
(1025, '230109', '松北区', 94, 0, 0, 'Songbei Qu', '2', NULL),
(1026, '230111', '呼兰区', 94, 0, 0, 'Hulan Qu', '2', NULL),
(1027, '230123', '依兰县', 94, 0, 0, 'Yilan Xian', 'YLH', NULL),
(1028, '230124', '方正县', 94, 0, 0, 'Fangzheng Xian', 'FZH', NULL),
(1029, '230125', '宾县', 94, 0, 0, 'Bin Xian', 'BNX', NULL),
(1030, '230126', '巴彦县', 94, 0, 0, 'Bayan Xian', 'BYH', NULL),
(1031, '230127', '木兰县', 94, 0, 0, 'Mulan Xian ', 'MUL', NULL),
(1032, '230128', '通河县', 94, 0, 0, 'Tonghe Xian', 'TOH', NULL),
(1033, '230129', '延寿县', 94, 0, 0, 'Yanshou Xian', 'YSU', NULL),
(1034, '230112', '阿城区', 94, 0, 0, 'Acheng Shi', '2', NULL),
(1035, '230182', '双城市', 94, 0, 0, 'Shuangcheng Shi', 'SCS', NULL),
(1036, '230183', '尚志市', 94, 0, 0, 'Shangzhi Shi', 'SZI', NULL),
(1037, '230184', '五常市', 94, 0, 0, 'Wuchang Shi', 'WCA', NULL),
(1038, '230201', '市辖区', 95, 0, 0, 'Shixiaqu', '2', NULL),
(1039, '230202', '龙沙区', 95, 0, 0, 'Longsha Qu', 'LQQ', NULL),
(1040, '230203', '建华区', 95, 0, 0, 'Jianhua Qu', 'JHQ', NULL),
(1041, '230204', '铁锋区', 95, 0, 0, 'Tiefeng Qu', '2', NULL),
(1042, '230205', '昂昂溪区', 95, 0, 0, 'Ang,angxi Qu', 'AAX', NULL),
(1043, '230206', '富拉尔基区', 95, 0, 0, 'Hulan Ergi Qu', 'HUE', NULL),
(1044, '230207', '碾子山区', 95, 0, 0, 'Nianzishan Qu', 'NZS', NULL),
(1045, '230208', '梅里斯达斡尔族区', 95, 0, 0, 'Meilisidawoerzu Qu', '2', NULL),
(1046, '230221', '龙江县', 95, 0, 0, 'Longjiang Xian', 'LGJ', NULL),
(1047, '230223', '依安县', 95, 0, 0, 'Yi,an Xian', 'YAN', NULL),
(1048, '230224', '泰来县', 95, 0, 0, 'Tailai Xian', 'TLA', NULL),
(1049, '230225', '甘南县', 95, 0, 0, 'Gannan Xian', 'GNX', NULL),
(1050, '230227', '富裕县', 95, 0, 0, 'Fuyu Xian', 'FYX', NULL),
(1051, '230229', '克山县', 95, 0, 0, 'Keshan Xian', 'KSN', NULL),
(1052, '230230', '克东县', 95, 0, 0, 'Kedong Xian', 'KDO', NULL),
(1053, '230231', '拜泉县', 95, 0, 0, 'Baiquan Xian', 'BQN', NULL),
(1054, '230281', '讷河市', 95, 0, 0, 'Nehe Shi', 'NEH', NULL),
(1055, '230301', '市辖区', 96, 0, 0, 'Shixiaqu', '2', NULL),
(1056, '230302', '鸡冠区', 96, 0, 0, 'Jiguan Qu', 'JGU', NULL),
(1057, '230303', '恒山区', 96, 0, 0, 'Hengshan Qu', 'HSD', NULL),
(1058, '230304', '滴道区', 96, 0, 0, 'Didao Qu', 'DDO', NULL),
(1059, '230305', '梨树区', 96, 0, 0, 'Lishu Qu', 'LJX', NULL),
(1060, '230306', '城子河区', 96, 0, 0, 'Chengzihe Qu', 'CZH', NULL),
(1061, '230307', '麻山区', 96, 0, 0, 'Mashan Qu', 'MSN', NULL),
(1062, '230321', '鸡东县', 96, 0, 0, 'Jidong Xian', 'JID', NULL),
(1063, '230381', '虎林市', 96, 0, 0, 'Hulin Shi', 'HUL', NULL),
(1064, '230382', '密山市', 96, 0, 0, 'Mishan Shi', 'MIS', NULL),
(1065, '230401', '市辖区', 97, 0, 0, 'Shixiaqu', '2', NULL),
(1066, '230402', '向阳区', 97, 0, 0, 'Xiangyang  Qu ', 'XYZ', '鹤岗市'),
(1067, '230403', '工农区', 97, 0, 0, 'Gongnong Qu', 'GNH', NULL),
(1068, '230404', '南山区', 97, 0, 0, 'Nanshan Qu', 'NSQ', '鹤岗市'),
(1069, '230405', '兴安区', 97, 0, 0, 'Xing,an Qu', 'XAH', NULL),
(1070, '230406', '东山区', 97, 0, 0, 'Dongshan Qu', 'DSA', NULL),
(1071, '230407', '兴山区', 97, 0, 0, 'Xingshan Qu', 'XSQ', NULL),
(1072, '230421', '萝北县', 97, 0, 0, 'Luobei Xian', 'LUB', NULL),
(1073, '230422', '绥滨县', 97, 0, 0, 'Suibin Xian', '2', NULL),
(1074, '230501', '市辖区', 98, 0, 0, 'Shixiaqu', '2', NULL),
(1075, '230502', '尖山区', 98, 0, 0, 'Jianshan Qu', 'JSQ', NULL),
(1076, '230503', '岭东区', 98, 0, 0, 'Lingdong Qu', 'LDQ', NULL),
(1077, '230505', '四方台区', 98, 0, 0, 'Sifangtai Qu', 'SFT', NULL),
(1078, '230506', '宝山区', 98, 0, 0, 'Baoshan Qu', 'BSQ', '双鸭山市'),
(1079, '230521', '集贤县', 98, 0, 0, 'Jixian Xian', 'JXH', NULL),
(1080, '230522', '友谊县', 98, 0, 0, 'Youyi Xian', 'YYI', NULL),
(1081, '230523', '宝清县', 98, 0, 0, 'Baoqing Xian', 'BQG', NULL),
(1082, '230524', '饶河县', 98, 0, 0, 'Raohe Xian ', 'ROH', NULL),
(1083, '230601', '市辖区', 99, 0, 0, 'Shixiaqu', '2', NULL),
(1084, '230602', '萨尔图区', 99, 0, 0, 'Sairt Qu', 'SAI', NULL),
(1085, '230603', '龙凤区', 99, 0, 0, 'Longfeng Qu', 'LFQ', NULL),
(1086, '230604', '让胡路区', 99, 0, 0, 'Ranghulu Qu', 'RHL', NULL),
(1087, '230605', '红岗区', 99, 0, 0, 'Honggang Qu', 'HGD', NULL),
(1088, '230606', '大同区', 99, 0, 0, 'Datong Qu', 'DHD', NULL),
(1089, '230621', '肇州县', 99, 0, 0, 'Zhaozhou Xian', 'ZAZ', NULL),
(1090, '230622', '肇源县', 99, 0, 0, 'Zhaoyuan Xian', 'ZYH', NULL),
(1091, '230623', '林甸县', 99, 0, 0, 'Lindian Xian ', 'LDN', NULL),
(1092, '230624', '杜尔伯特蒙古族自治县', 99, 0, 0, 'Dorbod Mongolzu Zizhixian', 'DOM', NULL),
(1093, '230701', '市辖区', 100, 0, 0, 'Shixiaqu', '2', NULL),
(1094, '230702', '伊春区', 100, 0, 0, 'Yichun Qu', 'YYC', NULL),
(1095, '230703', '南岔区', 100, 0, 0, 'Nancha Qu', 'NCQ', NULL),
(1096, '230704', '友好区', 100, 0, 0, 'Youhao Qu', 'YOH', NULL),
(1097, '230705', '西林区', 100, 0, 0, 'Xilin Qu', 'XIL', NULL),
(1098, '230706', '翠峦区', 100, 0, 0, 'Cuiluan Qu', 'CLN', NULL),
(1099, '230707', '新青区', 100, 0, 0, 'Xinqing Qu', 'XQQ', NULL),
(1100, '230708', '美溪区', 100, 0, 0, 'Meixi Qu', 'MXQ', NULL),
(1101, '230709', '金山屯区', 100, 0, 0, 'Jinshantun Qu', 'JST', NULL),
(1102, '230710', '五营区', 100, 0, 0, 'Wuying Qu', 'WYQ', NULL),
(1103, '230711', '乌马河区', 100, 0, 0, 'Wumahe Qu', 'WMH', NULL),
(1104, '230712', '汤旺河区', 100, 0, 0, 'Tangwanghe Qu', 'TWH', NULL),
(1105, '230713', '带岭区', 100, 0, 0, 'Dailing Qu', 'DLY', NULL),
(1106, '230714', '乌伊岭区', 100, 0, 0, 'Wuyiling Qu', 'WYL', NULL),
(1107, '230715', '红星区', 100, 0, 0, 'Hongxing Qu', 'HGX', NULL),
(1108, '230716', '上甘岭区', 100, 0, 0, 'Shangganling Qu', 'SGL', NULL),
(1109, '230722', '嘉荫县', 100, 0, 0, 'Jiayin Xian', '2', NULL),
(1110, '230781', '铁力市', 100, 0, 0, 'Tieli Shi', 'TEL', NULL),
(1111, '230801', '市辖区', 101, 0, 0, 'Shixiaqu', '2', NULL),
(1113, '230803', '向阳区', 101, 0, 0, 'Xiangyang  Qu ', 'XYQ', '佳木斯市'),
(1114, '230804', '前进区', 101, 0, 0, 'Qianjin Qu', 'QJQ', NULL),
(1115, '230805', '东风区', 101, 0, 0, 'Dongfeng Qu', 'DFQ', NULL),
(1116, '230811', '郊区', 101, 0, 0, 'Jiaoqu', 'JQJ', '佳木斯市'),
(1117, '230822', '桦南县', 101, 0, 0, 'Huanan Xian', 'HNH', NULL),
(1118, '230826', '桦川县', 101, 0, 0, 'Huachuan Xian', 'HCN', NULL),
(1119, '230828', '汤原县', 101, 0, 0, 'Tangyuan Xian', 'TYX', NULL),
(1120, '230833', '抚远县', 101, 0, 0, 'Fuyuan Xian', 'FUY', NULL),
(1121, '230881', '同江市', 101, 0, 0, 'Tongjiang Shi', 'TOJ', NULL),
(1122, '230882', '富锦市', 101, 0, 0, 'Fujin Shi', 'FUJ', NULL),
(1123, '230901', '市辖区', 102, 0, 0, 'Shixiaqu', '2', NULL),
(1124, '230902', '新兴区', 102, 0, 0, 'Xinxing Qu', 'XXQ', NULL),
(1125, '230903', '桃山区', 102, 0, 0, 'Taoshan Qu', 'TSC', NULL),
(1126, '230904', '茄子河区', 102, 0, 0, 'Qiezihe Qu', 'QZI', NULL),
(1127, '230921', '勃利县', 102, 0, 0, 'Boli Xian', 'BLI', NULL),
(1128, '231001', '市辖区', 103, 0, 0, 'Shixiaqu', '2', NULL),
(1129, '231002', '东安区', 103, 0, 0, 'Dong,an Qu', 'DGA', NULL),
(1130, '231003', '阳明区', 103, 0, 0, 'Yangming Qu', 'YMQ', NULL),
(1131, '231004', '爱民区', 103, 0, 0, 'Aimin Qu', 'AMQ', NULL),
(1132, '231005', '西安区', 103, 0, 0, 'Xi,an Qu', 'XAQ', '牡丹江市'),
(1133, '231024', '东宁县', 103, 0, 0, 'Dongning Xian', 'DON', NULL),
(1134, '231025', '林口县', 103, 0, 0, 'Linkou Xian', 'LKO', NULL),
(1135, '231081', '绥芬河市', 103, 0, 0, 'Suifenhe Shi', 'SFE', NULL),
(1136, '231083', '海林市', 103, 0, 0, 'Hailin Shi', 'HLS', NULL),
(1137, '231084', '宁安市', 103, 0, 0, 'Ning,an Shi', 'NAI', NULL),
(1138, '231085', '穆棱市', 103, 0, 0, 'Muling Shi', 'MLG', NULL),
(1139, '231101', '市辖区', 104, 0, 0, 'Shixiaqu', '2', NULL),
(1140, '231102', '爱辉区', 104, 0, 0, 'Aihui Qu', 'AHQ', NULL),
(1141, '231121', '嫩江县', 104, 0, 0, 'Nenjiang Xian', 'NJH', NULL),
(1142, '231123', '逊克县', 104, 0, 0, 'Xunke Xian', 'XUK', NULL),
(1143, '231124', '孙吴县', 104, 0, 0, 'Sunwu Xian', 'SUW', NULL),
(1144, '231181', '北安市', 104, 0, 0, 'Bei,an Shi', 'BAS', NULL),
(1145, '231182', '五大连池市', 104, 0, 0, 'Wudalianchi Shi', 'WDL', NULL),
(1146, '231201', '市辖区', 105, 0, 0, '1', '2', NULL),
(1147, '231202', '北林区', 105, 0, 0, 'Beilin Qu', '2', NULL),
(1148, '231221', '望奎县', 105, 0, 0, 'Wangkui Xian', '2', NULL),
(1149, '231222', '兰西县', 105, 0, 0, 'Lanxi Xian', '2', NULL),
(1150, '231223', '青冈县', 105, 0, 0, 'Qinggang Xian', '2', NULL),
(1151, '231224', '庆安县', 105, 0, 0, 'Qing,an Xian', '2', NULL),
(1152, '231225', '明水县', 105, 0, 0, 'Mingshui Xian', '2', NULL),
(1153, '231226', '绥棱县', 105, 0, 0, 'Suileng Xian', '2', NULL),
(1154, '231281', '安达市', 105, 0, 0, 'Anda Shi', '2', NULL),
(1155, '231282', '肇东市', 105, 0, 0, 'Zhaodong Shi', '2', NULL),
(1156, '231283', '海伦市', 105, 0, 0, 'Hailun Shi', '2', NULL),
(1157, '232721', '呼玛县', 106, 0, 0, 'Huma Xian', 'HUM', NULL),
(1158, '232722', '塔河县', 106, 0, 0, 'Tahe Xian', 'TAH', NULL),
(1159, '232723', '漠河县', 106, 0, 0, 'Mohe Xian', 'MOH', NULL),
(1160, '310101', '黄浦区', 107, 0, 0, 'Huangpu Qu', 'HGP', NULL),
(1161, '310103', '卢湾区', 107, 0, 0, 'Luwan Qu', 'LWN', NULL),
(1162, '310104', '徐汇区', 107, 0, 0, 'Xuhui Qu', 'XHI', NULL),
(1163, '310105', '长宁区', 107, 0, 0, 'Changning Qu', 'CNQ', NULL),
(1164, '310106', '静安区', 107, 0, 0, 'Jing,an Qu', 'JAQ', NULL),
(1165, '310107', '普陀区', 107, 0, 0, 'Putuo Qu', 'PTQ', '上海市'),
(1166, '310108', '闸北区', 107, 0, 0, 'Zhabei Qu', 'ZBE', NULL),
(1167, '310109', '虹口区', 107, 0, 0, 'Hongkou Qu', 'HKQ', NULL),
(1168, '310110', '杨浦区', 107, 0, 0, 'Yangpu Qu', 'YPU', NULL),
(1169, '310112', '闵行区', 107, 0, 0, 'Minhang Qu', 'MHQ', NULL),
(1170, '310113', '宝山区', 107, 0, 0, 'Baoshan Qu', 'BAO', '上海市'),
(1171, '310114', '嘉定区', 107, 0, 0, 'Jiading Qu', 'JDG', NULL),
(1172, '310115', '浦东新区', 107, 0, 0, 'Pudong Xinqu', 'PDX', NULL),
(1173, '310116', '金山区', 107, 0, 0, 'Jinshan Qu', 'JSH', NULL),
(1174, '310117', '松江区', 107, 0, 0, 'Songjiang Qu', 'SOJ', NULL),
(1175, '310118', '青浦区', 107, 0, 0, 'Qingpu  Qu', 'QPU', NULL),
(1177, '310120', '奉贤区', 107, 0, 0, 'Fengxian Qu', 'FXI', NULL),
(1178, '310230', '崇明县', 108, 0, 0, 'Chongming Xian', 'CMI', NULL),
(1179, '320101', '市辖区', 109, 0, 0, 'Shixiaqu', '2', NULL),
(1180, '320102', '玄武区', 109, 0, 0, 'Xuanwu Qu', 'XWU', NULL),
(1181, '320103', '白下区', 109, 0, 0, 'Baixia Qu', 'BXQ', NULL),
(1182, '320104', '秦淮区', 109, 0, 0, 'Qinhuai Qu', 'QHU', NULL),
(1183, '320105', '建邺区', 109, 0, 0, 'Jianye Qu', 'JYQ', NULL),
(1184, '320106', '鼓楼区', 109, 0, 0, 'Gulou Qu', 'GLQ', '南京市'),
(1185, '320107', '下关区', 109, 0, 0, 'Xiaguan Qu', 'XGQ', NULL),
(1186, '320111', '浦口区', 109, 0, 0, 'Pukou Qu', 'PKO', NULL),
(1187, '320113', '栖霞区', 109, 0, 0, 'Qixia Qu', 'QAX', NULL),
(1188, '320114', '雨花台区', 109, 0, 0, 'Yuhuatai Qu', 'YHT', NULL),
(1189, '320115', '江宁区', 109, 0, 0, 'Jiangning Qu', '2', NULL),
(1190, '320116', '六合区', 109, 0, 0, 'Liuhe Qu', '2', NULL),
(1191, '320124', '溧水县', 109, 0, 0, 'Lishui Xian', 'LIS', NULL),
(1192, '320125', '高淳县', 109, 0, 0, 'Gaochun Xian', 'GCN', NULL),
(1193, '320201', '市辖区', 110, 0, 0, 'Shixiaqu', '2', NULL),
(1194, '320202', '崇安区', 110, 0, 0, 'Chong,an Qu', 'CGA', NULL),
(1195, '320203', '南长区', 110, 0, 0, 'Nanchang Qu', 'NCG', NULL),
(1196, '320204', '北塘区', 110, 0, 0, 'Beitang Qu', 'BTQ', NULL),
(1197, '320205', '锡山区', 110, 0, 0, 'Xishan Qu', '2', NULL),
(1198, '320206', '惠山区', 110, 0, 0, 'Huishan Qu', '2', NULL),
(1199, '320211', '滨湖区', 110, 0, 0, 'Binhu Qu', '2', NULL),
(1200, '320281', '江阴市', 110, 0, 0, 'Jiangyin Shi', 'JIA', NULL),
(1201, '320282', '宜兴市', 110, 0, 0, 'Yixing Shi', 'YIX', NULL),
(1202, '320301', '市辖区', 111, 0, 0, 'Shixiaqu', '2', NULL),
(1203, '320302', '鼓楼区', 111, 0, 0, 'Gulou Qu', 'GLU', '徐州市'),
(1204, '320303', '云龙区', 111, 0, 0, 'Yunlong Qu', 'YLF', NULL),
(1206, '320305', '贾汪区', 111, 0, 0, 'Jiawang Qu', 'JWQ', NULL),
(1207, '320311', '泉山区', 111, 0, 0, 'Quanshan Qu', 'QSX', NULL),
(1208, '320321', '丰县', 111, 0, 0, 'Feng Xian', 'FXN', NULL),
(1209, '320322', '沛县', 111, 0, 0, 'Pei Xian', 'PEI', NULL),
(1210, '320312', '铜山区', 111, 0, 0, 'Tongshan Xian', '2', NULL),
(1211, '320324', '睢宁县', 111, 0, 0, 'Suining Xian', 'SNI', NULL),
(1212, '320381', '新沂市', 111, 0, 0, 'Xinyi Shi', 'XYW', NULL),
(1213, '320382', '邳州市', 111, 0, 0, 'Pizhou Shi', 'PZO', NULL),
(1214, '320401', '市辖区', 112, 0, 0, 'Shixiaqu', '2', NULL),
(1215, '320402', '天宁区', 112, 0, 0, 'Tianning Qu', 'TNQ', NULL),
(1216, '320404', '钟楼区', 112, 0, 0, 'Zhonglou Qu', 'ZLQ', NULL),
(1217, '320405', '戚墅堰区', 112, 0, 0, 'Qishuyan Qu', 'QSY', NULL),
(1218, '320411', '新北区', 112, 0, 0, 'Xinbei Qu', '2', NULL),
(1219, '320412', '武进区', 112, 0, 0, 'Wujin Qu', '2', NULL),
(1220, '320481', '溧阳市', 112, 0, 0, 'Liyang Shi', 'LYR', NULL),
(1221, '320482', '金坛市', 112, 0, 0, 'Jintan Shi', 'JTS', NULL),
(1222, '320501', '市辖区', 113, 0, 0, 'Shixiaqu', '2', NULL),
(1223, '320502', '沧浪区', 113, 0, 0, 'Canglang Qu', 'CLQ', NULL),
(1224, '320503', '平江区', 113, 0, 0, 'Pingjiang Qu', 'PJQ', NULL),
(1225, '320504', '金阊区', 113, 0, 0, 'Jinchang Qu', 'JCA', NULL),
(1226, '320505', '虎丘区', 113, 0, 0, 'Huqiu Qu', '2', NULL),
(1227, '320506', '吴中区', 113, 0, 0, 'Wuzhong Qu', '2', NULL),
(1228, '320507', '相城区', 113, 0, 0, 'Xiangcheng Qu', '2', NULL),
(1229, '320581', '常熟市', 113, 0, 0, 'Changshu Shi', 'CGS', NULL),
(1230, '320582', '张家港市', 113, 0, 0, 'Zhangjiagang Shi ', 'ZJG', NULL),
(1231, '320583', '昆山市', 113, 0, 0, 'Kunshan Shi', 'KUS', NULL),
(1232, '320584', '吴江市', 113, 0, 0, 'Wujiang Shi', 'WUJ', NULL),
(1233, '320585', '太仓市', 113, 0, 0, 'Taicang Shi', 'TAC', NULL),
(1234, '320601', '市辖区', 114, 0, 0, 'Shixiaqu', '2', NULL),
(1235, '320602', '崇川区', 114, 0, 0, 'Chongchuan Qu', 'CCQ', NULL),
(1236, '320611', '港闸区', 114, 0, 0, 'Gangzha Qu', 'GZQ', NULL),
(1237, '320621', '海安县', 114, 0, 0, 'Hai,an Xian', 'HIA', NULL),
(1238, '320623', '如东县', 114, 0, 0, 'Rudong Xian', 'RDG', NULL),
(1239, '320681', '启东市', 114, 0, 0, 'Qidong Shi', 'QID', NULL),
(1240, '320682', '如皋市', 114, 0, 0, 'Rugao Shi', 'RGO', NULL),
(1241, '320612', '通州区', 114, 0, 0, 'Tongzhou Shi', '2', '江苏省'),
(1242, '320684', '海门市', 114, 0, 0, 'Haimen Shi', 'HME', NULL),
(1243, '320701', '市辖区', 115, 0, 0, 'Shixiaqu', '2', NULL),
(1244, '320703', '连云区', 115, 0, 0, 'Lianyun Qu', 'LYB', NULL),
(1245, '320705', '新浦区', 115, 0, 0, 'Xinpu Qu', 'XPQ', NULL),
(1246, '320706', '海州区', 115, 0, 0, 'Haizhou Qu', 'HIZ', '连云港市'),
(1247, '320721', '赣榆县', 115, 0, 0, 'Ganyu Xian', 'GYU', NULL),
(1248, '320722', '东海县', 115, 0, 0, 'Donghai Xian', 'DHX', NULL),
(1249, '320723', '灌云县', 115, 0, 0, 'Guanyun Xian', 'GYS', NULL),
(1250, '320724', '灌南县', 115, 0, 0, 'Guannan Xian', 'GUN', NULL),
(1251, '320801', '市辖区', 116, 0, 0, 'Shixiaqu', '2', NULL),
(1252, '320802', '清河区', 116, 0, 0, 'Qinghe Qu', 'QHH', '淮安市'),
(1253, '320803', '楚州区', 116, 0, 0, 'Chuzhou Qu', '2', NULL),
(1254, '320804', '淮阴区', 116, 0, 0, 'Huaiyin Qu', '2', NULL),
(1255, '320811', '清浦区', 116, 0, 0, 'Qingpu Qu', 'QPQ', NULL),
(1256, '320826', '涟水县', 116, 0, 0, 'Lianshui Xian', 'LSI', NULL),
(1257, '320829', '洪泽县', 116, 0, 0, 'Hongze Xian', 'HGZ', NULL),
(1258, '320830', '盱眙县', 116, 0, 0, 'Xuyi Xian', 'XUY', NULL),
(1259, '320831', '金湖县', 116, 0, 0, 'Jinhu Xian', 'JHU', NULL),
(1260, '320901', '市辖区', 117, 0, 0, 'Shixiaqu', '2', NULL),
(1261, '320902', '亭湖区', 117, 0, 0, 'Tinghu Qu', '2', NULL),
(1262, '320903', '盐都区', 117, 0, 0, 'Yandu Qu', '2', NULL),
(1263, '320921', '响水县', 117, 0, 0, 'Xiangshui Xian', 'XSH', NULL),
(1264, '320922', '滨海县', 117, 0, 0, 'Binhai Xian', 'BHI', NULL),
(1265, '320923', '阜宁县', 117, 0, 0, 'Funing Xian', 'FNG', NULL),
(1266, '320924', '射阳县', 117, 0, 0, 'Sheyang Xian', 'SEY', NULL),
(1267, '320925', '建湖县', 117, 0, 0, 'Jianhu Xian', 'JIH', NULL),
(1268, '320981', '东台市', 117, 0, 0, 'Dongtai Shi', 'DTS', NULL),
(1269, '320982', '大丰市', 117, 0, 0, 'Dafeng Shi', 'DFS', NULL),
(1270, '321001', '市辖区', 118, 0, 0, 'Shixiaqu', '2', NULL),
(1271, '321002', '广陵区', 118, 0, 0, 'Guangling Qu', 'GGL', NULL),
(1272, '321003', '邗江区', 118, 0, 0, 'Hanjiang Qu', '2', NULL),
(1273, '321011', '维扬区', 118, 0, 0, 'Weiyang Qu', '2', NULL),
(1274, '321023', '宝应县', 118, 0, 0, 'Baoying Xian ', 'BYI', NULL),
(1275, '321081', '仪征市', 118, 0, 0, 'Yizheng Shi', 'YZE', NULL),
(1276, '321084', '高邮市', 118, 0, 0, 'Gaoyou Shi', 'GYO', NULL),
(1277, '321088', '江都市', 118, 0, 0, 'Jiangdu Shi', 'JDU', NULL),
(1278, '321101', '市辖区', 119, 0, 0, 'Shixiaqu', '2', NULL),
(1279, '321102', '京口区', 119, 0, 0, 'Jingkou Qu', '2', NULL),
(1280, '321111', '润州区', 119, 0, 0, 'Runzhou Qu', 'RZQ', NULL),
(1281, '321112', '丹徒区', 119, 0, 0, 'Dantu Qu', '2', NULL),
(1282, '321181', '丹阳市', 119, 0, 0, 'Danyang Xian', 'DNY', NULL),
(1283, '321182', '扬中市', 119, 0, 0, 'Yangzhong Shi', 'YZG', NULL),
(1284, '321183', '句容市', 119, 0, 0, 'Jurong Shi', 'JRG', NULL),
(1285, '321201', '市辖区', 120, 0, 0, 'Shixiaqu', '2', NULL),
(1286, '321202', '海陵区', 120, 0, 0, 'Hailing Qu', 'HIL', NULL),
(1287, '321203', '高港区', 120, 0, 0, 'Gaogang Qu', 'GGQ', NULL),
(1288, '321281', '兴化市', 120, 0, 0, 'Xinghua Shi', 'XHS', NULL),
(1289, '321282', '靖江市', 120, 0, 0, 'Jingjiang Shi', 'JGJ', NULL),
(1290, '321283', '泰兴市', 120, 0, 0, 'Taixing Shi', 'TXG', NULL),
(1291, '321284', '姜堰市', 120, 0, 0, 'Jiangyan Shi', 'JYS', NULL),
(1292, '321301', '市辖区', 121, 0, 0, 'Shixiaqu', '2', NULL),
(1293, '321302', '宿城区', 121, 0, 0, 'Sucheng Qu', 'SCE', NULL),
(1294, '321311', '宿豫区', 121, 0, 0, 'Suyu Qu', '2', NULL),
(1295, '321322', '沭阳县', 121, 0, 0, 'Shuyang Xian', 'SYD', NULL),
(1296, '321323', '泗阳县', 121, 0, 0, 'Siyang Xian ', 'SIY', NULL),
(1297, '321324', '泗洪县', 121, 0, 0, 'Sihong Xian', 'SIH', NULL),
(1298, '330101', '市辖区', 122, 0, 0, 'Shixiaqu', '2', NULL),
(1299, '330102', '上城区', 122, 0, 0, 'Shangcheng Qu', 'SCQ', NULL),
(1300, '330103', '下城区', 122, 0, 0, 'Xiacheng Qu', 'XCG', NULL),
(1301, '330104', '江干区', 122, 0, 0, 'Jianggan Qu', 'JGQ', NULL),
(1302, '330105', '拱墅区', 122, 0, 0, 'Gongshu Qu', 'GSQ', NULL),
(1303, '330106', '西湖区', 122, 0, 0, 'Xihu Qu ', 'XHU', '杭州市'),
(1304, '330108', '滨江区', 122, 0, 0, 'Binjiang Qu', 'BJQ', NULL),
(1305, '330109', '萧山区', 122, 0, 0, 'Xiaoshan Qu', '2', NULL),
(1306, '330110', '余杭区', 122, 0, 0, 'Yuhang Qu', '2', NULL),
(1307, '330122', '桐庐县', 122, 0, 0, 'Tonglu Xian', 'TLU', NULL),
(1308, '330127', '淳安县', 122, 0, 0, 'Chun,an Xian', 'CAZ', NULL),
(1309, '330182', '建德市', 122, 0, 0, 'Jiande Shi', 'JDS', NULL),
(1310, '330183', '富阳市', 122, 0, 0, 'Fuyang Shi', 'FYZ', NULL),
(1311, '330185', '临安市', 122, 0, 0, 'Lin,an Shi', 'LNA', NULL),
(1312, '330201', '市辖区', 123, 0, 0, 'Shixiaqu', '2', NULL),
(1313, '330203', '海曙区', 123, 0, 0, 'Haishu Qu', 'HNB', NULL),
(1314, '330204', '江东区', 123, 0, 0, 'Jiangdong Qu', 'JDO', NULL),
(1315, '330205', '江北区', 123, 0, 0, 'Jiangbei Qu', 'JBQ', '宁波市'),
(1316, '330206', '北仑区', 123, 0, 0, 'Beilun Qu', 'BLN', NULL),
(1317, '330211', '镇海区', 123, 0, 0, 'Zhenhai Qu', 'ZHF', NULL),
(1318, '330212', '鄞州区', 123, 0, 0, 'Yinzhou Qu', '2', NULL),
(1319, '330225', '象山县', 123, 0, 0, 'Xiangshan Xian', 'YSZ', NULL),
(1320, '330226', '宁海县', 123, 0, 0, 'Ninghai Xian', 'NHI', NULL),
(1321, '330281', '余姚市', 123, 0, 0, 'Yuyao Shi', 'YYO', NULL),
(1322, '330282', '慈溪市', 123, 0, 0, 'Cixi Shi', 'CXI', NULL),
(1323, '330283', '奉化市', 123, 0, 0, 'Fenghua Shi', 'FHU', NULL),
(1324, '330301', '市辖区', 124, 0, 0, 'Shixiaqu', '2', NULL),
(1325, '330302', '鹿城区', 124, 0, 0, 'Lucheng Qu', 'LUW', NULL),
(1326, '330303', '龙湾区', 124, 0, 0, 'Longwan Qu', 'LWW', NULL),
(1327, '330304', '瓯海区', 124, 0, 0, 'Ouhai Qu', 'OHQ', NULL),
(1328, '330322', '洞头县', 124, 0, 0, 'Dongtou Xian', 'DTO', NULL),
(1329, '330324', '永嘉县', 124, 0, 0, 'Yongjia Xian', 'YJX', NULL),
(1330, '330326', '平阳县', 124, 0, 0, 'Pingyang Xian', 'PYG', NULL),
(1331, '330327', '苍南县', 124, 0, 0, 'Cangnan Xian', 'CAN', NULL),
(1332, '330328', '文成县', 124, 0, 0, 'Wencheng Xian', 'WCZ', NULL),
(1333, '330329', '泰顺县', 124, 0, 0, 'Taishun Xian', 'TSZ', NULL),
(1334, '330381', '瑞安市', 124, 0, 0, 'Rui,an Xian', 'RAS', NULL),
(1335, '330382', '乐清市', 124, 0, 0, 'Yueqing Shi', 'YQZ', NULL),
(1336, '330401', '市辖区', 125, 0, 0, 'Shixiaqu', '2', NULL),
(1338, '330411', '秀洲区', 125, 0, 0, 'Xiuzhou Qu', '2', NULL),
(1339, '330421', '嘉善县', 125, 0, 0, 'Jiashan Xian', 'JSK', NULL),
(1340, '330424', '海盐县', 125, 0, 0, 'Haiyan Xian', 'HYN', NULL),
(1341, '330481', '海宁市', 125, 0, 0, 'Haining Shi', 'HNG', NULL),
(1342, '330482', '平湖市', 125, 0, 0, 'Pinghu Shi', 'PHU', NULL),
(1343, '330483', '桐乡市', 125, 0, 0, 'Tongxiang Shi', 'TXZ', NULL),
(1344, '330501', '市辖区', 126, 0, 0, 'Shixiaqu', '2', NULL),
(1345, '330502', '吴兴区', 126, 0, 0, 'Wuxing Qu', '2', NULL),
(1346, '330503', '南浔区', 126, 0, 0, 'Nanxun Qu', '2', NULL),
(1347, '330521', '德清县', 126, 0, 0, 'Deqing Xian', 'DQX', NULL),
(1348, '330522', '长兴县', 126, 0, 0, 'Changxing Xian', 'CXG', NULL),
(1349, '330523', '安吉县', 126, 0, 0, 'Anji Xian', 'AJI', NULL),
(1350, '330601', '市辖区', 127, 0, 0, 'Shixiaqu', '2', NULL),
(1351, '330602', '越城区', 127, 0, 0, 'Yuecheng Qu', 'YSX', NULL),
(1352, '330621', '绍兴县', 127, 0, 0, 'Shaoxing Xian', 'SXZ', NULL),
(1353, '330624', '新昌县', 127, 0, 0, 'Xinchang Xian', 'XCX', NULL),
(1354, '330681', '诸暨市', 127, 0, 0, 'Zhuji Shi', 'ZHJ', NULL),
(1355, '330682', '上虞市', 127, 0, 0, 'Shangyu Shi', 'SYZ', NULL),
(1356, '330683', '嵊州市', 127, 0, 0, 'Shengzhou Shi', 'SGZ', NULL),
(1357, '330701', '市辖区', 128, 0, 0, 'Shixiaqu', '2', NULL),
(1358, '330702', '婺城区', 128, 0, 0, 'Wucheng Qu', 'WCF', NULL),
(1359, '330703', '金东区', 128, 0, 0, 'Jindong Qu', '2', NULL),
(1360, '330723', '武义县', 128, 0, 0, 'Wuyi Xian', 'WYX', NULL),
(1361, '330726', '浦江县', 128, 0, 0, 'Pujiang Xian ', 'PJG', NULL),
(1362, '330727', '磐安县', 128, 0, 0, 'Pan,an Xian', 'PAX', NULL),
(1363, '330781', '兰溪市', 128, 0, 0, 'Lanxi Shi', 'LXZ', NULL),
(1364, '330782', '义乌市', 128, 0, 0, 'Yiwu Shi', 'YWS', NULL),
(1365, '330783', '东阳市', 128, 0, 0, 'Dongyang Shi', 'DGY', NULL),
(1366, '330784', '永康市', 128, 0, 0, 'Yongkang Shi', 'YKG', NULL),
(1367, '330801', '市辖区', 129, 0, 0, 'Shixiaqu', '2', NULL),
(1368, '330802', '柯城区', 129, 0, 0, 'Kecheng Qu', 'KEC', NULL),
(1369, '330803', '衢江区', 129, 0, 0, 'Qujiang Qu', '2', NULL),
(1370, '330822', '常山县', 129, 0, 0, 'Changshan Xian', 'CSN', NULL),
(1371, '330824', '开化县', 129, 0, 0, 'Kaihua Xian', 'KHU', NULL),
(1372, '330825', '龙游县', 129, 0, 0, 'Longyou Xian ', 'LGY', NULL),
(1373, '330881', '江山市', 129, 0, 0, 'Jiangshan Shi', 'JIS', NULL),
(1374, '330901', '市辖区', 130, 0, 0, 'Shixiaqu', '2', NULL),
(1375, '330902', '定海区', 130, 0, 0, 'Dinghai Qu', 'DHQ', NULL),
(1376, '330903', '普陀区', 130, 0, 0, 'Putuo Qu', 'PTO', '舟山市'),
(1377, '330921', '岱山县', 130, 0, 0, 'Daishan Xian', 'DSH', NULL),
(1378, '330922', '嵊泗县', 130, 0, 0, 'Shengsi Xian', 'SSZ', NULL),
(1379, '331001', '市辖区', 131, 0, 0, 'Shixiaqu', '2', NULL),
(1380, '331002', '椒江区', 131, 0, 0, 'Jiaojiang Qu', 'JJT', NULL),
(1381, '331003', '黄岩区', 131, 0, 0, 'Huangyan Qu', 'HYT', NULL),
(1382, '331004', '路桥区', 131, 0, 0, 'Luqiao Qu', 'LQT', NULL),
(1383, '331021', '玉环县', 131, 0, 0, 'Yuhuan Xian', 'YHN', NULL),
(1384, '331022', '三门县', 131, 0, 0, 'Sanmen Xian', 'SMN', NULL),
(1385, '331023', '天台县', 131, 0, 0, 'Tiantai Xian', 'TTA', NULL),
(1386, '331024', '仙居县', 131, 0, 0, 'Xianju Xian', 'XJU', NULL),
(1387, '331081', '温岭市', 131, 0, 0, 'Wenling Shi', 'WLS', NULL),
(1388, '331082', '临海市', 131, 0, 0, 'Linhai Shi', 'LHI', NULL),
(1389, '331101', '市辖区', 132, 0, 0, '1', '2', NULL),
(1390, '331102', '莲都区', 132, 0, 0, 'Liandu Qu', '2', NULL),
(1391, '331121', '青田县', 132, 0, 0, 'Qingtian Xian', '2', NULL),
(1392, '331122', '缙云县', 132, 0, 0, 'Jinyun Xian', '2', NULL),
(1393, '331123', '遂昌县', 132, 0, 0, 'Suichang Xian', '2', NULL),
(1394, '331124', '松阳县', 132, 0, 0, 'Songyang Xian', '2', NULL),
(1395, '331125', '云和县', 132, 0, 0, 'Yunhe Xian', '2', NULL),
(1396, '331126', '庆元县', 132, 0, 0, 'Qingyuan Xian', '2', NULL),
(1397, '331127', '景宁畲族自治县', 132, 0, 0, 'Jingning Shezu Zizhixian', '2', NULL),
(1398, '331181', '龙泉市', 132, 0, 0, 'Longquan Shi', '2', NULL),
(1399, '340101', '市辖区', 133, 0, 0, 'Shixiaqu', '2', NULL),
(1400, '340102', '瑶海区', 133, 0, 0, 'Yaohai Qu', '2', NULL),
(1401, '340103', '庐阳区', 133, 0, 0, 'Luyang Qu', '2', NULL),
(1402, '340104', '蜀山区', 133, 0, 0, 'Shushan Qu', '2', NULL),
(1403, '340111', '包河区', 133, 0, 0, 'Baohe Qu', '2', NULL),
(1404, '340121', '长丰县', 133, 0, 0, 'Changfeng Xian', 'CFG', NULL),
(1405, '340122', '肥东县', 133, 0, 0, 'Feidong Xian', 'FDO', NULL),
(1406, '340123', '肥西县', 133, 0, 0, 'Feixi Xian', 'FIX', NULL),
(1407, '340201', '市辖区', 134, 0, 0, 'Shixiaqu', '2', NULL),
(1408, '340202', '镜湖区', 134, 0, 0, 'Jinghu Qu', 'JHW', NULL),
(1409, '340208', '三山区', 134, 0, 0, 'Matang Qu', '2', NULL),
(1410, '340203', '弋江区', 134, 0, 0, 'Xinwu Qu', '2', NULL),
(1411, '340207', '鸠江区', 134, 0, 0, 'Jiujiang Qu', 'JJW', NULL),
(1412, '340221', '芜湖县', 134, 0, 0, 'Wuhu Xian', 'WHX', NULL),
(1413, '340222', '繁昌县', 134, 0, 0, 'Fanchang Xian', 'FCH', NULL),
(1414, '340223', '南陵县', 134, 0, 0, 'Nanling Xian', 'NLX', NULL),
(1415, '340301', '市辖区', 135, 0, 0, 'Shixiaqu', '2', NULL),
(1416, '340302', '龙子湖区', 135, 0, 0, 'Longzihu Qu', '2', NULL),
(1417, '340303', '蚌山区', 135, 0, 0, 'Bangshan Qu', '2', NULL),
(1418, '340304', '禹会区', 135, 0, 0, 'Yuhui Qu', '2', NULL),
(1419, '340311', '淮上区', 135, 0, 0, 'Huaishang Qu', '2', NULL),
(1420, '340321', '怀远县', 135, 0, 0, 'Huaiyuan Qu', 'HYW', NULL),
(1421, '340322', '五河县', 135, 0, 0, 'Wuhe Xian', 'WHE', NULL),
(1422, '340323', '固镇县', 135, 0, 0, 'Guzhen Xian', 'GZX', NULL),
(1423, '340401', '市辖区', 136, 0, 0, 'Shixiaqu', '2', NULL),
(1424, '340402', '大通区', 136, 0, 0, 'Datong Qu', 'DTQ', NULL),
(1425, '340403', '田家庵区', 136, 0, 0, 'Tianjia,an Qu', 'TJA', NULL),
(1426, '340404', '谢家集区', 136, 0, 0, 'Xiejiaji Qu', 'XJJ', NULL),
(1427, '340405', '八公山区', 136, 0, 0, 'Bagongshan Qu', 'BGS', NULL),
(1428, '340406', '潘集区', 136, 0, 0, 'Panji Qu', 'PJI', NULL),
(1429, '340421', '凤台县', 136, 0, 0, 'Fengtai Xian', '2', NULL),
(1430, '340501', '市辖区', 137, 0, 0, 'Shixiaqu', '2', NULL),
(1431, '340502', '金家庄区', 137, 0, 0, 'Jinjiazhuang Qu', 'JJZ', NULL),
(1432, '340503', '花山区', 137, 0, 0, 'Huashan Qu', 'HSM', NULL),
(1433, '340504', '雨山区', 137, 0, 0, 'Yushan Qu', 'YSQ', NULL),
(1434, '340521', '当涂县', 137, 0, 0, 'Dangtu Xian', 'DTU', NULL),
(1435, '340601', '市辖区', 138, 0, 0, 'Shixiaqu', '2', NULL),
(1436, '340602', '杜集区', 138, 0, 0, 'Duji Qu', 'DJQ', NULL),
(1437, '340603', '相山区', 138, 0, 0, 'Xiangshan Qu', 'XSA', NULL),
(1438, '340604', '烈山区', 138, 0, 0, 'Lieshan Qu', 'LHB', NULL),
(1439, '340621', '濉溪县', 138, 0, 0, 'Suixi Xian', 'SXW', NULL),
(1440, '340701', '市辖区', 139, 0, 0, 'Shixiaqu', '2', NULL),
(1441, '340702', '铜官山区', 139, 0, 0, 'Tongguanshan Qu', 'TGQ', NULL),
(1442, '340703', '狮子山区', 139, 0, 0, 'Shizishan Qu', 'SZN', NULL),
(1443, '340711', '郊区', 139, 0, 0, 'Jiaoqu', 'JTL', '铜陵市'),
(1444, '340721', '铜陵县', 139, 0, 0, 'Tongling Xian', 'TLX', NULL),
(1445, '340801', '市辖区', 140, 0, 0, 'Shixiaqu', '2', NULL),
(1446, '340802', '迎江区', 140, 0, 0, 'Yingjiang Qu', 'YJQ', NULL),
(1447, '340803', '大观区', 140, 0, 0, 'Daguan Qu', 'DGQ', NULL),
(1448, '340811', '宜秀区', 140, 0, 0, 'Yixiu Qu', '2', NULL),
(1449, '340822', '怀宁县', 140, 0, 0, 'Huaining Xian', 'HNW', NULL),
(1450, '340823', '枞阳县', 140, 0, 0, 'Zongyang Xian', 'ZYW', NULL),
(1451, '340824', '潜山县', 140, 0, 0, 'Qianshan Xian', 'QSW', NULL),
(1452, '340825', '太湖县', 140, 0, 0, 'Taihu Xian', 'THU', NULL),
(1453, '340826', '宿松县', 140, 0, 0, 'Susong Xian', 'SUS', NULL),
(1454, '340827', '望江县', 140, 0, 0, 'Wangjiang Xian', 'WJX', NULL),
(1455, '340828', '岳西县', 140, 0, 0, 'Yuexi Xian', 'YXW', NULL),
(1456, '340881', '桐城市', 140, 0, 0, 'Tongcheng Shi', 'TCW', NULL),
(1457, '341001', '市辖区', 141, 0, 0, 'Shixiaqu', '2', NULL),
(1458, '341002', '屯溪区', 141, 0, 0, 'Tunxi Qu', 'TXN', NULL),
(1459, '341003', '黄山区', 141, 0, 0, 'Huangshan Qu', 'HSK', NULL),
(1460, '341004', '徽州区', 141, 0, 0, 'Huizhou Qu', 'HZQ', NULL),
(1461, '341021', '歙县', 141, 0, 0, 'She Xian', 'SEX', NULL),
(1462, '341022', '休宁县', 141, 0, 0, 'Xiuning Xian', 'XUN', NULL),
(1463, '341023', '黟县', 141, 0, 0, 'Yi Xian', 'YIW', NULL),
(1464, '341024', '祁门县', 141, 0, 0, 'Qimen Xian', 'QMN', NULL),
(1465, '341101', '市辖区', 142, 0, 0, 'Shixiaqu', '2', NULL),
(1466, '341102', '琅琊区', 142, 0, 0, 'Langya Qu', 'LYU', NULL),
(1467, '341103', '南谯区', 142, 0, 0, 'Nanqiao Qu', 'NQQ', NULL),
(1468, '341122', '来安县', 142, 0, 0, 'Lai,an Xian', 'LAX', NULL),
(1469, '341124', '全椒县', 142, 0, 0, 'Quanjiao Xian', 'QJO', NULL),
(1470, '341125', '定远县', 142, 0, 0, 'Dingyuan Xian', 'DYW', NULL),
(1471, '341126', '凤阳县', 142, 0, 0, 'Fengyang Xian', 'FYG', NULL),
(1472, '341181', '天长市', 142, 0, 0, 'Tianchang Shi', 'TNC', NULL),
(1473, '341182', '明光市', 142, 0, 0, 'Mingguang Shi', 'MGG', NULL),
(1474, '341201', '市辖区', 143, 0, 0, 'Shixiaqu', '2', NULL),
(1475, '341202', '颍州区', 143, 0, 0, 'Yingzhou Qu', '2', NULL),
(1476, '341203', '颍东区', 143, 0, 0, 'Yingdong Qu', '2', NULL),
(1477, '341204', '颍泉区', 143, 0, 0, 'Yingquan Qu', '2', NULL),
(1478, '341221', '临泉县', 143, 0, 0, 'Linquan Xian', 'LQN', NULL),
(1479, '341222', '太和县', 143, 0, 0, 'Taihe Xian', 'TIH', NULL),
(1480, '341225', '阜南县', 143, 0, 0, 'Funan Xian', 'FNX', NULL),
(1481, '341226', '颍上县', 143, 0, 0, 'Yingshang Xian', '2', NULL),
(1482, '341282', '界首市', 143, 0, 0, 'Jieshou Shi', 'JSW', NULL),
(1483, '341301', '市辖区', 144, 0, 0, 'Shixiaqu', '2', NULL),
(1484, '341302', '埇桥区', 144, 0, 0, 'Yongqiao Qu', '2', NULL),
(1485, '341321', '砀山县', 144, 0, 0, 'Dangshan Xian', 'DSW', NULL),
(1486, '341322', '萧县', 144, 0, 0, 'Xiao Xian', 'XIO', NULL),
(1487, '341323', '灵璧县', 144, 0, 0, 'Lingbi Xian', 'LBI', NULL),
(1488, '341324', '泗县', 144, 0, 0, 'Si Xian ', 'SIX', NULL),
(1489, '341401', '市辖区', 145, 0, 0, '1', '2', NULL),
(1490, '341402', '居巢区', 145, 0, 0, 'Juchao Qu', '2', NULL),
(1491, '341421', '庐江县', 145, 0, 0, 'Lujiang Xian', '2', NULL),
(1492, '341422', '无为县', 145, 0, 0, 'Wuwei Xian', '2', NULL),
(1493, '341423', '含山县', 145, 0, 0, 'Hanshan Xian', '2', NULL),
(1494, '341424', '和县', 145, 0, 0, 'He Xian ', '2', NULL),
(1495, '341501', '市辖区', 146, 0, 0, '1', '2', NULL),
(1496, '341502', '金安区', 146, 0, 0, 'Jinan Qu', '2', NULL),
(1497, '341503', '裕安区', 146, 0, 0, 'Yuan Qu', '2', NULL),
(1498, '341521', '寿县', 146, 0, 0, 'Shou Xian', '2', NULL),
(1499, '341522', '霍邱县', 146, 0, 0, 'Huoqiu Xian', '2', NULL),
(1500, '341523', '舒城县', 146, 0, 0, 'Shucheng Xian', '2', NULL),
(1501, '341524', '金寨县', 146, 0, 0, 'Jingzhai Xian', '2', NULL),
(1502, '341525', '霍山县', 146, 0, 0, 'Huoshan Xian', '2', NULL),
(1503, '341601', '市辖区', 147, 0, 0, '1', '2', NULL),
(1504, '341602', '谯城区', 147, 0, 0, 'Qiaocheng Qu', '2', NULL),
(1505, '341621', '涡阳县', 147, 0, 0, 'Guoyang Xian', '2', NULL),
(1506, '341622', '蒙城县', 147, 0, 0, 'Mengcheng Xian', '2', NULL),
(1507, '341623', '利辛县', 147, 0, 0, 'Lixin Xian', '2', NULL),
(1508, '341701', '市辖区', 148, 0, 0, '1', '2', NULL),
(1509, '341702', '贵池区', 148, 0, 0, 'Guichi Qu', '2', NULL),
(1510, '341721', '东至县', 148, 0, 0, 'Dongzhi Xian', '2', NULL),
(1511, '341722', '石台县', 148, 0, 0, 'Shitai Xian', '2', NULL),
(1512, '341723', '青阳县', 148, 0, 0, 'Qingyang Xian', '2', NULL),
(1513, '341801', '市辖区', 149, 0, 0, '1', '2', NULL),
(1514, '341802', '宣州区', 149, 0, 0, 'Xuanzhou Qu', '2', NULL),
(1515, '341821', '郎溪县', 149, 0, 0, 'Langxi Xian', '2', NULL),
(1516, '341822', '广德县', 149, 0, 0, 'Guangde Xian', '2', NULL),
(1517, '341823', '泾县', 149, 0, 0, 'Jing Xian', '2', NULL),
(1518, '341824', '绩溪县', 149, 0, 0, 'Jixi Xian', '2', NULL),
(1519, '341825', '旌德县', 149, 0, 0, 'Jingde Xian', '2', NULL),
(1520, '341881', '宁国市', 149, 0, 0, 'Ningguo Shi', '2', NULL),
(1521, '350101', '市辖区', 150, 0, 0, 'Shixiaqu', '2', NULL),
(1522, '350102', '鼓楼区', 150, 0, 0, 'Gulou Qu', 'GLR', '福州市'),
(1523, '350103', '台江区', 150, 0, 0, 'Taijiang Qu', 'TJQ', NULL),
(1524, '350104', '仓山区', 150, 0, 0, 'Cangshan Qu', 'CSQ', NULL),
(1525, '350105', '马尾区', 150, 0, 0, 'Mawei Qu', 'MWQ', NULL),
(1526, '350111', '晋安区', 150, 0, 0, 'Jin,an Qu', 'JAF', NULL),
(1527, '350121', '闽侯县', 150, 0, 0, 'Minhou Qu', 'MHO', NULL),
(1528, '350122', '连江县', 150, 0, 0, 'Lianjiang Xian', 'LJF', '福州市'),
(1529, '350123', '罗源县', 150, 0, 0, 'Luoyuan Xian', 'LOY', NULL),
(1530, '350124', '闽清县', 150, 0, 0, 'Minqing Xian', 'MQG', NULL),
(1531, '350125', '永泰县', 150, 0, 0, 'Yongtai Xian', 'YTX', NULL),
(1532, '350128', '平潭县', 150, 0, 0, 'Pingtan Xian', 'PTN', NULL),
(1533, '350181', '福清市', 150, 0, 0, 'Fuqing Shi', 'FQS', NULL),
(1534, '350182', '长乐市', 150, 0, 0, 'Changle Shi', 'CLS', NULL),
(1535, '350201', '市辖区', 151, 0, 0, 'Shixiaqu', '2', NULL),
(1536, '350203', '思明区', 151, 0, 0, 'Siming Qu', 'SMQ', NULL),
(1537, '350205', '海沧区', 151, 0, 0, 'Haicang Qu', '2', NULL),
(1538, '350206', '湖里区', 151, 0, 0, 'Huli Qu', 'HLQ', NULL),
(1539, '350211', '集美区', 151, 0, 0, 'Jimei Qu', 'JMQ', NULL),
(1540, '350212', '同安区', 151, 0, 0, 'Tong,an Qu', 'TAQ', NULL),
(1541, '350213', '翔安区', 151, 0, 0, 'Xiangan Qu', '2', NULL),
(1542, '350301', '市辖区', 152, 0, 0, 'Shixiaqu', '2', NULL),
(1543, '350302', '城厢区', 152, 0, 0, 'Chengxiang Qu', 'CXP', NULL),
(1544, '350303', '涵江区', 152, 0, 0, 'Hanjiang Qu', 'HJQ', NULL),
(1545, '350304', '荔城区', 152, 0, 0, 'Licheng Qu', '2', NULL),
(1546, '350305', '秀屿区', 152, 0, 0, 'Xiuyu Qu', '2', NULL),
(1547, '350322', '仙游县', 152, 0, 0, 'Xianyou Xian', 'XYF', NULL),
(1548, '350401', '市辖区', 153, 0, 0, 'Shixiaqu', '2', NULL),
(1549, '350402', '梅列区', 153, 0, 0, 'Meilie Qu', 'MLQ', NULL),
(1550, '350403', '三元区', 153, 0, 0, 'Sanyuan Qu', 'SYB', NULL),
(1551, '350421', '明溪县', 153, 0, 0, 'Mingxi Xian', 'MXI', NULL),
(1552, '350423', '清流县', 153, 0, 0, 'Qingliu Xian', 'QLX', NULL),
(1553, '350424', '宁化县', 153, 0, 0, 'Ninghua Xian', 'NGH', NULL),
(1554, '350425', '大田县', 153, 0, 0, 'Datian Xian', 'DTM', NULL),
(1555, '350426', '尤溪县', 153, 0, 0, 'Youxi Xian', 'YXF', NULL),
(1556, '350427', '沙县', 153, 0, 0, 'Sha Xian', 'SAX', NULL),
(1557, '350428', '将乐县', 153, 0, 0, 'Jiangle Xian', 'JLE', NULL),
(1558, '350429', '泰宁县', 153, 0, 0, 'Taining Xian', 'TNG', NULL),
(1559, '350430', '建宁县', 153, 0, 0, 'Jianning Xian', 'JNF', NULL),
(1560, '350481', '永安市', 153, 0, 0, 'Yong,an Shi', 'YAF', NULL),
(1561, '350501', '市辖区', 154, 0, 0, 'Shixiaqu', '2', NULL),
(1562, '350502', '鲤城区', 154, 0, 0, 'Licheng Qu', 'LCQ', NULL),
(1563, '350503', '丰泽区', 154, 0, 0, 'Fengze Qu', 'FZE', NULL),
(1564, '350504', '洛江区', 154, 0, 0, 'Luojiang Qu', 'LJQ', NULL),
(1565, '350505', '泉港区', 154, 0, 0, 'Quangang Qu', '2', NULL),
(1566, '350521', '惠安县', 154, 0, 0, 'Hui,an Xian', 'HAF', NULL),
(1567, '350524', '安溪县', 154, 0, 0, 'Anxi Xian', 'ANX', NULL),
(1568, '350525', '永春县', 154, 0, 0, 'Yongchun Xian', 'YCM', NULL),
(1569, '350526', '德化县', 154, 0, 0, 'Dehua Xian', 'DHA', NULL),
(1570, '350527', '金门县', 154, 0, 0, 'Jinmen Xian', 'JME', '泉州市'),
(1571, '350581', '石狮市', 154, 0, 0, 'Shishi Shi', 'SHH', NULL),
(1572, '350582', '晋江市', 154, 0, 0, 'Jinjiang Shi', 'JJG', NULL),
(1573, '350583', '南安市', 154, 0, 0, 'Nan,an Shi', 'NAS', NULL),
(1574, '350601', '市辖区', 155, 0, 0, 'Shixiaqu', '2', NULL),
(1575, '350602', '芗城区', 155, 0, 0, 'Xiangcheng Qu', 'XZZ', NULL),
(1576, '350603', '龙文区', 155, 0, 0, 'Longwen Qu', 'LWZ', NULL),
(1577, '350622', '云霄县', 155, 0, 0, 'Yunxiao Xian', 'YXO', NULL),
(1578, '350623', '漳浦县', 155, 0, 0, 'Zhangpu Xian', 'ZPU', NULL),
(1579, '350624', '诏安县', 155, 0, 0, 'Zhao,an Xian', 'ZAF', NULL),
(1580, '350625', '长泰县', 155, 0, 0, 'Changtai Xian', 'CTA', NULL),
(1581, '350626', '东山县', 155, 0, 0, 'Dongshan Xian', 'DSN', NULL),
(1582, '350627', '南靖县', 155, 0, 0, 'Nanjing Xian', 'NJX', NULL),
(1583, '350628', '平和县', 155, 0, 0, 'Pinghe Xian', 'PHE', NULL),
(1584, '350629', '华安县', 155, 0, 0, 'Hua,an Xian', 'HAN', NULL),
(1585, '350681', '龙海市', 155, 0, 0, 'Longhai Shi', 'LHM', NULL),
(1586, '350701', '市辖区', 156, 0, 0, 'Shixiaqu', '2', NULL),
(1587, '350702', '延平区', 156, 0, 0, 'Yanping Qu', 'YPQ', NULL),
(1588, '350721', '顺昌县', 156, 0, 0, 'Shunchang Xian', 'SCG', NULL),
(1589, '350722', '浦城县', 156, 0, 0, 'Pucheng Xian', 'PCX', NULL),
(1590, '350723', '光泽县', 156, 0, 0, 'Guangze Xian', 'GZE', NULL),
(1591, '350724', '松溪县', 156, 0, 0, 'Songxi Xian', 'SOX', NULL),
(1592, '350725', '政和县', 156, 0, 0, 'Zhenghe Xian', 'ZGH', NULL),
(1593, '350781', '邵武市', 156, 0, 0, 'Shaowu Shi', 'SWU', NULL),
(1594, '350782', '武夷山市', 156, 0, 0, 'Wuyishan Shi', 'WUS', NULL),
(1595, '350783', '建瓯市', 156, 0, 0, 'Jian,ou Shi', 'JOU', NULL),
(1596, '350784', '建阳市', 156, 0, 0, 'Jianyang Shi', 'JNY', NULL),
(1597, '350801', '市辖区', 157, 0, 0, 'Shixiaqu', '2', NULL),
(1598, '350802', '新罗区', 157, 0, 0, 'Xinluo Qu', 'XNL', NULL),
(1599, '350821', '长汀县', 157, 0, 0, 'Changting Xian', 'CTG', NULL),
(1600, '350822', '永定县', 157, 0, 0, 'Yongding Xian', 'YDI', NULL),
(1601, '350823', '上杭县', 157, 0, 0, 'Shanghang Xian', 'SHF', NULL),
(1602, '350824', '武平县', 157, 0, 0, 'Wuping Xian', 'WPG', NULL),
(1603, '350825', '连城县', 157, 0, 0, 'Liancheng Xian', 'LCF', NULL),
(1604, '350881', '漳平市', 157, 0, 0, 'Zhangping Xian', 'ZGP', NULL),
(1605, '350901', '市辖区', 158, 0, 0, '1', '2', NULL),
(1606, '350902', '蕉城区', 158, 0, 0, 'Jiaocheng Qu', '2', NULL),
(1607, '350921', '霞浦县', 158, 0, 0, 'Xiapu Xian', '2', NULL),
(1608, '350922', '古田县', 158, 0, 0, 'Gutian Xian', '2', NULL),
(1609, '350923', '屏南县', 158, 0, 0, 'Pingnan Xian', '2', NULL),
(1610, '350924', '寿宁县', 158, 0, 0, 'Shouning Xian', '2', NULL),
(1611, '350925', '周宁县', 158, 0, 0, 'Zhouning Xian', '2', NULL),
(1612, '350926', '柘荣县', 158, 0, 0, 'Zherong Xian', '2', NULL),
(1613, '350981', '福安市', 158, 0, 0, 'Fu,an Shi', '2', NULL),
(1614, '350982', '福鼎市', 158, 0, 0, 'Fuding Shi', '2', NULL),
(1615, '360101', '市辖区', 159, 0, 0, 'Shixiaqu', '2', NULL),
(1616, '360102', '东湖区', 159, 0, 0, 'Donghu Qu', 'DHU', NULL),
(1617, '360103', '西湖区', 159, 0, 0, 'Xihu Qu ', 'XHQ', '南昌市'),
(1618, '360104', '青云谱区', 159, 0, 0, 'Qingyunpu Qu', 'QYP', NULL),
(1619, '360105', '湾里区', 159, 0, 0, 'Wanli Qu', 'WLI', NULL),
(1620, '360111', '青山湖区', 159, 0, 0, 'Qingshanhu Qu', '2', NULL),
(1621, '360121', '南昌县', 159, 0, 0, 'Nanchang Xian', 'NCA', NULL),
(1622, '360122', '新建县', 159, 0, 0, 'Xinjian Xian', 'XJN', NULL),
(1623, '360123', '安义县', 159, 0, 0, 'Anyi Xian', 'AYI', NULL),
(1624, '360124', '进贤县', 159, 0, 0, 'Jinxian Xian', 'JXX', NULL),
(1625, '360201', '市辖区', 160, 0, 0, 'Shixiaqu', '2', NULL),
(1626, '360202', '昌江区', 160, 0, 0, 'Changjiang Qu', 'CJG', NULL),
(1627, '360203', '珠山区', 160, 0, 0, 'Zhushan Qu', 'ZSJ', NULL),
(1628, '360222', '浮梁县', 160, 0, 0, 'Fuliang Xian', 'FLX', NULL),
(1629, '360281', '乐平市', 160, 0, 0, 'Leping Shi', 'LEP', NULL),
(1630, '360301', '市辖区', 161, 0, 0, 'Shixiaqu', '2', NULL),
(1631, '360302', '安源区', 161, 0, 0, 'Anyuan Qu', 'AYQ', NULL),
(1632, '360313', '湘东区', 161, 0, 0, 'Xiangdong Qu', 'XDG', NULL),
(1633, '360321', '莲花县', 161, 0, 0, 'Lianhua Xian', 'LHG', NULL),
(1634, '360322', '上栗县', 161, 0, 0, 'Shangli Xian', 'SLI', NULL),
(1635, '360323', '芦溪县', 161, 0, 0, 'Lixi Xian', 'LXP', NULL),
(1636, '360401', '市辖区', 162, 0, 0, 'Shixiaqu', '2', NULL),
(1637, '360402', '庐山区', 162, 0, 0, 'Lushan Qu', 'LSV', NULL),
(1638, '360403', '浔阳区', 162, 0, 0, 'Xunyang Qu', 'XYC', NULL),
(1639, '360421', '九江县', 162, 0, 0, 'Jiujiang Xian', 'JUJ', NULL),
(1640, '360423', '武宁县', 162, 0, 0, 'Wuning Xian', 'WUN', NULL),
(1641, '360424', '修水县', 162, 0, 0, 'Xiushui Xian', 'XSG', NULL),
(1642, '360425', '永修县', 162, 0, 0, 'Yongxiu Xian', 'YOX', NULL),
(1643, '360426', '德安县', 162, 0, 0, 'De,an Xian', 'DEA', NULL),
(1644, '360427', '星子县', 162, 0, 0, 'Xingzi Xian', 'XZI', NULL),
(1645, '360428', '都昌县', 162, 0, 0, 'Duchang Xian', 'DUC', NULL),
(1646, '360429', '湖口县', 162, 0, 0, 'Hukou Xian', 'HUK', NULL),
(1647, '360430', '彭泽县', 162, 0, 0, 'Pengze Xian', 'PZE', NULL),
(1648, '360481', '瑞昌市', 162, 0, 0, 'Ruichang Shi', 'RCG', NULL),
(1649, '360501', '市辖区', 163, 0, 0, 'Shixiaqu', '2', NULL),
(1650, '360502', '渝水区', 163, 0, 0, 'Yushui Qu', 'YSR', NULL),
(1651, '360521', '分宜县', 163, 0, 0, 'Fenyi Xian', 'FYI', NULL),
(1652, '360601', '市辖区', 164, 0, 0, 'Shixiaqu', '2', NULL),
(1653, '360602', '月湖区', 164, 0, 0, 'Yuehu Qu', 'YHY', NULL),
(1654, '360622', '余江县', 164, 0, 0, 'Yujiang Xian', 'YUJ', NULL);
INSERT INTO `ah_region` (`id`, `code`, `name`, `parent`, `level`, `order`, `name_en`, `short_name_en`, `data`) VALUES
(1655, '360681', '贵溪市', 164, 0, 0, 'Guixi Shi', 'GXS', NULL),
(1656, '360701', '市辖区', 165, 0, 0, 'Shixiaqu', '2', NULL),
(1657, '360702', '章贡区', 165, 0, 0, 'Zhanggong Qu', 'ZGG', NULL),
(1658, '360721', '赣县', 165, 0, 0, 'Gan Xian', 'GXN', NULL),
(1659, '360722', '信丰县', 165, 0, 0, 'Xinfeng Xian ', 'XNF', NULL),
(1660, '360723', '大余县', 165, 0, 0, 'Dayu Xian', 'DYX', NULL),
(1661, '360724', '上犹县', 165, 0, 0, 'Shangyou Xian', 'SYO', NULL),
(1662, '360725', '崇义县', 165, 0, 0, 'Chongyi Xian', 'CYX', NULL),
(1663, '360726', '安远县', 165, 0, 0, 'Anyuan Xian', 'AYN', NULL),
(1664, '360727', '龙南县', 165, 0, 0, 'Longnan Xian', 'LNX', NULL),
(1665, '360728', '定南县', 165, 0, 0, 'Dingnan Xian', 'DNN', NULL),
(1666, '360729', '全南县', 165, 0, 0, 'Quannan Xian', 'QNN', NULL),
(1667, '360730', '宁都县', 165, 0, 0, 'Ningdu Xian', 'NDU', NULL),
(1668, '360731', '于都县', 165, 0, 0, 'Yudu Xian', 'YUD', NULL),
(1669, '360732', '兴国县', 165, 0, 0, 'Xingguo Xian', 'XGG', NULL),
(1670, '360733', '会昌县', 165, 0, 0, 'Huichang Xian', 'HIC', NULL),
(1671, '360734', '寻乌县', 165, 0, 0, 'Xunwu Xian', 'XNW', NULL),
(1672, '360735', '石城县', 165, 0, 0, 'Shicheng Xian', 'SIC', NULL),
(1673, '360781', '瑞金市', 165, 0, 0, 'Ruijin Shi', 'RJS', NULL),
(1674, '360782', '南康市', 165, 0, 0, 'Nankang Shi', 'NNK', NULL),
(1675, '360801', '市辖区', 166, 0, 0, '1', '2', NULL),
(1676, '360802', '吉州区', 166, 0, 0, 'Jizhou Qu', '2', NULL),
(1677, '360803', '青原区', 166, 0, 0, 'Qingyuan Qu', '2', NULL),
(1678, '360821', '吉安县', 166, 0, 0, 'Ji,an Xian', '2', NULL),
(1679, '360822', '吉水县', 166, 0, 0, 'Jishui Xian', '2', NULL),
(1680, '360823', '峡江县', 166, 0, 0, 'Xiajiang Xian', '2', NULL),
(1681, '360824', '新干县', 166, 0, 0, 'Xingan Xian', '2', NULL),
(1682, '360825', '永丰县', 166, 0, 0, 'Yongfeng Xian', '2', NULL),
(1683, '360826', '泰和县', 166, 0, 0, 'Taihe Xian', '2', NULL),
(1684, '360827', '遂川县', 166, 0, 0, 'Suichuan Xian', '2', NULL),
(1685, '360828', '万安县', 166, 0, 0, 'Wan,an Xian', '2', NULL),
(1686, '360829', '安福县', 166, 0, 0, 'Anfu Xian', '2', NULL),
(1687, '360830', '永新县', 166, 0, 0, 'Yongxin Xian ', '2', NULL),
(1688, '360881', '井冈山市', 166, 0, 0, 'Jinggangshan Shi', '2', NULL),
(1689, '360901', '市辖区', 167, 0, 0, '1', '2', NULL),
(1690, '360902', '袁州区', 167, 0, 0, 'Yuanzhou Qu', '2', NULL),
(1691, '360921', '奉新县', 167, 0, 0, 'Fengxin Xian', '2', NULL),
(1692, '360922', '万载县', 167, 0, 0, 'Wanzai Xian', '2', NULL),
(1693, '360923', '上高县', 167, 0, 0, 'Shanggao Xian', '2', NULL),
(1694, '360924', '宜丰县', 167, 0, 0, 'Yifeng Xian', '2', NULL),
(1695, '360925', '靖安县', 167, 0, 0, 'Jing,an Xian', '2', NULL),
(1696, '360926', '铜鼓县', 167, 0, 0, 'Tonggu Xian', '2', NULL),
(1697, '360981', '丰城市', 167, 0, 0, 'Fengcheng Shi', '2', NULL),
(1698, '360982', '樟树市', 167, 0, 0, 'Zhangshu Shi', '2', NULL),
(1699, '360983', '高安市', 167, 0, 0, 'Gao,an Shi', '2', NULL),
(1700, '361001', '市辖区', 168, 0, 0, '1', '2', NULL),
(1701, '361002', '临川区', 168, 0, 0, 'Linchuan Qu', '2', NULL),
(1702, '361021', '南城县', 168, 0, 0, 'Nancheng Xian', '2', NULL),
(1703, '361022', '黎川县', 168, 0, 0, 'Lichuan Xian', '2', NULL),
(1704, '361023', '南丰县', 168, 0, 0, 'Nanfeng Xian', '2', NULL),
(1705, '361024', '崇仁县', 168, 0, 0, 'Chongren Xian', '2', NULL),
(1706, '361025', '乐安县', 168, 0, 0, 'Le,an Xian', '2', NULL),
(1707, '361026', '宜黄县', 168, 0, 0, 'Yihuang Xian', '2', NULL),
(1708, '361027', '金溪县', 168, 0, 0, 'Jinxi Xian', '2', NULL),
(1709, '361028', '资溪县', 168, 0, 0, 'Zixi Xian', '2', NULL),
(1710, '361029', '东乡县', 168, 0, 0, 'Dongxiang Xian', '2', NULL),
(1711, '361030', '广昌县', 168, 0, 0, 'Guangchang Xian', '2', NULL),
(1712, '361101', '市辖区', 169, 0, 0, '1', '2', NULL),
(1713, '361102', '信州区', 169, 0, 0, 'Xinzhou Qu', 'XZQ', NULL),
(1714, '361121', '上饶县', 169, 0, 0, 'Shangrao Xian ', '2', NULL),
(1715, '361122', '广丰县', 169, 0, 0, 'Guangfeng Xian', '2', NULL),
(1716, '361123', '玉山县', 169, 0, 0, 'Yushan Xian', '2', NULL),
(1717, '361124', '铅山县', 169, 0, 0, 'Qianshan Xian', '2', NULL),
(1718, '361125', '横峰县', 169, 0, 0, 'Hengfeng Xian', '2', NULL),
(1719, '361126', '弋阳县', 169, 0, 0, 'Yiyang Xian', '2', NULL),
(1720, '361127', '余干县', 169, 0, 0, 'Yugan Xian', '2', NULL),
(1721, '361128', '鄱阳县', 169, 0, 0, 'Poyang Xian', 'PYX', NULL),
(1722, '361129', '万年县', 169, 0, 0, 'Wannian Xian', '2', NULL),
(1723, '361130', '婺源县', 169, 0, 0, 'Wuyuan Xian', '2', NULL),
(1724, '361181', '德兴市', 169, 0, 0, 'Dexing Shi', '2', NULL),
(1725, '370101', '市辖区', 170, 0, 0, 'Shixiaqu', '2', NULL),
(1726, '370102', '历下区', 170, 0, 0, 'Lixia Qu', 'LXQ', NULL),
(1727, '370101', '市中区', 170, 0, 0, 'Shizhong Qu', 'SZQ', '济南市'),
(1728, '370104', '槐荫区', 170, 0, 0, 'Huaiyin Qu', 'HYF', NULL),
(1729, '370105', '天桥区', 170, 0, 0, 'Tianqiao Qu', 'TQQ', NULL),
(1730, '370112', '历城区', 170, 0, 0, 'Licheng Qu', 'LCZ', NULL),
(1731, '370113', '长清区', 170, 0, 0, 'Changqing Qu', '2', NULL),
(1732, '370124', '平阴县', 170, 0, 0, 'Pingyin Xian', 'PYL', NULL),
(1733, '370125', '济阳县', 170, 0, 0, 'Jiyang Xian', 'JYL', NULL),
(1734, '370126', '商河县', 170, 0, 0, 'Shanghe Xian', 'SGH', NULL),
(1735, '370181', '章丘市', 170, 0, 0, 'Zhangqiu Shi', 'ZQS', NULL),
(1736, '370201', '市辖区', 171, 0, 0, 'Shixiaqu', '2', NULL),
(1737, '370202', '市南区', 171, 0, 0, 'Shinan Qu', 'SNQ', NULL),
(1738, '370203', '市北区', 171, 0, 0, 'Shibei Qu', 'SBQ', NULL),
(1739, '370205', '四方区', 171, 0, 0, 'Sifang Qu', 'SFQ', NULL),
(1740, '370211', '黄岛区', 171, 0, 0, 'Huangdao Qu', 'HDO', NULL),
(1741, '370212', '崂山区', 171, 0, 0, 'Laoshan Qu', 'LQD', NULL),
(1742, '370213', '李沧区', 171, 0, 0, 'Licang Qu', 'LCT', NULL),
(1743, '370214', '城阳区', 171, 0, 0, 'Chengyang Qu', 'CEY', NULL),
(1744, '370281', '胶州市', 171, 0, 0, 'Jiaozhou Shi', 'JZS', NULL),
(1745, '370282', '即墨市', 171, 0, 0, 'Jimo Shi', 'JMO', NULL),
(1746, '370283', '平度市', 171, 0, 0, 'Pingdu Shi', 'PDU', NULL),
(1747, '370284', '胶南市', 171, 0, 0, 'Jiaonan Shi', 'JNS', NULL),
(1748, '370285', '莱西市', 171, 0, 0, 'Laixi Shi', 'LXE', NULL),
(1749, '370301', '市辖区', 172, 0, 0, 'Shixiaqu', '2', NULL),
(1750, '370302', '淄川区', 172, 0, 0, 'Zichuan Qu', 'ZCQ', NULL),
(1751, '370303', '张店区', 172, 0, 0, 'Zhangdian Qu', 'ZDQ', NULL),
(1752, '370304', '博山区', 172, 0, 0, 'Boshan Qu', 'BSZ', NULL),
(1753, '370305', '临淄区', 172, 0, 0, 'Linzi Qu', 'LZQ', NULL),
(1754, '370306', '周村区', 172, 0, 0, 'Zhoucun Qu', 'ZCN', NULL),
(1755, '370321', '桓台县', 172, 0, 0, 'Huantai Xian', 'HTL', NULL),
(1756, '370322', '高青县', 172, 0, 0, 'Gaoqing Xian', 'GQG', NULL),
(1757, '370323', '沂源县', 172, 0, 0, 'Yiyuan Xian', 'YIY', NULL),
(1758, '370401', '市辖区', 173, 0, 0, 'Shixiaqu', '2', NULL),
(1759, '370402', '市中区', 173, 0, 0, 'Shizhong Qu', 'SZZ', '枣庄市'),
(1760, '370403', '薛城区', 173, 0, 0, 'Xuecheng Qu', 'XEC', NULL),
(1761, '370404', '峄城区', 173, 0, 0, 'Yicheng Qu', 'YZZ', NULL),
(1762, '370405', '台儿庄区', 173, 0, 0, 'Tai,erzhuang Qu', 'TEZ', NULL),
(1763, '370406', '山亭区', 173, 0, 0, 'Shanting Qu', 'STG', NULL),
(1764, '370481', '滕州市', 173, 0, 0, 'Tengzhou Shi', 'TZO', NULL),
(1765, '370501', '市辖区', 174, 0, 0, 'Shixiaqu', '2', NULL),
(1766, '370502', '东营区', 174, 0, 0, 'Dongying Qu', 'DYQ', NULL),
(1767, '370503', '河口区', 174, 0, 0, 'Hekou Qu', 'HKO', NULL),
(1768, '370521', '垦利县', 174, 0, 0, 'Kenli Xian', 'KLI', NULL),
(1769, '370522', '利津县', 174, 0, 0, 'Lijin Xian', 'LJN', NULL),
(1770, '370523', '广饶县', 174, 0, 0, 'Guangrao Xian ', 'GRO', NULL),
(1771, '370601', '市辖区', 175, 0, 0, 'Shixiaqu', '2', NULL),
(1772, '370602', '芝罘区', 175, 0, 0, 'Zhifu Qu', 'ZFQ', NULL),
(1773, '370611', '福山区', 175, 0, 0, 'Fushan Qu', 'FUS', NULL),
(1774, '370612', '牟平区', 175, 0, 0, 'Muping Qu', 'MPQ', NULL),
(1775, '370613', '莱山区', 175, 0, 0, 'Laishan Qu', 'LYT', NULL),
(1776, '370634', '长岛县', 175, 0, 0, 'Changdao Xian', 'CDO', NULL),
(1777, '370681', '龙口市', 175, 0, 0, 'Longkou Shi', 'LKU', NULL),
(1778, '370682', '莱阳市', 175, 0, 0, 'Laiyang Shi', 'LYD', NULL),
(1779, '370683', '莱州市', 175, 0, 0, 'Laizhou Shi', 'LZG', NULL),
(1780, '370684', '蓬莱市', 175, 0, 0, 'Penglai Shi', 'PLI', NULL),
(1781, '370685', '招远市', 175, 0, 0, 'Zhaoyuan Shi', 'ZYL', NULL),
(1782, '370686', '栖霞市', 175, 0, 0, 'Qixia Shi', 'QXS', NULL),
(1783, '370687', '海阳市', 175, 0, 0, 'Haiyang Shi', 'HYL', NULL),
(1784, '370701', '市辖区', 176, 0, 0, 'Shixiaqu', '2', NULL),
(1785, '370702', '潍城区', 176, 0, 0, 'Weicheng Qu', 'WCG', NULL),
(1786, '370703', '寒亭区', 176, 0, 0, 'Hanting Qu', 'HNT', NULL),
(1787, '370704', '坊子区', 176, 0, 0, 'Fangzi Qu', 'FZQ', NULL),
(1788, '370705', '奎文区', 176, 0, 0, 'Kuiwen Qu', 'KWN', NULL),
(1789, '370724', '临朐县', 176, 0, 0, 'Linqu Xian', 'LNQ', NULL),
(1790, '370725', '昌乐县', 176, 0, 0, 'Changle Xian', 'CLX', NULL),
(1791, '370781', '青州市', 176, 0, 0, 'Qingzhou Shi', 'QGZ', NULL),
(1792, '370782', '诸城市', 176, 0, 0, 'Zhucheng Shi', 'ZCL', NULL),
(1793, '370783', '寿光市', 176, 0, 0, 'Shouguang Shi', 'SGG', NULL),
(1794, '370784', '安丘市', 176, 0, 0, 'Anqiu Shi', 'AQU', NULL),
(1795, '370785', '高密市', 176, 0, 0, 'Gaomi Shi', 'GMI', NULL),
(1796, '370786', '昌邑市', 176, 0, 0, 'Changyi Shi', 'CYL', NULL),
(1797, '370801', '市辖区', 177, 0, 0, 'Shixiaqu', '2', NULL),
(1798, '370802', '市中区', 177, 0, 0, 'Shizhong Qu', 'SZU', '济宁市'),
(1799, '370811', '任城区', 177, 0, 0, 'Rencheng Qu', 'RCQ', NULL),
(1800, '370826', '微山县', 177, 0, 0, 'Weishan Xian', 'WSA', NULL),
(1801, '370827', '鱼台县', 177, 0, 0, 'Yutai Xian', 'YTL', NULL),
(1802, '370828', '金乡县', 177, 0, 0, 'Jinxiang Xian', 'JXG', NULL),
(1803, '370829', '嘉祥县', 177, 0, 0, 'Jiaxiang Xian', 'JXP', NULL),
(1804, '370830', '汶上县', 177, 0, 0, 'Wenshang Xian', 'WNS', NULL),
(1805, '370831', '泗水县', 177, 0, 0, 'Sishui Xian', 'SSH', NULL),
(1806, '370832', '梁山县', 177, 0, 0, 'Liangshan Xian', 'LSN', NULL),
(1807, '370881', '曲阜市', 177, 0, 0, 'Qufu Shi', 'QFU', NULL),
(1808, '370882', '兖州市', 177, 0, 0, 'Yanzhou Shi', 'YZL', NULL),
(1809, '370883', '邹城市', 177, 0, 0, 'Zoucheng Shi', 'ZCG', NULL),
(1810, '370901', '市辖区', 178, 0, 0, 'Shixiaqu', '2', NULL),
(1811, '370902', '泰山区', 178, 0, 0, 'Taishan Qu', 'TSQ', NULL),
(1812, '370911', '岱岳区', 178, 0, 0, 'Daiyue Qu', '2', NULL),
(1813, '370921', '宁阳县', 178, 0, 0, 'Ningyang Xian', 'NGY', NULL),
(1814, '370923', '东平县', 178, 0, 0, 'Dongping Xian', 'DPG', NULL),
(1815, '370982', '新泰市', 178, 0, 0, 'Xintai Shi', 'XTA', NULL),
(1816, '370983', '肥城市', 178, 0, 0, 'Feicheng Shi', 'FEC', NULL),
(1817, '371001', '市辖区', 179, 0, 0, 'Shixiaqu', '2', NULL),
(1818, '371002', '环翠区', 179, 0, 0, 'Huancui Qu', 'HNC', NULL),
(1819, '371081', '文登市', 179, 0, 0, 'Wendeng Shi', 'WDS', NULL),
(1820, '371082', '荣成市', 179, 0, 0, 'Rongcheng Shi', '2', NULL),
(1821, '371083', '乳山市', 179, 0, 0, 'Rushan Shi', 'RSN', NULL),
(1822, '371101', '市辖区', 180, 0, 0, 'Shixiaqu', '2', NULL),
(1823, '371102', '东港区', 180, 0, 0, 'Donggang Qu', 'DGR', NULL),
(1824, '371103', '岚山区', 180, 0, 0, 'Lanshan Qu', '2', NULL),
(1825, '371121', '五莲县', 180, 0, 0, 'Wulian Xian', 'WLN', NULL),
(1826, '371122', '莒县', 180, 0, 0, 'Ju Xian', 'JUX', NULL),
(1827, '371201', '市辖区', 181, 0, 0, 'Shixiaqu', '2', NULL),
(1828, '371202', '莱城区', 181, 0, 0, 'Laicheng Qu', 'LAC', NULL),
(1829, '371203', '钢城区', 181, 0, 0, 'Gangcheng Qu', 'GCQ', NULL),
(1830, '371301', '市辖区', 182, 0, 0, 'Shixiaqu', '2', NULL),
(1831, '371302', '兰山区', 182, 0, 0, 'Lanshan Qu', 'LLS', NULL),
(1832, '371311', '罗庄区', 182, 0, 0, 'Luozhuang Qu', 'LZU', NULL),
(1833, '371301', '河东区', 182, 0, 0, 'Hedong Qu', '2', '临沂市'),
(1834, '371321', '沂南县', 182, 0, 0, 'Yinan Xian', 'YNN', NULL),
(1835, '371322', '郯城县', 182, 0, 0, 'Tancheng Xian', 'TCE', NULL),
(1836, '371323', '沂水县', 182, 0, 0, 'Yishui Xian', 'YIS', NULL),
(1837, '371324', '苍山县', 182, 0, 0, 'Cangshan Xian', 'CSH', NULL),
(1838, '371325', '费县', 182, 0, 0, 'Fei Xian', 'FEI', NULL),
(1839, '371326', '平邑县', 182, 0, 0, 'Pingyi Xian', 'PYI', NULL),
(1840, '371327', '莒南县', 182, 0, 0, 'Junan Xian', 'JNB', NULL),
(1841, '371328', '蒙阴县', 182, 0, 0, 'Mengyin Xian', 'MYL', NULL),
(1842, '371329', '临沭县', 182, 0, 0, 'Linshu Xian', 'LSP', NULL),
(1843, '371401', '市辖区', 183, 0, 0, 'Shixiaqu', '2', NULL),
(1844, '371402', '德城区', 183, 0, 0, 'Decheng Qu', 'DCD', NULL),
(1845, '371421', '陵县', 183, 0, 0, 'Ling Xian', 'LXL', NULL),
(1846, '371422', '宁津县', 183, 0, 0, 'Ningjin Xian', 'NGJ', NULL),
(1847, '371423', '庆云县', 183, 0, 0, 'Qingyun Xian', 'QYL', NULL),
(1848, '371424', '临邑县', 183, 0, 0, 'Linyi xian', 'LYM', NULL),
(1849, '371425', '齐河县', 183, 0, 0, 'Qihe Xian', 'QIH', NULL),
(1850, '371426', '平原县', 183, 0, 0, 'Pingyuan Xian', 'PYN', NULL),
(1851, '371427', '夏津县', 183, 0, 0, 'Xiajin Xian', 'XAJ', NULL),
(1852, '371428', '武城县', 183, 0, 0, 'Wucheng Xian', 'WUC', NULL),
(1853, '371481', '乐陵市', 183, 0, 0, 'Leling Shi', 'LEL', NULL),
(1854, '371482', '禹城市', 183, 0, 0, 'Yucheng Shi', 'YCL', NULL),
(1855, '371501', '市辖区', 184, 0, 0, 'Shixiaqu', '2', NULL),
(1856, '371502', '东昌府区', 184, 0, 0, 'Dongchangfu Qu', 'DCF', NULL),
(1857, '371521', '阳谷县', 184, 0, 0, 'Yanggu Xian ', 'YGU', NULL),
(1858, '371522', '莘县', 184, 0, 0, 'Shen Xian', 'SHN', NULL),
(1859, '371523', '茌平县', 184, 0, 0, 'Chiping Xian ', 'CPG', NULL),
(1860, '371524', '东阿县', 184, 0, 0, 'Dong,e Xian', 'DGE', NULL),
(1861, '371525', '冠县', 184, 0, 0, 'Guan Xian', 'GXL', NULL),
(1862, '371526', '高唐县', 184, 0, 0, 'Gaotang Xian', 'GTG', NULL),
(1863, '371581', '临清市', 184, 0, 0, 'Linqing Xian', 'LQS', NULL),
(1864, '371601', '市辖区', 185, 0, 0, '1', '2', NULL),
(1865, '371602', '滨城区', 185, 0, 0, 'Bincheng Qu', '2', NULL),
(1866, '371621', '惠民县', 185, 0, 0, 'Huimin Xian', '2', NULL),
(1867, '371622', '阳信县', 185, 0, 0, 'Yangxin Xian', '2', NULL),
(1868, '371623', '无棣县', 185, 0, 0, 'Wudi Xian', '2', NULL),
(1869, '371624', '沾化县', 185, 0, 0, 'Zhanhua Xian', '2', NULL),
(1870, '371625', '博兴县', 185, 0, 0, 'Boxing Xian', '2', NULL),
(1871, '371626', '邹平县', 185, 0, 0, 'Zouping Xian', '2', NULL),
(1873, '371702', '牡丹区', 186, 0, 0, 'Mudan Qu', '2', NULL),
(1874, '371721', '曹县', 186, 0, 0, 'Cao Xian', '2', NULL),
(1875, '371722', '单县', 186, 0, 0, 'Shan Xian', '2', NULL),
(1876, '371723', '成武县', 186, 0, 0, 'Chengwu Xian', '2', NULL),
(1877, '371724', '巨野县', 186, 0, 0, 'Juye Xian', '2', NULL),
(1878, '371725', '郓城县', 186, 0, 0, 'Yuncheng Xian', '2', NULL),
(1879, '371726', '鄄城县', 186, 0, 0, 'Juancheng Xian', '2', NULL),
(1880, '371727', '定陶县', 186, 0, 0, 'Dingtao Xian', '2', NULL),
(1881, '371728', '东明县', 186, 0, 0, 'Dongming Xian', '2', NULL),
(1882, '410101', '市辖区', 187, 0, 0, 'Shixiaqu', '2', NULL),
(1883, '410102', '中原区', 187, 0, 0, 'Zhongyuan Qu', 'ZYQ', NULL),
(1884, '410103', '二七区', 187, 0, 0, 'Erqi Qu', 'EQQ', NULL),
(1885, '410104', '管城回族区', 187, 0, 0, 'Guancheng Huizu Qu', 'GCH', NULL),
(1886, '410105', '金水区', 187, 0, 0, 'Jinshui Qu', 'JSU', NULL),
(1887, '410106', '上街区', 187, 0, 0, 'Shangjie Qu', 'SJE', NULL),
(1888, '410108', '惠济区', 187, 0, 0, 'Mangshan Qu', '2', NULL),
(1889, '410122', '中牟县', 187, 0, 0, 'Zhongmou Xian', 'ZMO', NULL),
(1890, '410181', '巩义市', 187, 0, 0, 'Gongyi Shi', 'GYI', NULL),
(1891, '410182', '荥阳市', 187, 0, 0, 'Xingyang Shi', 'XYK', NULL),
(1892, '410183', '新密市', 187, 0, 0, 'Xinmi Shi', 'XMI', NULL),
(1893, '410184', '新郑市', 187, 0, 0, 'Xinzheng Shi', 'XZG', NULL),
(1894, '410185', '登封市', 187, 0, 0, 'Dengfeng Shi', '2', NULL),
(1895, '410201', '市辖区', 188, 0, 0, 'Shixiaqu', '2', NULL),
(1896, '410202', '龙亭区', 188, 0, 0, 'Longting Qu', 'LTK', NULL),
(1897, '410203', '顺河回族区', 188, 0, 0, 'Shunhe Huizu Qu', 'SHR', NULL),
(1898, '410204', '鼓楼区', 188, 0, 0, 'Gulou Qu', 'GLK', '开封市'),
(1899, '410205', '禹王台区', 188, 0, 0, 'Yuwangtai Qu', '2', NULL),
(1900, '410211', '金明区', 188, 0, 0, 'Jinming Qu', '2', NULL),
(1901, '410221', '杞县', 188, 0, 0, 'Qi Xian', 'QIX', NULL),
(1902, '410222', '通许县', 188, 0, 0, 'Tongxu Xian', 'TXY', NULL),
(1903, '410223', '尉氏县', 188, 0, 0, 'Weishi Xian', 'WSI', NULL),
(1904, '410224', '开封县', 188, 0, 0, 'Kaifeng Xian', 'KFX', NULL),
(1905, '410225', '兰考县', 188, 0, 0, 'Lankao Xian', 'LKA', NULL),
(1906, '410301', '市辖区', 189, 0, 0, 'Shixiaqu', '2', NULL),
(1907, '410302', '老城区', 189, 0, 0, 'Laocheng Qu', 'LLY', NULL),
(1908, '410303', '西工区', 189, 0, 0, 'Xigong Qu', 'XGL', NULL),
(1909, '410304', '瀍河回族区', 189, 0, 0, 'Chanhehuizu Qu', '2', NULL),
(1910, '410305', '涧西区', 189, 0, 0, 'Jianxi Qu', 'JXL', NULL),
(1911, '410306', '吉利区', 189, 0, 0, 'Jili Qu', 'JLL', NULL),
(1912, '410311', '洛龙区', 189, 0, 0, 'Luolong Qu', '2', NULL),
(1913, '410322', '孟津县', 189, 0, 0, 'Mengjin Xian', 'MGJ', NULL),
(1914, '410323', '新安县', 189, 0, 0, 'Xin,an Xian', 'XAX', NULL),
(1915, '410324', '栾川县', 189, 0, 0, 'Luanchuan Xian', 'LCK', NULL),
(1916, '410325', '嵩县', 189, 0, 0, 'Song Xian', 'SON', NULL),
(1917, '410326', '汝阳县', 189, 0, 0, 'Ruyang Xian', 'RUY', NULL),
(1918, '410327', '宜阳县', 189, 0, 0, 'Yiyang Xian', 'YYY', NULL),
(1919, '410328', '洛宁县', 189, 0, 0, 'Luoning Xian', 'LNI', NULL),
(1920, '410329', '伊川县', 189, 0, 0, 'Yichuan Xian', 'YCZ', NULL),
(1921, '410381', '偃师市', 189, 0, 0, 'Yanshi Shi', 'YST', NULL),
(1922, '410401', '市辖区', 190, 0, 0, 'Shixiaqu', '2', NULL),
(1923, '410402', '新华区', 190, 0, 0, 'Xinhua Qu', 'XHP', '平顶山市'),
(1924, '410403', '卫东区', 190, 0, 0, 'Weidong Qu', 'WDG', NULL),
(1925, '410404', '石龙区', 190, 0, 0, 'Shilong Qu', 'SIL', NULL),
(1926, '410411', '湛河区', 190, 0, 0, 'Zhanhe Qu', 'ZHQ', NULL),
(1927, '410421', '宝丰县', 190, 0, 0, 'Baofeng Xian', 'BFG', NULL),
(1928, '410422', '叶县', 190, 0, 0, 'Ye Xian', 'YEX', NULL),
(1929, '410423', '鲁山县', 190, 0, 0, 'Lushan Xian', 'LUS', NULL),
(1930, '410425', '郏县', 190, 0, 0, 'Jia Xian', 'JXY', NULL),
(1931, '410481', '舞钢市', 190, 0, 0, 'Wugang Shi', 'WGY', NULL),
(1932, '410482', '汝州市', 190, 0, 0, 'Ruzhou Shi', 'RZO', NULL),
(1933, '410501', '市辖区', 191, 0, 0, 'Shixiaqu', '2', NULL),
(1934, '410502', '文峰区', 191, 0, 0, 'Wenfeng Qu', 'WFQ', NULL),
(1935, '410503', '北关区', 191, 0, 0, 'Beiguan Qu', 'BGQ', NULL),
(1936, '410505', '殷都区', 191, 0, 0, 'Yindu Qu', '2', NULL),
(1937, '410506', '龙安区', 191, 0, 0, 'Longan Qu', '2', NULL),
(1938, '410522', '安阳县', 191, 0, 0, 'Anyang Xian', 'AYX', NULL),
(1939, '410523', '汤阴县', 191, 0, 0, 'Tangyin Xian', 'TYI', NULL),
(1940, '410526', '滑县', 191, 0, 0, 'Hua Xian', 'HUA', NULL),
(1941, '410527', '内黄县', 191, 0, 0, 'Neihuang Xian', 'NHG', NULL),
(1942, '410581', '林州市', 191, 0, 0, 'Linzhou Shi', 'LZY', NULL),
(1943, '410601', '市辖区', 192, 0, 0, 'Shixiaqu', '2', NULL),
(1944, '410602', '鹤山区', 192, 0, 0, 'Heshan Qu', 'HSF', NULL),
(1945, '410603', '山城区', 192, 0, 0, 'Shancheng Qu', 'SCB', NULL),
(1946, '410611', '淇滨区', 192, 0, 0, 'Qibin Qu', '2', NULL),
(1947, '410621', '浚县', 192, 0, 0, 'Xun Xian', 'XUX', NULL),
(1948, '410622', '淇县', 192, 0, 0, 'Qi Xian', 'QXY', NULL),
(1949, '410701', '市辖区', 193, 0, 0, 'Shixiaqu', '2', NULL),
(1950, '410702', '红旗区', 193, 0, 0, 'Hongqi Qu', 'HQQ', NULL),
(1951, '410703', '卫滨区', 193, 0, 0, 'Weibin Qu', '2', NULL),
(1952, '410704', '凤泉区', 193, 0, 0, 'Fengquan Qu', '2', NULL),
(1953, '410711', '牧野区', 193, 0, 0, 'Muye Qu', '2', NULL),
(1954, '410721', '新乡县', 193, 0, 0, 'Xinxiang Xian', 'XXX', NULL),
(1955, '410724', '获嘉县', 193, 0, 0, 'Huojia Xian', 'HOJ', NULL),
(1956, '410725', '原阳县', 193, 0, 0, 'Yuanyang Xian', 'YYA', NULL),
(1957, '410726', '延津县', 193, 0, 0, 'Yanjin Xian', 'YJN', NULL),
(1958, '410727', '封丘县', 193, 0, 0, 'Fengqiu Xian', 'FQU', NULL),
(1959, '410728', '长垣县', 193, 0, 0, 'Changyuan Xian', 'CYU', NULL),
(1960, '410781', '卫辉市', 193, 0, 0, 'Weihui Shi', 'WHS', NULL),
(1961, '410782', '辉县市', 193, 0, 0, 'Huixian Shi', 'HXS', NULL),
(1962, '410801', '市辖区', 194, 0, 0, 'Shixiaqu', '2', NULL),
(1963, '410802', '解放区', 194, 0, 0, 'Jiefang Qu', 'JFQ', NULL),
(1964, '410803', '中站区', 194, 0, 0, 'Zhongzhan Qu', 'ZZQ', NULL),
(1965, '410804', '马村区', 194, 0, 0, 'Macun Qu', 'MCQ', NULL),
(1966, '410811', '山阳区', 194, 0, 0, 'Shanyang Qu', 'SYC', NULL),
(1967, '410821', '修武县', 194, 0, 0, 'Xiuwu Xian', 'XUW', NULL),
(1968, '410822', '博爱县', 194, 0, 0, 'Bo,ai Xian', 'BOA', NULL),
(1969, '410823', '武陟县', 194, 0, 0, 'Wuzhi Xian', 'WZI', NULL),
(1970, '410825', '温县', 194, 0, 0, 'Wen Xian', 'WEN', NULL),
(1971, '419001', '济源市', 194, 0, 0, 'Jiyuan Shi', '2', NULL),
(1972, '410882', '沁阳市', 194, 0, 0, 'Qinyang Shi', 'QYS', NULL),
(1973, '410883', '孟州市', 194, 0, 0, 'Mengzhou Shi', 'MZO', NULL),
(1974, '410901', '市辖区', 195, 0, 0, 'Shixiaqu', '2', NULL),
(1975, '410902', '华龙区', 195, 0, 0, 'Hualong Qu', '2', NULL),
(1976, '410922', '清丰县', 195, 0, 0, 'Qingfeng Xian', 'QFG', NULL),
(1977, '410923', '南乐县', 195, 0, 0, 'Nanle Xian', 'NLE', NULL),
(1978, '410926', '范县', 195, 0, 0, 'Fan Xian', 'FAX', NULL),
(1979, '410927', '台前县', 195, 0, 0, 'Taiqian Xian', 'TQN', NULL),
(1980, '410928', '濮阳县', 195, 0, 0, 'Puyang Xian', 'PUY', NULL),
(1981, '411001', '市辖区', 196, 0, 0, 'Shixiaqu', '2', NULL),
(1982, '411002', '魏都区', 196, 0, 0, 'Weidu Qu', 'WED', NULL),
(1983, '411023', '许昌县', 196, 0, 0, 'Xuchang Xian', 'XUC', NULL),
(1984, '411024', '鄢陵县', 196, 0, 0, 'Yanling Xian', 'YLY', NULL),
(1985, '411025', '襄城县', 196, 0, 0, 'Xiangcheng Xian', 'XAC', NULL),
(1986, '411081', '禹州市', 196, 0, 0, 'Yuzhou Shi', 'YUZ', NULL),
(1987, '411082', '长葛市', 196, 0, 0, 'Changge Shi', 'CGE', NULL),
(1988, '411101', '市辖区', 197, 0, 0, 'Shixiaqu', '2', NULL),
(1989, '411102', '源汇区', 197, 0, 0, 'Yuanhui Qu', 'YHI', NULL),
(1990, '411103', '郾城区', 197, 0, 0, 'Yancheng Qu', '2', NULL),
(1991, '411104', '召陵区', 197, 0, 0, 'Zhaoling Qu', '2', NULL),
(1992, '411121', '舞阳县', 197, 0, 0, 'Wuyang Xian', 'WYG', NULL),
(1993, '411122', '临颍县', 197, 0, 0, 'Linying Xian', 'LNY', NULL),
(1994, '411201', '市辖区', 198, 0, 0, 'Shixiaqu', '2', NULL),
(1995, '411202', '湖滨区', 198, 0, 0, 'Hubin Qu', 'HBI', NULL),
(1996, '411221', '渑池县', 198, 0, 0, 'Mianchi Xian', 'MCI', NULL),
(1997, '411222', '陕县', 198, 0, 0, 'Shan Xian', 'SHX', NULL),
(1998, '411224', '卢氏县', 198, 0, 0, 'Lushi Xian', 'LUU', NULL),
(1999, '411281', '义马市', 198, 0, 0, 'Yima Shi', 'YMA', NULL),
(2000, '411282', '灵宝市', 198, 0, 0, 'Lingbao Shi', 'LBS', NULL),
(2001, '411301', '市辖区', 199, 0, 0, 'Shixiaqu', '2', NULL),
(2002, '411302', '宛城区', 199, 0, 0, 'Wancheng Qu', 'WCN', NULL),
(2003, '411303', '卧龙区', 199, 0, 0, 'Wolong Qu', 'WOL', NULL),
(2004, '411321', '南召县', 199, 0, 0, 'Nanzhao Xian', 'NZO', NULL),
(2005, '411322', '方城县', 199, 0, 0, 'Fangcheng Xian', 'FCX', NULL),
(2006, '411323', '西峡县', 199, 0, 0, 'Xixia Xian', 'XXY', NULL),
(2007, '411324', '镇平县', 199, 0, 0, 'Zhenping Xian', 'ZPX', NULL),
(2008, '411325', '内乡县', 199, 0, 0, 'Neixiang Xian', 'NXG', NULL),
(2009, '411326', '淅川县', 199, 0, 0, 'Xichuan Xian', 'XCY', NULL),
(2010, '411327', '社旗县', 199, 0, 0, 'Sheqi Xian', 'SEQ', NULL),
(2011, '411328', '唐河县', 199, 0, 0, 'Tanghe Xian', 'TGH', NULL),
(2012, '411329', '新野县', 199, 0, 0, 'Xinye Xian', 'XYE', NULL),
(2013, '411330', '桐柏县', 199, 0, 0, 'Tongbai Xian', 'TBX', NULL),
(2014, '411381', '邓州市', 199, 0, 0, 'Dengzhou Shi', 'DGZ', NULL),
(2015, '411401', '市辖区', 200, 0, 0, 'Shixiaqu', '2', NULL),
(2016, '411402', '梁园区', 200, 0, 0, 'Liangyuan Qu', 'LYY', NULL),
(2017, '411403', '睢阳区', 200, 0, 0, 'Suiyang Qu', 'SYA', NULL),
(2018, '411421', '民权县', 200, 0, 0, 'Minquan Xian', 'MQY', NULL),
(2019, '411422', '睢县', 200, 0, 0, 'Sui Xian', 'SUI', NULL),
(2020, '411423', '宁陵县', 200, 0, 0, 'Ningling Xian', 'NGL', NULL),
(2021, '411424', '柘城县', 200, 0, 0, 'Zhecheng Xian', 'ZHC', NULL),
(2022, '411425', '虞城县', 200, 0, 0, 'Yucheng Xian', 'YUC', NULL),
(2023, '411426', '夏邑县', 200, 0, 0, 'Xiayi Xian', 'XAY', NULL),
(2024, '411481', '永城市', 200, 0, 0, 'Yongcheng Shi', 'YOC', NULL),
(2025, '411501', '市辖区', 201, 0, 0, 'Shixiaqu', '2', NULL),
(2026, '411502', '浉河区', 201, 0, 0, 'Shihe Qu', 'SHU', NULL),
(2027, '411503', '平桥区', 201, 0, 0, 'Pingqiao Qu', 'PQQ', NULL),
(2028, '411521', '罗山县', 201, 0, 0, 'Luoshan Xian', 'LSE', NULL),
(2029, '411522', '光山县', 201, 0, 0, 'Guangshan Xian', 'GSX', NULL),
(2030, '411523', '新县', 201, 0, 0, 'Xin Xian', 'XXI', NULL),
(2031, '411524', '商城县', 201, 0, 0, 'Shangcheng Xian', 'SCX', NULL),
(2032, '411525', '固始县', 201, 0, 0, 'Gushi Xian', 'GSI', NULL),
(2033, '411526', '潢川县', 201, 0, 0, 'Huangchuan Xian', 'HCU', NULL),
(2034, '411527', '淮滨县', 201, 0, 0, 'Huaibin Xian', 'HBN', NULL),
(2035, '411528', '息县', 201, 0, 0, 'Xi Xian', 'XIX', NULL),
(2036, '411601', '市辖区', 202, 0, 0, '1', '2', NULL),
(2037, '411602', '川汇区', 202, 0, 0, 'Chuanhui Qu', '2', NULL),
(2038, '411621', '扶沟县', 202, 0, 0, 'Fugou Xian', '2', NULL),
(2039, '411622', '西华县', 202, 0, 0, 'Xihua Xian', '2', NULL),
(2040, '411623', '商水县', 202, 0, 0, 'Shangshui Xian', '2', NULL),
(2041, '411624', '沈丘县', 202, 0, 0, 'Shenqiu Xian', '2', NULL),
(2042, '411625', '郸城县', 202, 0, 0, 'Dancheng Xian', '2', NULL),
(2043, '411626', '淮阳县', 202, 0, 0, 'Huaiyang Xian', '2', NULL),
(2044, '411627', '太康县', 202, 0, 0, 'Taikang Xian', '2', NULL),
(2045, '411628', '鹿邑县', 202, 0, 0, 'Luyi Xian', '2', NULL),
(2046, '411681', '项城市', 202, 0, 0, 'Xiangcheng Shi', '2', NULL),
(2047, '411701', '市辖区', 203, 0, 0, '1', '2', NULL),
(2048, '411702', '驿城区', 203, 0, 0, 'Yicheng Qu', '2', NULL),
(2049, '411721', '西平县', 203, 0, 0, 'Xiping Xian', '2', NULL),
(2050, '411722', '上蔡县', 203, 0, 0, 'Shangcai Xian', '2', NULL),
(2051, '411723', '平舆县', 203, 0, 0, 'Pingyu Xian', '2', NULL),
(2052, '411724', '正阳县', 203, 0, 0, 'Zhengyang Xian', '2', NULL),
(2053, '411725', '确山县', 203, 0, 0, 'Queshan Xian', '2', NULL),
(2054, '411726', '泌阳县', 203, 0, 0, 'Biyang Xian', '2', NULL),
(2055, '411727', '汝南县', 203, 0, 0, 'Runan Xian', '2', NULL),
(2056, '411728', '遂平县', 203, 0, 0, 'Suiping Xian', '2', NULL),
(2057, '411729', '新蔡县', 203, 0, 0, 'Xincai Xian', '2', NULL),
(2058, '420101', '市辖区', 204, 0, 0, 'Shixiaqu', '2', NULL),
(2059, '420102', '江岸区', 204, 0, 0, 'Jiang,an Qu', 'JAA', NULL),
(2060, '420103', '江汉区', 204, 0, 0, 'Jianghan Qu', 'JHN', NULL),
(2061, '420104', '硚口区', 204, 0, 0, 'Qiaokou Qu', 'QKQ', NULL),
(2062, '420105', '汉阳区', 204, 0, 0, 'Hanyang Qu', 'HYA', NULL),
(2063, '420106', '武昌区', 204, 0, 0, 'Wuchang Qu', 'WCQ', NULL),
(2064, '420107', '青山区', 204, 0, 0, 'Qingshan Qu', 'QSN', '武汉市'),
(2065, '420111', '洪山区', 204, 0, 0, 'Hongshan Qu', 'HSQ', NULL),
(2066, '420112', '东西湖区', 204, 0, 0, 'Dongxihu Qu', 'DXH', NULL),
(2067, '420113', '汉南区', 204, 0, 0, 'Hannan Qu', 'HNQ', NULL),
(2068, '420114', '蔡甸区', 204, 0, 0, 'Caidian Qu', 'CDN', NULL),
(2069, '420115', '江夏区', 204, 0, 0, 'Jiangxia Qu', 'JXQ', NULL),
(2070, '420116', '黄陂区', 204, 0, 0, 'Huangpi Qu', 'HPI', NULL),
(2071, '420117', '新洲区', 204, 0, 0, 'Xinzhou Qu', 'XNZ', NULL),
(2072, '420201', '市辖区', 205, 0, 0, 'Shixiaqu', '2', NULL),
(2073, '420202', '黄石港区', 205, 0, 0, 'Huangshigang Qu', 'HSG', NULL),
(2074, '420203', '西塞山区', 205, 0, 0, 'Xisaishan Qu', '2', NULL),
(2075, '420204', '下陆区', 205, 0, 0, 'Xialu Qu', 'XAL', NULL),
(2076, '420205', '铁山区', 205, 0, 0, 'Tieshan Qu', 'TSH', NULL),
(2077, '420222', '阳新县', 205, 0, 0, 'Yangxin Xian', 'YXE', NULL),
(2078, '420281', '大冶市', 205, 0, 0, 'Daye Shi', 'DYE', NULL),
(2079, '420301', '市辖区', 206, 0, 0, 'Shixiaqu', '2', NULL),
(2080, '420302', '茅箭区', 206, 0, 0, 'Maojian Qu', 'MJN', NULL),
(2081, '420303', '张湾区', 206, 0, 0, 'Zhangwan Qu', 'ZWQ', NULL),
(2082, '420321', '郧县', 206, 0, 0, 'Yun Xian', 'YUN', NULL),
(2083, '420322', '郧西县', 206, 0, 0, 'Yunxi Xian', 'YNX', NULL),
(2084, '420323', '竹山县', 206, 0, 0, 'Zhushan Xian', 'ZHS', NULL),
(2085, '420324', '竹溪县', 206, 0, 0, 'Zhuxi Xian', 'ZXX', NULL),
(2086, '420325', '房县', 206, 0, 0, 'Fang Xian', 'FAG', NULL),
(2087, '420381', '丹江口市', 206, 0, 0, 'Danjiangkou Shi', 'DJK', NULL),
(2088, '420501', '市辖区', 207, 0, 0, 'Shixiaqu', '2', NULL),
(2089, '420502', '西陵区', 207, 0, 0, 'Xiling Qu', 'XLQ', NULL),
(2090, '420503', '伍家岗区', 207, 0, 0, 'Wujiagang Qu', 'WJG', NULL),
(2091, '420504', '点军区', 207, 0, 0, 'Dianjun Qu', 'DJN', NULL),
(2092, '420505', '猇亭区', 207, 0, 0, 'Xiaoting Qu', 'XTQ', NULL),
(2093, '420506', '夷陵区', 207, 0, 0, 'Yiling Qu', '2', NULL),
(2094, '420525', '远安县', 207, 0, 0, 'Yuan,an Xian', 'YAX', NULL),
(2095, '420526', '兴山县', 207, 0, 0, 'Xingshan Xian', 'XSX', NULL),
(2096, '420527', '秭归县', 207, 0, 0, 'Zigui Xian', 'ZGI', NULL),
(2097, '420528', '长阳土家族自治县', 207, 0, 0, 'Changyang Tujiazu Zizhixian', 'CYA', NULL),
(2098, '420529', '五峰土家族自治县', 207, 0, 0, 'Wufeng Tujiazu Zizhixian', 'WFG', NULL),
(2099, '420581', '宜都市', 207, 0, 0, 'Yidu Shi', 'YID', NULL),
(2100, '420582', '当阳市', 207, 0, 0, 'Dangyang Shi', 'DYS', NULL),
(2101, '420583', '枝江市', 207, 0, 0, 'Zhijiang Shi', 'ZIJ', NULL),
(2102, '420601', '市辖区', 208, 0, 0, 'Shixiaqu', '2', NULL),
(2103, '420602', '襄城区', 208, 0, 0, 'Xiangcheng Qu', 'XXF', NULL),
(2104, '420606', '樊城区', 208, 0, 0, 'Fancheng Qu', 'FNC', NULL),
(2105, '420607', '襄阳区', 208, 0, 0, 'Xiangyang Qu', '2', NULL),
(2106, '420624', '南漳县', 208, 0, 0, 'Nanzhang Xian', 'NZH', NULL),
(2107, '420625', '谷城县', 208, 0, 0, 'Gucheng Xian', 'GUC', NULL),
(2108, '420626', '保康县', 208, 0, 0, 'Baokang Xian', 'BKG', NULL),
(2109, '420682', '老河口市', 208, 0, 0, 'Laohekou Shi', 'LHK', NULL),
(2110, '420683', '枣阳市', 208, 0, 0, 'Zaoyang Shi', 'ZOY', NULL),
(2111, '420684', '宜城市', 208, 0, 0, 'Yicheng Shi', 'YCW', NULL),
(2112, '420701', '市辖区', 209, 0, 0, 'Shixiaqu', '2', NULL),
(2113, '420702', '梁子湖区', 209, 0, 0, 'Liangzihu Qu', 'LZI', NULL),
(2114, '420703', '华容区', 209, 0, 0, 'Huarong Qu', 'HRQ', NULL),
(2115, '420704', '鄂城区', 209, 0, 0, 'Echeng Qu', 'ECQ', NULL),
(2116, '420801', '市辖区', 210, 0, 0, 'Shixiaqu', '2', NULL),
(2117, '420802', '东宝区', 210, 0, 0, 'Dongbao Qu', 'DBQ', NULL),
(2118, '420804', '掇刀区', 210, 0, 0, 'Duodao Qu', '2', NULL),
(2119, '420821', '京山县', 210, 0, 0, 'Jingshan Xian', 'JSA', NULL),
(2120, '420822', '沙洋县', 210, 0, 0, 'Shayang Xian', 'SYF', NULL),
(2121, '420881', '钟祥市', 210, 0, 0, 'Zhongxiang Shi', '2', NULL),
(2122, '420901', '市辖区', 211, 0, 0, 'Shixiaqu', '2', NULL),
(2123, '420902', '孝南区', 211, 0, 0, 'Xiaonan Qu', 'XNA', NULL),
(2124, '420921', '孝昌县', 211, 0, 0, 'Xiaochang Xian', 'XOC', NULL),
(2125, '420922', '大悟县', 211, 0, 0, 'Dawu Xian', 'DWU', NULL),
(2126, '420923', '云梦县', 211, 0, 0, 'Yunmeng Xian', 'YMX', NULL),
(2127, '420981', '应城市', 211, 0, 0, 'Yingcheng Shi', 'YCG', NULL),
(2128, '420982', '安陆市', 211, 0, 0, 'Anlu Shi', 'ALU', NULL),
(2129, '420984', '汉川市', 211, 0, 0, 'Hanchuan Shi', 'HCH', NULL),
(2130, '421001', '市辖区', 212, 0, 0, 'Shixiaqu', '2', NULL),
(2131, '421002', '沙市区', 212, 0, 0, 'Shashi Qu', 'SSJ', NULL),
(2132, '421003', '荆州区', 212, 0, 0, 'Jingzhou Qu', 'JZQ', NULL),
(2133, '421022', '公安县', 212, 0, 0, 'Gong,an Xian', 'GGA', NULL),
(2134, '421023', '监利县', 212, 0, 0, 'Jianli Xian', 'JLI', NULL),
(2135, '421024', '江陵县', 212, 0, 0, 'Jiangling Xian', 'JLX', NULL),
(2136, '421081', '石首市', 212, 0, 0, 'Shishou Shi', 'SSO', NULL),
(2137, '421083', '洪湖市', 212, 0, 0, 'Honghu Shi', 'HHU', NULL),
(2138, '421087', '松滋市', 212, 0, 0, 'Songzi Shi', 'SZF', NULL),
(2139, '421101', '市辖区', 213, 0, 0, 'Shixiaqu', '2', NULL),
(2140, '421102', '黄州区', 213, 0, 0, 'Huangzhou Qu', 'HZC', NULL),
(2141, '421121', '团风县', 213, 0, 0, 'Tuanfeng Xian', 'TFG', NULL),
(2142, '421122', '红安县', 213, 0, 0, 'Hong,an Xian', 'HGA', NULL),
(2143, '421123', '罗田县', 213, 0, 0, 'Luotian Xian', 'LTE', NULL),
(2144, '421124', '英山县', 213, 0, 0, 'Yingshan Xian', 'YSE', NULL),
(2145, '421125', '浠水县', 213, 0, 0, 'Xishui Xian', 'XSE', NULL),
(2146, '421126', '蕲春县', 213, 0, 0, 'Qichun Xian', 'QCN', NULL),
(2147, '421127', '黄梅县', 213, 0, 0, 'Huangmei Xian', 'HGM', NULL),
(2148, '421181', '麻城市', 213, 0, 0, 'Macheng Shi', 'MCS', NULL),
(2149, '421182', '武穴市', 213, 0, 0, 'Wuxue Shi', 'WXE', NULL),
(2150, '421201', '市辖区', 214, 0, 0, 'Shixiaqu', '2', NULL),
(2151, '421202', '咸安区', 214, 0, 0, 'Xian,an Qu', 'XAN', NULL),
(2152, '421221', '嘉鱼县', 214, 0, 0, 'Jiayu Xian', 'JYX', NULL),
(2153, '421222', '通城县', 214, 0, 0, 'Tongcheng Xian', 'TCX', NULL),
(2154, '421223', '崇阳县', 214, 0, 0, 'Chongyang Xian', 'CGY', NULL),
(2155, '421224', '通山县', 214, 0, 0, 'Tongshan Xian', 'TSA', NULL),
(2156, '421281', '赤壁市', 214, 0, 0, 'Chibi Shi', 'CBI', NULL),
(2157, '421301', '市辖区', 215, 0, 0, '1', '2', NULL),
(2158, '421303', '曾都区', 215, 0, 0, 'Zengdu Qu', '2', NULL),
(2159, '421381', '广水市', 215, 0, 0, 'Guangshui Shi', '2', NULL),
(2160, '422801', '恩施市', 216, 0, 0, 'Enshi Shi', 'ESS', NULL),
(2161, '422802', '利川市', 216, 0, 0, 'Lichuan Shi', 'LCE', NULL),
(2162, '422822', '建始县', 216, 0, 0, 'Jianshi Xian', 'JSE', NULL),
(2163, '422823', '巴东县', 216, 0, 0, 'Badong Xian', 'BDG', NULL),
(2164, '422825', '宣恩县', 216, 0, 0, 'Xuan,en Xian', 'XEN', NULL),
(2165, '422826', '咸丰县', 216, 0, 0, 'Xianfeng Xian', 'XFG', NULL),
(2166, '422827', '来凤县', 216, 0, 0, 'Laifeng Xian', 'LFG', NULL),
(2167, '422828', '鹤峰县', 216, 0, 0, 'Hefeng Xian', 'HEF', NULL),
(2168, '429004', '仙桃市', 217, 0, 0, 'Xiantao Shi', 'XNT', NULL),
(2169, '429005', '潜江市', 217, 0, 0, 'Qianjiang Shi', 'QNJ', NULL),
(2170, '429006', '天门市', 217, 0, 0, 'Tianmen Shi', 'TMS', NULL),
(2171, '429021', '神农架林区', 217, 0, 0, 'Shennongjia Linqu', 'SNJ', NULL),
(2172, '430101', '市辖区', 218, 0, 0, 'Shixiaqu', '2', NULL),
(2173, '430102', '芙蓉区', 218, 0, 0, 'Furong Qu', 'FRQ', NULL),
(2174, '430103', '天心区', 218, 0, 0, 'Tianxin Qu', 'TXQ', NULL),
(2175, '430104', '岳麓区', 218, 0, 0, 'Yuelu Qu', 'YLU', NULL),
(2176, '430105', '开福区', 218, 0, 0, 'Kaifu Qu', 'KFQ', NULL),
(2177, '430111', '雨花区', 218, 0, 0, 'Yuhua Qu', 'YHA', NULL),
(2178, '430121', '长沙县', 218, 0, 0, 'Changsha Xian', 'CSA', NULL),
(2179, '430122', '望城县', 218, 0, 0, 'Wangcheng Xian', 'WCH', NULL),
(2180, '430124', '宁乡县', 218, 0, 0, 'Ningxiang Xian', 'NXX', NULL),
(2181, '430181', '浏阳市', 218, 0, 0, 'Liuyang Shi', 'LYS', NULL),
(2182, '430201', '市辖区', 219, 0, 0, 'Shixiaqu', '2', NULL),
(2183, '430202', '荷塘区', 219, 0, 0, 'Hetang Qu', 'HTZ', NULL),
(2184, '430203', '芦淞区', 219, 0, 0, 'Lusong Qu', 'LZZ', NULL),
(2185, '430204', '石峰区', 219, 0, 0, 'Shifeng Qu', 'SFG', NULL),
(2186, '430211', '天元区', 219, 0, 0, 'Tianyuan Qu', 'TYQ', NULL),
(2187, '430221', '株洲县', 219, 0, 0, 'Zhuzhou Xian', 'ZZX', NULL),
(2188, '430223', '攸县', 219, 0, 0, 'You Xian', 'YOU', NULL),
(2189, '430224', '茶陵县', 219, 0, 0, 'Chaling Xian', 'CAL', NULL),
(2190, '430225', '炎陵县', 219, 0, 0, 'Yanling Xian', 'YLX', NULL),
(2191, '430281', '醴陵市', 219, 0, 0, 'Liling Shi', 'LIL', NULL),
(2192, '430301', '市辖区', 220, 0, 0, 'Shixiaqu', '2', NULL),
(2193, '430302', '雨湖区', 220, 0, 0, 'Yuhu Qu', 'YHU', NULL),
(2194, '430304', '岳塘区', 220, 0, 0, 'Yuetang Qu', 'YTG', NULL),
(2195, '430321', '湘潭县', 220, 0, 0, 'Xiangtan Qu', 'XTX', NULL),
(2196, '430381', '湘乡市', 220, 0, 0, 'Xiangxiang Shi', 'XXG', NULL),
(2197, '430382', '韶山市', 220, 0, 0, 'Shaoshan Shi', 'SSN', NULL),
(2198, '430401', '市辖区', 221, 0, 0, 'Shixiaqu', '2', NULL),
(2199, '430405', '珠晖区', 221, 0, 0, 'Zhuhui Qu', '2', NULL),
(2200, '430406', '雁峰区', 221, 0, 0, 'Yanfeng Qu', '2', NULL),
(2201, '430407', '石鼓区', 221, 0, 0, 'Shigu Qu', '2', NULL),
(2202, '430408', '蒸湘区', 221, 0, 0, 'Zhengxiang Qu', '2', NULL),
(2203, '430412', '南岳区', 221, 0, 0, 'Nanyue Qu', 'NYQ', NULL),
(2204, '430421', '衡阳县', 221, 0, 0, 'Hengyang Xian', 'HYO', NULL),
(2205, '430422', '衡南县', 221, 0, 0, 'Hengnan Xian', 'HNX', NULL),
(2206, '430423', '衡山县', 221, 0, 0, 'Hengshan Xian', 'HSH', NULL),
(2207, '430424', '衡东县', 221, 0, 0, 'Hengdong Xian', 'HED', NULL),
(2208, '430426', '祁东县', 221, 0, 0, 'Qidong Xian', 'QDX', NULL),
(2209, '430481', '耒阳市', 221, 0, 0, 'Leiyang Shi', 'LEY', NULL),
(2210, '430482', '常宁市', 221, 0, 0, 'Changning Shi', 'CNS', NULL),
(2211, '430501', '市辖区', 222, 0, 0, 'Shixiaqu', '2', NULL),
(2212, '430502', '双清区', 222, 0, 0, 'Shuangqing Qu', 'SGQ', NULL),
(2213, '430503', '大祥区', 222, 0, 0, 'Daxiang Qu', 'DXS', NULL),
(2214, '430511', '北塔区', 222, 0, 0, 'Beita Qu', 'BET', NULL),
(2215, '430521', '邵东县', 222, 0, 0, 'Shaodong Xian', 'SDG', NULL),
(2216, '430522', '新邵县', 222, 0, 0, 'Xinshao Xian', 'XSO', NULL),
(2217, '430523', '邵阳县', 222, 0, 0, 'Shaoyang Xian', 'SYW', NULL),
(2218, '430524', '隆回县', 222, 0, 0, 'Longhui Xian', 'LGH', NULL),
(2219, '430525', '洞口县', 222, 0, 0, 'Dongkou Xian', 'DGK', NULL),
(2220, '430527', '绥宁县', 222, 0, 0, 'Suining Xian', 'SNX', NULL),
(2221, '430528', '新宁县', 222, 0, 0, 'Xinning Xian', 'XNI', NULL),
(2222, '430529', '城步苗族自治县', 222, 0, 0, 'Chengbu Miaozu Zizhixian', 'CBU', NULL),
(2223, '430581', '武冈市', 222, 0, 0, 'Wugang Shi', 'WGS', NULL),
(2224, '430601', '市辖区', 223, 0, 0, 'Shixiaqu', '2', NULL),
(2225, '430602', '岳阳楼区', 223, 0, 0, 'Yueyanglou Qu', 'YYL', NULL),
(2226, '430603', '云溪区', 223, 0, 0, 'Yunxi Qu', 'YXI', NULL),
(2227, '430611', '君山区', 223, 0, 0, 'Junshan Qu', 'JUS', NULL),
(2228, '430621', '岳阳县', 223, 0, 0, 'Yueyang Xian', 'YYX', NULL),
(2229, '430623', '华容县', 223, 0, 0, 'Huarong Xian', 'HRG', NULL),
(2230, '430624', '湘阴县', 223, 0, 0, 'Xiangyin Xian', 'XYN', NULL),
(2231, '430626', '平江县', 223, 0, 0, 'Pingjiang Xian', 'PJH', NULL),
(2232, '430681', '汨罗市', 223, 0, 0, 'Miluo Shi', 'MLU', NULL),
(2233, '430682', '临湘市', 223, 0, 0, 'Linxiang Shi', 'LXY', NULL),
(2234, '430701', '市辖区', 224, 0, 0, 'Shixiaqu', '2', NULL),
(2235, '430702', '武陵区', 224, 0, 0, 'Wuling Qu', 'WLQ', NULL),
(2236, '430703', '鼎城区', 224, 0, 0, 'Dingcheng Qu', 'DCE', NULL),
(2237, '430721', '安乡县', 224, 0, 0, 'Anxiang Xian', 'AXG', NULL),
(2238, '430722', '汉寿县', 224, 0, 0, 'Hanshou Xian', 'HSO', NULL),
(2239, '430723', '澧县', 224, 0, 0, 'Li Xian', 'LXX', NULL),
(2240, '430724', '临澧县', 224, 0, 0, 'Linli Xian', 'LNL', NULL),
(2241, '430725', '桃源县', 224, 0, 0, 'Taoyuan Xian', 'TOY', NULL),
(2242, '430726', '石门县', 224, 0, 0, 'Shimen Xian', 'SHM', NULL),
(2243, '430781', '津市市', 224, 0, 0, 'Jinshi Shi', 'JSS', NULL),
(2244, '430801', '市辖区', 225, 0, 0, 'Shixiaqu', '2', NULL),
(2245, '430802', '永定区', 225, 0, 0, 'Yongding Qu', 'YDQ', NULL),
(2246, '430811', '武陵源区', 225, 0, 0, 'Wulingyuan Qu', 'WLY', NULL),
(2247, '430821', '慈利县', 225, 0, 0, 'Cili Xian', 'CLI', NULL),
(2248, '430822', '桑植县', 225, 0, 0, 'Sangzhi Xian', 'SZT', NULL),
(2249, '430901', '市辖区', 226, 0, 0, 'Shixiaqu', '2', NULL),
(2250, '430902', '资阳区', 226, 0, 0, 'Ziyang Qu', 'ZYC', NULL),
(2251, '430903', '赫山区', 226, 0, 0, 'Heshan Qu', 'HSY', NULL),
(2252, '430921', '南县', 226, 0, 0, 'Nan Xian', 'NXN', NULL),
(2253, '430922', '桃江县', 226, 0, 0, 'Taojiang Xian', 'TJG', NULL),
(2254, '430923', '安化县', 226, 0, 0, 'Anhua Xian', 'ANH', NULL),
(2255, '430981', '沅江市', 226, 0, 0, 'Yuanjiang Shi', 'YJS', NULL),
(2256, '431001', '市辖区', 227, 0, 0, 'Shixiaqu', '2', NULL),
(2257, '431002', '北湖区', 227, 0, 0, 'Beihu Qu', 'BHQ', NULL),
(2258, '431003', '苏仙区', 227, 0, 0, 'Suxian Qu', '2', NULL),
(2259, '431021', '桂阳县', 227, 0, 0, 'Guiyang Xian', 'GYX', NULL),
(2260, '431022', '宜章县', 227, 0, 0, 'yizhang Xian', 'YZA', NULL),
(2261, '431023', '永兴县', 227, 0, 0, 'Yongxing Xian', 'YXX', NULL),
(2262, '431024', '嘉禾县', 227, 0, 0, 'Jiahe Xian', 'JAH', NULL),
(2263, '431025', '临武县', 227, 0, 0, 'Linwu Xian', 'LWX', NULL),
(2264, '431026', '汝城县', 227, 0, 0, 'Rucheng Xian', 'RCE', NULL),
(2265, '431027', '桂东县', 227, 0, 0, 'Guidong Xian', 'GDO', NULL),
(2266, '431028', '安仁县', 227, 0, 0, 'Anren Xian', 'ARN', NULL),
(2267, '431081', '资兴市', 227, 0, 0, 'Zixing Shi', 'ZXG', NULL),
(2268, '431101', '市辖区', 228, 0, 0, 'Shixiaqu', '2', NULL),
(2270, '431103', '冷水滩区', 228, 0, 0, 'Lengshuitan Qu', 'LST', NULL),
(2271, '431121', '祁阳县', 228, 0, 0, 'Qiyang Xian', 'QJY', NULL),
(2272, '431122', '东安县', 228, 0, 0, 'Dong,an Xian', 'DOA', NULL),
(2273, '431123', '双牌县', 228, 0, 0, 'Shuangpai Xian', 'SPA', NULL),
(2274, '431124', '道县', 228, 0, 0, 'Dao Xian', 'DAO', NULL),
(2275, '431125', '江永县', 228, 0, 0, 'Jiangyong Xian', 'JYD', NULL),
(2276, '431126', '宁远县', 228, 0, 0, 'Ningyuan Xian', 'NYN', NULL),
(2277, '431127', '蓝山县', 228, 0, 0, 'Lanshan Xian', 'LNS', NULL),
(2278, '431128', '新田县', 228, 0, 0, 'Xintian Xian', 'XTN', NULL),
(2279, '431129', '江华瑶族自治县', 228, 0, 0, 'Jianghua Yaozu Zizhixian', 'JHX', NULL),
(2280, '431201', '市辖区', 229, 0, 0, 'Shixiaqu', '2', NULL),
(2281, '431202', '鹤城区', 229, 0, 0, 'Hecheng Qu', 'HCG', NULL),
(2282, '431221', '中方县', 229, 0, 0, 'Zhongfang Xian', 'ZFX', NULL),
(2283, '431222', '沅陵县', 229, 0, 0, 'Yuanling Xian', 'YNL', NULL),
(2284, '431223', '辰溪县', 229, 0, 0, 'Chenxi Xian', 'CXX', NULL),
(2285, '431224', '溆浦县', 229, 0, 0, 'Xupu Xian', 'XUP', NULL),
(2286, '431225', '会同县', 229, 0, 0, 'Huitong Xian', 'HTG', NULL),
(2287, '431226', '麻阳苗族自治县', 229, 0, 0, 'Mayang Miaozu Zizhixian', 'MYX', NULL),
(2288, '431227', '新晃侗族自治县', 229, 0, 0, 'Xinhuang Dongzu Zizhixian', 'XHD', NULL),
(2289, '431228', '芷江侗族自治县', 229, 0, 0, 'Zhijiang Dongzu Zizhixian', 'ZJX', NULL),
(2290, '431229', '靖州苗族侗族自治县', 229, 0, 0, 'Jingzhou Miaozu Dongzu Zizhixian', 'JZO', NULL),
(2291, '431230', '通道侗族自治县', 229, 0, 0, 'Tongdao Dongzu Zizhixian', 'TDD', NULL),
(2292, '431281', '洪江市', 229, 0, 0, 'Hongjiang Shi', 'HGJ', NULL),
(2293, '431301', '市辖区', 230, 0, 0, '1', '2', NULL),
(2294, '431302', '娄星区', 230, 0, 0, 'Louxing Qu', '2', NULL),
(2295, '431321', '双峰县', 230, 0, 0, 'Shuangfeng Xian', '2', NULL),
(2296, '431322', '新化县', 230, 0, 0, 'Xinhua Xian', '2', NULL),
(2297, '431381', '冷水江市', 230, 0, 0, 'Lengshuijiang Shi', '2', NULL),
(2298, '431382', '涟源市', 230, 0, 0, 'Lianyuan Shi', '2', NULL),
(2299, '433101', '吉首市', 231, 0, 0, 'Jishou Shi', 'JSO', NULL),
(2300, '433122', '泸溪县', 231, 0, 0, 'Luxi Xian', 'LXW', NULL),
(2301, '433123', '凤凰县', 231, 0, 0, 'Fenghuang Xian', 'FHX', NULL),
(2302, '433124', '花垣县', 231, 0, 0, 'Huayuan Xian', 'HYH', NULL),
(2303, '433125', '保靖县', 231, 0, 0, 'Baojing Xian', 'BJG', NULL),
(2304, '433126', '古丈县', 231, 0, 0, 'Guzhang Xian', 'GZG', NULL),
(2305, '433127', '永顺县', 231, 0, 0, 'Yongshun Xian', 'YSF', NULL),
(2306, '433130', '龙山县', 231, 0, 0, 'Longshan Xian', 'LSR', NULL),
(2307, '440101', '市辖区', 232, 0, 0, 'Shixiaqu', '2', NULL),
(2308, '440115', '南沙区', 232, 0, 0, 'Nansha Qu', '2', NULL),
(2309, '440103', '荔湾区', 232, 0, 0, 'Liwan Qu', 'LWQ', NULL),
(2310, '440104', '越秀区', 232, 0, 0, 'Yuexiu Qu', 'YXU', NULL),
(2311, '440105', '海珠区', 232, 0, 0, 'Haizhu Qu', 'HZU', NULL),
(2312, '440106', '天河区', 232, 0, 0, 'Tianhe Qu', 'THQ', NULL),
(2313, '440116', '萝岗区', 232, 0, 0, 'Luogang Qu', '2', NULL),
(2314, '440111', '白云区', 232, 0, 0, 'Baiyun Qu', 'BYN', '广州市'),
(2315, '440112', '黄埔区', 232, 0, 0, 'Huangpu Qu', 'HPU', NULL),
(2316, '440113', '番禺区', 232, 0, 0, 'Panyu Qu', 'PNY', NULL),
(2317, '440114', '花都区', 232, 0, 0, 'Huadu Qu', 'HDU', NULL),
(2318, '440183', '增城市', 232, 0, 0, 'Zengcheng Shi', 'ZEC', NULL),
(2319, '440184', '从化市', 232, 0, 0, 'Conghua Shi', 'CNH', NULL),
(2320, '440201', '市辖区', 233, 0, 0, 'Shixiaqu', '2', NULL),
(2321, '440203', '武江区', 233, 0, 0, 'Wujiang Qu', 'WJQ', NULL),
(2322, '440204', '浈江区', 233, 0, 0, 'Zhenjiang Qu', 'ZJQ', NULL),
(2323, '440205', '曲江区', 233, 0, 0, 'Qujiang Qu', '2', NULL),
(2324, '440222', '始兴县', 233, 0, 0, 'Shixing Xian', 'SXX', NULL),
(2325, '440224', '仁化县', 233, 0, 0, 'Renhua Xian', 'RHA', NULL),
(2326, '440229', '翁源县', 233, 0, 0, 'Wengyuan Xian', 'WYN', NULL),
(2327, '440232', '乳源瑶族自治县', 233, 0, 0, 'Ruyuan Yaozu Zizhixian', 'RYN', NULL),
(2328, '440233', '新丰县', 233, 0, 0, 'Xinfeng Xian', 'XFY', NULL),
(2329, '440281', '乐昌市', 233, 0, 0, 'Lechang Shi', 'LEC', NULL),
(2330, '440282', '南雄市', 233, 0, 0, 'Nanxiong Shi', 'NXS', NULL),
(2331, '440301', '市辖区', 234, 0, 0, 'Shixiaqu', '2', NULL),
(2332, '440303', '罗湖区', 234, 0, 0, 'Luohu Qu', 'LHQ', NULL),
(2333, '440304', '福田区', 234, 0, 0, 'Futian Qu', 'FTN', NULL),
(2334, '440305', '南山区', 234, 0, 0, 'Nanshan Qu', 'NSN', '深圳市'),
(2335, '440306', '宝安区', 234, 0, 0, 'Bao,an Qu', 'BAQ', NULL),
(2336, '440307', '龙岗区', 234, 0, 0, 'Longgang Qu', 'LGG', NULL),
(2337, '440308', '盐田区', 234, 0, 0, 'Yan Tian Qu', 'YTQ', NULL),
(2338, '440401', '市辖区', 235, 0, 0, 'Shixiaqu', '2', NULL),
(2339, '440402', '香洲区', 235, 0, 0, 'Xiangzhou Qu', 'XZQ', NULL),
(2340, '440403', '斗门区', 235, 0, 0, 'Doumen Qu', 'DOU', NULL),
(2341, '440404', '金湾区', 235, 0, 0, 'Jinwan Qu', 'JW Q', NULL),
(2342, '440501', '市辖区', 236, 0, 0, 'Shixiaqu', '2', NULL),
(2343, '440507', '龙湖区', 236, 0, 0, 'Longhu Qu', 'LHH', NULL),
(2344, '440511', '金平区', 236, 0, 0, 'Jinping Qu', 'JPQ', NULL),
(2345, '440512', '濠江区', 236, 0, 0, 'Haojiang Qu', 'HJ Q', NULL),
(2346, '440513', '潮阳区', 236, 0, 0, 'Chaoyang  Qu', 'CHY', NULL),
(2347, '440514', '潮南区', 236, 0, 0, 'Chaonan Qu', 'CN Q', NULL),
(2348, '440515', '澄海区', 236, 0, 0, 'Chenghai QU', 'CHS', NULL),
(2349, '440523', '南澳县', 236, 0, 0, 'Nan,ao Xian', 'NAN', NULL),
(2350, '440601', '市辖区', 237, 0, 0, 'Shixiaqu', '2', NULL),
(2351, '440604', '禅城区', 237, 0, 0, 'Chancheng Qu', 'CC Q', NULL),
(2352, '440605', '南海区', 237, 0, 0, 'Nanhai Shi', 'NAH', NULL),
(2353, '440606', '顺德区', 237, 0, 0, 'Shunde Shi', 'SUD', NULL),
(2354, '440607', '三水区', 237, 0, 0, 'Sanshui Shi', 'SJQ', NULL),
(2355, '440608', '高明区', 237, 0, 0, 'Gaoming Shi', 'GOM', NULL),
(2356, '440701', '市辖区', 238, 0, 0, 'Shixiaqu', '2', NULL),
(2357, '440703', '蓬江区', 238, 0, 0, 'Pengjiang Qu', 'PJJ', NULL),
(2358, '440704', '江海区', 238, 0, 0, 'Jianghai Qu', 'JHI', NULL),
(2359, '440705', '新会区', 238, 0, 0, 'Xinhui Shi', 'XIN', NULL),
(2360, '440781', '台山市', 238, 0, 0, 'Taishan Shi', 'TSS', NULL),
(2361, '440783', '开平市', 238, 0, 0, 'Kaiping Shi', 'KPS', NULL),
(2362, '440784', '鹤山市', 238, 0, 0, 'Heshan Shi', 'HES', NULL),
(2363, '440785', '恩平市', 238, 0, 0, 'Enping Shi', 'ENP', NULL),
(2364, '440801', '市辖区', 239, 0, 0, 'Shixiaqu', '2', NULL),
(2365, '440802', '赤坎区', 239, 0, 0, 'Chikan Qu', 'CKQ', NULL),
(2366, '440803', '霞山区', 239, 0, 0, 'Xiashan Qu', 'XAS', NULL),
(2367, '440804', '坡头区', 239, 0, 0, 'Potou Qu', 'PTU', NULL),
(2368, '440811', '麻章区', 239, 0, 0, 'Mazhang Qu', 'MZQ', NULL),
(2369, '440823', '遂溪县', 239, 0, 0, 'Suixi Xian', 'SXI', NULL),
(2370, '440825', '徐闻县', 239, 0, 0, 'Xuwen Xian', 'XWN', NULL),
(2371, '440881', '廉江市', 239, 0, 0, 'Lianjiang Shi', 'LJS', NULL),
(2372, '440882', '雷州市', 239, 0, 0, 'Leizhou Shi', 'LEZ', NULL),
(2373, '440883', '吴川市', 239, 0, 0, 'Wuchuan Shi', 'WCS', NULL),
(2374, '440901', '市辖区', 240, 0, 0, 'Shixiaqu', '2', NULL),
(2375, '440902', '茂南区', 240, 0, 0, 'Maonan Qu', 'MNQ', NULL),
(2376, '440903', '茂港区', 240, 0, 0, 'Maogang Qu', 'MGQ', NULL),
(2377, '440923', '电白县', 240, 0, 0, 'Dianbai Xian', 'DBI', NULL),
(2378, '440981', '高州市', 240, 0, 0, 'Gaozhou Shi', 'GZO', NULL),
(2379, '440982', '化州市', 240, 0, 0, 'Huazhou Shi', 'HZY', NULL),
(2380, '440983', '信宜市', 240, 0, 0, 'Xinyi Shi', 'XYY', NULL),
(2381, '441201', '市辖区', 241, 0, 0, 'Shixiaqu', '2', NULL),
(2382, '441202', '端州区', 241, 0, 0, 'Duanzhou Qu', 'DZQ', NULL),
(2383, '441203', '鼎湖区', 241, 0, 0, 'Dinghu Qu', 'DGH', NULL),
(2384, '441223', '广宁县', 241, 0, 0, 'Guangning Xian', 'GNG', NULL),
(2385, '441224', '怀集县', 241, 0, 0, 'Huaiji Xian', 'HJX', NULL),
(2386, '441225', '封开县', 241, 0, 0, 'Fengkai Xian', 'FKX', NULL),
(2387, '441226', '德庆县', 241, 0, 0, 'Deqing Xian', 'DQY', NULL),
(2388, '441283', '高要市', 241, 0, 0, 'Gaoyao Xian', 'GYY', NULL),
(2389, '441284', '四会市', 241, 0, 0, 'Sihui Shi', 'SHI', NULL),
(2390, '441301', '市辖区', 242, 0, 0, 'Shixiaqu', '2', NULL),
(2391, '441302', '惠城区', 242, 0, 0, 'Huicheng Qu', 'HCQ', NULL),
(2392, '441303', '惠阳区', 242, 0, 0, 'Huiyang Shi', 'HUY', NULL),
(2393, '441322', '博罗县', 242, 0, 0, 'Boluo Xian', 'BOL', NULL),
(2394, '441323', '惠东县', 242, 0, 0, 'Huidong Xian', 'HID', NULL),
(2395, '441324', '龙门县', 242, 0, 0, 'Longmen Xian', 'LMN', NULL),
(2396, '441401', '市辖区', 243, 0, 0, 'Shixiaqu', '2', NULL),
(2397, '441402', '梅江区', 243, 0, 0, 'Meijiang Qu', 'MJQ', NULL),
(2398, '441421', '梅县', 243, 0, 0, 'Mei Xian', 'MEX', NULL),
(2399, '441422', '大埔县', 243, 0, 0, 'Dabu Xian', 'DBX', NULL),
(2400, '441423', '丰顺县', 243, 0, 0, 'Fengshun Xian', 'FES', NULL),
(2401, '441424', '五华县', 243, 0, 0, 'Wuhua Xian', 'WHY', NULL),
(2402, '441426', '平远县', 243, 0, 0, 'Pingyuan Xian', 'PYY', NULL),
(2403, '441427', '蕉岭县', 243, 0, 0, 'Jiaoling Xian', 'JOL', NULL),
(2404, '441481', '兴宁市', 243, 0, 0, 'Xingning Shi', 'XNG', NULL),
(2405, '441501', '市辖区', 244, 0, 0, 'Shixiaqu', '2', NULL),
(2406, '441502', '城区', 244, 0, 0, 'Chengqu', 'CQS', '汕尾市'),
(2407, '441521', '海丰县', 244, 0, 0, 'Haifeng Xian', 'HIF', NULL),
(2408, '441523', '陆河县', 244, 0, 0, 'Luhe Xian', 'LHY', NULL),
(2409, '441581', '陆丰市', 244, 0, 0, 'Lufeng Shi', 'LUF', NULL),
(2410, '441601', '市辖区', 245, 0, 0, 'Shixiaqu', '2', NULL),
(2411, '441602', '源城区', 245, 0, 0, 'Yuancheng Qu', 'YCQ', NULL),
(2412, '441621', '紫金县', 245, 0, 0, 'Zijin Xian', 'ZJY', NULL),
(2413, '441622', '龙川县', 245, 0, 0, 'Longchuan Xian', 'LCY', NULL),
(2414, '441623', '连平县', 245, 0, 0, 'Lianping Xian', 'LNP', NULL),
(2415, '441624', '和平县', 245, 0, 0, 'Heping Xian', 'HPY', NULL),
(2416, '441625', '东源县', 245, 0, 0, 'Dongyuan Xian', 'DYN', NULL),
(2417, '441701', '市辖区', 246, 0, 0, 'Shixiaqu', '2', NULL),
(2418, '441702', '江城区', 246, 0, 0, 'Jiangcheng Qu', 'JCQ', NULL),
(2419, '441721', '阳西县', 246, 0, 0, 'Yangxi Xian', 'YXY', NULL),
(2420, '441723', '阳东县', 246, 0, 0, 'Yangdong Xian', 'YGD', NULL),
(2421, '441781', '阳春市', 246, 0, 0, 'Yangchun Shi', 'YCU', NULL),
(2422, '441801', '市辖区', 247, 0, 0, 'Shixiaqu', '2', NULL),
(2423, '441802', '清城区', 247, 0, 0, 'Qingcheng Qu', 'QCQ', NULL),
(2424, '441821', '佛冈县', 247, 0, 0, 'Fogang Xian', 'FGY', NULL),
(2425, '441823', '阳山县', 247, 0, 0, 'Yangshan Xian', 'YSN', NULL),
(2426, '441825', '连山壮族瑶族自治县', 247, 0, 0, 'Lianshan Zhuangzu Yaozu Zizhixian', 'LSZ', NULL),
(2427, '441826', '连南瑶族自治县', 247, 0, 0, 'Liannanyaozuzizhi Qu', '2', NULL),
(2428, '441827', '清新县', 247, 0, 0, 'Qingxin Xian', 'QGX', NULL),
(2429, '441881', '英德市', 247, 0, 0, 'Yingde Shi', 'YDS', NULL),
(2430, '441882', '连州市', 247, 0, 0, 'Lianzhou Shi', 'LZO', NULL),
(2431, '445101', '市辖区', 250, 0, 0, 'Shixiaqu', '2', NULL),
(2432, '445102', '湘桥区', 250, 0, 0, 'Xiangqiao Qu', 'XQO', NULL),
(2433, '445121', '潮安县', 250, 0, 0, 'Chao,an Xian', 'CAY', NULL),
(2434, '445122', '饶平县', 250, 0, 0, 'Raoping Xian', 'RPG', NULL),
(2435, '445201', '市辖区', 251, 0, 0, 'Shixiaqu', '2', NULL),
(2436, '445202', '榕城区', 251, 0, 0, 'Rongcheng Qu', 'RCH', NULL),
(2437, '445221', '揭东县', 251, 0, 0, 'Jiedong Xian', 'JDX', NULL),
(2438, '445222', '揭西县', 251, 0, 0, 'Jiexi Xian', 'JEX', NULL),
(2439, '445224', '惠来县', 251, 0, 0, 'Huilai Xian', 'HLY', NULL),
(2440, '445281', '普宁市', 251, 0, 0, 'Puning Shi', 'PNG', NULL),
(2441, '445301', '市辖区', 252, 0, 0, 'Shixiaqu', '2', NULL),
(2442, '445302', '云城区', 252, 0, 0, 'Yuncheng Qu', 'YYF', NULL),
(2443, '445321', '新兴县', 252, 0, 0, 'Xinxing Xian', 'XNX', NULL),
(2444, '445322', '郁南县', 252, 0, 0, 'Yunan Xian', 'YNK', NULL),
(2445, '445323', '云安县', 252, 0, 0, 'Yun,an Xian', 'YUA', NULL),
(2446, '445381', '罗定市', 252, 0, 0, 'Luoding Shi', 'LUO', NULL),
(2447, '450101', '市辖区', 253, 0, 0, 'Shixiaqu', '2', NULL),
(2448, '450102', '兴宁区', 253, 0, 0, 'Xingning Qu', 'XNE', NULL),
(2449, '450103', '青秀区', 253, 0, 0, 'Qingxiu Qu', '2', NULL),
(2450, '450105', '江南区', 253, 0, 0, 'Jiangnan Qu', 'JNA', NULL),
(2451, '450107', '西乡塘区', 253, 0, 0, 'Xixiangtang Qu', '2', NULL),
(2452, '450108', '良庆区', 253, 0, 0, 'Liangqing Qu', '2', NULL),
(2453, '450109', '邕宁区', 253, 0, 0, 'Yongning Qu', '2', NULL),
(2454, '450122', '武鸣县', 253, 0, 0, 'Wuming Xian', 'WMG', NULL),
(2455, '450123', '隆安县', 253, 0, 0, 'Long,an Xian', '2', NULL),
(2456, '450124', '马山县', 253, 0, 0, 'Mashan Xian', '2', NULL),
(2457, '450125', '上林县', 253, 0, 0, 'Shanglin Xian', '2', NULL),
(2458, '450126', '宾阳县', 253, 0, 0, 'Binyang Xian', '2', NULL),
(2459, '450127', '横县', 253, 0, 0, 'Heng Xian', '2', NULL),
(2460, '450201', '市辖区', 254, 0, 0, 'Shixiaqu', '2', NULL),
(2461, '450202', '城中区', 254, 0, 0, 'Chengzhong Qu', 'CZG', '柳州市'),
(2462, '450203', '鱼峰区', 254, 0, 0, 'Yufeng Qu', 'YFQ', NULL),
(2463, '450204', '柳南区', 254, 0, 0, 'Liunan Qu', 'LNU', NULL),
(2464, '450205', '柳北区', 254, 0, 0, 'Liubei Qu', 'LBE', NULL),
(2465, '450221', '柳江县', 254, 0, 0, 'Liujiang Xian', 'LUJ', NULL),
(2466, '450222', '柳城县', 254, 0, 0, 'Liucheng Xian', 'LCB', NULL),
(2467, '450223', '鹿寨县', 254, 0, 0, 'Luzhai Xian', '2', NULL),
(2468, '450224', '融安县', 254, 0, 0, 'Rong,an Xian', '2', NULL);
INSERT INTO `ah_region` (`id`, `code`, `name`, `parent`, `level`, `order`, `name_en`, `short_name_en`, `data`) VALUES
(2469, '450225', '融水苗族自治县', 254, 0, 0, 'Rongshui Miaozu Zizhixian', '2', NULL),
(2470, '450226', '三江侗族自治县', 254, 0, 0, 'Sanjiang Dongzu Zizhixian', '2', NULL),
(2471, '450301', '市辖区', 255, 0, 0, 'Shixiaqu', '2', NULL),
(2472, '450302', '秀峰区', 255, 0, 0, 'Xiufeng Qu', 'XUF', NULL),
(2473, '450303', '叠彩区', 255, 0, 0, 'Diecai Qu', 'DCA', NULL),
(2474, '450304', '象山区', 255, 0, 0, 'Xiangshan Qu', 'XSK', NULL),
(2475, '450305', '七星区', 255, 0, 0, 'Qixing Qu', 'QXG', NULL),
(2476, '450311', '雁山区', 255, 0, 0, 'Yanshan Qu', 'YSA', NULL),
(2477, '450321', '阳朔县', 255, 0, 0, 'Yangshuo Xian', 'YSO', NULL),
(2478, '450322', '临桂县', 255, 0, 0, 'Lingui Xian', 'LGI', NULL),
(2479, '450323', '灵川县', 255, 0, 0, 'Lingchuan Xian', 'LCU', NULL),
(2480, '450324', '全州县', 255, 0, 0, 'Quanzhou Xian', 'QZO', NULL),
(2481, '450325', '兴安县', 255, 0, 0, 'Xing,an Xian', 'XAG', NULL),
(2482, '450326', '永福县', 255, 0, 0, 'Yongfu Xian', 'YFU', NULL),
(2483, '450327', '灌阳县', 255, 0, 0, 'Guanyang Xian', 'GNY', NULL),
(2484, '450328', '龙胜各族自治县', 255, 0, 0, 'Longsheng Gezu Zizhixian', 'LSG', NULL),
(2485, '450329', '资源县', 255, 0, 0, 'Ziyuan Xian', 'ZYU', NULL),
(2486, '450330', '平乐县', 255, 0, 0, 'Pingle Xian', 'PLE', NULL),
(2487, '450331', '荔蒲县', 255, 0, 0, 'Lipu Xian', '2', NULL),
(2488, '450332', '恭城瑶族自治县', 255, 0, 0, 'Gongcheng Yaozu Zizhixian', 'GGC', NULL),
(2489, '450401', '市辖区', 256, 0, 0, 'Shixiaqu', '2', NULL),
(2490, '450403', '万秀区', 256, 0, 0, 'Wanxiu Qu', 'WXQ', NULL),
(2491, '450404', '蝶山区', 256, 0, 0, 'Dieshan Qu', 'DES', NULL),
(2492, '450405', '长洲区', 256, 0, 0, 'Changzhou Qu', '2', NULL),
(2493, '450421', '苍梧县', 256, 0, 0, 'Cangwu Xian', 'CAW', NULL),
(2494, '450422', '藤县', 256, 0, 0, 'Teng Xian', '2', NULL),
(2495, '450423', '蒙山县', 256, 0, 0, 'Mengshan Xian', 'MSA', NULL),
(2496, '450481', '岑溪市', 256, 0, 0, 'Cenxi Shi', 'CEX', NULL),
(2497, '450501', '市辖区', 257, 0, 0, 'Shixiaqu', '2', NULL),
(2498, '450502', '海城区', 257, 0, 0, 'Haicheng Qu', 'HCB', NULL),
(2499, '450503', '银海区', 257, 0, 0, 'Yinhai Qu', 'YHB', NULL),
(2500, '450512', '铁山港区', 257, 0, 0, 'Tieshangangqu ', 'TSG', NULL),
(2501, '450521', '合浦县', 257, 0, 0, 'Hepu Xian', 'HPX', NULL),
(2502, '450601', '市辖区', 258, 0, 0, 'Shixiaqu', '2', NULL),
(2503, '450602', '港口区', 258, 0, 0, 'Gangkou Qu', 'GKQ', NULL),
(2504, '450603', '防城区', 258, 0, 0, 'Fangcheng Qu', 'FCQ', NULL),
(2505, '450621', '上思县', 258, 0, 0, 'Shangsi Xian', 'SGS', NULL),
(2506, '450681', '东兴市', 258, 0, 0, 'Dongxing Shi', 'DOX', NULL),
(2507, '450701', '市辖区', 259, 0, 0, 'Shixiaqu', '2', NULL),
(2508, '450702', '钦南区', 259, 0, 0, 'Qinnan Qu', 'QNQ', NULL),
(2509, '450703', '钦北区', 259, 0, 0, 'Qinbei Qu', 'QBQ', NULL),
(2510, '450721', '灵山县', 259, 0, 0, 'Lingshan Xian', 'LSB', NULL),
(2511, '450722', '浦北县', 259, 0, 0, 'Pubei Xian', 'PBE', NULL),
(2512, '450801', '市辖区', 260, 0, 0, 'Shixiaqu', '2', NULL),
(2513, '450802', '港北区', 260, 0, 0, 'Gangbei Qu', 'GBE', NULL),
(2514, '450803', '港南区', 260, 0, 0, 'Gangnan Qu', 'GNQ', NULL),
(2515, '450804', '覃塘区', 260, 0, 0, 'Tantang Qu', '2', NULL),
(2516, '450821', '平南县', 260, 0, 0, 'Pingnan Xian', 'PNN', NULL),
(2517, '450881', '桂平市', 260, 0, 0, 'Guiping Shi', 'GPS', NULL),
(2518, '450901', '市辖区', 261, 0, 0, 'Shixiaqu', '2', NULL),
(2519, '450902', '玉州区', 261, 0, 0, 'Yuzhou Qu', 'YZO', NULL),
(2520, '450921', '容县', 261, 0, 0, 'Rong Xian', 'ROG', NULL),
(2521, '450922', '陆川县', 261, 0, 0, 'Luchuan Xian', 'LCJ', NULL),
(2522, '450923', '博白县', 261, 0, 0, 'Bobai Xian', 'BBA', NULL),
(2523, '450924', '兴业县', 261, 0, 0, 'Xingye Xian', 'XGY', NULL),
(2524, '450981', '北流市', 261, 0, 0, 'Beiliu Shi', 'BLS', NULL),
(2525, '451001', '市辖区', 262, 0, 0, '1', '2', NULL),
(2526, '451002', '右江区', 262, 0, 0, 'Youjiang Qu', '2', NULL),
(2527, '451021', '田阳县', 262, 0, 0, 'Tianyang Xian', '2', NULL),
(2528, '451022', '田东县', 262, 0, 0, 'Tiandong Xian', '2', NULL),
(2529, '451023', '平果县', 262, 0, 0, 'Pingguo Xian', '2', NULL),
(2530, '451024', '德保县', 262, 0, 0, 'Debao Xian', '2', NULL),
(2531, '451025', '靖西县', 262, 0, 0, 'Jingxi Xian', '2', NULL),
(2532, '451026', '那坡县', 262, 0, 0, 'Napo Xian', '2', NULL),
(2533, '451027', '凌云县', 262, 0, 0, 'Lingyun Xian', '2', NULL),
(2534, '451028', '乐业县', 262, 0, 0, 'Leye Xian', '2', NULL),
(2535, '451029', '田林县', 262, 0, 0, 'Tianlin Xian', '2', NULL),
(2536, '451030', '西林县', 262, 0, 0, 'Xilin Xian', '2', NULL),
(2537, '451031', '隆林各族自治县', 262, 0, 0, 'Longlin Gezu Zizhixian', '2', NULL),
(2538, '451101', '市辖区', 263, 0, 0, '1', '2', NULL),
(2539, '451102', '八步区', 263, 0, 0, 'Babu Qu', '2', NULL),
(2540, '451121', '昭平县', 263, 0, 0, 'Zhaoping Xian', '2', NULL),
(2541, '451122', '钟山县', 263, 0, 0, 'Zhongshan Xian', '2', NULL),
(2542, '451123', '富川瑶族自治县', 263, 0, 0, 'Fuchuan Yaozu Zizhixian', '2', NULL),
(2543, '451201', '市辖区', 264, 0, 0, '1', '2', NULL),
(2544, '451202', '金城江区', 264, 0, 0, 'Jinchengjiang Qu', '2', NULL),
(2545, '451221', '南丹县', 264, 0, 0, 'Nandan Xian', '2', NULL),
(2546, '451222', '天峨县', 264, 0, 0, 'Tian,e Xian', '2', NULL),
(2547, '451223', '凤山县', 264, 0, 0, 'Fengshan Xian', '2', NULL),
(2548, '451224', '东兰县', 264, 0, 0, 'Donglan Xian', '2', NULL),
(2549, '451225', '罗城仫佬族自治县', 264, 0, 0, 'Luocheng Mulaozu Zizhixian', '2', NULL),
(2550, '451226', '环江毛南族自治县', 264, 0, 0, 'Huanjiang Maonanzu Zizhixian', '2', NULL),
(2551, '451227', '巴马瑶族自治县', 264, 0, 0, 'Bama Yaozu Zizhixian', '2', NULL),
(2552, '451228', '都安瑶族自治县', 264, 0, 0, 'Du,an Yaozu Zizhixian', '2', NULL),
(2553, '451229', '大化瑶族自治县', 264, 0, 0, 'Dahua Yaozu Zizhixian', '2', NULL),
(2554, '451281', '宜州市', 264, 0, 0, 'Yizhou Shi', '2', NULL),
(2555, '451301', '市辖区', 265, 0, 0, '1', '2', NULL),
(2556, '451302', '兴宾区', 265, 0, 0, 'Xingbin Qu', '2', NULL),
(2557, '451321', '忻城县', 265, 0, 0, 'Xincheng Xian', '2', NULL),
(2558, '451322', '象州县', 265, 0, 0, 'Xiangzhou Xian', '2', NULL),
(2559, '451323', '武宣县', 265, 0, 0, 'Wuxuan Xian', '2', NULL),
(2560, '451324', '金秀瑶族自治县', 265, 0, 0, 'Jinxiu Yaozu Zizhixian', '2', NULL),
(2561, '451381', '合山市', 265, 0, 0, 'Heshan Shi', '2', NULL),
(2562, '451401', '市辖区', 266, 0, 0, '1', '2', NULL),
(2563, '451402', '江洲区', 266, 0, 0, 'Jiangzhou Qu', '2', NULL),
(2564, '451421', '扶绥县', 266, 0, 0, 'Fusui Xian', '2', NULL),
(2565, '451422', '宁明县', 266, 0, 0, 'Ningming Xian', '2', NULL),
(2566, '451423', '龙州县', 266, 0, 0, 'Longzhou Xian', '2', NULL),
(2567, '451424', '大新县', 266, 0, 0, 'Daxin Xian', '2', NULL),
(2568, '451425', '天等县', 266, 0, 0, 'Tiandeng Xian', '2', NULL),
(2569, '451481', '凭祥市', 266, 0, 0, 'Pingxiang Shi', '2', NULL),
(2570, '460101', '市辖区', 267, 0, 0, 'Shixiaqu', '2', NULL),
(2571, '460105', '秀英区', 267, 0, 0, 'Xiuying Qu', 'XYH', NULL),
(2572, '460106', '龙华区', 267, 0, 0, 'LongHua Qu', 'LH', NULL),
(2573, '460107', '琼山区', 267, 0, 0, 'QiongShan Qu', 'QS', NULL),
(2574, '460108', '美兰区', 267, 0, 0, 'MeiLan Qu', 'ML', NULL),
(2575, '460201', '市辖区', 268, 0, 0, 'Shixiaqu', '2', NULL),
(2576, '469001', '五指山市', 269, 0, 0, 'Wuzhishan Qu', '2', NULL),
(2577, '469002', '琼海市', 269, 0, 0, 'Qionghai Shi', '2', NULL),
(2578, '469003', '儋州市', 269, 0, 0, 'Danzhou Shi', '2', NULL),
(2579, '469005', '文昌市', 269, 0, 0, 'Wenchang Shi', '2', NULL),
(2580, '469006', '万宁市', 269, 0, 0, 'Wanning Shi', '2', NULL),
(2581, '469007', '东方市', 269, 0, 0, 'Dongfang Shi', '2', NULL),
(2582, '469021', '定安县', 269, 0, 0, 'Ding,an Xian', '2', NULL),
(2583, '469022', '屯昌县', 269, 0, 0, 'Tunchang Xian', '2', NULL),
(2584, '469023', '澄迈县', 269, 0, 0, 'Chengmai Xian', '2', NULL),
(2585, '469024', '临高县', 269, 0, 0, 'Lingao Xian', '2', NULL),
(2586, '469025', '白沙黎族自治县', 269, 0, 0, 'Baisha Lizu Zizhixian', '2', NULL),
(2587, '469026', '昌江黎族自治县', 269, 0, 0, 'Changjiang Lizu Zizhixian', '2', NULL),
(2588, '469027', '乐东黎族自治县', 269, 0, 0, 'Ledong Lizu Zizhixian', '2', NULL),
(2589, '469028', '陵水黎族自治县', 269, 0, 0, 'Lingshui Lizu Zizhixian', '2', NULL),
(2590, '469029', '保亭黎族苗族自治县', 269, 0, 0, 'Baoting Lizu Miaozu Zizhixian', '2', NULL),
(2591, '469030', '琼中黎族苗族自治县', 269, 0, 0, 'Qiongzhong Lizu Miaozu Zizhixian', '2', NULL),
(2592, '469031', '西沙群岛', 269, 0, 0, 'Xisha Qundao', '2', NULL),
(2593, '469032', '南沙群岛', 269, 0, 0, 'Nansha Qundao', '2', NULL),
(2594, '469033', '中沙群岛的岛礁及其海域', 269, 0, 0, 'Zhongsha Qundao de Daojiao Jiqi Haiyu', '2', NULL),
(2595, '500101', '万州区', 270, 0, 0, 'Wanzhou Qu', 'WZO ', NULL),
(2596, '500102', '涪陵区', 270, 0, 0, 'Fuling Qu', 'FLG', NULL),
(2597, '500103', '渝中区', 270, 0, 0, 'Yuzhong Qu', 'YZQ', NULL),
(2598, '500104', '大渡口区', 270, 0, 0, 'Dadukou Qu', 'DDK', NULL),
(2599, '500105', '江北区', 270, 0, 0, 'Jiangbei Qu', 'JBE', '重庆市'),
(2600, '500106', '沙坪坝区', 270, 0, 0, 'Shapingba Qu', 'SPB', NULL),
(2601, '500107', '九龙坡区', 270, 0, 0, 'Jiulongpo Qu', 'JLP', NULL),
(2602, '500108', '南岸区', 270, 0, 0, 'Nan,an Qu', 'NAQ', NULL),
(2603, '500109', '北碚区', 270, 0, 0, 'Beibei Qu', 'BBE', NULL),
(2604, '500110', '万盛区', 270, 0, 0, 'Wansheng Qu', 'WSQ', NULL),
(2605, '500111', '双桥区', 270, 0, 0, 'Shuangqiao Qu', 'SQQ', '重庆市'),
(2606, '500112', '渝北区', 270, 0, 0, 'Yubei Qu', 'YBE', NULL),
(2607, '500113', '巴南区', 270, 0, 0, 'Banan Qu', 'BNN', NULL),
(2608, '500114', '黔江区', 270, 0, 0, 'Qianjiang Qu', '2', NULL),
(2609, '500115', '长寿区', 270, 0, 0, 'Changshou Qu', '2', NULL),
(2610, '500222', '綦江县', 271, 0, 0, 'Qijiang Xian', 'QJG', NULL),
(2611, '500223', '潼南县', 271, 0, 0, 'Tongnan Xian', 'TNN', NULL),
(2612, '500224', '铜梁县', 271, 0, 0, 'Tongliang Xian', 'TGL', NULL),
(2613, '500225', '大足县', 271, 0, 0, 'Dazu Xian', 'DZX', NULL),
(2614, '500226', '荣昌县', 271, 0, 0, 'Rongchang Xian', 'RGC', NULL),
(2615, '500227', '璧山县', 271, 0, 0, 'Bishan Xian', 'BSY', NULL),
(2616, '500228', '梁平县', 271, 0, 0, 'Liangping Xian', 'LGP', NULL),
(2617, '500229', '城口县', 271, 0, 0, 'Chengkou Xian', 'CKO', NULL),
(2618, '500230', '丰都县', 271, 0, 0, 'Fengdu Xian', 'FDU', NULL),
(2619, '500231', '垫江县', 271, 0, 0, 'Dianjiang Xian', 'DJG', NULL),
(2620, '500232', '武隆县', 271, 0, 0, 'Wulong Xian', 'WLG', NULL),
(2621, '500233', '忠县', 271, 0, 0, 'Zhong Xian', 'ZHX', NULL),
(2622, '500234', '开县', 271, 0, 0, 'Kai Xian', 'KAI', NULL),
(2623, '500235', '云阳县', 271, 0, 0, 'Yunyang Xian', 'YNY', NULL),
(2624, '500236', '奉节县', 271, 0, 0, 'Fengjie Xian', 'FJE', NULL),
(2625, '500237', '巫山县', 271, 0, 0, 'Wushan Xian', 'WSN', NULL),
(2626, '500238', '巫溪县', 271, 0, 0, 'Wuxi Xian', 'WXX', NULL),
(2627, '500240', '石柱土家族自治县', 271, 0, 0, 'Shizhu Tujiazu Zizhixian', 'SZY', NULL),
(2628, '500241', '秀山土家族苗族自治县', 271, 0, 0, 'Xiushan Tujiazu Miaozu Zizhixian', 'XUS', NULL),
(2629, '500242', '酉阳土家族苗族自治县', 271, 0, 0, 'Youyang Tujiazu Miaozu Zizhixian', 'YUY', NULL),
(2630, '500243', '彭水苗族土家族自治县', 271, 0, 0, 'Pengshui Miaozu Tujiazu Zizhixian', 'PSU', NULL),
(2631, '500116', '江津区', 272, 0, 0, 'Jiangjin Shi', '2', '重庆市'),
(2632, '500117', '合川区', 272, 0, 0, 'Hechuan Shi', '2', '重庆市'),
(2633, '500118', '永川区', 272, 0, 0, 'Yongchuan Shi', '2', '重庆市'),
(2634, '500119', '南川区', 272, 0, 0, 'Nanchuan Shi', '2', '重庆市'),
(2635, '510101', '市辖区', 273, 0, 0, 'Shixiaqu', '2', NULL),
(2636, '510104', '锦江区', 273, 0, 0, 'Jinjiang Qu', 'JJQ', NULL),
(2637, '510105', '青羊区', 273, 0, 0, 'Qingyang Qu', 'QYQ', NULL),
(2638, '510106', '金牛区', 273, 0, 0, 'Jinniu Qu', 'JNU', NULL),
(2639, '510107', '武侯区', 273, 0, 0, 'Wuhou Qu', 'WHQ', NULL),
(2640, '510108', '成华区', 273, 0, 0, 'Chenghua Qu', 'CHQ', NULL),
(2641, '510112', '龙泉驿区', 273, 0, 0, 'Longquanyi Qu', 'LQY', NULL),
(2642, '510113', '青白江区', 273, 0, 0, 'Qingbaijiang Qu', 'QBJ', NULL),
(2643, '510114', '新都区', 273, 0, 0, 'Xindu Qu', '2', NULL),
(2644, '510115', '温江区', 273, 0, 0, 'Wenjiang Qu', '2', NULL),
(2645, '510121', '金堂县', 273, 0, 0, 'Jintang Xian', 'JNT', NULL),
(2646, '510122', '双流县', 273, 0, 0, 'Shuangliu Xian', 'SLU', NULL),
(2647, '510124', '郫县', 273, 0, 0, 'Pi Xian', 'PIX', NULL),
(2648, '510129', '大邑县', 273, 0, 0, 'Dayi Xian', 'DYI', NULL),
(2649, '510131', '蒲江县', 273, 0, 0, 'Pujiang Xian', 'PJX', NULL),
(2650, '510132', '新津县', 273, 0, 0, 'Xinjin Xian', 'XJC', NULL),
(2651, '510181', '都江堰市', 273, 0, 0, 'Dujiangyan Shi', 'DJY', NULL),
(2652, '510182', '彭州市', 273, 0, 0, 'Pengzhou Shi', 'PZS', NULL),
(2653, '510183', '邛崃市', 273, 0, 0, 'Qionglai Shi', 'QLA', NULL),
(2654, '510184', '崇州市', 273, 0, 0, 'Chongzhou Shi', 'CZO', NULL),
(2655, '510301', '市辖区', 274, 0, 0, 'Shixiaqu', '2', NULL),
(2656, '510302', '自流井区', 274, 0, 0, 'Ziliujing Qu', 'ZLJ', NULL),
(2657, '510303', '贡井区', 274, 0, 0, 'Gongjing Qu', '2', NULL),
(2658, '510304', '大安区', 274, 0, 0, 'Da,an Qu', 'DAQ', NULL),
(2659, '510311', '沿滩区', 274, 0, 0, 'Yantan Qu', 'YTN', NULL),
(2660, '510321', '荣县', 274, 0, 0, 'Rong Xian', 'RGX', NULL),
(2661, '510322', '富顺县', 274, 0, 0, 'Fushun Xian', 'FSH', NULL),
(2662, '510401', '市辖区', 275, 0, 0, 'Shixiaqu', '2', NULL),
(2663, '510402', '东区', 275, 0, 0, 'Dong Qu', 'DQP', NULL),
(2664, '510403', '西区', 275, 0, 0, 'Xi Qu', 'XIQ', NULL),
(2665, '510411', '仁和区', 275, 0, 0, 'Renhe Qu', 'RHQ', NULL),
(2666, '510421', '米易县', 275, 0, 0, 'Miyi Xian', 'MIY', NULL),
(2667, '510422', '盐边县', 275, 0, 0, 'Yanbian Xian', 'YBN', NULL),
(2668, '510501', '市辖区', 276, 0, 0, 'Shixiaqu', '2', NULL),
(2669, '510502', '江阳区', 276, 0, 0, 'Jiangyang Qu', 'JYB', NULL),
(2670, '510503', '纳溪区', 276, 0, 0, 'Naxi Qu', 'NXI', NULL),
(2671, '510504', '龙马潭区', 276, 0, 0, 'Longmatan Qu', 'LMT', NULL),
(2672, '510521', '泸县', 276, 0, 0, 'Lu Xian', 'LUX', NULL),
(2673, '510522', '合江县', 276, 0, 0, 'Hejiang Xian', 'HEJ', NULL),
(2674, '510524', '叙永县', 276, 0, 0, 'Xuyong Xian', 'XYO', NULL),
(2675, '510525', '古蔺县', 276, 0, 0, 'Gulin Xian', 'GUL', NULL),
(2676, '510601', '市辖区', 277, 0, 0, 'Shixiaqu', '2', NULL),
(2677, '510603', '旌阳区', 277, 0, 0, 'Jingyang Qu', 'JYF', NULL),
(2678, '510623', '中江县', 277, 0, 0, 'Zhongjiang Xian', 'ZGJ', NULL),
(2679, '510626', '罗江县', 277, 0, 0, 'Luojiang Xian', 'LOJ', NULL),
(2680, '510681', '广汉市', 277, 0, 0, 'Guanghan Shi', 'GHN', NULL),
(2681, '510682', '什邡市', 277, 0, 0, 'Shifang Shi', 'SFS', NULL),
(2682, '510683', '绵竹市', 277, 0, 0, 'Jinzhou Shi', 'MZU', NULL),
(2683, '510701', '市辖区', 278, 0, 0, 'Shixiaqu', '2', NULL),
(2684, '510703', '涪城区', 278, 0, 0, 'Fucheng Qu', 'FCM', NULL),
(2685, '510704', '游仙区', 278, 0, 0, 'Youxian Qu', 'YXM', NULL),
(2686, '510722', '三台县', 278, 0, 0, 'Santai Xian', 'SNT', NULL),
(2687, '510723', '盐亭县', 278, 0, 0, 'Yanting Xian', 'YTC', NULL),
(2688, '510724', '安县', 278, 0, 0, 'An Xian', 'AXN', NULL),
(2689, '510725', '梓潼县', 278, 0, 0, 'Zitong Xian', 'ZTG', NULL),
(2690, '510726', '北川羌族自治县', 278, 0, 0, 'Beichuanqiangzuzizhi Qu', '2', NULL),
(2691, '510727', '平武县', 278, 0, 0, 'Pingwu Xian', 'PWU', NULL),
(2692, '510781', '江油市', 278, 0, 0, 'Jiangyou Shi', 'JYO', NULL),
(2693, '510801', '市辖区', 279, 0, 0, 'Shixiaqu', '2', NULL),
(2694, '511002', '市中区', 279, 0, 0, 'Shizhong Qu', 'SZM', '广元市'),
(2695, '510811', '元坝区', 279, 0, 0, 'Yuanba Qu', 'YBQ', NULL),
(2696, '510812', '朝天区', 279, 0, 0, 'Chaotian Qu', 'CTN', NULL),
(2697, '510821', '旺苍县', 279, 0, 0, 'Wangcang Xian', 'WGC', NULL),
(2698, '510822', '青川县', 279, 0, 0, 'Qingchuan Xian', 'QCX', NULL),
(2699, '510823', '剑阁县', 279, 0, 0, 'Jiange Xian', 'JGE', NULL),
(2700, '510824', '苍溪县', 279, 0, 0, 'Cangxi Xian', 'CXC', NULL),
(2701, '510901', '市辖区', 280, 0, 0, 'Shixiaqu', '2', NULL),
(2702, '510903', '船山区', 280, 0, 0, 'Chuanshan Qu', '2', NULL),
(2703, '510904', '安居区', 280, 0, 0, 'Anju Qu', '2', NULL),
(2704, '510921', '蓬溪县', 280, 0, 0, 'Pengxi Xian', 'PXI', NULL),
(2705, '510922', '射洪县', 280, 0, 0, 'Shehong Xian', 'SHE', NULL),
(2706, '510923', '大英县', 280, 0, 0, 'Daying Xian', 'DAY', NULL),
(2707, '511001', '市辖区', 281, 0, 0, 'Shixiaqu', '2', NULL),
(2708, '511002', '市中区', 281, 0, 0, 'Shizhong Qu', 'SZM', '内江市'),
(2709, '511011', '东兴区', 281, 0, 0, 'Dongxing Qu', 'DXQ', NULL),
(2710, '511024', '威远县', 281, 0, 0, 'Weiyuan Xian', 'WYU', NULL),
(2711, '511025', '资中县', 281, 0, 0, 'Zizhong Xian', 'ZZC', NULL),
(2712, '511028', '隆昌县', 281, 0, 0, 'Longchang Xian', 'LCC', NULL),
(2713, '511101', '市辖区', 282, 0, 0, 'Shixiaqu', '2', NULL),
(2714, '511102', '市中区', 282, 0, 0, 'Shizhong Qu', 'SZP', '乐山市'),
(2715, '511111', '沙湾区', 282, 0, 0, 'Shawan Qu', 'SWN', NULL),
(2716, '511112', '五通桥区', 282, 0, 0, 'Wutongqiao Qu', 'WTQ', NULL),
(2717, '511113', '金口河区', 282, 0, 0, 'Jinkouhe Qu', 'JKH', NULL),
(2718, '511123', '犍为县', 282, 0, 0, 'Qianwei Xian', 'QWE', NULL),
(2719, '511124', '井研县', 282, 0, 0, 'Jingyan Xian', 'JYA', NULL),
(2720, '511126', '夹江县', 282, 0, 0, 'Jiajiang Xian', 'JJC', NULL),
(2721, '511129', '沐川县', 282, 0, 0, 'Muchuan Xian', 'MCH', NULL),
(2722, '511132', '峨边彝族自治县', 282, 0, 0, 'Ebian Yizu Zizhixian', 'EBN', NULL),
(2723, '511133', '马边彝族自治县', 282, 0, 0, 'Mabian Yizu Zizhixian', 'MBN', NULL),
(2724, '511181', '峨眉山市', 282, 0, 0, 'Emeishan Shi', 'EMS', NULL),
(2725, '511301', '市辖区', 283, 0, 0, 'Shixiaqu', '2', NULL),
(2726, '511302', '顺庆区', 283, 0, 0, 'Shunqing Xian', 'SQG', NULL),
(2727, '511303', '高坪区', 283, 0, 0, 'Gaoping Qu', 'GPQ', NULL),
(2728, '511304', '嘉陵区', 283, 0, 0, 'Jialing Qu', 'JLG', NULL),
(2729, '511321', '南部县', 283, 0, 0, 'Nanbu Xian', 'NBU', NULL),
(2730, '511322', '营山县', 283, 0, 0, 'Yingshan Xian', 'YGS', NULL),
(2731, '511323', '蓬安县', 283, 0, 0, 'Peng,an Xian', 'PGA', NULL),
(2732, '511324', '仪陇县', 283, 0, 0, 'Yilong Xian', 'YLC', NULL),
(2733, '511325', '西充县', 283, 0, 0, 'Xichong Xian', 'XCO', NULL),
(2734, '511381', '阆中市', 283, 0, 0, 'Langzhong Shi', 'LZJ', NULL),
(2735, '511401', '市辖区', 284, 0, 0, '1', '2', NULL),
(2736, '511402', '东坡区', 284, 0, 0, 'Dongpo Qu', '2', NULL),
(2737, '511421', '仁寿县', 284, 0, 0, 'Renshou Xian', '2', NULL),
(2738, '511422', '彭山县', 284, 0, 0, 'Pengshan Xian', '2', NULL),
(2739, '511423', '洪雅县', 284, 0, 0, 'Hongya Xian', '2', NULL),
(2740, '511424', '丹棱县', 284, 0, 0, 'Danling Xian', '2', NULL),
(2741, '511425', '青神县', 284, 0, 0, 'Qingshen Xian', '2', NULL),
(2742, '511501', '市辖区', 285, 0, 0, 'Shixiaqu', '2', NULL),
(2743, '511502', '翠屏区', 285, 0, 0, 'Cuiping Qu', 'CPQ', NULL),
(2744, '511521', '宜宾县', 285, 0, 0, 'Yibin Xian', 'YBX', NULL),
(2745, '511522', '南溪县', 285, 0, 0, 'Nanxi Xian', 'NNX', NULL),
(2746, '511523', '江安县', 285, 0, 0, 'Jiang,an Xian', 'JAC', NULL),
(2747, '511524', '长宁县', 285, 0, 0, 'Changning Xian', 'CNX', NULL),
(2748, '511525', '高县', 285, 0, 0, 'Gao Xian', 'GAO', NULL),
(2749, '511526', '珙县', 285, 0, 0, 'Gong Xian', 'GOG', NULL),
(2750, '511527', '筠连县', 285, 0, 0, 'Junlian Xian', 'JNL', NULL),
(2751, '511528', '兴文县', 285, 0, 0, 'Xingwen Xian', 'XWC', NULL),
(2752, '511529', '屏山县', 285, 0, 0, 'Pingshan Xian', 'PSC', NULL),
(2753, '511601', '市辖区', 286, 0, 0, 'Shixiaqu', '2', NULL),
(2754, '511602', '广安区', 286, 0, 0, 'Guang,an Qu', 'GAQ', NULL),
(2755, '511621', '岳池县', 286, 0, 0, 'Yuechi Xian', 'YCC', NULL),
(2756, '511622', '武胜县', 286, 0, 0, 'Wusheng Xian', 'WSG', NULL),
(2757, '511623', '邻水县', 286, 0, 0, 'Linshui Xian', 'LSH', NULL),
(2759, '511701', '市辖区', 287, 0, 0, '1', '2', NULL),
(2760, '511702', '通川区', 287, 0, 0, 'Tongchuan Qu', '2', NULL),
(2761, '511721', '达县', 287, 0, 0, 'Da Xian', '2', NULL),
(2762, '511722', '宣汉县', 287, 0, 0, 'Xuanhan Xian', '2', NULL),
(2763, '511723', '开江县', 287, 0, 0, 'Kaijiang Xian', '2', NULL),
(2764, '511724', '大竹县', 287, 0, 0, 'Dazhu Xian', '2', NULL),
(2765, '511725', '渠县', 287, 0, 0, 'Qu Xian', '2', NULL),
(2766, '511781', '万源市', 287, 0, 0, 'Wanyuan Shi', '2', NULL),
(2767, '511801', '市辖区', 288, 0, 0, '1', '2', NULL),
(2768, '511802', '雨城区', 288, 0, 0, 'Yucheg Qu', '2', NULL),
(2769, '511821', '名山县', 288, 0, 0, 'Mingshan Xian', '2', NULL),
(2770, '511822', '荥经县', 288, 0, 0, 'Yingjing Xian', '2', NULL),
(2771, '511823', '汉源县', 288, 0, 0, 'Hanyuan Xian', '2', NULL),
(2772, '511824', '石棉县', 288, 0, 0, 'Shimian Xian', '2', NULL),
(2773, '511825', '天全县', 288, 0, 0, 'Tianquan Xian', '2', NULL),
(2774, '511826', '芦山县', 288, 0, 0, 'Lushan Xian', '2', NULL),
(2775, '511827', '宝兴县', 288, 0, 0, 'Baoxing Xian', '2', NULL),
(2776, '511901', '市辖区', 289, 0, 0, '1', '2', NULL),
(2777, '511902', '巴州区', 289, 0, 0, 'Bazhou Qu', '2', NULL),
(2778, '511921', '通江县', 289, 0, 0, 'Tongjiang Xian', '2', NULL),
(2779, '511922', '南江县', 289, 0, 0, 'Nanjiang Xian', '2', NULL),
(2780, '511923', '平昌县', 289, 0, 0, 'Pingchang Xian', '2', NULL),
(2781, '512001', '市辖区', 290, 0, 0, '1', '2', NULL),
(2782, '512002', '雁江区', 290, 0, 0, 'Yanjiang Qu', '2', NULL),
(2783, '512021', '安岳县', 290, 0, 0, 'Anyue Xian', '2', NULL),
(2784, '512022', '乐至县', 290, 0, 0, 'Lezhi Xian', '2', NULL),
(2785, '512081', '简阳市', 290, 0, 0, 'Jianyang Shi', '2', NULL),
(2786, '513221', '汶川县', 291, 0, 0, 'Wenchuan Xian', 'WNC', NULL),
(2787, '513222', '理县', 291, 0, 0, 'Li Xian', 'LXC', NULL),
(2788, '513223', '茂县', 291, 0, 0, 'Mao Xian', 'MAO', NULL),
(2789, '513224', '松潘县', 291, 0, 0, 'Songpan Xian', 'SOP', NULL),
(2790, '513225', '九寨沟县', 291, 0, 0, 'Jiuzhaigou Xian', 'JZG', NULL),
(2791, '513226', '金川县', 291, 0, 0, 'Jinchuan Xian', 'JCH', NULL),
(2792, '513227', '小金县', 291, 0, 0, 'Xiaojin Xian', 'XJX', NULL),
(2793, '513228', '黑水县', 291, 0, 0, 'Heishui Xian', 'HIS', NULL),
(2794, '513229', '马尔康县', 291, 0, 0, 'Barkam Xian', 'BAK', NULL),
(2795, '513230', '壤塘县', 291, 0, 0, 'Zamtang Xian', 'ZAM', NULL),
(2796, '513231', '阿坝县', 291, 0, 0, 'Aba(Ngawa) Xian', 'ABX', NULL),
(2797, '513232', '若尔盖县', 291, 0, 0, 'ZoigeXian', 'ZOI', NULL),
(2798, '513233', '红原县', 291, 0, 0, 'Hongyuan Xian', 'HOY', NULL),
(2799, '513321', '康定县', 292, 0, 0, 'Kangding(Dardo) Xian', 'KDX', NULL),
(2800, '513322', '泸定县', 292, 0, 0, 'Luding(Jagsamka) Xian', 'LUD', NULL),
(2801, '513323', '丹巴县', 292, 0, 0, 'Danba(Rongzhag) Xian', 'DBA', NULL),
(2802, '513324', '九龙县', 292, 0, 0, 'Jiulong(Gyaisi) Xian', 'JLC', NULL),
(2803, '513325', '雅江县', 292, 0, 0, 'Yajiang(Nyagquka) Xian', 'YAJ', NULL),
(2804, '513326', '道孚县', 292, 0, 0, 'Dawu Xian', 'DAW', NULL),
(2805, '513327', '炉霍县', 292, 0, 0, 'Luhuo(Zhaggo) Xian', 'LUH', NULL),
(2806, '513328', '甘孜县', 292, 0, 0, 'Garze Xian', 'GRZ', NULL),
(2807, '513329', '新龙县', 292, 0, 0, 'Xinlong(Nyagrong) Xian', 'XLG', NULL),
(2808, '513330', '德格县', 292, 0, 0, 'DegeXian', 'DEG', NULL),
(2809, '513331', '白玉县', 292, 0, 0, 'Baiyu Xian', 'BYC', NULL),
(2810, '513332', '石渠县', 292, 0, 0, 'Serxv Xian', 'SER', NULL),
(2811, '513333', '色达县', 292, 0, 0, 'Sertar Xian', 'STX', NULL),
(2812, '513334', '理塘县', 292, 0, 0, 'Litang Xian', 'LIT', NULL),
(2813, '513335', '巴塘县', 292, 0, 0, 'Batang Xian', 'BTC', NULL),
(2814, '513336', '乡城县', 292, 0, 0, 'Xiangcheng(Qagcheng) Xian', 'XCC', NULL),
(2815, '513337', '稻城县', 292, 0, 0, 'Daocheng(Dabba) Xian', 'DCX', NULL),
(2816, '513338', '得荣县', 292, 0, 0, 'Derong Xian', 'DER', NULL),
(2817, '513401', '西昌市', 293, 0, 0, 'Xichang Shi', 'XCA', NULL),
(2818, '513422', '木里藏族自治县', 293, 0, 0, 'Muli Zangzu Zizhixian', 'MLI', NULL),
(2819, '513423', '盐源县', 293, 0, 0, 'Yanyuan Xian', 'YYU', NULL),
(2820, '513424', '德昌县', 293, 0, 0, 'Dechang Xian', 'DEC', NULL),
(2821, '513425', '会理县', 293, 0, 0, 'Huili Xian', 'HLI', NULL),
(2822, '513426', '会东县', 293, 0, 0, 'Huidong Xian', 'HDG', NULL),
(2823, '513427', '宁南县', 293, 0, 0, 'Ningnan Xian', 'NIN', NULL),
(2824, '513428', '普格县', 293, 0, 0, 'Puge Xian', 'PGE', NULL),
(2825, '513429', '布拖县', 293, 0, 0, 'Butuo Xian', 'BTO', NULL),
(2826, '513430', '金阳县', 293, 0, 0, 'Jinyang Xian', 'JYW', NULL),
(2827, '513431', '昭觉县', 293, 0, 0, 'Zhaojue Xian', 'ZJE', NULL),
(2828, '513432', '喜德县', 293, 0, 0, 'Xide Xian', 'XDE', NULL),
(2829, '513433', '冕宁县', 293, 0, 0, 'Mianning Xian', 'MNG', NULL),
(2830, '513434', '越西县', 293, 0, 0, 'Yuexi Xian', 'YXC', NULL),
(2831, '513435', '甘洛县', 293, 0, 0, 'Ganluo Xian', 'GLO', NULL),
(2832, '513436', '美姑县', 293, 0, 0, 'Meigu Xian', 'MEG', NULL),
(2833, '513437', '雷波县', 293, 0, 0, 'Leibo Xian', 'LBX', NULL),
(2834, '520101', '市辖区', 294, 0, 0, 'Shixiaqu', '2', NULL),
(2835, '520102', '南明区', 294, 0, 0, 'Nanming Qu', 'NMQ', NULL),
(2836, '520103', '云岩区', 294, 0, 0, 'Yunyan Qu', 'YYQ', NULL),
(2837, '520111', '花溪区', 294, 0, 0, 'Huaxi Qu', 'HXI', NULL),
(2838, '520112', '乌当区', 294, 0, 0, 'Wudang Qu', 'WDQ', NULL),
(2839, '520113', '白云区', 294, 0, 0, 'Baiyun Qu', 'BYU', '贵阳市'),
(2840, '520114', '小河区', 294, 0, 0, 'Xiaohe Qu', '2', NULL),
(2841, '520121', '开阳县', 294, 0, 0, 'Kaiyang Xian', 'KYG', NULL),
(2842, '520122', '息烽县', 294, 0, 0, 'Xifeng Xian', 'XFX', NULL),
(2843, '520123', '修文县', 294, 0, 0, 'Xiuwen Xian', 'XWX', NULL),
(2844, '520181', '清镇市', 294, 0, 0, 'Qingzhen Shi', 'QZN', NULL),
(2845, '520201', '钟山区', 295, 0, 0, 'Zhongshan Qu', 'ZSQ', NULL),
(2846, '520203', '六枝特区', 295, 0, 0, 'Liuzhi Tequ', 'LZT', NULL),
(2847, '520221', '水城县', 295, 0, 0, 'Shuicheng Xian', 'SUC', NULL),
(2848, '520222', '盘县', 295, 0, 0, 'Pan Xian', '2', NULL),
(2849, '520301', '市辖区', 296, 0, 0, 'Shixiaqu', '2', NULL),
(2850, '520302', '红花岗区', 296, 0, 0, 'Honghuagang Qu', 'HHG', NULL),
(2851, '520303', '汇川区', 296, 0, 0, 'Huichuan Qu', '2', NULL),
(2852, '520321', '遵义县', 296, 0, 0, 'Zunyi Xian', 'ZYI', NULL),
(2853, '520322', '桐梓县', 296, 0, 0, 'Tongzi Xian', 'TZI', NULL),
(2854, '520323', '绥阳县', 296, 0, 0, 'Suiyang Xian', 'SUY', NULL),
(2855, '520324', '正安县', 296, 0, 0, 'Zhengan Xan', '2', NULL),
(2856, '520325', '道真仡佬族苗族自治县', 296, 0, 0, 'Daozhen Gelaozu Miaozu Zizhixian', 'DZN', NULL),
(2857, '520326', '务川仡佬族苗族自治县', 296, 0, 0, 'Wuchuan Gelaozu Miaozu Zizhixian', 'WCU', NULL),
(2858, '520327', '凤冈县', 296, 0, 0, 'Fenggang Xian', 'FGG', NULL),
(2859, '520328', '湄潭县', 296, 0, 0, 'Meitan Xian', 'MTN', NULL),
(2860, '520329', '余庆县', 296, 0, 0, 'Yuqing Xian', 'YUQ', NULL),
(2861, '520330', '习水县', 296, 0, 0, 'Xishui Xian', 'XSI', NULL),
(2862, '520381', '赤水市', 296, 0, 0, 'Chishui Shi', 'CSS', NULL),
(2863, '520382', '仁怀市', 296, 0, 0, 'Renhuai Shi', 'RHS', NULL),
(2864, '520401', '市辖区', 297, 0, 0, '1', '2', NULL),
(2865, '520402', '西秀区', 297, 0, 0, 'Xixiu Qu', '2', NULL),
(2866, '520421', '平坝县', 297, 0, 0, 'Pingba Xian', '2', NULL),
(2867, '520422', '普定县', 297, 0, 0, 'Puding Xian', '2', NULL),
(2868, '520423', '镇宁布依族苗族自治县', 297, 0, 0, 'Zhenning Buyeizu Miaozu Zizhixian', '2', NULL),
(2869, '520424', '关岭布依族苗族自治县', 297, 0, 0, 'Guanling Buyeizu Miaozu Zizhixian', '2', NULL),
(2870, '520425', '紫云苗族布依族自治县', 297, 0, 0, 'Ziyun Miaozu Buyeizu Zizhixian', '2', NULL),
(2871, '522201', '铜仁市', 298, 0, 0, 'Tongren Shi', 'TRS', NULL),
(2872, '522222', '江口县', 298, 0, 0, 'Jiangkou Xian', 'JGK', NULL),
(2873, '522223', '玉屏侗族自治县', 298, 0, 0, 'Yuping Dongzu Zizhixian', 'YPG', NULL),
(2874, '522224', '石阡县', 298, 0, 0, 'Shiqian Xian', 'SQI', NULL),
(2875, '522225', '思南县', 298, 0, 0, 'Sinan Xian', 'SNA', NULL),
(2876, '522226', '印江土家族苗族自治县', 298, 0, 0, 'Yinjiang Tujiazu Miaozu Zizhixian', 'YJY', NULL),
(2877, '522227', '德江县', 298, 0, 0, 'Dejiang Xian', 'DEJ', NULL),
(2878, '522228', '沿河土家族自治县', 298, 0, 0, 'Yanhe Tujiazu Zizhixian', 'YHE', NULL),
(2879, '522229', '松桃苗族自治县', 298, 0, 0, 'Songtao Miaozu Zizhixian', 'STM', NULL),
(2880, '522230', '万山特区', 298, 0, 0, 'Wanshan Tequ', 'WAS', NULL),
(2881, '522301', '兴义市', 299, 0, 0, 'Xingyi Shi', 'XYI', NULL),
(2882, '522322', '兴仁县', 299, 0, 0, 'Xingren Xian', 'XRN', NULL),
(2883, '522323', '普安县', 299, 0, 0, 'Pu,an Xian', 'PUA', NULL),
(2884, '522324', '晴隆县', 299, 0, 0, 'Qinglong Xian', 'QLG', NULL),
(2885, '522325', '贞丰县', 299, 0, 0, 'Zhenfeng Xian', 'ZFG', NULL),
(2886, '522326', '望谟县', 299, 0, 0, 'Wangmo Xian', 'WMO', NULL),
(2887, '522327', '册亨县', 299, 0, 0, 'Ceheng Xian', 'CEH', NULL),
(2888, '522328', '安龙县', 299, 0, 0, 'Anlong Xian', 'ALG', NULL),
(2889, '522401', '毕节市', 300, 0, 0, 'Bijie Shi', 'BJE', NULL),
(2890, '522422', '大方县', 300, 0, 0, 'Dafang Xian', 'DAF', NULL),
(2891, '522423', '黔西县', 300, 0, 0, 'Qianxi Xian', 'QNX', NULL),
(2892, '522424', '金沙县', 300, 0, 0, 'Jinsha Xian', 'JSX', NULL),
(2893, '522425', '织金县', 300, 0, 0, 'Zhijin Xian', 'ZJN', NULL),
(2894, '522426', '纳雍县', 300, 0, 0, 'Nayong Xian', 'NYG', NULL),
(2895, '522427', '威宁彝族回族苗族自治县', 300, 0, 0, 'Weining Yizu Huizu Miaozu Zizhixian', 'WNG', NULL),
(2896, '522428', '赫章县', 300, 0, 0, 'Hezhang Xian', 'HZA', NULL),
(2897, '522601', '凯里市', 301, 0, 0, 'Kaili Shi', 'KLS', NULL),
(2898, '522622', '黄平县', 301, 0, 0, 'Huangping Xian', 'HPN', NULL),
(2899, '522623', '施秉县', 301, 0, 0, 'Shibing Xian', 'SBG', NULL),
(2900, '522624', '三穗县', 301, 0, 0, 'Sansui Xian', 'SAS', NULL),
(2901, '522625', '镇远县', 301, 0, 0, 'Zhenyuan Xian', 'ZYX', NULL),
(2902, '522626', '岑巩县', 301, 0, 0, 'Cengong Xian', 'CGX', NULL),
(2903, '522627', '天柱县', 301, 0, 0, 'Tianzhu Xian', 'TZU', NULL),
(2904, '522628', '锦屏县', 301, 0, 0, 'Jinping Xian', 'JPX', NULL),
(2905, '522629', '剑河县', 301, 0, 0, 'Jianhe Xian', 'JHE', NULL),
(2906, '522630', '台江县', 301, 0, 0, 'Taijiang Xian', 'TJX', NULL),
(2907, '522631', '黎平县', 301, 0, 0, 'Liping Xian', 'LIP', NULL),
(2908, '522632', '榕江县', 301, 0, 0, 'Rongjiang Xian', 'RJG', NULL),
(2909, '522633', '从江县', 301, 0, 0, 'Congjiang Xian', 'COJ', NULL),
(2910, '522634', '雷山县', 301, 0, 0, 'Leishan Xian', 'LSA', NULL),
(2911, '522635', '麻江县', 301, 0, 0, 'Majiang Xian', 'MAJ', NULL),
(2912, '522636', '丹寨县', 301, 0, 0, 'Danzhai Xian', 'DZH', NULL),
(2913, '522701', '都匀市', 302, 0, 0, 'Duyun Shi', 'DUY', NULL),
(2914, '522702', '福泉市', 302, 0, 0, 'Fuquan Shi', 'FQN', NULL),
(2915, '522722', '荔波县', 302, 0, 0, 'Libo Xian', 'LBO', NULL),
(2916, '522723', '贵定县', 302, 0, 0, 'Guiding Xian', 'GDG', NULL),
(2917, '522725', '瓮安县', 302, 0, 0, 'Weng,an Xian', 'WGA', NULL),
(2918, '522726', '独山县', 302, 0, 0, 'Dushan Xian', 'DSX', NULL),
(2919, '522727', '平塘县', 302, 0, 0, 'Pingtang Xian', 'PTG', NULL),
(2920, '522728', '罗甸县', 302, 0, 0, 'Luodian Xian', 'LOD', NULL),
(2921, '522729', '长顺县', 302, 0, 0, 'Changshun Xian', 'CSU', NULL),
(2922, '522730', '龙里县', 302, 0, 0, 'Longli Xian', 'LLI', NULL),
(2923, '522731', '惠水县', 302, 0, 0, 'Huishui Xian', 'HUS', NULL),
(2924, '522732', '三都水族自治县', 302, 0, 0, 'Sandu Suizu Zizhixian', 'SDU', NULL),
(2925, '530101', '市辖区', 303, 0, 0, 'Shixiaqu', '2', NULL),
(2926, '530102', '五华区', 303, 0, 0, 'Wuhua Qu', 'WHA', NULL),
(2927, '530103', '盘龙区', 303, 0, 0, 'Panlong Qu', 'PLQ', NULL),
(2928, '530111', '官渡区', 303, 0, 0, 'Guandu Qu', 'GDU', NULL),
(2929, '530112', '西山区', 303, 0, 0, 'Xishan Qu', 'XSN', NULL),
(2930, '530113', '东川区', 303, 0, 0, 'Dongchuan Qu', 'DCU', NULL),
(2931, '530121', '呈贡县', 303, 0, 0, 'Chenggong Xian', 'CGD', NULL),
(2932, '530122', '晋宁县', 303, 0, 0, 'Jinning Xian', 'JND', NULL),
(2933, '530124', '富民县', 303, 0, 0, 'Fumin Xian', 'FMN', NULL),
(2934, '530125', '宜良县', 303, 0, 0, 'Yiliang Xian', 'YIL', NULL),
(2935, '530126', '石林彝族自治县', 303, 0, 0, 'Shilin Yizu Zizhixian', 'SLY', NULL),
(2936, '530127', '嵩明县', 303, 0, 0, 'Songming Xian', 'SMI', NULL),
(2937, '530128', '禄劝彝族苗族自治县', 303, 0, 0, 'Luchuan Yizu Miaozu Zizhixian', 'LUC', NULL),
(2938, '530129', '寻甸回族彝族自治县', 303, 0, 0, 'Xundian Huizu Yizu Zizhixian', 'XDN', NULL),
(2939, '530181', '安宁市', 303, 0, 0, 'Anning Shi', 'ANG', NULL),
(2940, '530301', '市辖区', 304, 0, 0, 'Shixiaqu', '2', NULL),
(2941, '530302', '麒麟区', 304, 0, 0, 'Qilin Xian', 'QLQ', NULL),
(2942, '530321', '马龙县', 304, 0, 0, 'Malong Xian', 'MLO', NULL),
(2943, '530322', '陆良县', 304, 0, 0, 'Luliang Xian', 'LLX', NULL),
(2944, '530323', '师宗县', 304, 0, 0, 'Shizong Xian', 'SZD', NULL),
(2945, '530324', '罗平县', 304, 0, 0, 'Luoping Xian', 'LPX', NULL),
(2946, '530325', '富源县', 304, 0, 0, 'Fuyuan Xian', 'FYD', NULL),
(2947, '530326', '会泽县', 304, 0, 0, 'Huize Xian', 'HUZ', NULL),
(2948, '530328', '沾益县', 304, 0, 0, 'Zhanyi Xian', 'ZYD', NULL),
(2949, '530381', '宣威市', 304, 0, 0, 'Xuanwei Shi', 'XWS', NULL),
(2950, '530401', '市辖区', 305, 0, 0, 'Shixiaqu', '2', NULL),
(2951, '530402', '红塔区', 305, 0, 0, 'Hongta Qu', 'HTA', NULL),
(2952, '530421', '江川县', 305, 0, 0, 'Jiangchuan Xian', 'JGC', NULL),
(2953, '530422', '澄江县', 305, 0, 0, 'Chengjiang Xian', 'CGJ', NULL),
(2954, '530423', '通海县', 305, 0, 0, 'Tonghai Xian', 'THI', NULL),
(2955, '530424', '华宁县', 305, 0, 0, 'Huaning Xian', 'HND', NULL),
(2956, '530425', '易门县', 305, 0, 0, 'Yimen Xian', 'YMD', NULL),
(2957, '530426', '峨山彝族自治县', 305, 0, 0, 'Eshan Yizu Zizhixian', 'ESN', NULL),
(2958, '530427', '新平彝族傣族自治县', 305, 0, 0, 'Xinping Yizu Daizu Zizhixian', 'XNP', NULL),
(2959, '530428', '元江哈尼族彝族傣族自治县', 305, 0, 0, 'Yuanjiang Hanizu Yizu Daizu Zizhixian', 'YJA', NULL),
(2960, '530501', '市辖区', 306, 0, 0, '1', '2', NULL),
(2961, '530502', '隆阳区', 306, 0, 0, 'Longyang Qu', '2', NULL),
(2962, '530521', '施甸县', 306, 0, 0, 'Shidian Xian', '2', NULL),
(2963, '530522', '腾冲县', 306, 0, 0, 'Tengchong Xian', '2', NULL),
(2964, '530523', '龙陵县', 306, 0, 0, 'Longling Xian', '2', NULL),
(2965, '530524', '昌宁县', 306, 0, 0, 'Changning Xian', '2', NULL),
(2966, '530601', '市辖区', 307, 0, 0, '1', '2', NULL),
(2967, '530602', '昭阳区', 307, 0, 0, 'Zhaoyang Qu', '2', NULL),
(2968, '530621', '鲁甸县', 307, 0, 0, 'Ludian Xian', '2', NULL),
(2969, '530622', '巧家县', 307, 0, 0, 'Qiaojia Xian', '2', NULL),
(2970, '530623', '盐津县', 307, 0, 0, 'Yanjin Xian', '2', NULL),
(2971, '530624', '大关县', 307, 0, 0, 'Daguan Xian', '2', NULL),
(2972, '530625', '永善县', 307, 0, 0, 'Yongshan Xian', '2', NULL),
(2973, '530626', '绥江县', 307, 0, 0, 'Suijiang Xian', '2', NULL),
(2974, '530627', '镇雄县', 307, 0, 0, 'Zhenxiong Xian', '2', NULL),
(2975, '530628', '彝良县', 307, 0, 0, 'Yiliang Xian', '2', NULL),
(2976, '530629', '威信县', 307, 0, 0, 'Weixin Xian', '2', NULL),
(2977, '530630', '水富县', 307, 0, 0, 'Shuifu Xian ', '2', NULL),
(2978, '530701', '市辖区', 308, 0, 0, '1', '2', NULL),
(2979, '530702', '古城区', 308, 0, 0, 'Gucheng Qu', '2', NULL),
(2980, '530721', '玉龙纳西族自治县', 308, 0, 0, 'Yulongnaxizuzizhi Xian', '2', NULL),
(2981, '530722', '永胜县', 308, 0, 0, 'Yongsheng Xian', '2', NULL),
(2982, '530723', '华坪县', 308, 0, 0, 'Huaping Xian', '2', NULL),
(2983, '530724', '宁蒗彝族自治县', 308, 0, 0, 'Ninglang Yizu Zizhixian', '2', NULL),
(2984, '530801', '市辖区', 309, 0, 0, '1', '2', NULL),
(2985, '530802', '思茅区', 309, 0, 0, 'Simao Qu', '2', NULL),
(2986, '530821', '宁洱哈尼族彝族自治县', 309, 0, 0, 'Pu,er Hanizu Yizu Zizhixian', '2', NULL),
(2987, '530822', '墨江哈尼族自治县', 309, 0, 0, 'Mojiang Hanizu Zizhixian', '2', NULL),
(2988, '530823', '景东彝族自治县', 309, 0, 0, 'Jingdong Yizu Zizhixian', '2', NULL),
(2989, '530824', '景谷傣族彝族自治县', 309, 0, 0, 'Jinggu Daizu Yizu Zizhixian', '2', NULL),
(2990, '530825', '镇沅彝族哈尼族拉祜族自治县', 309, 0, 0, 'Zhenyuan Yizu Hanizu Lahuzu Zizhixian', '2', NULL),
(2991, '530826', '江城哈尼族彝族自治县', 309, 0, 0, 'Jiangcheng Hanizu Yizu Zizhixian', '2', NULL),
(2992, '530827', '孟连傣族拉祜族佤族自治县', 309, 0, 0, 'Menglian Daizu Lahuzu Vazu Zizixian', '2', NULL),
(2993, '530828', '澜沧拉祜族自治县', 309, 0, 0, 'Lancang Lahuzu Zizhixian', '2', NULL),
(2994, '530829', '西盟佤族自治县', 309, 0, 0, 'Ximeng Vazu Zizhixian', '2', NULL),
(2995, '530901', '市辖区', 310, 0, 0, '1', '2', NULL),
(2996, '530902', '临翔区', 310, 0, 0, 'Linxiang Qu', '2', NULL),
(2997, '530921', '凤庆县', 310, 0, 0, 'Fengqing Xian', '2', NULL),
(2998, '530922', '云县', 310, 0, 0, 'Yun Xian', '2', NULL),
(2999, '530923', '永德县', 310, 0, 0, 'Yongde Xian', '2', NULL),
(3000, '530924', '镇康县', 310, 0, 0, 'Zhenkang Xian', '2', NULL),
(3001, '530925', '双江拉祜族佤族布朗族傣族自治县', 310, 0, 0, 'Shuangjiang Lahuzu Vazu Bulangzu Daizu Zizhixian', '2', NULL),
(3002, '530926', '耿马傣族佤族自治县', 310, 0, 0, 'Gengma Daizu Vazu Zizhixian', '2', NULL),
(3003, '530927', '沧源佤族自治县', 310, 0, 0, 'Cangyuan Vazu Zizhixian', '2', NULL),
(3004, '532301', '楚雄市', 311, 0, 0, 'Chuxiong Shi', 'CXS', NULL),
(3005, '532322', '双柏县', 311, 0, 0, 'Shuangbai Xian', 'SBA', NULL),
(3006, '532323', '牟定县', 311, 0, 0, 'Mouding Xian', 'MDI', NULL),
(3007, '532324', '南华县', 311, 0, 0, 'Nanhua Xian', 'NHA', NULL),
(3008, '532325', '姚安县', 311, 0, 0, 'Yao,an Xian', 'YOA', NULL),
(3009, '532326', '大姚县', 311, 0, 0, 'Dayao Xian', 'DYO', NULL),
(3010, '532327', '永仁县', 311, 0, 0, 'Yongren Xian', 'YRN', NULL),
(3011, '532328', '元谋县', 311, 0, 0, 'Yuanmou Xian', 'YMO', NULL),
(3012, '532329', '武定县', 311, 0, 0, 'Wuding Xian', 'WDX', NULL),
(3013, '532331', '禄丰县', 311, 0, 0, 'Lufeng Xian', 'LFX', NULL),
(3014, '532501', '个旧市', 312, 0, 0, 'Gejiu Shi', 'GJU', NULL),
(3015, '532502', '开远市', 312, 0, 0, 'Kaiyuan Shi', 'KYD', NULL),
(3016, '532503', '蒙自市', 312, 0, 0, 'Mengzi Xian', '2', NULL),
(3017, '532523', '屏边苗族自治县', 312, 0, 0, 'Pingbian Miaozu Zizhixian', 'PBN', NULL),
(3018, '532524', '建水县', 312, 0, 0, 'Jianshui Xian', 'JSD', NULL),
(3019, '532525', '石屏县', 312, 0, 0, 'Shiping Xian', 'SPG', NULL),
(3020, '532526', '弥勒县', 312, 0, 0, 'Mile Xian', 'MIL', NULL),
(3021, '532527', '泸西县', 312, 0, 0, 'Luxi Xian', 'LXD', NULL),
(3022, '532528', '元阳县', 312, 0, 0, 'Yuanyang Xian', 'YYD', NULL),
(3023, '532529', '红河县', 312, 0, 0, 'Honghe Xian', 'HHX', NULL),
(3024, '532530', '金平苗族瑶族傣族自治县', 312, 0, 0, 'Jinping Miaozu Yaozu Daizu Zizhixian', 'JNP', NULL),
(3025, '532531', '绿春县', 312, 0, 0, 'Lvchun Xian', 'LCX', NULL),
(3026, '532532', '河口瑶族自治县', 312, 0, 0, 'Hekou Yaozu Zizhixian', 'HKM', NULL),
(3027, '532621', '文山县', 313, 0, 0, 'Wenshan Xian', 'WES', NULL),
(3028, '532622', '砚山县', 313, 0, 0, 'Yanshan Xian', 'YSD', NULL),
(3029, '532623', '西畴县', 313, 0, 0, 'Xichou Xian', 'XIC', NULL),
(3030, '532624', '麻栗坡县', 313, 0, 0, 'Malipo Xian', 'MLP', NULL),
(3031, '532625', '马关县', 313, 0, 0, 'Maguan Xian', 'MGN', NULL),
(3032, '532626', '丘北县', 313, 0, 0, 'Qiubei Xian', 'QBE', NULL),
(3033, '532627', '广南县', 313, 0, 0, 'Guangnan Xian', 'GGN', NULL),
(3034, '532628', '富宁县', 313, 0, 0, 'Funing Xian', 'FND', NULL),
(3035, '532801', '景洪市', 314, 0, 0, 'Jinghong Shi', 'JHG', NULL),
(3036, '532822', '勐海县', 314, 0, 0, 'Menghai Xian', 'MHI', NULL),
(3037, '532823', '勐腊县', 314, 0, 0, 'Mengla Xian', 'MLA', NULL),
(3038, '532901', '大理市', 315, 0, 0, 'Dali Shi', 'DLS', NULL),
(3039, '532922', '漾濞彝族自治县', 315, 0, 0, 'Yangbi Yizu Zizhixian', 'YGB', NULL),
(3040, '532923', '祥云县', 315, 0, 0, 'Xiangyun Xian', 'XYD', NULL),
(3041, '532924', '宾川县', 315, 0, 0, 'Binchuan Xian', 'BCD', NULL),
(3042, '532925', '弥渡县', 315, 0, 0, 'Midu Xian', 'MDU', NULL),
(3043, '532926', '南涧彝族自治县', 315, 0, 0, 'Nanjian Yizu Zizhixian', 'NNJ', NULL),
(3044, '532927', '巍山彝族回族自治县', 315, 0, 0, 'Weishan Yizu Huizu Zizhixian', 'WSY', NULL),
(3045, '532928', '永平县', 315, 0, 0, 'Yongping Xian', 'YPX', NULL),
(3046, '532929', '云龙县', 315, 0, 0, 'Yunlong Xian', 'YLO', NULL),
(3047, '532930', '洱源县', 315, 0, 0, 'Eryuan Xian', 'EYN', NULL),
(3048, '532931', '剑川县', 315, 0, 0, 'Jianchuan Xian', 'JIC', NULL),
(3049, '532932', '鹤庆县', 315, 0, 0, 'Heqing Xian', 'HQG', NULL),
(3050, '533102', '瑞丽市', 316, 0, 0, 'Ruili Shi', 'RUI', NULL),
(3051, '533103', '芒市', 316, 0, 0, 'Luxi Shi', '2', NULL),
(3052, '533122', '梁河县', 316, 0, 0, 'Lianghe Xian', 'LHD', NULL),
(3053, '533123', '盈江县', 316, 0, 0, 'Yingjiang Xian', 'YGJ', NULL),
(3054, '533124', '陇川县', 316, 0, 0, 'Longchuan Xian', 'LCN', NULL),
(3055, '533321', '泸水县', 317, 0, 0, 'Lushui Xian', 'LSX', NULL),
(3056, '533323', '福贡县', 317, 0, 0, 'Fugong Xian', 'FGO', NULL),
(3057, '533324', '贡山独龙族怒族自治县', 317, 0, 0, 'Gongshan Dulongzu Nuzu Zizhixian', 'GSN', NULL),
(3058, '533325', '兰坪白族普米族自治县', 317, 0, 0, 'Lanping Baizu Pumizu Zizhixian', 'LPG', NULL),
(3059, '533421', '香格里拉县', 318, 0, 0, 'Xianggelila Xian', '2', NULL),
(3060, '533422', '德钦县', 318, 0, 0, 'Deqen Xian', 'DQN', NULL),
(3061, '533423', '维西傈僳族自治县', 318, 0, 0, 'Weixi Lisuzu Zizhixian', 'WXI', NULL),
(3062, '540101', '市辖区', 319, 0, 0, 'Shixiaqu', '2', NULL),
(3063, '540102', '城关区', 319, 0, 0, 'Chengguang Qu', 'CGN', '拉萨市'),
(3064, '540121', '林周县', 319, 0, 0, 'Lhvnzhub Xian', 'LZB', NULL),
(3065, '540122', '当雄县', 319, 0, 0, 'Damxung Xian', 'DAM', NULL),
(3066, '540123', '尼木县', 319, 0, 0, 'Nyemo Xian', 'NYE', NULL),
(3067, '540124', '曲水县', 319, 0, 0, 'Qvxv Xian', 'QUX', NULL),
(3068, '540125', '堆龙德庆县', 319, 0, 0, 'Doilungdeqen Xian', 'DOI', NULL),
(3069, '540126', '达孜县', 319, 0, 0, 'Dagze Xian', 'DAG', NULL),
(3070, '540127', '墨竹工卡县', 319, 0, 0, 'Maizhokunggar Xian', 'MAI', NULL),
(3071, '542121', '昌都县', 320, 0, 0, 'Qamdo Xian', 'QAX', NULL),
(3072, '542122', '江达县', 320, 0, 0, 'Jomda Xian', 'JOM', NULL),
(3073, '542123', '贡觉县', 320, 0, 0, 'Konjo Xian', 'KON', NULL),
(3074, '542124', '类乌齐县', 320, 0, 0, 'Riwoqe Xian', 'RIW', NULL),
(3075, '542125', '丁青县', 320, 0, 0, 'Dengqen Xian', 'DEN', NULL),
(3076, '542126', '察雅县', 320, 0, 0, 'Chagyab Xian', 'CHA', NULL),
(3077, '542127', '八宿县', 320, 0, 0, 'Baxoi Xian', 'BAX', NULL),
(3078, '542128', '左贡县', 320, 0, 0, 'Zogang Xian', 'ZOX', NULL),
(3079, '542129', '芒康县', 320, 0, 0, 'Mangkam Xian', 'MAN', NULL),
(3080, '542132', '洛隆县', 320, 0, 0, 'Lhorong Xian', 'LHO', NULL),
(3081, '542133', '边坝县', 320, 0, 0, 'Banbar Xian', 'BAN', NULL),
(3082, '542221', '乃东县', 321, 0, 0, 'Nedong Xian', 'NED', NULL),
(3083, '542222', '扎囊县', 321, 0, 0, 'Chanang(Chatang) Xian', 'CNG', NULL),
(3084, '542223', '贡嘎县', 321, 0, 0, 'Gonggar Xian', 'GON', NULL),
(3085, '542224', '桑日县', 321, 0, 0, 'Sangri Xian', 'SRI', NULL),
(3086, '542225', '琼结县', 321, 0, 0, 'Qonggyai Xian', 'QON', NULL),
(3087, '542226', '曲松县', 321, 0, 0, 'Qusum Xian', 'QUS', NULL),
(3088, '542227', '措美县', 321, 0, 0, 'Comai Xian', 'COM', NULL),
(3089, '542228', '洛扎县', 321, 0, 0, 'Lhozhag Xian', 'LHX', NULL),
(3090, '542229', '加查县', 321, 0, 0, 'Gyaca Xian', 'GYA', NULL),
(3091, '542231', '隆子县', 321, 0, 0, 'Lhvnze Xian', 'LHZ', NULL),
(3092, '542232', '错那县', 321, 0, 0, 'Cona Xian', 'CON', NULL),
(3093, '542233', '浪卡子县', 321, 0, 0, 'Nagarze Xian', 'NAX', NULL),
(3094, '542301', '日喀则市', 322, 0, 0, 'Xigaze Shi', 'XIG', NULL),
(3095, '542322', '南木林县', 322, 0, 0, 'Namling Xian', 'NAM', NULL),
(3096, '542323', '江孜县', 322, 0, 0, 'Gyangze Xian', 'GYZ', NULL),
(3097, '542324', '定日县', 322, 0, 0, 'Tingri Xian', 'TIN', NULL),
(3098, '542325', '萨迦县', 322, 0, 0, 'Sa,gya Xian', 'SGX', NULL),
(3099, '542326', '拉孜县', 322, 0, 0, 'Lhaze Xian', 'LAZ', NULL),
(3100, '542327', '昂仁县', 322, 0, 0, 'Ngamring Xian', 'NGA', NULL),
(3101, '542328', '谢通门县', 322, 0, 0, 'Xaitongmoin Xian', 'XTM', NULL),
(3102, '542329', '白朗县', 322, 0, 0, 'Bainang Xian', 'BAI', NULL),
(3103, '542330', '仁布县', 322, 0, 0, 'Rinbung Xian', 'RIN', NULL),
(3104, '542331', '康马县', 322, 0, 0, 'Kangmar Xian', 'KAN', NULL),
(3105, '542332', '定结县', 322, 0, 0, 'Dinggye Xian', 'DIN', NULL),
(3106, '542333', '仲巴县', 322, 0, 0, 'Zhongba Xian', 'ZHB', NULL),
(3107, '542334', '亚东县', 322, 0, 0, 'Yadong(Chomo) Xian', 'YDZ', NULL),
(3108, '542335', '吉隆县', 322, 0, 0, 'Gyirong Xian', 'GIR', NULL),
(3109, '542336', '聂拉木县', 322, 0, 0, 'Nyalam Xian', 'NYA', NULL),
(3110, '542337', '萨嘎县', 322, 0, 0, 'Saga Xian', 'SAG', NULL),
(3111, '542338', '岗巴县', 322, 0, 0, 'Gamba Xian', 'GAM', NULL),
(3112, '542421', '那曲县', 323, 0, 0, 'Nagqu Xian', 'NAG', NULL),
(3113, '542422', '嘉黎县', 323, 0, 0, 'Lhari Xian', 'LHR', NULL),
(3114, '542423', '比如县', 323, 0, 0, 'Biru Xian', 'BRU', NULL),
(3115, '542424', '聂荣县', 323, 0, 0, 'Nyainrong Xian', 'NRO', NULL),
(3116, '542425', '安多县', 323, 0, 0, 'Amdo Xian', 'AMD', NULL),
(3117, '542426', '申扎县', 323, 0, 0, 'Xainza Xian', 'XZX', NULL),
(3118, '542427', '索县', 323, 0, 0, 'Sog Xian', 'SOG', NULL),
(3119, '542428', '班戈县', 323, 0, 0, 'Bangoin Xian', 'BGX', NULL),
(3120, '542429', '巴青县', 323, 0, 0, 'Baqen Xian', 'BQE', NULL),
(3121, '542430', '尼玛县', 323, 0, 0, 'Nyima Xian', 'NYX', NULL),
(3122, '542521', '普兰县', 324, 0, 0, 'Burang Xian', 'BUR', NULL),
(3123, '542522', '札达县', 324, 0, 0, 'Zanda Xian', 'ZAN', NULL),
(3124, '542523', '噶尔县', 324, 0, 0, 'Gar Xian', 'GAR', NULL),
(3125, '542524', '日土县', 324, 0, 0, 'Rutog Xian', 'RUT', NULL),
(3126, '542525', '革吉县', 324, 0, 0, 'Ge,gyai Xian', 'GEG', NULL),
(3127, '542526', '改则县', 324, 0, 0, 'Gerze Xian', 'GER', NULL),
(3128, '542527', '措勤县', 324, 0, 0, 'Coqen Xian', 'COQ', NULL),
(3129, '542621', '林芝县', 325, 0, 0, 'Nyingchi Xian', 'NYI', NULL),
(3130, '542622', '工布江达县', 325, 0, 0, 'Gongbo,gyamda Xian', 'GOX', NULL),
(3131, '542623', '米林县', 325, 0, 0, 'Mainling Xian', 'MAX', NULL),
(3132, '542624', '墨脱县', 325, 0, 0, 'Metog Xian', 'MET', NULL),
(3133, '542625', '波密县', 325, 0, 0, 'Bomi(Bowo) Xian', 'BMI', NULL),
(3134, '542626', '察隅县', 325, 0, 0, 'Zayv Xian', 'ZAY', NULL),
(3135, '542627', '朗县', 325, 0, 0, 'Nang Xian', 'NGX', NULL),
(3136, '610101', '市辖区', 326, 0, 0, 'Shixiaqu', '2', NULL),
(3137, '610102', '新城区', 326, 0, 0, 'Xincheng Qu', 'XCK', '西安市'),
(3138, '610103', '碑林区', 326, 0, 0, 'Beilin Qu', 'BLQ', NULL),
(3139, '610104', '莲湖区', 326, 0, 0, 'Lianhu Qu', 'LHU', NULL),
(3140, '610111', '灞桥区', 326, 0, 0, 'Baqiao Qu', 'BQQ', NULL),
(3141, '610112', '未央区', 326, 0, 0, 'Weiyang Qu', '2', NULL),
(3142, '610113', '雁塔区', 326, 0, 0, 'Yanta Qu', 'YTA', NULL),
(3143, '610114', '阎良区', 326, 0, 0, 'Yanliang Qu', 'YLQ', NULL),
(3144, '610115', '临潼区', 326, 0, 0, 'Lintong Qu', 'LTG', NULL),
(3145, '610116', '长安区', 326, 0, 0, 'Changan Qu', '2', '西安市'),
(3146, '610122', '蓝田县', 326, 0, 0, 'Lantian Xian', 'LNT', NULL),
(3147, '610124', '周至县', 326, 0, 0, 'Zhouzhi Xian', 'ZOZ', NULL),
(3148, '610125', '户县', 326, 0, 0, 'Hu Xian', 'HUX', NULL),
(3149, '610126', '高陵县', 326, 0, 0, 'Gaoling Xian', 'GLS', NULL),
(3150, '610201', '市辖区', 327, 0, 0, 'Shixiaqu', '2', NULL),
(3151, '610202', '王益区', 327, 0, 0, 'Wangyi Qu', '2', NULL),
(3152, '610203', '印台区', 327, 0, 0, 'Yintai Qu', '2', NULL),
(3153, '610204', '耀州区', 327, 0, 0, 'Yaozhou Qu', '2', NULL),
(3154, '610222', '宜君县', 327, 0, 0, 'Yijun Xian', 'YJU', NULL),
(3155, '610301', '市辖区', 328, 0, 0, 'Shixiaqu', '2', NULL),
(3156, '610302', '渭滨区', 328, 0, 0, 'Weibin Qu', 'WBQ', NULL),
(3157, '610303', '金台区', 328, 0, 0, 'Jintai Qu', 'JTQ', NULL),
(3158, '610304', '陈仓区', 328, 0, 0, 'Chencang Qu', '2', NULL),
(3159, '610322', '凤翔县', 328, 0, 0, 'Fengxiang Xian', 'FXG', NULL),
(3160, '610323', '岐山县', 328, 0, 0, 'Qishan Xian', 'QIS', NULL),
(3161, '610324', '扶风县', 328, 0, 0, 'Fufeng Xian', 'FFG', NULL),
(3162, '610326', '眉县', 328, 0, 0, 'Mei Xian', 'MEI', NULL),
(3163, '610327', '陇县', 328, 0, 0, 'Long Xian', 'LON', NULL),
(3164, '610328', '千阳县', 328, 0, 0, 'Qianyang Xian', 'QNY', NULL),
(3165, '610329', '麟游县', 328, 0, 0, 'Linyou Xian', 'LYP', NULL),
(3166, '610330', '凤县', 328, 0, 0, 'Feng Xian', 'FEG', NULL),
(3167, '610331', '太白县', 328, 0, 0, 'Taibai Xian', 'TBA', NULL),
(3168, '610401', '市辖区', 329, 0, 0, 'Shixiaqu', '2', NULL),
(3169, '610402', '秦都区', 329, 0, 0, 'Qindu Qu', 'QDU', NULL),
(3170, '610403', '杨陵区', 329, 0, 0, 'Yangling Qu', 'YGL', NULL),
(3171, '610404', '渭城区', 329, 0, 0, 'Weicheng Qu', 'WIC', NULL),
(3172, '610422', '三原县', 329, 0, 0, 'Sanyuan Xian', 'SYN', NULL),
(3173, '610423', '泾阳县', 329, 0, 0, 'Jingyang Xian', 'JGY', NULL),
(3174, '610424', '乾县', 329, 0, 0, 'Qian Xian', 'QIA', NULL),
(3175, '610425', '礼泉县', 329, 0, 0, 'Liquan Xian', 'LIQ', NULL),
(3176, '610426', '永寿县', 329, 0, 0, 'Yongshou Xian', 'YSH', NULL),
(3177, '610427', '彬县', 329, 0, 0, 'Bin Xian', 'BIX', NULL),
(3178, '610428', '长武县', 329, 0, 0, 'Changwu Xian', 'CWU', NULL),
(3179, '610429', '旬邑县', 329, 0, 0, 'Xunyi Xian', 'XNY', NULL),
(3180, '610430', '淳化县', 329, 0, 0, 'Chunhua Xian', 'CHU', NULL),
(3181, '610431', '武功县', 329, 0, 0, 'Wugong Xian', 'WGG', NULL),
(3182, '610481', '兴平市', 329, 0, 0, 'Xingping Shi', 'XPG', NULL),
(3183, '610501', '市辖区', 330, 0, 0, 'Shixiaqu', '2', NULL),
(3184, '610502', '临渭区', 330, 0, 0, 'Linwei Qu', 'LWE', NULL),
(3185, '610521', '华县', 330, 0, 0, 'Hua Xian', 'HXN', NULL),
(3186, '610522', '潼关县', 330, 0, 0, 'Tongguan Xian', 'TGN', NULL),
(3187, '610523', '大荔县', 330, 0, 0, 'Dali Xian', 'DAL', NULL),
(3188, '610524', '合阳县', 330, 0, 0, 'Heyang Xian', 'HYK', NULL),
(3189, '610525', '澄城县', 330, 0, 0, 'Chengcheng Xian', 'CCG', NULL),
(3190, '610526', '蒲城县', 330, 0, 0, 'Pucheng Xian', 'PUC', NULL),
(3191, '610527', '白水县', 330, 0, 0, 'Baishui Xian', 'BSU', NULL),
(3192, '610528', '富平县', 330, 0, 0, 'Fuping Xian', 'FPX', NULL),
(3193, '610581', '韩城市', 330, 0, 0, 'Hancheng Shi', 'HCE', NULL),
(3194, '610582', '华阴市', 330, 0, 0, 'Huayin Shi', 'HYI', NULL),
(3195, '610601', '市辖区', 331, 0, 0, 'Shixiaqu', '2', NULL),
(3196, '610602', '宝塔区', 331, 0, 0, 'Baota Qu', 'BTA', NULL),
(3197, '610621', '延长县', 331, 0, 0, 'Yanchang Xian', 'YCA', NULL),
(3198, '610622', '延川县', 331, 0, 0, 'Yanchuan Xian', 'YCT', NULL),
(3199, '610623', '子长县', 331, 0, 0, 'Zichang Xian', 'ZCA', NULL),
(3200, '610624', '安塞县', 331, 0, 0, 'Ansai Xian', 'ANS', NULL),
(3201, '610625', '志丹县', 331, 0, 0, 'Zhidan Xian', 'ZDN', NULL),
(3202, '610626', '吴起县', 331, 0, 0, 'Wuqi Xian', '2', NULL),
(3203, '610627', '甘泉县', 331, 0, 0, 'Ganquan Xian', 'GQN', NULL),
(3204, '610628', '富县', 331, 0, 0, 'Fu Xian', 'FUX', NULL),
(3205, '610629', '洛川县', 331, 0, 0, 'Luochuan Xian', 'LCW', NULL),
(3206, '610630', '宜川县', 331, 0, 0, 'Yichuan Xian', 'YIC', NULL),
(3207, '610631', '黄龙县', 331, 0, 0, 'Huanglong Xian', 'HGL', NULL),
(3208, '610632', '黄陵县', 331, 0, 0, 'Huangling Xian', 'HLG', NULL),
(3209, '610701', '市辖区', 332, 0, 0, 'Shixiaqu', '2', NULL),
(3210, '610702', '汉台区', 332, 0, 0, 'Hantai Qu', 'HTQ', NULL),
(3211, '610721', '南郑县', 332, 0, 0, 'Nanzheng Xian', 'NZG', NULL),
(3212, '610722', '城固县', 332, 0, 0, 'Chenggu Xian', 'CGU', NULL),
(3213, '610723', '洋县', 332, 0, 0, 'Yang Xian', 'YGX', NULL),
(3214, '610724', '西乡县', 332, 0, 0, 'Xixiang Xian', 'XXA', NULL),
(3215, '610725', '勉县', 332, 0, 0, 'Mian Xian', 'MIA', NULL),
(3216, '610726', '宁强县', 332, 0, 0, 'Ningqiang Xian', 'NQG', NULL),
(3217, '610727', '略阳县', 332, 0, 0, 'Lueyang Xian', 'LYC', NULL),
(3218, '610728', '镇巴县', 332, 0, 0, 'Zhenba Xian', 'ZBA', NULL),
(3219, '610729', '留坝县', 332, 0, 0, 'Liuba Xian', 'LBA', NULL),
(3220, '610730', '佛坪县', 332, 0, 0, 'Foping Xian', 'FPG', NULL),
(3221, '610801', '市辖区', 333, 0, 0, '1', '2', NULL),
(3222, '610802', '榆阳区', 333, 0, 0, 'Yuyang Qu', '2', NULL),
(3223, '610821', '神木县', 333, 0, 0, 'Shenmu Xian', '2', NULL),
(3224, '610822', '府谷县', 333, 0, 0, 'Fugu Xian', '2', NULL),
(3225, '610823', '横山县', 333, 0, 0, 'Hengshan Xian', '2', NULL),
(3226, '610824', '靖边县', 333, 0, 0, 'Jingbian Xian', '2', NULL),
(3227, '610825', '定边县', 333, 0, 0, 'Dingbian Xian', '2', NULL),
(3228, '610826', '绥德县', 333, 0, 0, 'Suide Xian', '2', NULL),
(3229, '610827', '米脂县', 333, 0, 0, 'Mizhi Xian', '2', NULL),
(3230, '610828', '佳县', 333, 0, 0, 'Jia Xian', '2', NULL),
(3231, '610829', '吴堡县', 333, 0, 0, 'Wubu Xian', '2', NULL),
(3232, '610830', '清涧县', 333, 0, 0, 'Qingjian Xian', '2', NULL),
(3233, '610831', '子洲县', 333, 0, 0, 'Zizhou Xian', '2', NULL),
(3234, '610901', '市辖区', 334, 0, 0, '1', '2', NULL),
(3235, '610902', '汉滨区', 334, 0, 0, 'Hanbin Qu', '2', NULL),
(3236, '610921', '汉阴县', 334, 0, 0, 'Hanyin Xian', '2', NULL),
(3237, '610922', '石泉县', 334, 0, 0, 'Shiquan Xian', '2', NULL),
(3238, '610923', '宁陕县', 334, 0, 0, 'Ningshan Xian', '2', NULL),
(3239, '610924', '紫阳县', 334, 0, 0, 'Ziyang Xian', '2', NULL),
(3240, '610925', '岚皋县', 334, 0, 0, 'Langao Xian', '2', NULL),
(3241, '610926', '平利县', 334, 0, 0, 'Pingli Xian', '2', NULL),
(3242, '610927', '镇坪县', 334, 0, 0, 'Zhenping Xian', '2', NULL),
(3243, '610928', '旬阳县', 334, 0, 0, 'Xunyang Xian', '2', NULL),
(3244, '610929', '白河县', 334, 0, 0, 'Baihe Xian', '2', NULL),
(3245, '611001', '市辖区', 335, 0, 0, '1', '2', NULL),
(3246, '611002', '商州区', 335, 0, 0, 'Shangzhou Qu', '2', NULL),
(3247, '611021', '洛南县', 335, 0, 0, 'Luonan Xian', '2', NULL),
(3248, '611022', '丹凤县', 335, 0, 0, 'Danfeng Xian', '2', NULL),
(3249, '611023', '商南县', 335, 0, 0, 'Shangnan Xian', '2', NULL),
(3250, '611024', '山阳县', 335, 0, 0, 'Shanyang Xian', '2', NULL),
(3251, '611025', '镇安县', 335, 0, 0, 'Zhen,an Xian', '2', NULL),
(3252, '611026', '柞水县', 335, 0, 0, 'Zhashui Xian', '2', NULL),
(3253, '620101', '市辖区', 336, 0, 0, 'Shixiaqu', '2', NULL),
(3254, '620102', '城关区', 336, 0, 0, 'Chengguan Qu', 'CLZ', '兰州市'),
(3255, '620103', '七里河区', 336, 0, 0, 'Qilihe Qu', 'QLH', NULL),
(3256, '620104', '西固区', 336, 0, 0, 'Xigu Qu', 'XGU', NULL),
(3257, '620105', '安宁区', 336, 0, 0, 'Anning Qu', 'ANQ', NULL),
(3258, '620111', '红古区', 336, 0, 0, 'Honggu Qu', 'HOG', NULL),
(3259, '620121', '永登县', 336, 0, 0, 'Yongdeng Xian', 'YDG', NULL);
INSERT INTO `ah_region` (`id`, `code`, `name`, `parent`, `level`, `order`, `name_en`, `short_name_en`, `data`) VALUES
(3260, '620122', '皋兰县', 336, 0, 0, 'Gaolan Xian', 'GAL', NULL),
(3261, '620123', '榆中县', 336, 0, 0, 'Yuzhong Xian', 'YZX', NULL),
(3262, '620201', '市辖区', 337, 0, 0, 'Shixiaqu', '2', NULL),
(3263, '620301', '市辖区', 338, 0, 0, 'Shixiaqu', '2', NULL),
(3264, '620302', '金川区', 338, 0, 0, 'Jinchuan Qu', 'JCU', NULL),
(3265, '620321', '永昌县', 338, 0, 0, 'Yongchang Xian', 'YCF', NULL),
(3266, '620401', '市辖区', 339, 0, 0, 'Shixiaqu', '2', NULL),
(3267, '620402', '白银区', 339, 0, 0, 'Baiyin Qu', 'BYB', NULL),
(3268, '620403', '平川区', 339, 0, 0, 'Pingchuan Qu', 'PCQ', NULL),
(3269, '620421', '靖远县', 339, 0, 0, 'Jingyuan Xian', 'JYH', NULL),
(3270, '620422', '会宁县', 339, 0, 0, 'Huining xian', 'HNI', NULL),
(3271, '620423', '景泰县', 339, 0, 0, 'Jingtai Xian', 'JGT', NULL),
(3272, '620501', '市辖区', 340, 0, 0, 'Shixiaqu', '2', NULL),
(3274, '620502', '秦州区', 340, 0, 0, 'Beidao Qu', '2', NULL),
(3275, '620521', '清水县', 340, 0, 0, 'Qingshui Xian', 'QSG', NULL),
(3276, '620522', '秦安县', 340, 0, 0, 'Qin,an Xian', 'QNA', NULL),
(3277, '620523', '甘谷县', 340, 0, 0, 'Gangu Xian', 'GGU', NULL),
(3278, '620524', '武山县', 340, 0, 0, 'Wushan Xian', 'WSX', NULL),
(3279, '620525', '张家川回族自治县', 340, 0, 0, 'Zhangjiachuan Huizu Zizhixian', 'ZJC', NULL),
(3280, '620601', '市辖区', 341, 0, 0, '1', '2', NULL),
(3281, '620602', '凉州区', 341, 0, 0, 'Liangzhou Qu', '2', NULL),
(3282, '620621', '民勤县', 341, 0, 0, 'Minqin Xian', '2', NULL),
(3283, '620622', '古浪县', 341, 0, 0, 'Gulang Xian', '2', NULL),
(3284, '620623', '天祝藏族自治县', 341, 0, 0, 'Tianzhu Zangzu Zizhixian', '2', NULL),
(3285, '620701', '市辖区', 342, 0, 0, '1', '2', NULL),
(3286, '620702', '甘州区', 342, 0, 0, 'Ganzhou Qu', '2', NULL),
(3287, '620721', '肃南裕固族自治县', 342, 0, 0, 'Sunan Yugurzu Zizhixian', '2', NULL),
(3288, '620722', '民乐县', 342, 0, 0, 'Minle Xian', '2', NULL),
(3289, '620723', '临泽县', 342, 0, 0, 'Linze Xian', '2', NULL),
(3290, '620724', '高台县', 342, 0, 0, 'Gaotai Xian', '2', NULL),
(3291, '620725', '山丹县', 342, 0, 0, 'Shandan Xian', '2', NULL),
(3292, '620801', '市辖区', 343, 0, 0, '1', '2', NULL),
(3293, '620802', '崆峒区', 343, 0, 0, 'Kongdong Qu', '2', NULL),
(3294, '620821', '泾川县', 343, 0, 0, 'Jingchuan Xian', '2', NULL),
(3295, '620822', '灵台县', 343, 0, 0, 'Lingtai Xian', '2', NULL),
(3296, '620823', '崇信县', 343, 0, 0, 'Chongxin Xian', '2', NULL),
(3297, '620824', '华亭县', 343, 0, 0, 'Huating Xian', '2', NULL),
(3298, '620825', '庄浪县', 343, 0, 0, 'Zhuanglang Xian', '2', NULL),
(3299, '620826', '静宁县', 343, 0, 0, 'Jingning Xian', '2', NULL),
(3300, '620901', '市辖区', 344, 0, 0, '1', '2', NULL),
(3301, '620902', '肃州区', 344, 0, 0, 'Suzhou Qu', '2', NULL),
(3302, '620921', '金塔县', 344, 0, 0, 'Jinta Xian', '2', NULL),
(3304, '620923', '肃北蒙古族自治县', 344, 0, 0, 'Subei Monguzu Zizhixian', '2', NULL),
(3305, '620924', '阿克塞哈萨克族自治县', 344, 0, 0, 'Aksay Kazakzu Zizhixian', '2', NULL),
(3306, '620981', '玉门市', 344, 0, 0, 'Yumen Shi', '2', NULL),
(3307, '620982', '敦煌市', 344, 0, 0, 'Dunhuang Shi', '2', NULL),
(3308, '621001', '市辖区', 345, 0, 0, '1', '2', NULL),
(3309, '621002', '西峰区', 345, 0, 0, 'Xifeng Qu', '2', NULL),
(3310, '621021', '庆城县', 345, 0, 0, 'Qingcheng Xian', '2', NULL),
(3311, '621022', '环县', 345, 0, 0, 'Huan Xian', '2', NULL),
(3312, '621023', '华池县', 345, 0, 0, 'Huachi Xian', '2', NULL),
(3313, '621024', '合水县', 345, 0, 0, 'Heshui Xian', '2', NULL),
(3314, '621025', '正宁县', 345, 0, 0, 'Zhengning Xian', '2', NULL),
(3315, '621026', '宁县', 345, 0, 0, 'Ning Xian', '2', NULL),
(3316, '621027', '镇原县', 345, 0, 0, 'Zhenyuan Xian', '2', NULL),
(3317, '621101', '市辖区', 346, 0, 0, '1', '2', NULL),
(3318, '621102', '安定区', 346, 0, 0, 'Anding Qu', '2', NULL),
(3319, '621121', '通渭县', 346, 0, 0, 'Tongwei Xian', '2', NULL),
(3320, '621122', '陇西县', 346, 0, 0, 'Longxi Xian', '2', NULL),
(3321, '621123', '渭源县', 346, 0, 0, 'Weiyuan Xian', '2', NULL),
(3322, '621124', '临洮县', 346, 0, 0, 'Lintao Xian', '2', NULL),
(3323, '621125', '漳县', 346, 0, 0, 'Zhang Xian', '2', NULL),
(3324, '621126', '岷县', 346, 0, 0, 'Min Xian', '2', NULL),
(3325, '621201', '市辖区', 347, 0, 0, '1', '2', NULL),
(3326, '621202', '武都区', 347, 0, 0, 'Wudu Qu', '2', NULL),
(3327, '621221', '成县', 347, 0, 0, 'Cheng Xian', '2', NULL),
(3328, '621222', '文县', 347, 0, 0, 'Wen Xian', '2', NULL),
(3329, '621223', '宕昌县', 347, 0, 0, 'Dangchang Xian', '2', NULL),
(3330, '621224', '康县', 347, 0, 0, 'Kang Xian', '2', NULL),
(3331, '621225', '西和县', 347, 0, 0, 'Xihe Xian', '2', NULL),
(3332, '621226', '礼县', 347, 0, 0, 'Li Xian', '2', NULL),
(3333, '621227', '徽县', 347, 0, 0, 'Hui Xian', '2', NULL),
(3334, '621228', '两当县', 347, 0, 0, 'Liangdang Xian', '2', NULL),
(3335, '622901', '临夏市', 348, 0, 0, 'Linxia Shi', 'LXR', NULL),
(3336, '622921', '临夏县', 348, 0, 0, 'Linxia Xian', 'LXF', NULL),
(3337, '622922', '康乐县', 348, 0, 0, 'Kangle Xian', 'KLE', NULL),
(3338, '622923', '永靖县', 348, 0, 0, 'Yongjing Xian', 'YJG', NULL),
(3339, '622924', '广河县', 348, 0, 0, 'Guanghe Xian', 'GHX', NULL),
(3340, '622925', '和政县', 348, 0, 0, 'Hezheng Xian', 'HZG', NULL),
(3341, '622926', '东乡族自治县', 348, 0, 0, 'Dongxiangzu Zizhixian', 'DXZ', NULL),
(3342, '622927', '积石山保安族东乡族撒拉族自治县', 348, 0, 0, 'Jishishan Bonanzu Dongxiangzu Salarzu Zizhixian', 'JSN', NULL),
(3343, '623001', '合作市', 349, 0, 0, 'Hezuo Shi', 'HEZ', NULL),
(3344, '623021', '临潭县', 349, 0, 0, 'Lintan Xian', 'LTN', NULL),
(3345, '623022', '卓尼县', 349, 0, 0, 'Jone', 'JON', NULL),
(3346, '623023', '舟曲县', 349, 0, 0, 'Zhugqu Xian', 'ZQU', NULL),
(3347, '623024', '迭部县', 349, 0, 0, 'Tewo Xian', 'TEW', NULL),
(3348, '623025', '玛曲县', 349, 0, 0, 'Maqu Xian', 'MQU', NULL),
(3349, '623026', '碌曲县', 349, 0, 0, 'Luqu Xian', 'LQU', NULL),
(3350, '623027', '夏河县', 349, 0, 0, 'Xiahe Xian', 'XHN', NULL),
(3351, '630101', '市辖区', 350, 0, 0, 'Shixiaqu', '2', NULL),
(3352, '630102', '城东区', 350, 0, 0, 'Chengdong Qu', 'CDQ', NULL),
(3353, '630103', '城中区', 350, 0, 0, 'Chengzhong Qu', 'CZQ', '西宁市'),
(3354, '630104', '城西区', 350, 0, 0, 'Chengxi Qu', 'CXQ', NULL),
(3355, '630105', '城北区', 350, 0, 0, 'Chengbei Qu', 'CBE', NULL),
(3356, '630121', '大通回族土族自治县', 350, 0, 0, 'Datong Huizu Tuzu Zizhixian', 'DAT', NULL),
(3357, '630122', '湟中县', 350, 0, 0, 'Huangzhong Xian', '2', NULL),
(3358, '630123', '湟源县', 350, 0, 0, 'Huangyuan Xian', '2', NULL),
(3359, '632121', '平安县', 351, 0, 0, 'Ping,an Xian', 'PAN', NULL),
(3360, '632122', '民和回族土族自治县', 351, 0, 0, 'Minhe Huizu Tuzu Zizhixian', 'MHE', NULL),
(3361, '632123', '乐都县', 351, 0, 0, 'Ledu Xian', 'LDU', NULL),
(3362, '632126', '互助土族自治县', 351, 0, 0, 'Huzhu Tuzu Zizhixian', 'HZT', NULL),
(3363, '632127', '化隆回族自治县', 351, 0, 0, 'Hualong Huizu Zizhixian', 'HLO', NULL),
(3364, '632128', '循化撒拉族自治县', 351, 0, 0, 'Xunhua Salazu Zizhixian', 'XUH', NULL),
(3365, '632221', '门源回族自治县', 352, 0, 0, 'Menyuan Huizu Zizhixian', 'MYU', NULL),
(3366, '632222', '祁连县', 352, 0, 0, 'Qilian Xian', 'QLN', NULL),
(3367, '632223', '海晏县', 352, 0, 0, 'Haiyan Xian', 'HIY', NULL),
(3368, '632224', '刚察县', 352, 0, 0, 'Gangca Xian', 'GAN', NULL),
(3369, '632321', '同仁县', 353, 0, 0, 'Tongren Xian', 'TRN', NULL),
(3370, '632322', '尖扎县', 353, 0, 0, 'Jainca Xian', 'JAI', NULL),
(3371, '632323', '泽库县', 353, 0, 0, 'Zekog Xian', 'ZEK', NULL),
(3372, '632324', '河南蒙古族自治县', 353, 0, 0, 'Henan Mongolzu Zizhixian', 'HNM', NULL),
(3373, '632521', '共和县', 354, 0, 0, 'Gonghe Xian', 'GHE', NULL),
(3374, '632522', '同德县', 354, 0, 0, 'Tongde Xian', 'TDX', NULL),
(3375, '632523', '贵德县', 354, 0, 0, 'Guide Xian', 'GID', NULL),
(3376, '632524', '兴海县', 354, 0, 0, 'Xinghai Xian', 'XHA', NULL),
(3377, '632525', '贵南县', 354, 0, 0, 'Guinan Xian', 'GNN', NULL),
(3378, '632621', '玛沁县', 355, 0, 0, 'Maqen Xian', 'MAQ', NULL),
(3379, '632622', '班玛县', 355, 0, 0, 'Baima Xian', 'BMX', NULL),
(3380, '632623', '甘德县', 355, 0, 0, 'Gade Xian', 'GAD', NULL),
(3381, '632624', '达日县', 355, 0, 0, 'Tarlag Xian', 'TAR', NULL),
(3382, '632625', '久治县', 355, 0, 0, 'Jigzhi Xian', 'JUZ', NULL),
(3383, '632626', '玛多县', 355, 0, 0, 'Madoi Xian', 'MAD', NULL),
(3384, '632721', '玉树县', 356, 0, 0, 'Yushu Xian', 'YSK', NULL),
(3385, '632722', '杂多县', 356, 0, 0, 'Zadoi Xian', 'ZAD', NULL),
(3386, '632723', '称多县', 356, 0, 0, 'Chindu Xian', 'CHI', NULL),
(3387, '632724', '治多县', 356, 0, 0, 'Zhidoi Xian', 'ZHI', NULL),
(3388, '632725', '囊谦县', 356, 0, 0, 'Nangqen Xian', 'NQN', NULL),
(3389, '632726', '曲麻莱县', 356, 0, 0, 'Qumarleb Xian', 'QUM', NULL),
(3390, '632801', '格尔木市', 357, 0, 0, 'Golmud Shi', 'GOS', NULL),
(3391, '632802', '德令哈市', 357, 0, 0, 'Delhi Shi', 'DEL', NULL),
(3392, '632821', '乌兰县', 357, 0, 0, 'Ulan Xian', 'ULA', NULL),
(3393, '632822', '都兰县', 357, 0, 0, 'Dulan Xian', 'DUL', NULL),
(3394, '632823', '天峻县', 357, 0, 0, 'Tianjun Xian', 'TJN', NULL),
(3395, '640101', '市辖区', 358, 0, 0, 'Shixiaqu', '2', NULL),
(3396, '640104', '兴庆区', 358, 0, 0, 'Xingqing Qu', '2', NULL),
(3397, '640105', '西夏区', 358, 0, 0, 'Xixia Qu', '2', NULL),
(3398, '640106', '金凤区', 358, 0, 0, 'Jinfeng Qu', '2', NULL),
(3399, '640121', '永宁县', 358, 0, 0, 'Yongning Xian', 'YGN', NULL),
(3400, '640122', '贺兰县', 358, 0, 0, 'Helan Xian', 'HLN', NULL),
(3401, '640181', '灵武市', 358, 0, 0, 'Lingwu Shi', '2', NULL),
(3402, '640201', '市辖区', 359, 0, 0, 'Shixiaqu', '2', NULL),
(3403, '640202', '大武口区', 359, 0, 0, 'Dawukou Qu', 'DWK', NULL),
(3404, '640205', '惠农区', 359, 0, 0, 'Huinong Qu', '2', NULL),
(3405, '640221', '平罗县', 359, 0, 0, 'Pingluo Xian', 'PLO', NULL),
(3406, '640301', '市辖区', 360, 0, 0, 'Shixiaqu', '2', NULL),
(3407, '640302', '利通区', 360, 0, 0, 'Litong Qu', 'LTW', NULL),
(3408, '640323', '盐池县', 360, 0, 0, 'Yanchi Xian', 'YCY', NULL),
(3409, '640324', '同心县', 360, 0, 0, 'Tongxin Xian', 'TGX', NULL),
(3410, '640381', '青铜峡市', 360, 0, 0, 'Qingtongxia Xian', 'QTX', NULL),
(3411, '640401', '市辖区', 361, 0, 0, '1', '2', NULL),
(3412, '640402', '原州区', 361, 0, 0, 'Yuanzhou Qu', '2', NULL),
(3413, '640422', '西吉县', 361, 0, 0, 'Xiji Xian', '2', NULL),
(3414, '640423', '隆德县', 361, 0, 0, 'Longde Xian', '2', NULL),
(3415, '640424', '泾源县', 361, 0, 0, 'Jingyuan Xian', '2', NULL),
(3416, '640425', '彭阳县', 361, 0, 0, 'Pengyang Xian', '2', NULL),
(3417, '640501', '市辖区', 362, 0, 0, '1', '2', NULL),
(3418, '640502', '沙坡头区', 362, 0, 0, 'Shapotou Qu', '2', NULL),
(3419, '640521', '中宁县', 362, 0, 0, 'Zhongning Xian', '2', NULL),
(3420, '640522', '海原县', 362, 0, 0, 'Haiyuan Xian', '2', NULL),
(3421, '650101', '市辖区', 363, 0, 0, 'Shixiaqu', '2', NULL),
(3422, '650102', '天山区', 363, 0, 0, 'Tianshan Qu', 'TSL', NULL),
(3423, '650103', '沙依巴克区', 363, 0, 0, 'Saybag Qu', 'SAY', NULL),
(3424, '650104', '新市区', 363, 0, 0, 'Xinshi Qu', 'XSU', '乌鲁木齐市'),
(3425, '650105', '水磨沟区', 363, 0, 0, 'Shuimogou Qu', 'SMG', NULL),
(3426, '650106', '头屯河区', 363, 0, 0, 'Toutunhe Qu', 'TTH', NULL),
(3427, '650107', '达坂城区', 363, 0, 0, 'Dabancheng Qu', '2', NULL),
(3428, '650109', '米东区', 363, 0, 0, 'Midong Qu', '2', NULL),
(3429, '650121', '乌鲁木齐县', 363, 0, 0, 'Urumqi Xian', 'URX', NULL),
(3430, '650201', '市辖区', 364, 0, 0, 'Shixiaqu', '2', NULL),
(3431, '650202', '独山子区', 364, 0, 0, 'Dushanzi Qu', 'DSZ', NULL),
(3432, '650203', '克拉玛依区', 364, 0, 0, 'Karamay Qu', 'KRQ', NULL),
(3433, '650204', '白碱滩区', 364, 0, 0, 'Baijiantan Qu', 'BJT', NULL),
(3434, '650205', '乌尔禾区', 364, 0, 0, 'Orku Qu', 'ORK', NULL),
(3435, '652101', '吐鲁番市', 365, 0, 0, 'Turpan Shi', 'TUR', NULL),
(3436, '652122', '鄯善县', 365, 0, 0, 'Shanshan(piqan) Xian', 'SSX', NULL),
(3437, '652123', '托克逊县', 365, 0, 0, 'Toksun Xian', 'TOK', NULL),
(3438, '652201', '哈密市', 366, 0, 0, 'Hami(kumul) Shi', 'HAM', NULL),
(3439, '652222', '巴里坤哈萨克自治县', 366, 0, 0, 'Barkol Kazak Zizhixian', 'BAR', NULL),
(3440, '652223', '伊吾县', 366, 0, 0, 'Yiwu(Araturuk) Xian', 'YWX', NULL),
(3441, '652301', '昌吉市', 367, 0, 0, 'Changji Shi', 'CJS', NULL),
(3442, '652302', '阜康市', 367, 0, 0, 'Fukang Shi', 'FKG', NULL),
(3444, '652323', '呼图壁县', 367, 0, 0, 'Hutubi Xian', 'HTB', NULL),
(3445, '652324', '玛纳斯县', 367, 0, 0, 'Manas Xian', 'MAS', NULL),
(3446, '652325', '奇台县', 367, 0, 0, 'Qitai Xian', 'QTA', NULL),
(3447, '652327', '吉木萨尔县', 367, 0, 0, 'Jimsar Xian', 'JIM', NULL),
(3448, '652328', '木垒哈萨克自治县', 367, 0, 0, 'Mori Kazak Zizhixian', 'MOR', NULL),
(3449, '652701', '博乐市', 368, 0, 0, 'Bole(Bortala) Shi', 'BLE', NULL),
(3450, '652722', '精河县', 368, 0, 0, 'Jinghe(Jing) Xian', 'JGH', NULL),
(3451, '652723', '温泉县', 368, 0, 0, 'Wenquan(Arixang) Xian', 'WNQ', NULL),
(3452, '652801', '库尔勒市', 369, 0, 0, 'Korla Shi', 'KOR', NULL),
(3453, '652822', '轮台县', 369, 0, 0, 'Luntai(Bugur) Xian', 'LTX', NULL),
(3454, '652823', '尉犁县', 369, 0, 0, 'Yuli(Lopnur) Xian', 'YLI', NULL),
(3455, '652824', '若羌县', 369, 0, 0, 'Ruoqiang(Qakilik) Xian', 'RQG', NULL),
(3456, '652825', '且末县', 369, 0, 0, 'Qiemo(Qarqan) Xian', 'QMO', NULL),
(3457, '652826', '焉耆回族自治县', 369, 0, 0, 'Yanqi Huizu Zizhixian', 'YQI', NULL),
(3458, '652827', '和静县', 369, 0, 0, 'Hejing Xian', 'HJG', NULL),
(3459, '652828', '和硕县', 369, 0, 0, 'Hoxud Xian', 'HOX', NULL),
(3460, '652829', '博湖县', 369, 0, 0, 'Bohu(Bagrax) Xian', 'BHU', NULL),
(3461, '652901', '阿克苏市', 370, 0, 0, 'Aksu Shi', 'AKS', NULL),
(3462, '652922', '温宿县', 370, 0, 0, 'Wensu Xian', 'WSU', NULL),
(3463, '652923', '库车县', 370, 0, 0, 'Kuqa Xian', 'KUQ', NULL),
(3464, '652924', '沙雅县', 370, 0, 0, 'Xayar Xian', 'XYR', NULL),
(3465, '652925', '新和县', 370, 0, 0, 'Xinhe(Toksu) Xian', 'XHT', NULL),
(3466, '652926', '拜城县', 370, 0, 0, 'Baicheng(Bay) Xian', 'BCG', NULL),
(3467, '652927', '乌什县', 370, 0, 0, 'Wushi(Uqturpan) Xian', 'WSH', NULL),
(3468, '652928', '阿瓦提县', 370, 0, 0, 'Awat Xian', 'AWA', NULL),
(3469, '652929', '柯坪县', 370, 0, 0, 'Kalpin Xian', 'KAL', NULL),
(3470, '653001', '阿图什市', 371, 0, 0, 'Artux Shi', 'ART', NULL),
(3471, '653022', '阿克陶县', 371, 0, 0, 'Akto Xian', 'AKT', NULL),
(3472, '653023', '阿合奇县', 371, 0, 0, 'Akqi Xian', 'AKQ', NULL),
(3473, '653024', '乌恰县', 371, 0, 0, 'Wuqia(Ulugqat) Xian', 'WQA', NULL),
(3474, '653101', '喀什市', 372, 0, 0, 'Kashi (Kaxgar) Shi', 'KHG', NULL),
(3475, '653121', '疏附县', 372, 0, 0, 'Shufu Xian', 'SFU', NULL),
(3476, '653122', '疏勒县', 372, 0, 0, 'Shule Xian', 'SHL', NULL),
(3477, '653123', '英吉沙县', 372, 0, 0, 'Yengisar Xian', 'YEN', NULL),
(3478, '653124', '泽普县', 372, 0, 0, 'Zepu(Poskam) Xian', 'ZEP', NULL),
(3479, '653125', '莎车县', 372, 0, 0, 'Shache(Yarkant) Xian', 'SHC', NULL),
(3480, '653126', '叶城县', 372, 0, 0, 'Yecheng(Kargilik) Xian', 'YEC', NULL),
(3481, '653127', '麦盖提县', 372, 0, 0, 'Markit Xian', 'MAR', NULL),
(3482, '653128', '岳普湖县', 372, 0, 0, 'Yopurga Xian', 'YOP', NULL),
(3483, '653129', '伽师县', 372, 0, 0, 'Jiashi(Payzawat) Xian', 'JSI', NULL),
(3484, '653130', '巴楚县', 372, 0, 0, 'Bachu(Maralbexi) Xian', 'BCX', NULL),
(3485, '653131', '塔什库尔干塔吉克自治县', 372, 0, 0, 'Taxkorgan Tajik Zizhixian', 'TXK', NULL),
(3486, '653201', '和田市', 373, 0, 0, 'Hotan Shi', 'HTS', NULL),
(3487, '653221', '和田县', 373, 0, 0, 'Hotan Xian', 'HOT', NULL),
(3488, '653222', '墨玉县', 373, 0, 0, 'Moyu(Karakax) Xian', 'MOY', NULL),
(3489, '653223', '皮山县', 373, 0, 0, 'Pishan(Guma) Xian', 'PSA', NULL),
(3490, '653224', '洛浦县', 373, 0, 0, 'Lop Xian', 'LOP', NULL),
(3491, '653225', '策勒县', 373, 0, 0, 'Qira Xian', 'QIR', NULL),
(3492, '653226', '于田县', 373, 0, 0, 'Yutian(Keriya) Xian', 'YUT', NULL),
(3493, '653227', '民丰县', 373, 0, 0, 'Minfeng(Niya) Xian', 'MFG', NULL),
(3494, '654002', '伊宁市', 374, 0, 0, 'Yining(Gulja) Shi', '2', NULL),
(3495, '654003', '奎屯市', 374, 0, 0, 'Kuytun Shi', '2', NULL),
(3496, '654021', '伊宁县', 374, 0, 0, 'Yining(Gulja) Xian', '2', NULL),
(3497, '654022', '察布查尔锡伯自治县', 374, 0, 0, 'Qapqal Xibe Zizhixian', '2', NULL),
(3498, '654023', '霍城县', 374, 0, 0, 'Huocheng Xin', '2', NULL),
(3499, '654024', '巩留县', 374, 0, 0, 'Gongliu(Tokkuztara) Xian', '2', NULL),
(3500, '654025', '新源县', 374, 0, 0, 'Xinyuan(Kunes) Xian', '2', NULL),
(3501, '654026', '昭苏县', 374, 0, 0, 'Zhaosu(Mongolkure) Xian', '2', NULL),
(3502, '654027', '特克斯县', 374, 0, 0, 'Tekes Xian', '2', NULL),
(3503, '654028', '尼勒克县', 374, 0, 0, 'Nilka Xian', '2', NULL),
(3504, '654201', '塔城市', 375, 0, 0, 'Tacheng(Qoqek) Shi', 'TCS', NULL),
(3505, '654202', '乌苏市', 375, 0, 0, 'Usu Shi', 'USU', NULL),
(3506, '654221', '额敏县', 375, 0, 0, 'Emin(Dorbiljin) Xian', 'EMN', NULL),
(3507, '654223', '沙湾县', 375, 0, 0, 'Shawan Xian', 'SWX', NULL),
(3508, '654224', '托里县', 375, 0, 0, 'Toli Xian', 'TLI', NULL),
(3509, '654225', '裕民县', 375, 0, 0, 'Yumin(Qagantokay) Xian', 'YMN', NULL),
(3510, '654226', '和布克赛尔蒙古自治县', 375, 0, 0, 'Hebukesaiermengguzizhi Xian', '2', NULL),
(3511, '654301', '阿勒泰市', 376, 0, 0, 'Altay Shi', 'ALT', NULL),
(3512, '654321', '布尔津县', 376, 0, 0, 'Burqin Xian', 'BUX', NULL),
(3513, '654322', '富蕴县', 376, 0, 0, 'Fuyun(Koktokay) Xian', 'FYN', NULL),
(3514, '654323', '福海县', 376, 0, 0, 'Fuhai(Burultokay) Xian', 'FHI', NULL),
(3515, '654324', '哈巴河县', 376, 0, 0, 'Habahe(Kaba) Xian', 'HBH', NULL),
(3516, '654325', '青河县', 376, 0, 0, 'Qinghe(Qinggil) Xian', 'QHX', NULL),
(3517, '654326', '吉木乃县', 376, 0, 0, 'Jeminay Xian', 'JEM', NULL),
(3518, '659001', '石河子市', 377, 0, 0, 'Shihezi Shi', 'SHZ', NULL),
(3519, '659002', '阿拉尔市', 377, 0, 0, 'Alaer Shi', '2', NULL),
(3520, '659003', '图木舒克市', 377, 0, 0, 'Tumushuke Shi', '2', NULL),
(3521, '659004', '五家渠市', 377, 0, 0, 'Wujiaqu Shi', '2', NULL),
(4000, '620503', '麦积区', 340, 0, 0, 'Maiji Qu', '2', NULL),
(4001, '500116', '江津区', 270, 0, 0, 'Jiangjin Qu', '2', '重庆市'),
(4002, '500117', '合川区', 270, 0, 0, 'Hechuan Qu', '2', '重庆市'),
(4003, '500118', '永川区', 270, 0, 0, 'Yongchuan Qu', '2', '重庆市'),
(4004, '500119', '南川区', 270, 0, 0, 'Nanchuan Qu', '2', '重庆市'),
(4100, '232701', '加格达奇区', 106, 0, 0, 'Jiagedaqi Qu', '2', NULL),
(4101, '232702', '松岭区', 106, 0, 0, 'Songling Qu', '2', NULL),
(4102, '232703', '新林区', 106, 0, 0, 'Xinlin Qu', '2', NULL),
(4103, '232704', '呼中区', 106, 0, 0, 'Huzhong Qu', '2', NULL),
(4200, '330402', '南湖区', 125, 0, 0, 'Nanhu Qu', '2', NULL),
(4300, '360482', '共青城市', 162, 0, 0, 'Gongqingcheng Shi', '2', NULL),
(4400, '640303', '红寺堡区', 360, 0, 0, 'Hongsibao Qu', '2', NULL),
(4500, '620922', '瓜州县', 344, 0, 0, 'Guazhou Xian', '2', NULL),
(4600, '421321', '随县', 215, 0, 0, 'Sui Xian', '2', NULL),
(4700, '431102', '零陵区', 228, 0, 0, 'Lingling Qu', '2', NULL),
(4800, '451119', '平桂管理区', 263, 0, 0, 'Pingguiguanli Qu', '2', NULL),
(4900, '510802', '利州区', 279, 0, 0, 'Lizhou Qu', '2', NULL),
(5000, '511681', '华蓥市', 286, 0, 0, 'Huaying Shi', 'HYC', NULL),
(5001, '700000', '台湾省', 1, 1, 0, 'Taiwan Sheng', 'TW', NULL),
(5002, '710000', '香港特别行政区', 1, 1, 0, 'Hong Kong', 'HK', NULL),
(5003, '720000', '澳门特别行政区', 1, 1, 0, 'Macao', 'MO', NULL),
(5004, '701010', '台北市', 5001, 0, 0, 'Taibei Shi', 'TBS', NULL),
(5005, '701011', '高雄市', 5001, 0, 1, 'Gaoxiong Shi', '2', NULL),
(5006, '701012', '基隆市', 5001, 0, 2, 'Jilong Shi', '2', NULL),
(5007, '701013', '台中市', 5001, 0, 3, 'Taizhong Shi', '2', NULL),
(5008, '701014', '台南市', 5001, 0, 4, 'Tainan Shi', '2', NULL),
(5009, '701015', '新竹市', 5001, 0, 5, 'Xinzhu Shi', 'XZS', NULL),
(5010, '701016', '嘉义市', 5001, 0, 6, 'Jiayi Shi', '2', NULL),
(5011, '701111', '台北县', 5001, 0, 7, 'Taibei Xian', '2', NULL),
(5012, '701112', '宜兰县', 5001, 0, 8, 'Yilan Xian', '2', NULL),
(5013, '701113', '桃园县', 5001, 0, 9, 'Taoyuan Xian', '2', NULL),
(5014, '701114', '新竹县', 5001, 0, 10, 'Xinzhu Xian', '2', NULL),
(5015, '701115', '苗栗县', 5001, 0, 11, 'Miaoli Xian', 'MLX', NULL),
(5016, '701116', '台中县', 5001, 0, 12, 'Taizhong Xian', 'TZX', NULL),
(5017, '701117', '彰化县', 5001, 0, 13, 'Zhanghua Xian', '2', NULL),
(5018, '701118', '南投县', 5001, 0, 14, 'Nantou Xian', 'NTX', NULL),
(5019, '701119', '云林县', 5001, 0, 15, 'Yunlin Xian', '2', NULL),
(5020, '701120', '嘉义县', 5001, 0, 16, 'Jiayi Xian', '2', NULL),
(5021, '701121', '台南县', 5001, 0, 17, 'Tainan Xian', 'TNX', NULL),
(5022, '701122', '高雄县', 5001, 0, 18, 'Gaoxiong Xian', 'GXX', NULL),
(5023, '701123', '屏东县', 5001, 0, 19, 'Pingdong Xian', '2', NULL),
(5024, '701124', '台东县', 5001, 0, 20, 'Taidong Xian', '2', NULL),
(5025, '701125', '花莲县', 5001, 0, 21, 'Hualian Xian', 'HLX', NULL),
(5026, '701126', '澎湖县', 5001, 0, 22, 'Penghu Xian', 'PHX', NULL),
(5027, '701127', '金门县', 5001, 0, 23, 'Jinmen Xian', 'JMX', '台湾省'),
(5028, '701128', '连江县', 5001, 0, 24, 'Lianjiang Xian', '2', '台湾省');

-- --------------------------------------------------------

--
-- 表的结构 `ah_second_hand_house`
--

CREATE TABLE IF NOT EXISTS `ah_second_hand_house` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `house_host_id` bigint(20) NOT NULL COMMENT '房东表ID',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型;0=,1=;默认1;',
  `city_id` bigint(20) NOT NULL COMMENT '城市表ID',
  `address` varchar(255) NOT NULL COMMENT '地址',
  `room` varchar(255) NOT NULL COMMENT '房号',
  `description` varchar(255) NOT NULL COMMENT '详细描述',
  `url` varchar(255) NOT NULL COMMENT '封面宣传',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='二手房表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_session`
--

CREATE TABLE IF NOT EXISTS `ah_session` (
  `session_id` varchar(255) NOT NULL COMMENT 'ID',
  `session_expire` int(11) NOT NULL COMMENT 'SESSION_ID',
  `session_data` blob COMMENT '数据',
  `uid` bigint(20) unsigned NOT NULL COMMENT '用户ID',
  `update_time` datetime NOT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='session存储表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_slider`
--

CREATE TABLE IF NOT EXISTS `ah_slider` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `is_passed` tinyint(1) NOT NULL DEFAULT '1' COMMENT '审核;0=未通过,1=审核中,2=已通过;默认1;',
  `back_user_id` bigint(20) NOT NULL COMMENT '后台管理员ID',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '父级类型:0=默认,1=首页,2=新房,3=二手房,4=出租,5=楼房,6=联系我们,;默认1;',
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `target` varchar(255) DEFAULT NULL COMMENT '目标地址',
  `title` varchar(80) DEFAULT NULL COMMENT '标题',
  `start_at` varchar(10) DEFAULT NULL COMMENT '开始时间',
  `end_at` varchar(10) DEFAULT NULL COMMENT '结束时间',
  `order` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '拖拽顺序',
  `app` tinyint(1) NOT NULL DEFAULT '1' COMMENT '应用;0=后台;1=前台;',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态;0=失效,1=预定,1=上架,2=下架;默认1;',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_take_order`
--

CREATE TABLE IF NOT EXISTS `ah_take_order` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `back_user_id` bigint(20) NOT NULL COMMENT '后台管理员ID',
  `guest_id` bigint(20) NOT NULL COMMENT '客户表ID',
  `order_code` varchar(255) NOT NULL COMMENT '订单号',
  `house_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型;1=新房,2=二手房;默认1;',
  `goods_id` bigint(20) NOT NULL COMMENT '目标商品ID',
  `deal_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易状态;0=失败,1=成功;默认1;',
  `money` varchar(255) NOT NULL COMMENT '交易金额',
  `description` varchar(255) NOT NULL COMMENT '备注',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_type`
--

CREATE TABLE IF NOT EXISTS `ah_type` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '父级类型:0=失效,1=预定,2=客户,3=房东,4=新房,5=二手房,6=楼房,7=客服,8=;默认1;',
  `name` varchar(32) NOT NULL COMMENT '类型名',
  `description` varchar(255) DEFAULT NULL COMMENT '类型备注',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='类型表';

--
-- 转存表中的数据 `ah_type`
--

INSERT INTO `ah_type` (`id`, `is_delete`, `type`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '普通住宅', '', '2017-06-06 10:49:40', '2017-06-06 11:30:30'),
(3, 1, 6, '写字楼', '', '2017-06-06 10:55:14', '2017-06-06 10:55:14'),
(4, 1, 6, '商铺', '', '2017-06-06 10:55:25', '2017-06-06 10:55:25'),
(5, 1, 6, '别墅', '', '2017-06-06 10:55:41', '2017-06-06 10:55:41'),
(6, 1, 6, '酒店式公寓', '', '2017-06-06 10:55:50', '2017-06-06 10:55:50'),
(7, 1, 6, '商住两用', '', '2017-06-06 10:55:57', '2017-06-06 10:55:57'),
(8, 1, 6, '公寓', '', '2017-06-06 10:56:03', '2017-06-06 10:56:03'),
(9, 1, 6, '厂房', '', '2017-06-06 10:56:10', '2017-06-06 10:56:10'),
(10, 1, 6, '其他', '', '2017-06-06 10:56:17', '2017-06-06 10:56:17');

-- --------------------------------------------------------

--
-- 表的结构 `ah_type_park`
--

CREATE TABLE IF NOT EXISTS `ah_type_park` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `type_id` bigint(20) NOT NULL COMMENT '标签表ID',
  `target_id` bigint(20) NOT NULL COMMENT '目标表ID;根据type值外联',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '父级类型:0=失效,1=预定,2=客户,3=房东,4=新房,5=二手房,6=楼房,7=客服,8=;默认1;',
  `name` varchar(32) NOT NULL COMMENT '标签',
  `description` varchar(255) NOT NULL COMMENT '详细描述',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='类型关系表';

-- --------------------------------------------------------

--
-- 表的结构 `ah_upload`
--

CREATE TABLE IF NOT EXISTS `ah_upload` (
  `id` bigint(20) unsigned NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) unsigned DEFAULT '1' COMMENT '时效;0=无效;1=有效;',
  `back_user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'UID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `url` varchar(255) DEFAULT '' COMMENT '文件链接',
  `ext` char(4) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) DEFAULT '' COMMENT '文件sha1编码',
  `location` varchar(15) NOT NULL DEFAULT '' COMMENT '文件存储位置',
  `download` bigint(20) NOT NULL DEFAULT '0' COMMENT '下载次数',
  `created_at` datetime NOT NULL COMMENT '上传时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间',
  `sort` bigint(20) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文件上传表';

--
-- 转存表中的数据 `ah_upload`
--

INSERT INTO `ah_upload` (`id`, `is_delete`, `back_user_id`, `name`, `path`, `url`, `ext`, `size`, `md5`, `sha1`, `location`, `download`, `created_at`, `updated_at`, `sort`, `status`) VALUES
(1, 1, 1, '文件名', '/static/', '/static/images', 'png', 0, '2017-06-06 00:00:00', 'sds', 'sd', 0, '2017-06-06 00:00:00', '2017-06-06 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ah_walk`
--

CREATE TABLE IF NOT EXISTS `ah_walk` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时效;0=失效,1=有效;默认1;',
  `guest_id` bigint(20) NOT NULL COMMENT '客户表ID',
  `on_server` tinyint(1) NOT NULL DEFAULT '1' COMMENT '跟进;0=未跟进,1=已跟进;默认1;',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户跟进表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ah_auth_assignment`
--
ALTER TABLE `ah_auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `ah_auth_assignment_ibfk_2` (`user_id`) USING BTREE;

--
-- Indexes for table `ah_auth_item`
--
ALTER TABLE `ah_auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `ah_auth_item_child`
--
ALTER TABLE `ah_auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `ah_auth_rule`
--
ALTER TABLE `ah_auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `ah_back_ban`
--
ALTER TABLE `ah_back_ban`
  ADD PRIMARY KEY (`item_name`,`back_user_id`),
  ADD KEY `ah_back_ban_assignment_ibfk_2` (`back_user_id`);

--
-- Indexes for table `ah_back_user`
--
ALTER TABLE `ah_back_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `uid` (`code`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `ah_back_user_log`
--
ALTER TABLE `ah_back_user_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `back_user_id` (`back_user_id`);

--
-- Indexes for table `ah_building_base`
--
ALTER TABLE `ah_building_base`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `ah_building_detail`
--
ALTER TABLE `ah_building_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_base_id` (`building_base_id`);

--
-- Indexes for table `ah_city`
--
ALTER TABLE `ah_city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `level` (`level`),
  ADD KEY `region_id` (`region_id`);

--
-- Indexes for table `ah_config`
--
ALTER TABLE `ah_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ah_contact`
--
ALTER TABLE `ah_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `back_user_id` (`back_user_id`),
  ADD KEY `home_user_id` (`home_user_id`);

--
-- Indexes for table `ah_contact_read`
--
ALTER TABLE `ah_contact_read`
  ADD PRIMARY KEY (`id`),
  ADD KEY `back_user_id` (`back_user_id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indexes for table `ah_customer_service`
--
ALTER TABLE `ah_customer_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `back_user_id` (`back_user_id`);

--
-- Indexes for table `ah_delete_log`
--
ALTER TABLE `ah_delete_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `back_user_id` (`back_user_id`),
  ADD KEY `delete_id` (`delete_id`);

--
-- Indexes for table `ah_department`
--
ALTER TABLE `ah_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ah_download`
--
ALTER TABLE `ah_download`
  ADD PRIMARY KEY (`id`),
  ADD KEY `back_user_id` (`back_user_id`) USING BTREE;

--
-- Indexes for table `ah_guest`
--
ALTER TABLE `ah_guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ah_guest_server`
--
ALTER TABLE `ah_guest_server`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guest_id` (`guest_id`),
  ADD KEY `back_user_id` (`back_user_id`);

--
-- Indexes for table `ah_home_user`
--
ALTER TABLE `ah_home_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `uid` (`code`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `ah_home_user_log`
--
ALTER TABLE `ah_home_user_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_user_id` (`home_user_id`);

--
-- Indexes for table `ah_hot`
--
ALTER TABLE `ah_hot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `back_user_id` (`back_user_id`);

--
-- Indexes for table `ah_house_better`
--
ALTER TABLE `ah_house_better`
  ADD PRIMARY KEY (`id`),
  ADD KEY `back_user_id` (`back_user_id`);

--
-- Indexes for table `ah_house_host`
--
ALTER TABLE `ah_house_host`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ah_house_host_server`
--
ALTER TABLE `ah_house_host_server`
  ADD PRIMARY KEY (`id`),
  ADD KEY `house_host_id` (`house_host_id`),
  ADD KEY `back_user_id` (`back_user_id`);

--
-- Indexes for table `ah_label`
--
ALTER TABLE `ah_label`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ah_label_park`
--
ALTER TABLE `ah_label_park`
  ADD PRIMARY KEY (`id`),
  ADD KEY `label_id` (`label_id`),
  ADD KEY `target_id` (`target_id`);

--
-- Indexes for table `ah_menu`
--
ALTER TABLE `ah_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ah_new_house`
--
ALTER TABLE `ah_new_house`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_base_id` (`building_base_id`);

--
-- Indexes for table `ah_notice`
--
ALTER TABLE `ah_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `back_user_id` (`back_user_id`);

--
-- Indexes for table `ah_notice_read`
--
ALTER TABLE `ah_notice_read`
  ADD PRIMARY KEY (`id`),
  ADD KEY `back_user_id` (`back_user_id`),
  ADD KEY `notice_id` (`notice_id`);

--
-- Indexes for table `ah_on_links`
--
ALTER TABLE `ah_on_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ah_opinion`
--
ALTER TABLE `ah_opinion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_user_id` (`home_user_id`),
  ADD KEY `back_user_id` (`back_user_id`);

--
-- Indexes for table `ah_opinion_read`
--
ALTER TABLE `ah_opinion_read`
  ADD PRIMARY KEY (`id`),
  ADD KEY `back_user_id` (`back_user_id`),
  ADD KEY `opinion_id` (`opinion_id`);

--
-- Indexes for table `ah_region`
--
ALTER TABLE `ah_region`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `ah_second_hand_house`
--
ALTER TABLE `ah_second_hand_house`
  ADD PRIMARY KEY (`id`),
  ADD KEY `house_host_id` (`house_host_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `ah_session`
--
ALTER TABLE `ah_session`
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `ah_slider`
--
ALTER TABLE `ah_slider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `back_user_id` (`back_user_id`);

--
-- Indexes for table `ah_take_order`
--
ALTER TABLE `ah_take_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `back_user_id` (`back_user_id`),
  ADD KEY `guest_id` (`guest_id`),
  ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ah_type`
--
ALTER TABLE `ah_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ah_type_park`
--
ALTER TABLE `ah_type_park`
  ADD PRIMARY KEY (`id`),
  ADD KEY `label_id` (`type_id`),
  ADD KEY `target_id` (`target_id`);

--
-- Indexes for table `ah_upload`
--
ALTER TABLE `ah_upload`
  ADD PRIMARY KEY (`id`),
  ADD KEY `back_user_id` (`back_user_id`);

--
-- Indexes for table `ah_walk`
--
ALTER TABLE `ah_walk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guest_id` (`guest_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ah_back_user`
--
ALTER TABLE `ah_back_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ah_back_user_log`
--
ALTER TABLE `ah_back_user_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID';
--
-- AUTO_INCREMENT for table `ah_building_base`
--
ALTER TABLE `ah_building_base`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ah_building_detail`
--
ALTER TABLE `ah_building_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_city`
--
ALTER TABLE `ah_city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `ah_config`
--
ALTER TABLE `ah_config`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `ah_contact`
--
ALTER TABLE `ah_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_contact_read`
--
ALTER TABLE `ah_contact_read`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_customer_service`
--
ALTER TABLE `ah_customer_service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_delete_log`
--
ALTER TABLE `ah_delete_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_department`
--
ALTER TABLE `ah_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ah_download`
--
ALTER TABLE `ah_download`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ah_guest`
--
ALTER TABLE `ah_guest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ah_guest_server`
--
ALTER TABLE `ah_guest_server`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_home_user`
--
ALTER TABLE `ah_home_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `ah_home_user_log`
--
ALTER TABLE `ah_home_user_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID';
--
-- AUTO_INCREMENT for table `ah_hot`
--
ALTER TABLE `ah_hot`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_house_better`
--
ALTER TABLE `ah_house_better`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_house_host`
--
ALTER TABLE `ah_house_host`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_house_host_server`
--
ALTER TABLE `ah_house_host_server`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_label`
--
ALTER TABLE `ah_label`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ah_label_park`
--
ALTER TABLE `ah_label_park`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_menu`
--
ALTER TABLE `ah_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=280;
--
-- AUTO_INCREMENT for table `ah_new_house`
--
ALTER TABLE `ah_new_house`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_notice`
--
ALTER TABLE `ah_notice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_notice_read`
--
ALTER TABLE `ah_notice_read`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_on_links`
--
ALTER TABLE `ah_on_links`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_opinion`
--
ALTER TABLE `ah_opinion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_opinion_read`
--
ALTER TABLE `ah_opinion_read`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_region`
--
ALTER TABLE `ah_region`
  MODIFY `id` double NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5029;
--
-- AUTO_INCREMENT for table `ah_second_hand_house`
--
ALTER TABLE `ah_second_hand_house`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_slider`
--
ALTER TABLE `ah_slider`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_take_order`
--
ALTER TABLE `ah_take_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_type`
--
ALTER TABLE `ah_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ah_type_park`
--
ALTER TABLE `ah_type_park`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `ah_upload`
--
ALTER TABLE `ah_upload`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ah_walk`
--
ALTER TABLE `ah_walk`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- 限制导出的表
--

--
-- 限制表 `ah_auth_assignment`
--
ALTER TABLE `ah_auth_assignment`
  ADD CONSTRAINT `ah_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `ah_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ah_auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_auth_item`
--
ALTER TABLE `ah_auth_item`
  ADD CONSTRAINT `ah_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `ah_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `ah_auth_item_child`
--
ALTER TABLE `ah_auth_item_child`
  ADD CONSTRAINT `ah_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `ah_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ah_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `ah_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_back_ban`
--
ALTER TABLE `ah_back_ban`
  ADD CONSTRAINT `ah_back_ban_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `ah_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ah_back_ban_ibfk_2` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_back_user`
--
ALTER TABLE `ah_back_user`
  ADD CONSTRAINT `ah_back_user_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `ah_department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_back_user_log`
--
ALTER TABLE `ah_back_user_log`
  ADD CONSTRAINT `ah_back_user_log_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_building_base`
--
ALTER TABLE `ah_building_base`
  ADD CONSTRAINT `ah_building_base_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `ah_city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_building_detail`
--
ALTER TABLE `ah_building_detail`
  ADD CONSTRAINT `ah_building_detail_ibfk_1` FOREIGN KEY (`building_base_id`) REFERENCES `ah_building_base` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_city`
--
ALTER TABLE `ah_city`
  ADD CONSTRAINT `ah_city_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `ah_region` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_contact`
--
ALTER TABLE `ah_contact`
  ADD CONSTRAINT `ah_contact_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ah_contact_ibfk_2` FOREIGN KEY (`home_user_id`) REFERENCES `ah_home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_contact_read`
--
ALTER TABLE `ah_contact_read`
  ADD CONSTRAINT `ah_contact_read_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ah_contact_read_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `ah_contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_customer_service`
--
ALTER TABLE `ah_customer_service`
  ADD CONSTRAINT `ah_customer_server_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_delete_log`
--
ALTER TABLE `ah_delete_log`
  ADD CONSTRAINT `ah_delete_log_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_download`
--
ALTER TABLE `ah_download`
  ADD CONSTRAINT `ah_download_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_guest_server`
--
ALTER TABLE `ah_guest_server`
  ADD CONSTRAINT `ah_guest_server_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ah_guest_server_ibfk_2` FOREIGN KEY (`guest_id`) REFERENCES `ah_guest` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_home_user_log`
--
ALTER TABLE `ah_home_user_log`
  ADD CONSTRAINT `ah_home_user_log_ibfk_1` FOREIGN KEY (`home_user_id`) REFERENCES `ah_home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_hot`
--
ALTER TABLE `ah_hot`
  ADD CONSTRAINT `ah_hot_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_house_better`
--
ALTER TABLE `ah_house_better`
  ADD CONSTRAINT `ah_house_better_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_house_host_server`
--
ALTER TABLE `ah_house_host_server`
  ADD CONSTRAINT `ah_house_host_server_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ah_house_host_server_ibfk_2` FOREIGN KEY (`house_host_id`) REFERENCES `ah_house_host` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_label_park`
--
ALTER TABLE `ah_label_park`
  ADD CONSTRAINT `ah_label_ibfk_1` FOREIGN KEY (`label_id`) REFERENCES `ah_label` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_new_house`
--
ALTER TABLE `ah_new_house`
  ADD CONSTRAINT `ah_new_house_ibfk_1` FOREIGN KEY (`building_base_id`) REFERENCES `ah_building_base` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_notice`
--
ALTER TABLE `ah_notice`
  ADD CONSTRAINT `ah_notice_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_notice_read`
--
ALTER TABLE `ah_notice_read`
  ADD CONSTRAINT `ah_notice_read_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ah_notice_read_ibfk_2` FOREIGN KEY (`notice_id`) REFERENCES `ah_notice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_opinion`
--
ALTER TABLE `ah_opinion`
  ADD CONSTRAINT `ah_opinion_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ah_opinion_ibfk_2` FOREIGN KEY (`home_user_id`) REFERENCES `ah_home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_opinion_read`
--
ALTER TABLE `ah_opinion_read`
  ADD CONSTRAINT `ah_opinion_read_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ah_opinion_read_ibfk_2` FOREIGN KEY (`opinion_id`) REFERENCES `ah_opinion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_second_hand_house`
--
ALTER TABLE `ah_second_hand_house`
  ADD CONSTRAINT `ah_second_hand_house_ibfk_1` FOREIGN KEY (`house_host_id`) REFERENCES `ah_house_host` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ah_second_hand_house_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `ah_city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_slider`
--
ALTER TABLE `ah_slider`
  ADD CONSTRAINT `ah_slider_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_take_order`
--
ALTER TABLE `ah_take_order`
  ADD CONSTRAINT `ah_take_order_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ah_take_order_ibfk_2` FOREIGN KEY (`guest_id`) REFERENCES `ah_guest` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_upload`
--
ALTER TABLE `ah_upload`
  ADD CONSTRAINT `ah_upload_ibfk_1` FOREIGN KEY (`back_user_id`) REFERENCES `ah_back_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `ah_walk`
--
ALTER TABLE `ah_walk`
  ADD CONSTRAINT `ah_walk_ibfk_1` FOREIGN KEY (`guest_id`) REFERENCES `ah_guest` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
