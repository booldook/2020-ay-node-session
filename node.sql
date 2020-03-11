-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.7.28 - MySQL Community Server (GPL)
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- node 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `node` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `node`;

-- 테이블 node.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `writer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rnum` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 node.board:~6 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` (`id`, `title`, `comment`, `writer`, `wdate`, `img`, `rnum`) VALUES
	(5, '용왕이 아부지의 간을...', '용왕이 거북이의 간을 드셔', '백주', '2020-02-07 14:46:54', NULL, 0),
	(19, '제목입니다.', '내용입니다.', '작성자입니다.', '2020-02-11 16:01:00', NULL, 0),
	(21, '아버지를 아버지라...', '호형호제....', '홍길동', '2020-02-11 16:24:19', NULL, 0),
	(23, '아버지를 아버지라 부르지 못하고...', '내용 없음', '홍길만', '2020-02-12 10:57:43', NULL, 0),
	(25, '어머니를 어머니라...부르지', 'ㅎㅎㅎㅎㅎ', '홍길순', '2020-02-12 11:02:35', NULL, 0),
	(26, '제목입니다.3', '내용입니다.3', '작성자3', '2020-02-19 16:55:20', '', 0);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;

-- 테이블 node.gallery 구조 내보내기
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wdate` datetime DEFAULT NULL,
  `savefile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `realfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rnum` int(11) DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 node.gallery:~47 rows (대략적) 내보내기
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` (`id`, `title`, `writer`, `wdate`, `savefile`, `realfile`, `rnum`, `content`) VALUES
	(1, '용왕이 거북이의 간을', '별주부', '2020-02-25 11:02:54', '200225-1582596174220-784.jpg', '04_1_3_1.jpg', 0, '....'),
	(2, '한여름밤의 꿈....', '작성자', '2020-02-25 11:03:05', '200225-1582596185348-805.jpg', '14_1_1.jpg', 0, 'qqqq'),
	(3, '용왕이 거북이의 간을', '홍길동', '2020-02-25 11:03:17', '200225-1582596197283-126.jpg', '15_1_2 (1).jpg', 0, 'bbbb'),
	(4, '아버지를 아버지라', '별주부', '2020-02-25 11:03:29', '200225-1582596209292-262.jpg', 'parallax_img_new (1).jpg', 0, 'aaaa'),
	(5, '글을 작성합니다.', '홍길동', '2020-02-25 11:03:45', '200225-1582596224499-573.jpg', '04_2_1.jpg', 0, 'qqqq'),
	(6, '글을 작성합니다.', '홍길동', '2020-02-25 11:04:00', '200225-1582596239846-307.jpg', 'slide3_1.jpg', 0, 'aaaa'),
	(7, '용왕이 거북이의 간을', '홍길동', '2020-02-25 11:04:14', '200225-1582596253517-292.jpg', 'menu-banner-static-width2.jpg', 0, 'qqqq'),
	(8, '아버지를 아버지라', '홍길동', '2020-02-25 11:04:27', '200225-1582596266692-212.jpg', 'menu-banner3.jpg', 0, 'qqqq'),
	(9, '한여름밤의 꿈....', '홍길동', '2020-02-25 11:04:38', '200225-1582596277539-245.jpg', 'insta_img9.jpg', 0, 'qqqq'),
	(10, '용왕이 거북이의 간을', '작성자', '2020-02-25 11:04:49', '200225-1582596288660-284.jpg', 'menu-banner-static-width1.jpg', 0, 'q'),
	(11, '한여름밤의 꿈....', '별주부', '2020-02-25 11:04:58', '200225-1582596297691-338.jpg', '11_1.jpg', 0, 'q'),
	(12, '한여름밤의 꿈....', '작성자', '2020-02-25 11:05:09', '200225-1582596309203-705.png', 'logo_black.png', 0, 'qqqq'),
	(13, '글을 작성합니다.', '작성자', '2020-02-25 11:05:22', '200225-1582596321822-134.jpg', 'insta_img5.jpg', 0, 'qq'),
	(14, '한여름밤의 꿈....', '작성자', '2020-02-25 11:05:35', '200225-1582596334674-845.jpg', 'banner-1.jpg', 0, 'r'),
	(15, '한여름밤의 꿈....', '별주부', '2020-02-25 11:05:54', '200225-1582596353780-917.jpg', 'printed-dress.jpg', 0, 'e'),
	(16, '한여름밤의 꿈....', '홍길동', '2020-02-25 11:06:17', '200225-1582596377396-892.jpg', 'printed-chiffon-dress (20).jpg', 0, 'ddd'),
	(17, '한여름밤의 꿈....', '홍길동', '2020-02-25 11:06:31', '200225-1582596391156-940.jpg', 'sofas.jpg', 0, 'dddd'),
	(18, '한여름밤의 꿈....', '별주부', '2020-02-25 11:06:44', '200225-1582596404338-606.jpg', 'printed-chiffon-dress (18).jpg', 0, 'dddd'),
	(19, '아버지를 아버지라', '작성자', '2020-02-25 11:07:06', '200225-1582596425531-278.jpg', 'banner-2.jpg', 0, 'eeee'),
	(20, '한여름밤의 꿈....', '홍길동', '2020-02-25 11:07:20', '200225-1582596439853-572.jpg', 'newsletter_popup_bg.jpg', 0, 'yyy'),
	(21, '한여름밤의 꿈....', '홍길동', '2020-02-25 11:07:34', '200225-1582596454260-833.jpg', 'blog92x.jpg', 0, 'dddd'),
	(22, '아버지를 아버지라', '홍길동', '2020-02-25 11:07:47', '200225-1582596466700-365.jpg', 'slide3_2.jpg', 0, 'dddd'),
	(23, '아버지를 아버지라', '작성자', '2020-02-25 11:08:01', '200225-1582596481149-122.jpg', '10_1_1.jpg', 0, 'ddd'),
	(24, '용왕이 거북이의 간을', '작성자', '2020-02-25 11:04:49', '200225-1582596288660-284.jpg', 'menu-banner-static-width1.jpg', 0, 'q'),
	(25, '용왕이 거북이의 간을', '별주부', '2020-02-25 11:02:54', '200225-1582596174220-784.jpg', '04_1_3_1.jpg', 0, '....'),
	(26, '한여름밤의 꿈....', '작성자', '2020-02-25 11:03:05', '200225-1582596185348-805.jpg', '14_1_1.jpg', 0, 'qqqq'),
	(27, '용왕이 거북이의 간을', '홍길동', '2020-02-25 11:03:17', '200225-1582596197283-126.jpg', '15_1_2 (1).jpg', 0, 'bbbb'),
	(28, '글을 작성합니다.', '홍길동', '2020-02-25 11:03:45', '200225-1582596224499-573.jpg', '04_2_1.jpg', 0, 'qqqq'),
	(30, '아버지를 아버지라', '홍길동', '2020-02-25 11:04:27', '200225-1582596266692-212.jpg', 'menu-banner3.jpg', 0, 'qqqq'),
	(31, '용왕이 거북이의 간을', '작성자', '2020-02-25 11:04:49', '200225-1582596288660-284.jpg', 'menu-banner-static-width1.jpg', 0, 'q'),
	(32, '글을 작성합니다.', '작성자', '2020-02-25 11:05:22', '200225-1582596321822-134.jpg', 'insta_img5.jpg', 0, 'qq'),
	(33, '한여름밤의 꿈....', '홍길동', '2020-02-25 11:06:31', '200225-1582596391156-940.jpg', 'sofas.jpg', 0, 'dddd'),
	(34, '한여름밤의 꿈....', '홍길동', '2020-02-25 11:06:31', '200225-1582596391156-940.jpg', 'sofas.jpg', 0, 'dddd'),
	(35, '아버지를 아버지라', '작성자', '2020-02-25 11:07:06', '200225-1582596425531-278.jpg', 'banner-2.jpg', 0, 'eeee'),
	(36, '한여름밤의 꿈....', '홍길동', '2020-02-25 11:07:34', '200225-1582596454260-833.jpg', 'blog92x.jpg', 0, 'dddd'),
	(37, '아버지를 아버지라', '홍길동', '2020-02-25 11:07:47', '200225-1582596466700-365.jpg', 'slide3_2.jpg', 0, 'dddd'),
	(38, '글을 작성합니다.', '홍길동', '2020-02-25 11:03:45', '200225-1582596224499-573.jpg', '04_2_1.jpg', 0, 'qqqq'),
	(39, '용왕이 거북이의 간을', '홍길동', '2020-02-25 11:04:14', '200225-1582596253517-292.jpg', 'menu-banner-static-width2.jpg', 0, 'qqqq'),
	(40, '아버지를 아버지라', '홍길동', '2020-02-25 11:04:27', '200225-1582596266692-212.jpg', 'menu-banner3.jpg', 0, 'qqqq'),
	(41, '한여름밤의 꿈....', '홍길동', '2020-02-25 11:04:38', '200225-1582596277539-245.jpg', 'insta_img9.jpg', 0, 'qqqq'),
	(42, '용왕이 거북이의 간을', '작성자', '2020-02-25 11:04:49', '200225-1582596288660-284.jpg', 'menu-banner-static-width1.jpg', 0, 'q'),
	(43, '한여름밤의 꿈....', '별주부', '2020-02-25 11:04:58', '200225-1582596297691-338.jpg', '11_1.jpg', 0, 'q'),
	(44, '글을 작성합니다.~~~~~~~~~~', '작성자~~~~~~~~~', '2020-02-25 11:05:22', '200227-1582773710808-981.jpg', 'insta_img10.jpg', 0, 'qq@@@@@@@'),
	(45, '한여름밤의 꿈....', '작성자', '2020-02-25 11:05:35', '200309-1583714359183-419.jpg', '14_1_1.jpg', 0, '2314234234');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;

-- 테이블 node.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유값',
  `userid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '아이디',
  `userpw` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '패스워드',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '닉네임',
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이메일',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일',
  `deleted` datetime DEFAULT NULL COMMENT '휴면계정',
  `api` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local' COMMENT '카카오, 네이버 등',
  `api_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '카카오, 네이버 아이디',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 node.member:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `userid`, `userpw`, `username`, `email`, `created`, `updated`, `deleted`, `api`, `api_id`) VALUES
	(1, 'booldook', '1111', '임덕규', 'booldook@gmail.com', '2020-03-10 12:17:54', '2020-03-10 12:17:54', NULL, 'local', NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
