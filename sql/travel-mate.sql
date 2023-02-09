DROP TABLE IF EXISTS `uni_banner`;
CREATE TABLE `uni_banner`
(
    `id`          int(11)      NOT NULL AUTO_INCREMENT COMMENT '轮播图ID',
    `title`        varchar(63)  NOT NULL DEFAULT '' COMMENT '轮播图标题',
    `link`        varchar(1000) NOT NULL DEFAULT '' COMMENT '轮播图链接地址',
    `img_url`     varchar(255) NOT NULL DEFAULT '' COMMENT '轮播图图片地址',
    `create_time`    datetime              DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime              DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 20
  DEFAULT CHARSET = utf8 COMMENT ='轮播图表';

DROP TABLE IF EXISTS `uni_popular_scenic_spot`;
CREATE TABLE `uni_popular_scenic_spot`
(
    `id`           int(11)      NOT NULL AUTO_INCREMENT COMMENT '景点ID',
    `name`         varchar(63)  NOT NULL DEFAULT '' COMMENT '景点名称',
    `address`      varchar(63) NOT NULL DEFAULT '' COMMENT '景点地址',
    `introduction` varchar(100) NOT NULL DEFAULT '' COMMENT '景点简介',
    `is_hot`       varchar(1)   NOT NULL DEFAULT '0' COMMENT '是否热门 0 不是热门 1 热门',
    `city`         varchar(20)  NOT NULL DEFAULT '' COMMENT '景点城市',
    `details`      varchar(2000) NOT NULL DEFAULT '' COMMENT '景点详情',
    `create_time`     datetime              DEFAULT NULL COMMENT '创建时间',
    `update_time`  datetime              DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 20
  DEFAULT CHARSET = utf8 COMMENT ='景点信息表';

DROP TABLE IF EXISTS `uni_important_news`;
CREATE TABLE `uni_important_news`
(
    `id`          int(11)      NOT NULL AUTO_INCREMENT COMMENT '要闻ID',
    `name`        varchar(63)  NOT NULL DEFAULT '' COMMENT '要闻名称',
    `details`     varchar(100) NOT NULL DEFAULT '' COMMENT '要闻内容',
    `create_time`    datetime              DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime              DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 20
  DEFAULT CHARSET = utf8 COMMENT ='要闻表';

DROP TABLE IF EXISTS `uni_article`;
CREATE TABLE `uni_article`
(
    `id`          int(11)      NOT NULL AUTO_INCREMENT COMMENT '文章ID',
    `title`       varchar(63)  NOT NULL DEFAULT '' COMMENT '文章名称',
    `content`     varchar(100) NOT NULL DEFAULT '' COMMENT '文章内容',
    `type`        varchar(1)   NOT NULL DEFAULT '0' COMMENT '文章类型 0 官方攻略 1 热门活动 2 头条资讯 3 热门资讯',
    `create_time`    datetime              DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime              DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 20
  DEFAULT CHARSET = utf8 COMMENT ='文章表';
