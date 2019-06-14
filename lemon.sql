-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-06-13 10:58:46
-- 服务器版本： 10.1.37-MariaDB
-- PHP 版本： 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `lemon`
--
set names utf8;
drop database if EXISTS lemon;
CREATE database lemon CHARSET=utf8;
use lemon;
-- --------------------------------------------------------
 
--
-- 表的结构 `pointer`
--

CREATE TABLE `pointer` (
  `pid` int(11) NOT NULL,
  `spot` varchar(50) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `Ttime` varchar(50) DEFAULT NULL,
  `tview` int(11) DEFAULT NULL,
  `zan` int(11) DEFAULT NULL,
  `totaltitle` varchar(50) DEFAULT NULL,
  `subtitle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
 
--
-- 表的结构 `travel`
--

CREATE TABLE `travel` (
  `tid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `spot` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `headerImg` varchar(100) DEFAULT NULL,
  `describle` varchar(100) DEFAULT NULL,
  `txt` text,
  `Ttime` bigint(15) DEFAULT NULL,
  `tview` int(11) DEFAULT NULL,
  `zan` int(11) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(16) DEFAULT NULL,
  `upwd` varchar(16) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `profile` varchar(125) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `uname`, `upwd`, `phone`, `sex`, `email`, `vid`, `profile`) VALUES
(1, 'jack', 'aa123456', '13012345678', 1, 'jack@163.com', NULL, '我是jack');

-- --------------------------------------------------------
 
--
-- 转储表的索引
--
 
--
-- 表的索引 `pointer`
--
ALTER TABLE `pointer`
  ADD PRIMARY KEY (`pid`);
 
--
-- 表的索引 `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`tid`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

 
--
-- 在导出的表使用AUTO_INCREMENT
--
 
--
-- 使用表AUTO_INCREMENT `pointer`
--
ALTER TABLE `pointer`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
 
--
-- 使用表AUTO_INCREMENT `travel`
--
ALTER TABLE `travel`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
 
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
