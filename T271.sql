/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t271`;
CREATE DATABASE IF NOT EXISTS `t271` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t271`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/biyejiuyexinxiguanli/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/biyejiuyexinxiguanli/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/biyejiuyexinxiguanli/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'jianli_types', '求职意向', 1, '求职意向1', NULL, NULL, '2022-02-23 12:53:12'),
	(2, 'jianli_types', '求职意向', 2, '求职意向2', NULL, NULL, '2022-02-23 12:53:12'),
	(3, 'jianli_types', '求职意向', 3, '求职意向3', NULL, NULL, '2022-02-23 12:53:12'),
	(4, 'zhaopin_types', '招聘岗位', 1, '招聘岗位1', NULL, NULL, '2022-02-23 12:53:12'),
	(5, 'zhaopin_types', '招聘岗位', 2, '招聘岗位2', NULL, NULL, '2022-02-23 12:53:12'),
	(6, 'zhaopin_types', '招聘岗位', 3, '招聘岗位3', NULL, NULL, '2022-02-23 12:53:12'),
	(7, 'shangxia_types', '是否上架', 1, '上架', NULL, NULL, '2022-02-23 12:53:12'),
	(8, 'shangxia_types', '是否上架', 2, '下架', NULL, NULL, '2022-02-23 12:53:12'),
	(9, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-02-23 12:53:12'),
	(10, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-02-23 12:53:12'),
	(11, 'hanye_types', '所在行业', 1, '所在行业1', NULL, NULL, '2022-02-23 12:53:12'),
	(12, 'hanye_types', '所在行业', 2, '所在行业2', NULL, NULL, '2022-02-23 12:53:12'),
	(13, 'news_types', '公告信息类型', 1, '公告信息类型1', NULL, NULL, '2022-02-23 12:53:13'),
	(14, 'news_types', '公告信息类型', 2, '公告信息类型2', NULL, NULL, '2022-02-23 12:53:13'),
	(15, 'news_types', '公告信息类型', 3, '公告信息类型3', NULL, NULL, '2022-02-23 12:53:13'),
	(17, 'zhaopin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-03 08:38:37'),
	(18, 'shangpin_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-03-03 08:38:37'),
	(19, 'shangpin_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-03-03 08:38:37'),
	(20, 'jiuyetongji_yesno_types', '审核状态', 1, '未审核', NULL, NULL, '2022-03-03 08:38:37'),
	(21, 'jiuyetongji_yesno_types', '审核状态', 2, '通过', NULL, NULL, '2022-03-03 08:38:37'),
	(22, 'jiuyetongji_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2022-03-03 08:38:37'),
	(23, 'jiuyetongji_types', '是否就业', 1, '未就业', NULL, NULL, '2022-03-03 08:38:37'),
	(24, 'jiuyetongji_types', '是否就业', 2, '已就业', NULL, NULL, '2022-03-03 08:38:37');

DROP TABLE IF EXISTS `gongsi`;
CREATE TABLE IF NOT EXISTS `gongsi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `gongsi_name` varchar(200) DEFAULT NULL COMMENT '公司名称 Search111 ',
  `hanye_types` int DEFAULT NULL COMMENT '所在行业',
  `gongsi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongsi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gongsi_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `gongsi_content` text COMMENT '公司简介 ',
  `gongsi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公司';

DELETE FROM `gongsi`;
INSERT INTO `gongsi` (`id`, `username`, `password`, `gongsi_name`, `hanye_types`, `gongsi_phone`, `gongsi_email`, `gongsi_photo`, `gongsi_content`, `gongsi_delete`, `create_time`) VALUES
	(1, '公司1', '123456', '公司名称1', 1, '17703786901', '1@qq.com', 'http://localhost:8080/biyejiuyexinxiguanli/upload/gongsi1.jpg', '公司简介1', 1, '2022-03-03 08:38:51'),
	(2, '公司2', '123456', '公司名称2', 1, '17703786902', '2@qq.com', 'http://localhost:8080/biyejiuyexinxiguanli/upload/gongsi2.jpg', '公司简介2', 1, '2022-03-03 08:38:51'),
	(3, '公司3', '123456', '公司名称3', 2, '17703786903', '3@qq.com', 'http://localhost:8080/biyejiuyexinxiguanli/upload/gongsi3.jpg', '公司简介3', 1, '2022-03-03 08:38:51');

DROP TABLE IF EXISTS `jianli`;
CREATE TABLE IF NOT EXISTS `jianli` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `jianli_uuid_number` varchar(200) DEFAULT NULL COMMENT '简历唯一编号 ',
  `jianli_name` varchar(200) DEFAULT NULL COMMENT '简历名称',
  `jianli_xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli_types` int DEFAULT NULL COMMENT '求职意向 Search111',
  `jianli_xinzi` varchar(200) DEFAULT NULL COMMENT '期望工资 Search111',
  `jianli_xueli` varchar(200) DEFAULT NULL COMMENT '学历 Search111',
  `jianli_jingli` varchar(200) DEFAULT NULL COMMENT '工作经历 Search111',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `jianli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jianli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jianli_address` varchar(200) DEFAULT NULL COMMENT '位置',
  `jiaoyu_text` text COMMENT '教育经历',
  `shixi_text` text COMMENT '实习或工作经历',
  `geren_text` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='简历';

DELETE FROM `jianli`;
INSERT INTO `jianli` (`id`, `yonghu_id`, `jianli_uuid_number`, `jianli_name`, `jianli_xingming`, `jianli_types`, `jianli_xinzi`, `jianli_xueli`, `jianli_jingli`, `sex_types`, `jianli_phone`, `jianli_photo`, `jianli_address`, `jiaoyu_text`, `shixi_text`, `geren_text`, `create_time`) VALUES
	(1, 1, '164629673134612', '简历名称1', '姓名1', 2, '期望工资1', '学历1', '工作经历1', 1, '17703786901', 'http://localhost:8080/biyejiuyexinxiguanli/upload/1646300345277.jpeg', '位置1', '教育经历1', '实习或工作经历1', '个人介绍1', '2022-03-03 08:38:51'),
	(2, 3, '164629673134615', '简历名称2', '姓名2', 3, '期望工资2', '学历2', '工作经历2', 1, '17703786902', 'http://localhost:8080/biyejiuyexinxiguanli/upload/jianli2.jpg', '位置2', '教育经历2', '实习或工作经历2', '个人介绍2', '2022-03-03 08:38:51'),
	(3, 2, '16462967313465', '简历名称3', '姓名3', 3, '期望工资3', '学历3', '工作经历3', 1, '17703786903', 'http://localhost:8080/biyejiuyexinxiguanli/upload/jianli3.jpg', '位置3', '教育经历3', '实习或工作经历3', '个人介绍3', '2022-03-03 08:38:51');

DROP TABLE IF EXISTS `jiuyetongji`;
CREATE TABLE IF NOT EXISTS `jiuyetongji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '应聘公司  Search111 ',
  `zhaopin_yuexin` varchar(200) DEFAULT NULL COMMENT '月薪',
  `zhaopin_xinzi` varchar(200) DEFAULT NULL COMMENT '就业薪资',
  `jiuyetongji_types` int DEFAULT NULL COMMENT '是否就业',
  `jiuyetongji_yesno_types` int DEFAULT NULL COMMENT '审核状态',
  `jiuyetongji_yesno_text` text COMMENT '审核留言',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='就业统计';

DELETE FROM `jiuyetongji`;
INSERT INTO `jiuyetongji` (`id`, `yonghu_id`, `zhaopin_name`, `zhaopin_yuexin`, `zhaopin_xinzi`, `jiuyetongji_types`, `jiuyetongji_yesno_types`, `jiuyetongji_yesno_text`, `create_time`) VALUES
	(1, 1, '应聘公司1', '月薪1', '就业薪资1', 2, 1, NULL, '2022-03-03 08:38:51'),
	(2, 2, '应聘公司2', '月薪2', '就业薪资2', 1, 1, NULL, '2022-03-03 08:38:51'),
	(3, 3, '应聘公司3', '月薪3', '就业薪资3', 1, 1, NULL, '2022-03-03 08:38:51'),
	(4, 2, '应聘公司4', '月薪4', '就业薪资4', 1, 3, '不同意', '2022-03-03 08:38:51'),
	(5, 2, '应聘公司5', '月薪5', '就业薪资5', 2, 2, '通过', '2022-03-03 08:38:51');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `news_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `news_delete`, `create_time`) VALUES
	(1, '公告信息标题1', 3, 'http://localhost:8080/biyejiuyexinxiguanli/upload/news1.jpg', '2022-03-03 08:38:51', '公告信息详情1', 1, '2022-03-03 08:38:51'),
	(2, '公告信息标题2', 1, 'http://localhost:8080/biyejiuyexinxiguanli/upload/news2.jpg', '2022-03-03 08:38:51', '公告信息详情2', 1, '2022-03-03 08:38:51'),
	(3, '公告信息标题3', 2, 'http://localhost:8080/biyejiuyexinxiguanli/upload/news3.jpg', '2022-03-03 08:38:51', '公告信息详情3', 1, '2022-03-03 08:38:51'),
	(4, '公告信息标题4', 3, 'http://localhost:8080/biyejiuyexinxiguanli/upload/news4.jpg', '2022-03-03 08:38:51', '公告信息详情4', 1, '2022-03-03 08:38:51'),
	(5, '公告信息标题5', 3, 'http://localhost:8080/biyejiuyexinxiguanli/upload/news5.jpg', '2022-03-03 08:38:51', '公告信息详情5', 1, '2022-03-03 08:38:51');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'h6x5o4pwv4ds49efv1e6ez7pgzkegy2a', '2022-03-03 08:36:29', '2024-07-18 08:35:03'),
	(2, 1, 'a1', 'yonghu', '学生', 'ca8hopxoc39xu4ftnd2voqh3pw35jml2', '2022-03-03 09:07:56', '2024-07-18 08:36:42'),
	(3, 1, 'a1', 'gongsi', '公司', '0rli8qtg5m2qngfw8p18prrducrt7s4o', '2022-03-03 09:26:53', '2024-07-18 08:36:20');

DROP TABLE IF EXISTS `toudi`;
CREATE TABLE IF NOT EXISTS `toudi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int DEFAULT NULL COMMENT '简历',
  `zhaopin_id` int DEFAULT NULL COMMENT '招聘',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投递时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COMMENT='简历投递';

DELETE FROM `toudi`;
INSERT INTO `toudi` (`id`, `jianli_id`, `zhaopin_id`, `insert_time`, `create_time`) VALUES
	(2, 2, 2, '2022-03-03 08:38:51', '2022-03-03 08:38:51'),
	(3, 3, 3, '2022-03-03 08:38:51', '2022-03-03 08:38:51'),
	(32, 1, 4, '2022-03-03 09:11:45', '2022-03-03 09:11:45'),
	(33, 1, 5, '2022-03-03 09:36:25', '2022-03-03 09:36:25'),
	(34, 1, 3, '2022-03-03 09:37:16', '2022-03-03 09:37:16'),
	(35, 1, 2, '2024-07-18 07:37:10', '2024-07-18 07:37:10');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `sex_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '学生1', '123456', '学生姓名1', 'http://localhost:8080/biyejiuyexinxiguanli/upload/yonghu1.jpg', '17703786901', '410224199610232001', '1@qq.com', 1, 1, '2022-03-03 08:38:51'),
	(2, '学生2', '123456', '学生姓名2', 'http://localhost:8080/biyejiuyexinxiguanli/upload/yonghu2.jpg', '17703786902', '410224199610232002', '2@qq.com', 1, 1, '2022-03-03 08:38:51'),
	(3, '学生3', '123456', '学生姓名3', 'http://localhost:8080/biyejiuyexinxiguanli/upload/yonghu3.jpg', '17703786903', '410224199610232003', '3@qq.com', 2, 1, '2022-03-03 08:38:51');

DROP TABLE IF EXISTS `zhaopin`;
CREATE TABLE IF NOT EXISTS `zhaopin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongsi_id` int DEFAULT NULL COMMENT '公司',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_shebao` varchar(200) DEFAULT NULL COMMENT '社保信息 Search111',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `zhaopin_types` int DEFAULT NULL COMMENT '招聘岗位 Search111',
  `zhaopin_renshu_number` int DEFAULT NULL COMMENT '招聘人数',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='职位招聘';

DELETE FROM `zhaopin`;
INSERT INTO `zhaopin` (`id`, `gongsi_id`, `zhaopin_name`, `zhaopin_photo`, `zhaopin_daiyu`, `zhaopin_shebao`, `zhaopin_address`, `lianxiren_name`, `zhaopin_phone`, `zan_number`, `cai_number`, `zhaopin_types`, `zhaopin_renshu_number`, `shangxia_types`, `zhaopin_content`, `create_time`) VALUES
	(1, 1, '招聘信息名称1', 'http://localhost:8080/biyejiuyexinxiguanli/upload/zhaopin1.jpg', '薪资待遇1', '社保信息1', '工作地点1', '联系人1', '17703786901', 50, 255, 2, 393, 1, '招聘信息详情1', '2022-03-03 08:38:51'),
	(2, 3, '招聘信息名称2', 'http://localhost:8080/biyejiuyexinxiguanli/upload/zhaopin2.jpg', '薪资待遇2', '社保信息2', '工作地点2', '联系人2', '17703786902', 14, 254, 3, 68, 1, '招聘信息详情2', '2022-03-03 08:38:51'),
	(3, 2, '招聘信息名称3', 'http://localhost:8080/biyejiuyexinxiguanli/upload/zhaopin3.jpg', '薪资待遇3', '社保信息3', '工作地点3', '联系人3', '17703786903', 38, 39, 2, 421, 1, '招聘信息详情3', '2022-03-03 08:38:51'),
	(4, 3, '招聘信息名称4', 'http://localhost:8080/biyejiuyexinxiguanli/upload/zhaopin4.jpg', '薪资待遇4', '社保信息4', '工作地点4', '联系人4', '17703786904', 418, 76, 3, 402, 1, '招聘信息详情4', '2022-03-03 08:38:51'),
	(5, 1, '招聘信息名称5', 'http://localhost:8080/biyejiuyexinxiguanli/upload/zhaopin5.jpg', '薪资待遇5', '社保信息5', '工作地点5', '联系人5', '17703786905', 439, 92, 1, 8, 1, '招聘信息详情5', '2022-03-03 08:38:51');

DROP TABLE IF EXISTS `zhaopin_liuyan`;
CREATE TABLE IF NOT EXISTS `zhaopin_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int DEFAULT NULL COMMENT '职位',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `zhaopin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='职位留言';

DELETE FROM `zhaopin_liuyan`;
INSERT INTO `zhaopin_liuyan` (`id`, `zhaopin_id`, `yonghu_id`, `zhaopin_liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '回复信息1', '2022-03-03 08:38:51', '2022-03-03 08:38:51', '2022-03-03 08:38:51'),
	(2, 2, 3, '留言内容2', '回复信息2', '2022-03-03 08:38:51', '2022-03-03 08:38:51', '2022-03-03 08:38:51'),
	(3, 3, 3, '留言内容3', '回复信息3', '2022-03-03 08:38:51', '2022-03-03 08:38:51', '2022-03-03 08:38:51'),
	(4, 4, 3, '留言内容4', '回复信息4', '2022-03-03 08:38:51', '2022-03-03 08:38:51', '2022-03-03 08:38:51'),
	(5, 5, 1, '留言内容5', '回复信息5', '2022-03-03 08:38:51', '2022-03-03 08:38:51', '2022-03-03 08:38:51'),
	(7, 5, 1, '学生留言', '公司回复', '2022-03-03 09:36:41', '2022-03-03 09:40:43', '2022-03-03 09:36:41');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
