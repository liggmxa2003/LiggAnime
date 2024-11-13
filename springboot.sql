/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80039
 Source Host           : localhost:3306
 Source Schema         : springboot

 Target Server Type    : MySQL
 Target Server Version : 80039
 File Encoding         : 65001

 Date: 11/11/2024 15:55:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_anime
-- ----------------------------
DROP TABLE IF EXISTS `t_anime`;
CREATE TABLE `t_anime`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `first_picture` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `flag` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `views` int NULL DEFAULT NULL,
  `appreciation` int NOT NULL DEFAULT 0,
  `share_statement` int NOT NULL DEFAULT 0,
  `commentabled` int NOT NULL DEFAULT 0,
  `published` int NOT NULL DEFAULT 0,
  `recommend` int NOT NULL DEFAULT 0,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `type_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `tag_ids` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_anime
-- ----------------------------
INSERT INTO `t_anime` VALUES (14, '败犬女主太多了！', '**没能赢得心上人恋情的女孩——“败犬女主”。\r\n爱吃的青梅竹马系女主·八奈见杏菜。\r\n活力充沛的运动系女主·烧盐柠檬。\r\n怕生的小动物系女主·小鞠知花。\r\n被有点缺憾的败犬女主——败女们环绕，新感觉、乱糟糟的败走系青春故事就此揭幕。**', 'https://lain.bgm.tv/r/400/pic/cover/l/e4/dc/464376_NsZRw.jpg', '', 0, 1, 0, 1, 1, 0, '2024-10-19 21:28:10', '2024-10-20 01:21:50', 4, 2, '没能赢得心上人恋情的女孩——“败犬女主”。\r\n爱吃的青梅竹马系女主·八奈见杏菜。\r\n活力充沛的运动系女主·烧盐柠檬。\r\n怕生的小动物系女主·小鞠知花。\r\n被有点缺憾的败犬女主——败女们环绕，新感觉、乱糟糟的败走系青春故事就此揭幕。', '3,4,5,8,9');
INSERT INTO `t_anime` VALUES (15, '【我推的孩子】 第二季', '**当红漫画《东京BLADE》的舞台剧开始排练了。\r\n被剧团LALALAI的众演员包围，让加奈的演技大爆发。\r\n一边认加奈实力，却同时激起猛烈竞争心的黑川茜。\r\n在一群才华洋溢又充满热情的演员中，阿库亚利用自身演技，来追查爱当年的丧命真相...。**', 'https://lain.bgm.tv/r/400/pic/cover/l/d1/1c/443428_FIhFu.jpg', '', 0, 1, 1, 1, 1, 0, '2024-10-19 21:29:08', '2024-10-19 21:29:08', 1, 2, '橘さおり、平牧大輔、入江泰浩、仁科くにやす、小松和映、西邑大輔、内野宮晃希', NULL);
INSERT INTO `t_anime` VALUES (18, '你的名字。', '在每千年回归一次的彗星造访过一个月之后的日本。\r\n　　某个深山的乡下小镇，女高中生三叶每天都过着忧郁的生活。\r\n　　而她烦恼的不光有担任镇长的父亲所举行的选举运动，还有家传神社的古老习俗。\r\n  \r\n  (视频来自网络抓包)', 'https://lain.bgm.tv/r/400/pic/cover/l/20/15/160209_2UzU8.jpg', 'https://play.xfvod.pro/N/N-%E4%BD%A0%E7%9A%84%E5%90%8D%E5%AD%97/%E4%BD%A0%E7%9A%84%E5%90%8D%E5%AD%97.mp4', 0, 0, 0, 1, 1, 0, '2024-10-20 02:23:14', '2024-10-23 23:06:40', 7, 2, '　在每千年回归一次的彗星造访过一个月之后的日本。\r\n　　某个深山的乡下小镇，女高中生三叶每天都过着忧郁的生活。\r\n　　而她烦恼的不光有担任镇长的父亲所举行的选举运动，还有家传神社的古老习俗。', '10,11,14,15');
INSERT INTO `t_anime` VALUES (19, '玉子市场', '**　座落某个小镇的兔子商店街上，有一间日式饼店，住着一位十分喜欢饼类小吃的高中一年级女生——玉子。除了偶尔在店铺协助父亲，以及钻研新口味的饼类小吃外，她亦有跟学校的朋友参与羽毛球部活动。而饼店对面是同行的竞争对手，两边的父亲经常都因生意问题而喧哗。不过对方儿子——饼藏却自小跟玉子建立青梅竹马的关系，近日更不断隐约地表达心思，只是玉子没有特别注意，更常常被旁观的朋友拿出来扰攘一番。总而言之，玉子就是在商店街众人的护荫下，如此热闹地渡过每一天，生活可谓过得相当快乐**\r\n \r\n (视频来自网络抓包)', 'https://lain.bgm.tv/r/400/pic/cover/l/f8/7f/55113_TR5Is.jpg', 'https://play.xfvod.pro/Y/Y-%E7%8E%89%E5%AD%90%E5%B8%82%E5%9C%BA/%E7%8E%89%E5%AD%9001.mp4', 0, 0, 0, 1, 1, 0, '2024-10-20 03:32:30', '2024-10-23 23:11:39', 10, 2, '除夕，也就是玉子的生日，处于商店街年末最繁忙的时刻。庆祝仪式已经成为了商店街上下的惯例，唯独今年的饼藏没有准时来到。直到他带着礼物来到之时……一只光辉灿烂的鸟出现在众人面前。偶然变得越来越热闹的兔子商店街，亦正式开始其稍微不同的新一年。', '9,15,10,11');
INSERT INTO `t_anime` VALUES (21, ' 冰菓', '以节能为座右铭的高中生折木奉太郎， 为一个小小的原因而加入了濒临废社的“古典文学部”。古典文学部的社员，包括他在社里认识的好奇宝宝，也就是女主角千反田爱瑠，还有他从国中就认识的伊原摩耶花和福部里志。这是他们四人以神山高中为舞台，对一桩桩事件展开推理的青春学园推理剧。“我很好奇！”奉太郎平静的灰色高中生活，因为千反田的这一句话而为之一变！\r\n\r\n(视频来自网络抓包)', 'https://lain.bgm.tv/r/400/pic/cover/l/cd/38/27364_1ZFmr.jpg', 'https://play.xfvod.pro/B/B-%E5%86%B0%E8%8F%93/01.mp4', 0, 0, 0, 1, 1, 0, '2024-10-20 03:35:11', '2024-10-23 23:05:29', 5, 2, '主角千反田爱瑠，还有他从国中就认识的伊原摩耶花和福部里志。这是他们四人以神山高中为舞台，对一桩桩事件展开推理的青春学园推理剧。“我很好奇！”奉太郎平静的灰色高中生活，因为千反田的这一句话而为之一变！', '10,16,12,11');
INSERT INTO `t_anime` VALUES (22, '堀与宫村', '堀京子既是美人又成绩优秀，在学校是班上的中心。但实际上，她代替忙碌的双亲，在放学后直接回家，专注于家务和照顾年幼的弟弟，是个持家型的高中生。某天，受伤的弟弟创太被陌生的男性送回了堀的家里。\r\n“堀同学”被这样称呼后和他交谈才发现，他实际上是自己的同班同学——班上头号人气女子与阴沉男子相遇后会怎样！？\r\n恋爱、友情。充满青春气息的超微碳酸系校园生活，就此开幕\r\n(视频来自网络抓包)', 'https://lain.bgm.tv/r/400/pic/cover/l/23/a2/315069_2zYW6.jpg', 'https://play.xfvod.pro/J/J-%E5%A0%80%E4%B8%8E%E5%AE%AB%E6%9D%91/01.mp4', 0, 0, 0, 1, 1, 0, '2024-10-20 04:02:25', '2024-10-23 23:02:19', 10, 2, '堀京子既是美人又成绩优秀，在学校是班上的中心。但实际上，她代替忙碌的双亲，在放学后直接回家，专注于家务和照顾年幼的弟弟，是个持家型的高中生。某天，受伤的弟弟创太被陌生的男性送回了堀的家里。\r\n“堀同学”被这样称呼后和他交谈才发现，他实际上是自己的同班同学——班上头号人气女子与阴沉男子相遇后会怎样！？\r\n恋爱、友情。充满青春气息的超微碳酸系校园生活，就此开幕', '9,10,15,16,14');
INSERT INTO `t_anime` VALUES (23, ' 【我推的孩子】', '**在小城市工作的妇产科医生・五郎，有一天他所推的偶像“B小町”出现在了他的面前。“B小町”有着一个禁忌的秘密。\r\n如此这般的两人实现了最糟糕的相遇，从此命运的齿轮开始转动**', 'https://lain.bgm.tv/r/400/pic/cover/l/d1/1c/443428_FIhFu.jpg', 'https://play.xfvod.pro/temp/2407/%E6%88%91%E6%8E%A810.mp4', 0, 0, 0, 1, 1, 0, '2024-10-20 06:40:40', '2024-10-22 00:47:35', 7, 2, '“在演艺圈里，谎言就是武器。 ”\r\n在小城市工作的妇产科医生・五郎，有一天他所推的偶像“B小町”出现在了他的面前。“B小町”有着一个禁忌的秘密。\r\n如此这般的两人实现了最糟糕的相遇，从此命运的齿轮开始转动—', '10,11,17,9,12');
INSERT INTO `t_anime` VALUES (24, ' 我的青春恋爱物语果然有问题 完', '**看似在过去的心理阴影及独自的别扭思考回路之下讴歌着“独自生活”的比企谷八幡，偶然地被生活指导担当教师平冢静带着加入了「侍奉部」。他和同社团所属的令人窒息的完美美少女·雪之下雪乃，以及班级上位阶级所属的时髦女子·由比滨结衣一同，从解决班上的人际关系问题到给学生会帮忙，度过着解决各种事件的每一天**\r\n(视频来自网络抓包)', 'https://lain.bgm.tv/r/400/pic/cover/l/ba/69/277954_s8qHA.jpg', 'https://play.xfvod.pro/W/W-%E6%88%91%E7%9A%84%E9%9D%92%E6%98%A5%E6%81%8B%E7%88%B1%E7%89%A9%E8%AF%AD%E6%9E%9C%E7%84%B6%E6%9C%89%E9%97%AE%E9%A2%98%E7%B3%BB%E5%88%97/S3/01.mp4', 0, 0, 0, 1, 1, 0, '2024-10-20 18:56:57', '2024-10-23 23:02:09', 7, 2, '季节流转，时至春天。八幡与结衣，接受了雪乃最后的委托。在准备3月的毕业典礼过程中，还被彩羽请求协助毕业舞会……\r\n——追求真物的八幡，与3人的关系逐渐改变。究竟他的高中生活将迎来怎样的结局！？', '9,10,16,15');
INSERT INTO `t_anime` VALUES (25, '败犬女主太多了！', '**没能赢得心上人恋情的女孩——“败犬女主”。\r\n爱吃的青梅竹马系女主·八奈见杏菜。\r\n活力充沛的运动系女主·烧盐柠檬。\r\n怕生的小动物系女主·小鞠知花。**', 'https://lain.bgm.tv/r/400/pic/cover/l/e4/dc/464376_NsZRw.jpg', 'https://play.xfvod.pro/temp/2407/%E8%B4%A5%E5%8C%9712.mp4', 0, 0, 0, 1, 1, 0, '2024-10-20 20:40:31', '2024-10-20 20:40:31', 4, 2, '被有点缺憾的败犬女主——败女们环绕，新感觉、乱糟糟的败走系青春故事就此揭幕。\r\n因失败而更加闪耀吧，败女们！', '9,10,15,16,17');
INSERT INTO `t_anime` VALUES (26, '青之箱', '**中高一貫のスポーツ強豪校・栄明高校に入学する、男子バドミントン部の一年生・猪股大喜。**\r\n\r\n(视频来自网络抓包)', 'https://lain.bgm.tv/r/400/pic/cover/l/ab/e5/460306_tOsaH.jpg', 'https://sf16-cgfe-sg.ibytedtos.com/obj/tos-alisg-ve-0051c001-sg/oogQeU0fQxfGgSICLjcM8D0bDHAXoF1AXOqOIx?filename=1.mp4', 0, 0, 0, 1, 1, 0, '2024-10-20 21:05:01', '2024-10-23 23:04:13', 5, 2, '大喜は毎朝、朝練で顔を合わせる一つ上の先輩、鹿野千夏に恋をする。\r\n千夏は女子バスケットボール部のエースで、校内外問わず人気の高嶺の花。\r\n部活に恋に勉強に、大喜にとって忙しい高校生活がはじまる、そんなある日――', '9,10,15,16,17');
INSERT INTO `t_anime` VALUES (27, '境界的彼方', '**　一个偶然的契机，人类和妖梦之间出生的少年——神原秋人，有一天与在学校屋顶看上去要跳楼的少女——栗山未来相遇了。\r\n　　有着即使在异界士中也很特殊的“血”之能力的少女，在孤独中战斗着**\r\n  (视频来自网络抓包)', 'https://lain.bgm.tv/r/400/pic/cover/l/0e/32/49278_mo7EP.jpg', 'https://play.xfvod.pro/J/J-%E5%A2%83%E7%95%8C%E7%9A%84%E5%BD%BC%E6%96%B9/01.mp4', 0, 0, 0, 1, 1, 0, '2024-10-20 21:34:54', '2024-10-23 23:02:55', 10, 2, '我看着像——普通的人类吗?”\r\n　　少年决心帮助这个命运与自己重叠的少女。由此，围绕在少年身边险恶的战斗开始发生……', '10,11,12,14,16,17');
INSERT INTO `t_anime` VALUES (28, '终将成为你', '**不明白与人恋爱的心情，为此感到烦恼的小糸侑，在初中毕业时被要好的男生告白，却无法给予回应。**\r\n(视频来自网络抓包)', 'https://lain.bgm.tv/r/400/pic/cover/l/bc/72/243981_J20I2.jpg', 'https://play.xfvod.pro/Z/Z-%E7%BB%88%E5%B0%86%E6%88%90%E4%B8%BA%E4%BD%A0/01.mp4', 0, 0, 0, 1, 1, 0, '2024-10-22 00:43:37', '2024-10-23 23:03:09', 5, 2, '与灯子感到共鸣的侑，将自己的烦恼坦诚相告，却反而从灯子那里听到了意想不到的话语——\r\n“我好像会喜欢上你。”', '9,10,15,16,17');
INSERT INTO `t_anime` VALUES (30, '紫罗兰永恒花园', '**某个大陆的、某个时代。\r\n大陆南北分割的战争结束了，世界逐渐走向了和平。\r\n在战争中、作为军人而战斗的薇尔莉特·伊芙加登离开了军队，来到了大港口城市。怀抱着战场上一个对她而言比谁都重要的人告诉了她“某个话语”――。\r\n街道上人群踊跃，有轨电车在排列着煤气灯的马路上穿梭着。薇尔莉特在街道上找到了“代写书信”的工作。那是根据委托人的想法来组织出相应语言的工作。**', 'https://lain.bgm.tv/r/400/pic/cover/l/1e/e2/183878_Fef1o.jpg', 'https://play.xfvod.pro/Z/Z-%E7%B4%AB%E7%BD%97%E5%85%B0%E6%B0%B8%E6%81%92%E8%8A%B1%E5%9B%AD%E7%B3%BB%E5%88%97/%E7%B4%AB%E7%BD%97%E5%85%B0%E6%B0%B8%E6%81%92%E8%8A%B1%E5%9B%AD/01.mp4', 0, 0, 0, 1, 1, 0, '2024-10-23 22:55:41', '2024-10-23 22:56:47', 7, 2, '她直面着委托人、触碰着委托人内心深处的坦率感情。与此同时，薇尔莉特在记录书信时，那一天所告知的那句话的意思也逐渐接近了。', '10,11,12');
INSERT INTO `t_anime` VALUES (31, '更衣人偶坠入爱河', '**制作着女儿节娃娃，以成为娃娃工匠为目标的男高中生五条新菜。\r\n他专心一志地制作女儿娃娃，却也因此疏离的同世代的流行，迟迟无法融入班级。**\r\n(视频来自网络抓包)', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', 'https://play.xfvod.pro/G/G-%E6%9B%B4%E8%A1%A3%E4%BA%BA%E5%81%B6/02.mp4', 0, 0, 0, 1, 1, 0, '2024-10-23 23:00:23', '2024-10-23 23:00:23', 10, 2, '对这样的新菜来说，总是身处班上团体的中心，大受欢迎的喜多川海梦就像是不同世界的人一样。\r\n但就在某天，以意想不到的事情为契机，与海梦拥有了共同的秘密。\r\n原以为两人绝对不会有交集的世界开始转动了起来', '9,10,15,16,17');
INSERT INTO `t_anime` VALUES (32, '五等分的新娘∬', '**面对“将要留级”、“讨厌学习”的美少女五姐妹，身为兼职家庭教师的风太郎要指导她们学习，直到“顺利毕业”为止。经历了林间学校中发生的许多事情后，风太郎与五姐妹的信赖进一步加深。**\r\n\r\n(视频来自网络抓包)', 'https://lain.bgm.tv/r/400/pic/cover/l/6c/00/282000_6HHwK.jpg', 'https://play.xfvod.pro/W/W-%E4%BA%94%E7%AD%89%E5%88%86%E7%9A%84%E6%96%B0%E5%A8%98%E7%B3%BB%E5%88%97/S2/01.mp4', 0, 0, 0, 1, 1, 0, '2024-10-23 23:14:28', '2024-10-23 23:14:28', 10, 2, '的成绩全都及格，结果却频频遇到各种麻烦。不仅如此，风太郎的初恋对象“照片里的女孩”也出现了……\r\n风太郎与五姐妹之间新的考验开幕——', '9,10,11,14,16,17');
INSERT INTO `t_anime` VALUES (33, ' 天气之子', '**高中一年级的夏天。从离岛离家出走，来到东京的帆高。\r\n他的生活立刻变得困窘，在度过孤独的每一天之后终于找到的工作，\r\n是为古怪的超自然杂志撰稿。**\r\n\r\n', 'https://lain.bgm.tv/r/400/pic/cover/l/00/e8/269235_Dg6gZ.jpg', 'https://play.xfvod.pro/T/T-%E5%A4%A9%E6%B0%94%E4%B9%8B%E5%AD%90/%E5%A4%A9%E6%B0%94%E4%B9%8B%E5%AD%90.mp4', 0, 0, 0, 1, 1, 0, '2024-10-23 23:16:47', '2024-10-23 23:16:47', 7, 2, '如同预示着他接下来的命运一般，连日不断降下雨水。\r\n此时，在人潮熙熙攘攘的都市一角，帆高遇到了一位少女。\r\n', '9,10,12,14');
INSERT INTO `t_anime` VALUES (34, '式守同学不只可爱而已', '超级“帅气女友“登场！\r\n\r\n和泉是一名拥有不幸体质的高中男生，他有一个和他同班的女朋友，叫做式守。\r\n式守的笑容十分甜美、温柔，跟和泉在一起的时候脸上总是洋溢着幸福。\r\n\r\n视频来源网络抓包', 'https://lain.bgm.tv/r/400/pic/cover/l/6a/7b/324295_Klk2K.jpg', 'https://play.xfvod.pro/S/S-%E5%BC%8F%E5%AE%88%E5%90%8C%E5%AD%A6%E4%B8%8D%E6%AD%A2%E5%8F%AF%E7%88%B1/07.mp4', 0, 0, 0, 1, 1, 0, '2024-10-23 23:19:56', '2024-10-23 23:20:06', 5, 2, '她平时可爱动人，心中满是爱情，\r\n但只要看到和泉遇到危险，她就会……\r\n摇身一变，变成“帅气女友”！\r\n\r\n满是可爱×帅气的式守跟和泉\r\n将与他们的小伙伴一起带来无限愉快的日常！', '');
INSERT INTO `t_anime` VALUES (35, '通往夏天的隧道，再见的出口', '「你知道浦岛隧道吗？据说只要进入那条隧道，就能得到任何想要的事物；但相对地也会变老——」\r\n\r\n视频来源网络抓包', 'https://lain.bgm.tv/r/400/pic/cover/l/80/d9/362575_5yQR2.jpg', 'https://play.xfvod.pro/T/T-%E9%80%9A%E5%BE%80%E5%A4%8F%E5%A4%A9%E7%9A%84%E9%9A%A7%E9%81%93/%E9%80%9A%E5%BE%80%E5%A4%8F%E5%A4%A9%E7%9A%84%E9%9A%A7%E9%81%93.mp4', 0, 0, 0, 1, 1, 0, '2024-10-23 23:22:36', '2024-10-23 23:22:36', 7, 2, '高中生塔野薰听说了这样的都市传说，碰巧就在当天夜晚，发现了疑似传言所指的隧道。只要进入这条隧道，或许就能救回五年前过世的妹妹。\r\n放学后，薰开始独自探勘隧道，却被转学生花城杏子发现。两人为了得到彼此想要的东西而携手合作。充满前所未有体验的惊奇夏天，即将开始。', '9,10,12,14');
INSERT INTO `t_anime` VALUES (36, '声之形', '无比厌恶“无聊”的少年，石田将也。\r\n　　小学时期是个孩子王的他，对转校而来的少女西宫硝子产生了兴趣。\r\n　　在她到来后，少年无聊的日子得到了解放。', 'https://lain.bgm.tv/r/400/pic/cover/l/7c/b9/117777_R8hhl.jpg', 'https://play.xfvod.pro/S/S-%E5%A3%B0%E4%B9%8B%E5%BD%A2/[DMG]%20%E5%8A%87%E5%A0%B4%E7%89%88%20%E8%81%B2%E3%81%AE%E5%BD%A2%20[BDRip][AVC_AAC][1080P][CHS](AB0AECEC).mp4', 0, 0, 0, 1, 1, 0, '2024-10-23 23:24:14', '2024-10-23 23:24:14', 7, 2, '然而，以硝子身上的某件事为契机，将也被周围孤立了起来。\r\n　　而后经过了五年的时间，两人在不同的高中各自成长。\r\n　　机缘巧合之下，紧紧封闭自己内心的将也再次见到了硝子。\r\n　　这是一个少年，试图接受少女、周围的人们，并接受自己的故事', '10,9,16,17');
INSERT INTO `t_anime` VALUES (37, ' DARLING in the FRANXX', '遥远的未来，因人类过度抽取地球资源，地球变得荒芜，不再适合居住，人类只好居住在移动要塞都市内，但时常需要外出获取无法产出的资源「熔岩燃料」，「熔岩燃料」的开采会吸引来半机械生命体「叫龙」，此时就轮到人类操对抗叫龙的「FranXX」机械人的出场了。究竟这些「叫龙」是敌是友，无从得知。\r\n\r\n(视频来源网络抓包)', 'https://lain.bgm.tv/r/400/pic/cover/l/77/dd/218711_5Z5t1.jpg', 'https://play.xfvod.pro/G/G-%E5%9B%BD%E5%AE%B6%E9%98%9F/01.mp4', 0, 0, 0, 1, 1, 0, '2024-10-23 23:36:59', '2024-10-24 00:05:29', 7, 2, '少年阿广，驾驶部队代号016。他在少年时期被称作神童，如今却因无法驾驶「FranXX」，驾驶员生涯跌落谷底，是不被人需要的存在。在这样的广面前，某天，一位被称作02的神秘少女出现了。她的额头，长着两根艳丽的角。少女对广说：「终于找到你了，我的DARLING」。以此次偶遇为契机，广对驾驶机械人重新燃起了信心。', '10,14,15');
INSERT INTO `t_anime` VALUES (38, ' 无彩限的怪灵世界', '所谓语言就是寄宿于人脑内的寄生体。\r\n擅长无用知识以及绘画的召唤师——一条晴彦；\r\n持有“五行之气”的常在战场的武斗家——', 'https://lain.bgm.tv/r/400/pic/cover/l/20/7e/94040_kOkAg.jpg', 'https://play.xfvod.pro/D/D-%E5%A4%9A%E5%BD%A9%E9%99%90%E7%9A%84%E6%80%AA%E7%81%B5%E4%B8%96%E7%95%8C/04.mp4', 0, 0, 0, 1, 1, 0, '2024-10-23 23:40:19', '2024-10-23 23:40:19', 12, 2, '传说中的“怪灵吞噬者”——和泉玲奈；\r\n操纵八音的陶瓷娃娃少女——水无濑小糸。\r\n这个世界是真实的？还是虚幻的？', '9,10,15,16,17');
INSERT INTO `t_anime` VALUES (39, '我想吃掉你的胰脏', '她如此说了。 “我想吃掉你的胰脏” 春。 晚开的樱花仍在绽放的4月。 对他人毫无兴趣，总是独自一人读书的高中生“我”，在医院的等候室捡到了一册文库本。 这本用手写的文字写着《共病文库》这一标题的书，', 'https://lain.bgm.tv/pic/cover/l/23/17/221736_hm0HO.jpg', 'https://play.xfvod.pro/W/W-%E6%88%91%E6%83%B3%E5%90%83%E6%8E%89%E4%BD%A0%E7%9A%84%E8%83%B0%E8%84%8F/%E6%88%91%E6%83%B3%E5%90%83%E6%8E%89%E4%BD%A0%E7%9A%84%E8%83%B0%E8%84%8F.mp4', 0, 0, 0, 1, 1, 0, '2024-10-29 16:08:58', '2024-10-29 16:08:58', 7, 2, '对于她而言，那是对除了家人和医生以外的人隐藏病情的她，获得了唯一一位共享秘密之人的瞬间。 樱良想要在临终之日到来之前，一边尽量过着一如既往的日常生活，一边去做想要做的事情，竭尽全力享受人生。 在被她那奔放的行动牵着鼻子走的同时，“我”的内心也逐渐产生了变化。 ——那是，“我”的春日回忆。 她的一生回忆。', '9,10,12,15,11');

-- ----------------------------
-- Table structure for t_anime_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_anime_tags`;
CREATE TABLE `t_anime_tags`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_id` bigint NULL DEFAULT NULL,
  `anime_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 550 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_anime_tags
-- ----------------------------
INSERT INTO `t_anime_tags` VALUES (1, 3, '4');
INSERT INTO `t_anime_tags` VALUES (2, 4, '1');
INSERT INTO `t_anime_tags` VALUES (3, 4, '3');
INSERT INTO `t_anime_tags` VALUES (4, 5, '3');
INSERT INTO `t_anime_tags` VALUES (5, 5, '4');
INSERT INTO `t_anime_tags` VALUES (6, 7, '2');
INSERT INTO `t_anime_tags` VALUES (7, 6, '5');
INSERT INTO `t_anime_tags` VALUES (64, 5, '3');
INSERT INTO `t_anime_tags` VALUES (65, 4, '3');
INSERT INTO `t_anime_tags` VALUES (66, 4, '6');
INSERT INTO `t_anime_tags` VALUES (74, 7, '10');
INSERT INTO `t_anime_tags` VALUES (75, 8, '11');
INSERT INTO `t_anime_tags` VALUES (76, 8, '12');
INSERT INTO `t_anime_tags` VALUES (77, 8, '13');
INSERT INTO `t_anime_tags` VALUES (78, 4, '12');
INSERT INTO `t_anime_tags` VALUES (79, 5, '12');
INSERT INTO `t_anime_tags` VALUES (80, 6, '12');
INSERT INTO `t_anime_tags` VALUES (81, 7, '12');
INSERT INTO `t_anime_tags` VALUES (82, 5, '13');
INSERT INTO `t_anime_tags` VALUES (83, 3, '13');
INSERT INTO `t_anime_tags` VALUES (84, 4, '13');
INSERT INTO `t_anime_tags` VALUES (85, 6, '13');
INSERT INTO `t_anime_tags` VALUES (86, 7, '13');
INSERT INTO `t_anime_tags` VALUES (87, 8, '13');
INSERT INTO `t_anime_tags` VALUES (88, 4, '12');
INSERT INTO `t_anime_tags` VALUES (89, 5, '12');
INSERT INTO `t_anime_tags` VALUES (90, 6, '12');
INSERT INTO `t_anime_tags` VALUES (91, 7, '12');
INSERT INTO `t_anime_tags` VALUES (92, 3, '13');
INSERT INTO `t_anime_tags` VALUES (93, 4, '13');
INSERT INTO `t_anime_tags` VALUES (94, 5, '13');
INSERT INTO `t_anime_tags` VALUES (95, 8, '13');
INSERT INTO `t_anime_tags` VALUES (96, 9, '13');
INSERT INTO `t_anime_tags` VALUES (97, 3, '14');
INSERT INTO `t_anime_tags` VALUES (98, 4, '14');
INSERT INTO `t_anime_tags` VALUES (99, 5, '14');
INSERT INTO `t_anime_tags` VALUES (100, 8, '14');
INSERT INTO `t_anime_tags` VALUES (101, 9, '14');
INSERT INTO `t_anime_tags` VALUES (102, 3, '14');
INSERT INTO `t_anime_tags` VALUES (103, 4, '14');
INSERT INTO `t_anime_tags` VALUES (104, 5, '14');
INSERT INTO `t_anime_tags` VALUES (105, 8, '14');
INSERT INTO `t_anime_tags` VALUES (106, 9, '14');
INSERT INTO `t_anime_tags` VALUES (107, 3, '14');
INSERT INTO `t_anime_tags` VALUES (108, 4, '14');
INSERT INTO `t_anime_tags` VALUES (109, 5, '14');
INSERT INTO `t_anime_tags` VALUES (110, 8, '14');
INSERT INTO `t_anime_tags` VALUES (111, 9, '14');
INSERT INTO `t_anime_tags` VALUES (112, 4, '12');
INSERT INTO `t_anime_tags` VALUES (113, 5, '12');
INSERT INTO `t_anime_tags` VALUES (114, 6, '12');
INSERT INTO `t_anime_tags` VALUES (115, 7, '12');
INSERT INTO `t_anime_tags` VALUES (116, 3, '16');
INSERT INTO `t_anime_tags` VALUES (117, 4, '16');
INSERT INTO `t_anime_tags` VALUES (118, 5, '16');
INSERT INTO `t_anime_tags` VALUES (119, 3, '16');
INSERT INTO `t_anime_tags` VALUES (120, 4, '16');
INSERT INTO `t_anime_tags` VALUES (121, 5, '16');
INSERT INTO `t_anime_tags` VALUES (122, 3, '16');
INSERT INTO `t_anime_tags` VALUES (123, 4, '16');
INSERT INTO `t_anime_tags` VALUES (124, 5, '16');
INSERT INTO `t_anime_tags` VALUES (125, 4, '12');
INSERT INTO `t_anime_tags` VALUES (126, 5, '12');
INSERT INTO `t_anime_tags` VALUES (127, 6, '12');
INSERT INTO `t_anime_tags` VALUES (128, 7, '12');
INSERT INTO `t_anime_tags` VALUES (129, 9, '17');
INSERT INTO `t_anime_tags` VALUES (130, 10, '17');
INSERT INTO `t_anime_tags` VALUES (131, 11, '17');
INSERT INTO `t_anime_tags` VALUES (132, 9, '17');
INSERT INTO `t_anime_tags` VALUES (133, 10, '17');
INSERT INTO `t_anime_tags` VALUES (134, 11, '17');
INSERT INTO `t_anime_tags` VALUES (135, 14, '17');
INSERT INTO `t_anime_tags` VALUES (136, 15, '17');
INSERT INTO `t_anime_tags` VALUES (137, 9, '17');
INSERT INTO `t_anime_tags` VALUES (138, 10, '17');
INSERT INTO `t_anime_tags` VALUES (139, 11, '17');
INSERT INTO `t_anime_tags` VALUES (140, 14, '17');
INSERT INTO `t_anime_tags` VALUES (141, 15, '17');
INSERT INTO `t_anime_tags` VALUES (142, 10, '18');
INSERT INTO `t_anime_tags` VALUES (143, 11, '18');
INSERT INTO `t_anime_tags` VALUES (144, 14, '18');
INSERT INTO `t_anime_tags` VALUES (145, 15, '18');
INSERT INTO `t_anime_tags` VALUES (146, 9, '17');
INSERT INTO `t_anime_tags` VALUES (147, 10, '17');
INSERT INTO `t_anime_tags` VALUES (148, 11, '17');
INSERT INTO `t_anime_tags` VALUES (149, 16, '17');
INSERT INTO `t_anime_tags` VALUES (150, 15, '17');
INSERT INTO `t_anime_tags` VALUES (151, 14, '17');
INSERT INTO `t_anime_tags` VALUES (152, 9, '19');
INSERT INTO `t_anime_tags` VALUES (153, 15, '19');
INSERT INTO `t_anime_tags` VALUES (154, 10, '19');
INSERT INTO `t_anime_tags` VALUES (155, 11, '19');
INSERT INTO `t_anime_tags` VALUES (156, 9, '19');
INSERT INTO `t_anime_tags` VALUES (157, 15, '19');
INSERT INTO `t_anime_tags` VALUES (158, 10, '19');
INSERT INTO `t_anime_tags` VALUES (159, 11, '19');
INSERT INTO `t_anime_tags` VALUES (160, 10, '20');
INSERT INTO `t_anime_tags` VALUES (161, 11, '20');
INSERT INTO `t_anime_tags` VALUES (162, 12, '20');
INSERT INTO `t_anime_tags` VALUES (163, 14, '20');
INSERT INTO `t_anime_tags` VALUES (164, 9, '21');
INSERT INTO `t_anime_tags` VALUES (165, 15, '21');
INSERT INTO `t_anime_tags` VALUES (166, 16, '21');
INSERT INTO `t_anime_tags` VALUES (167, 14, '21');
INSERT INTO `t_anime_tags` VALUES (168, 9, '22');
INSERT INTO `t_anime_tags` VALUES (169, 10, '22');
INSERT INTO `t_anime_tags` VALUES (170, 15, '22');
INSERT INTO `t_anime_tags` VALUES (171, 16, '22');
INSERT INTO `t_anime_tags` VALUES (172, 14, '22');
INSERT INTO `t_anime_tags` VALUES (173, 9, '17');
INSERT INTO `t_anime_tags` VALUES (174, 10, '17');
INSERT INTO `t_anime_tags` VALUES (175, 11, '17');
INSERT INTO `t_anime_tags` VALUES (176, 16, '17');
INSERT INTO `t_anime_tags` VALUES (177, 15, '17');
INSERT INTO `t_anime_tags` VALUES (178, 14, '17');
INSERT INTO `t_anime_tags` VALUES (179, 10, '18');
INSERT INTO `t_anime_tags` VALUES (180, 11, '18');
INSERT INTO `t_anime_tags` VALUES (181, 14, '18');
INSERT INTO `t_anime_tags` VALUES (182, 15, '18');
INSERT INTO `t_anime_tags` VALUES (183, 10, '18');
INSERT INTO `t_anime_tags` VALUES (184, 11, '18');
INSERT INTO `t_anime_tags` VALUES (185, 14, '18');
INSERT INTO `t_anime_tags` VALUES (186, 15, '18');
INSERT INTO `t_anime_tags` VALUES (187, 9, '22');
INSERT INTO `t_anime_tags` VALUES (188, 10, '22');
INSERT INTO `t_anime_tags` VALUES (189, 15, '22');
INSERT INTO `t_anime_tags` VALUES (190, 16, '22');
INSERT INTO `t_anime_tags` VALUES (191, 14, '22');
INSERT INTO `t_anime_tags` VALUES (192, 9, '22');
INSERT INTO `t_anime_tags` VALUES (193, 10, '22');
INSERT INTO `t_anime_tags` VALUES (194, 15, '22');
INSERT INTO `t_anime_tags` VALUES (195, 16, '22');
INSERT INTO `t_anime_tags` VALUES (196, 14, '22');
INSERT INTO `t_anime_tags` VALUES (197, 9, '22');
INSERT INTO `t_anime_tags` VALUES (198, 10, '22');
INSERT INTO `t_anime_tags` VALUES (199, 15, '22');
INSERT INTO `t_anime_tags` VALUES (200, 16, '22');
INSERT INTO `t_anime_tags` VALUES (201, 14, '22');
INSERT INTO `t_anime_tags` VALUES (202, 9, '22');
INSERT INTO `t_anime_tags` VALUES (203, 10, '22');
INSERT INTO `t_anime_tags` VALUES (204, 15, '22');
INSERT INTO `t_anime_tags` VALUES (205, 14, '22');
INSERT INTO `t_anime_tags` VALUES (206, 10, '23');
INSERT INTO `t_anime_tags` VALUES (207, 11, '23');
INSERT INTO `t_anime_tags` VALUES (208, 12, '23');
INSERT INTO `t_anime_tags` VALUES (209, 14, '23');
INSERT INTO `t_anime_tags` VALUES (210, 10, '23');
INSERT INTO `t_anime_tags` VALUES (211, 11, '23');
INSERT INTO `t_anime_tags` VALUES (212, 12, '23');
INSERT INTO `t_anime_tags` VALUES (213, 14, '23');
INSERT INTO `t_anime_tags` VALUES (214, 10, '23');
INSERT INTO `t_anime_tags` VALUES (215, 11, '23');
INSERT INTO `t_anime_tags` VALUES (216, 12, '23');
INSERT INTO `t_anime_tags` VALUES (217, 14, '23');
INSERT INTO `t_anime_tags` VALUES (218, 10, '23');
INSERT INTO `t_anime_tags` VALUES (219, 11, '23');
INSERT INTO `t_anime_tags` VALUES (220, 12, '23');
INSERT INTO `t_anime_tags` VALUES (221, 14, '23');
INSERT INTO `t_anime_tags` VALUES (222, 10, '23');
INSERT INTO `t_anime_tags` VALUES (223, 11, '23');
INSERT INTO `t_anime_tags` VALUES (224, 12, '23');
INSERT INTO `t_anime_tags` VALUES (225, 14, '23');
INSERT INTO `t_anime_tags` VALUES (226, 10, '23');
INSERT INTO `t_anime_tags` VALUES (227, 11, '23');
INSERT INTO `t_anime_tags` VALUES (228, 12, '23');
INSERT INTO `t_anime_tags` VALUES (229, 14, '23');
INSERT INTO `t_anime_tags` VALUES (230, 10, '23');
INSERT INTO `t_anime_tags` VALUES (231, 11, '23');
INSERT INTO `t_anime_tags` VALUES (232, 12, '23');
INSERT INTO `t_anime_tags` VALUES (233, 14, '23');
INSERT INTO `t_anime_tags` VALUES (234, 10, '23');
INSERT INTO `t_anime_tags` VALUES (235, 11, '23');
INSERT INTO `t_anime_tags` VALUES (236, 12, '23');
INSERT INTO `t_anime_tags` VALUES (237, 14, '23');
INSERT INTO `t_anime_tags` VALUES (238, 10, '23');
INSERT INTO `t_anime_tags` VALUES (239, 11, '23');
INSERT INTO `t_anime_tags` VALUES (240, 12, '23');
INSERT INTO `t_anime_tags` VALUES (241, 14, '23');
INSERT INTO `t_anime_tags` VALUES (242, 10, '18');
INSERT INTO `t_anime_tags` VALUES (243, 11, '18');
INSERT INTO `t_anime_tags` VALUES (244, 14, '18');
INSERT INTO `t_anime_tags` VALUES (245, 15, '18');
INSERT INTO `t_anime_tags` VALUES (246, 10, '18');
INSERT INTO `t_anime_tags` VALUES (247, 11, '18');
INSERT INTO `t_anime_tags` VALUES (248, 14, '18');
INSERT INTO `t_anime_tags` VALUES (249, 15, '18');
INSERT INTO `t_anime_tags` VALUES (250, 9, '24');
INSERT INTO `t_anime_tags` VALUES (251, 10, '24');
INSERT INTO `t_anime_tags` VALUES (252, 16, '24');
INSERT INTO `t_anime_tags` VALUES (253, 15, '24');
INSERT INTO `t_anime_tags` VALUES (254, 10, '18');
INSERT INTO `t_anime_tags` VALUES (255, 11, '18');
INSERT INTO `t_anime_tags` VALUES (256, 14, '18');
INSERT INTO `t_anime_tags` VALUES (257, 15, '18');
INSERT INTO `t_anime_tags` VALUES (258, 9, '22');
INSERT INTO `t_anime_tags` VALUES (259, 10, '22');
INSERT INTO `t_anime_tags` VALUES (260, 15, '22');
INSERT INTO `t_anime_tags` VALUES (261, 16, '22');
INSERT INTO `t_anime_tags` VALUES (262, 14, '22');
INSERT INTO `t_anime_tags` VALUES (263, 9, '17');
INSERT INTO `t_anime_tags` VALUES (264, 10, '17');
INSERT INTO `t_anime_tags` VALUES (265, 11, '17');
INSERT INTO `t_anime_tags` VALUES (266, 16, '17');
INSERT INTO `t_anime_tags` VALUES (267, 15, '17');
INSERT INTO `t_anime_tags` VALUES (268, 14, '17');
INSERT INTO `t_anime_tags` VALUES (269, 9, '19');
INSERT INTO `t_anime_tags` VALUES (270, 15, '19');
INSERT INTO `t_anime_tags` VALUES (271, 10, '19');
INSERT INTO `t_anime_tags` VALUES (272, 11, '19');
INSERT INTO `t_anime_tags` VALUES (273, 9, '21');
INSERT INTO `t_anime_tags` VALUES (274, 10, '21');
INSERT INTO `t_anime_tags` VALUES (275, 16, '21');
INSERT INTO `t_anime_tags` VALUES (276, 12, '21');
INSERT INTO `t_anime_tags` VALUES (277, 11, '21');
INSERT INTO `t_anime_tags` VALUES (278, 10, '21');
INSERT INTO `t_anime_tags` VALUES (279, 16, '21');
INSERT INTO `t_anime_tags` VALUES (280, 12, '21');
INSERT INTO `t_anime_tags` VALUES (281, 11, '21');
INSERT INTO `t_anime_tags` VALUES (282, 9, '25');
INSERT INTO `t_anime_tags` VALUES (283, 10, '25');
INSERT INTO `t_anime_tags` VALUES (284, 15, '25');
INSERT INTO `t_anime_tags` VALUES (285, 16, '25');
INSERT INTO `t_anime_tags` VALUES (286, 17, '25');
INSERT INTO `t_anime_tags` VALUES (287, 9, '19');
INSERT INTO `t_anime_tags` VALUES (288, 15, '19');
INSERT INTO `t_anime_tags` VALUES (289, 10, '19');
INSERT INTO `t_anime_tags` VALUES (290, 11, '19');
INSERT INTO `t_anime_tags` VALUES (291, 9, '19');
INSERT INTO `t_anime_tags` VALUES (292, 15, '19');
INSERT INTO `t_anime_tags` VALUES (293, 10, '19');
INSERT INTO `t_anime_tags` VALUES (294, 11, '19');
INSERT INTO `t_anime_tags` VALUES (295, 10, '17');
INSERT INTO `t_anime_tags` VALUES (296, 16, '17');
INSERT INTO `t_anime_tags` VALUES (297, 15, '17');
INSERT INTO `t_anime_tags` VALUES (298, 14, '17');
INSERT INTO `t_anime_tags` VALUES (299, 17, '17');
INSERT INTO `t_anime_tags` VALUES (300, 12, '17');
INSERT INTO `t_anime_tags` VALUES (301, 10, '17');
INSERT INTO `t_anime_tags` VALUES (302, 16, '17');
INSERT INTO `t_anime_tags` VALUES (303, 15, '17');
INSERT INTO `t_anime_tags` VALUES (304, 14, '17');
INSERT INTO `t_anime_tags` VALUES (305, 17, '17');
INSERT INTO `t_anime_tags` VALUES (306, 12, '17');
INSERT INTO `t_anime_tags` VALUES (307, 10, '17');
INSERT INTO `t_anime_tags` VALUES (308, 16, '17');
INSERT INTO `t_anime_tags` VALUES (309, 15, '17');
INSERT INTO `t_anime_tags` VALUES (310, 14, '17');
INSERT INTO `t_anime_tags` VALUES (311, 17, '17');
INSERT INTO `t_anime_tags` VALUES (312, 12, '17');
INSERT INTO `t_anime_tags` VALUES (313, 10, '20');
INSERT INTO `t_anime_tags` VALUES (314, 11, '20');
INSERT INTO `t_anime_tags` VALUES (315, 12, '20');
INSERT INTO `t_anime_tags` VALUES (316, 14, '20');
INSERT INTO `t_anime_tags` VALUES (317, 9, '26');
INSERT INTO `t_anime_tags` VALUES (318, 10, '26');
INSERT INTO `t_anime_tags` VALUES (319, 15, '26');
INSERT INTO `t_anime_tags` VALUES (320, 16, '26');
INSERT INTO `t_anime_tags` VALUES (321, 17, '26');
INSERT INTO `t_anime_tags` VALUES (322, 9, '26');
INSERT INTO `t_anime_tags` VALUES (323, 10, '26');
INSERT INTO `t_anime_tags` VALUES (324, 15, '26');
INSERT INTO `t_anime_tags` VALUES (325, 16, '26');
INSERT INTO `t_anime_tags` VALUES (326, 17, '26');
INSERT INTO `t_anime_tags` VALUES (327, 9, '26');
INSERT INTO `t_anime_tags` VALUES (328, 10, '26');
INSERT INTO `t_anime_tags` VALUES (329, 15, '26');
INSERT INTO `t_anime_tags` VALUES (330, 16, '26');
INSERT INTO `t_anime_tags` VALUES (331, 17, '26');
INSERT INTO `t_anime_tags` VALUES (332, 10, '27');
INSERT INTO `t_anime_tags` VALUES (333, 11, '27');
INSERT INTO `t_anime_tags` VALUES (334, 12, '27');
INSERT INTO `t_anime_tags` VALUES (335, 14, '27');
INSERT INTO `t_anime_tags` VALUES (336, 16, '27');
INSERT INTO `t_anime_tags` VALUES (337, 17, '27');
INSERT INTO `t_anime_tags` VALUES (338, 10, '20');
INSERT INTO `t_anime_tags` VALUES (339, 11, '20');
INSERT INTO `t_anime_tags` VALUES (340, 12, '20');
INSERT INTO `t_anime_tags` VALUES (341, 14, '20');
INSERT INTO `t_anime_tags` VALUES (342, 9, '24');
INSERT INTO `t_anime_tags` VALUES (343, 10, '24');
INSERT INTO `t_anime_tags` VALUES (344, 16, '24');
INSERT INTO `t_anime_tags` VALUES (345, 15, '24');
INSERT INTO `t_anime_tags` VALUES (346, 10, '27');
INSERT INTO `t_anime_tags` VALUES (347, 11, '27');
INSERT INTO `t_anime_tags` VALUES (348, 12, '27');
INSERT INTO `t_anime_tags` VALUES (349, 14, '27');
INSERT INTO `t_anime_tags` VALUES (350, 16, '27');
INSERT INTO `t_anime_tags` VALUES (351, 17, '27');
INSERT INTO `t_anime_tags` VALUES (352, 9, '28');
INSERT INTO `t_anime_tags` VALUES (353, 10, '28');
INSERT INTO `t_anime_tags` VALUES (354, 15, '28');
INSERT INTO `t_anime_tags` VALUES (355, 16, '28');
INSERT INTO `t_anime_tags` VALUES (356, 17, '28');
INSERT INTO `t_anime_tags` VALUES (357, 9, '28');
INSERT INTO `t_anime_tags` VALUES (358, 10, '28');
INSERT INTO `t_anime_tags` VALUES (359, 15, '28');
INSERT INTO `t_anime_tags` VALUES (360, 16, '28');
INSERT INTO `t_anime_tags` VALUES (361, 17, '28');
INSERT INTO `t_anime_tags` VALUES (362, 9, '22');
INSERT INTO `t_anime_tags` VALUES (363, 10, '22');
INSERT INTO `t_anime_tags` VALUES (364, 15, '22');
INSERT INTO `t_anime_tags` VALUES (365, 16, '22');
INSERT INTO `t_anime_tags` VALUES (366, 14, '22');
INSERT INTO `t_anime_tags` VALUES (367, 10, '23');
INSERT INTO `t_anime_tags` VALUES (368, 11, '23');
INSERT INTO `t_anime_tags` VALUES (369, 17, '23');
INSERT INTO `t_anime_tags` VALUES (370, 9, '23');
INSERT INTO `t_anime_tags` VALUES (371, 12, '23');
INSERT INTO `t_anime_tags` VALUES (372, 9, '28');
INSERT INTO `t_anime_tags` VALUES (373, 10, '28');
INSERT INTO `t_anime_tags` VALUES (374, 15, '28');
INSERT INTO `t_anime_tags` VALUES (375, 16, '28');
INSERT INTO `t_anime_tags` VALUES (376, 17, '28');
INSERT INTO `t_anime_tags` VALUES (377, 9, '28');
INSERT INTO `t_anime_tags` VALUES (378, 10, '28');
INSERT INTO `t_anime_tags` VALUES (379, 15, '28');
INSERT INTO `t_anime_tags` VALUES (380, 16, '28');
INSERT INTO `t_anime_tags` VALUES (381, 17, '28');
INSERT INTO `t_anime_tags` VALUES (382, 12, '29');
INSERT INTO `t_anime_tags` VALUES (383, 11, '29');
INSERT INTO `t_anime_tags` VALUES (384, 10, '29');
INSERT INTO `t_anime_tags` VALUES (385, 14, '29');
INSERT INTO `t_anime_tags` VALUES (386, 15, '29');
INSERT INTO `t_anime_tags` VALUES (387, 12, '29');
INSERT INTO `t_anime_tags` VALUES (388, 11, '29');
INSERT INTO `t_anime_tags` VALUES (389, 10, '29');
INSERT INTO `t_anime_tags` VALUES (390, 12, '29');
INSERT INTO `t_anime_tags` VALUES (391, 11, '29');
INSERT INTO `t_anime_tags` VALUES (392, 10, '29');
INSERT INTO `t_anime_tags` VALUES (393, 9, '24');
INSERT INTO `t_anime_tags` VALUES (394, 10, '24');
INSERT INTO `t_anime_tags` VALUES (395, 16, '24');
INSERT INTO `t_anime_tags` VALUES (396, 15, '24');
INSERT INTO `t_anime_tags` VALUES (397, 10, '21');
INSERT INTO `t_anime_tags` VALUES (398, 16, '21');
INSERT INTO `t_anime_tags` VALUES (399, 12, '21');
INSERT INTO `t_anime_tags` VALUES (400, 11, '21');
INSERT INTO `t_anime_tags` VALUES (401, 10, '30');
INSERT INTO `t_anime_tags` VALUES (402, 11, '30');
INSERT INTO `t_anime_tags` VALUES (403, 12, '30');
INSERT INTO `t_anime_tags` VALUES (404, 10, '30');
INSERT INTO `t_anime_tags` VALUES (405, 11, '30');
INSERT INTO `t_anime_tags` VALUES (406, 12, '30');
INSERT INTO `t_anime_tags` VALUES (407, 10, '30');
INSERT INTO `t_anime_tags` VALUES (408, 11, '30');
INSERT INTO `t_anime_tags` VALUES (409, 12, '30');
INSERT INTO `t_anime_tags` VALUES (410, 9, '31');
INSERT INTO `t_anime_tags` VALUES (411, 10, '31');
INSERT INTO `t_anime_tags` VALUES (412, 15, '31');
INSERT INTO `t_anime_tags` VALUES (413, 16, '31');
INSERT INTO `t_anime_tags` VALUES (414, 17, '31');
INSERT INTO `t_anime_tags` VALUES (415, 10, '17');
INSERT INTO `t_anime_tags` VALUES (416, 16, '17');
INSERT INTO `t_anime_tags` VALUES (417, 15, '17');
INSERT INTO `t_anime_tags` VALUES (418, 14, '17');
INSERT INTO `t_anime_tags` VALUES (419, 17, '17');
INSERT INTO `t_anime_tags` VALUES (420, 12, '17');
INSERT INTO `t_anime_tags` VALUES (421, 10, '18');
INSERT INTO `t_anime_tags` VALUES (422, 11, '18');
INSERT INTO `t_anime_tags` VALUES (423, 14, '18');
INSERT INTO `t_anime_tags` VALUES (424, 15, '18');
INSERT INTO `t_anime_tags` VALUES (425, 9, '19');
INSERT INTO `t_anime_tags` VALUES (426, 15, '19');
INSERT INTO `t_anime_tags` VALUES (427, 10, '19');
INSERT INTO `t_anime_tags` VALUES (428, 11, '19');
INSERT INTO `t_anime_tags` VALUES (429, 9, '26');
INSERT INTO `t_anime_tags` VALUES (430, 10, '26');
INSERT INTO `t_anime_tags` VALUES (431, 15, '26');
INSERT INTO `t_anime_tags` VALUES (432, 16, '26');
INSERT INTO `t_anime_tags` VALUES (433, 17, '26');
INSERT INTO `t_anime_tags` VALUES (434, 9, '24');
INSERT INTO `t_anime_tags` VALUES (435, 10, '24');
INSERT INTO `t_anime_tags` VALUES (436, 16, '24');
INSERT INTO `t_anime_tags` VALUES (437, 15, '24');
INSERT INTO `t_anime_tags` VALUES (438, 9, '22');
INSERT INTO `t_anime_tags` VALUES (439, 10, '22');
INSERT INTO `t_anime_tags` VALUES (440, 15, '22');
INSERT INTO `t_anime_tags` VALUES (441, 16, '22');
INSERT INTO `t_anime_tags` VALUES (442, 14, '22');
INSERT INTO `t_anime_tags` VALUES (443, 10, '21');
INSERT INTO `t_anime_tags` VALUES (444, 16, '21');
INSERT INTO `t_anime_tags` VALUES (445, 12, '21');
INSERT INTO `t_anime_tags` VALUES (446, 11, '21');
INSERT INTO `t_anime_tags` VALUES (447, 10, '27');
INSERT INTO `t_anime_tags` VALUES (448, 11, '27');
INSERT INTO `t_anime_tags` VALUES (449, 12, '27');
INSERT INTO `t_anime_tags` VALUES (450, 14, '27');
INSERT INTO `t_anime_tags` VALUES (451, 16, '27');
INSERT INTO `t_anime_tags` VALUES (452, 17, '27');
INSERT INTO `t_anime_tags` VALUES (453, 9, '28');
INSERT INTO `t_anime_tags` VALUES (454, 10, '28');
INSERT INTO `t_anime_tags` VALUES (455, 15, '28');
INSERT INTO `t_anime_tags` VALUES (456, 16, '28');
INSERT INTO `t_anime_tags` VALUES (457, 17, '28');
INSERT INTO `t_anime_tags` VALUES (458, 10, '17');
INSERT INTO `t_anime_tags` VALUES (459, 16, '17');
INSERT INTO `t_anime_tags` VALUES (460, 15, '17');
INSERT INTO `t_anime_tags` VALUES (461, 14, '17');
INSERT INTO `t_anime_tags` VALUES (462, 17, '17');
INSERT INTO `t_anime_tags` VALUES (463, 12, '17');
INSERT INTO `t_anime_tags` VALUES (464, 10, '18');
INSERT INTO `t_anime_tags` VALUES (465, 11, '18');
INSERT INTO `t_anime_tags` VALUES (466, 14, '18');
INSERT INTO `t_anime_tags` VALUES (467, 15, '18');
INSERT INTO `t_anime_tags` VALUES (468, 10, '21');
INSERT INTO `t_anime_tags` VALUES (469, 16, '21');
INSERT INTO `t_anime_tags` VALUES (470, 12, '21');
INSERT INTO `t_anime_tags` VALUES (471, 11, '21');
INSERT INTO `t_anime_tags` VALUES (472, 9, '26');
INSERT INTO `t_anime_tags` VALUES (473, 10, '26');
INSERT INTO `t_anime_tags` VALUES (474, 15, '26');
INSERT INTO `t_anime_tags` VALUES (475, 16, '26');
INSERT INTO `t_anime_tags` VALUES (476, 17, '26');
INSERT INTO `t_anime_tags` VALUES (477, 10, '21');
INSERT INTO `t_anime_tags` VALUES (478, 16, '21');
INSERT INTO `t_anime_tags` VALUES (479, 12, '21');
INSERT INTO `t_anime_tags` VALUES (480, 11, '21');
INSERT INTO `t_anime_tags` VALUES (481, 10, '18');
INSERT INTO `t_anime_tags` VALUES (482, 11, '18');
INSERT INTO `t_anime_tags` VALUES (483, 14, '18');
INSERT INTO `t_anime_tags` VALUES (484, 15, '18');
INSERT INTO `t_anime_tags` VALUES (485, 9, '19');
INSERT INTO `t_anime_tags` VALUES (486, 15, '19');
INSERT INTO `t_anime_tags` VALUES (487, 10, '19');
INSERT INTO `t_anime_tags` VALUES (488, 11, '19');
INSERT INTO `t_anime_tags` VALUES (489, 9, '32');
INSERT INTO `t_anime_tags` VALUES (490, 10, '32');
INSERT INTO `t_anime_tags` VALUES (491, 11, '32');
INSERT INTO `t_anime_tags` VALUES (492, 14, '32');
INSERT INTO `t_anime_tags` VALUES (493, 16, '32');
INSERT INTO `t_anime_tags` VALUES (494, 17, '32');
INSERT INTO `t_anime_tags` VALUES (495, 9, '33');
INSERT INTO `t_anime_tags` VALUES (496, 10, '33');
INSERT INTO `t_anime_tags` VALUES (497, 12, '33');
INSERT INTO `t_anime_tags` VALUES (498, 14, '33');
INSERT INTO `t_anime_tags` VALUES (499, 9, '35');
INSERT INTO `t_anime_tags` VALUES (500, 10, '35');
INSERT INTO `t_anime_tags` VALUES (501, 12, '35');
INSERT INTO `t_anime_tags` VALUES (502, 14, '35');
INSERT INTO `t_anime_tags` VALUES (503, 10, '36');
INSERT INTO `t_anime_tags` VALUES (504, 9, '36');
INSERT INTO `t_anime_tags` VALUES (505, 16, '36');
INSERT INTO `t_anime_tags` VALUES (506, 17, '36');
INSERT INTO `t_anime_tags` VALUES (507, 9, '38');
INSERT INTO `t_anime_tags` VALUES (508, 10, '38');
INSERT INTO `t_anime_tags` VALUES (509, 15, '38');
INSERT INTO `t_anime_tags` VALUES (510, 16, '38');
INSERT INTO `t_anime_tags` VALUES (511, 17, '38');
INSERT INTO `t_anime_tags` VALUES (512, 10, '37');
INSERT INTO `t_anime_tags` VALUES (513, 14, '37');
INSERT INTO `t_anime_tags` VALUES (514, 15, '37');
INSERT INTO `t_anime_tags` VALUES (515, 10, '17');
INSERT INTO `t_anime_tags` VALUES (516, 16, '17');
INSERT INTO `t_anime_tags` VALUES (517, 15, '17');
INSERT INTO `t_anime_tags` VALUES (518, 14, '17');
INSERT INTO `t_anime_tags` VALUES (519, 17, '17');
INSERT INTO `t_anime_tags` VALUES (520, 12, '17');
INSERT INTO `t_anime_tags` VALUES (521, 10, '17');
INSERT INTO `t_anime_tags` VALUES (522, 16, '17');
INSERT INTO `t_anime_tags` VALUES (523, 15, '17');
INSERT INTO `t_anime_tags` VALUES (524, 14, '17');
INSERT INTO `t_anime_tags` VALUES (525, 17, '17');
INSERT INTO `t_anime_tags` VALUES (526, 12, '17');
INSERT INTO `t_anime_tags` VALUES (527, 10, '17');
INSERT INTO `t_anime_tags` VALUES (528, 16, '17');
INSERT INTO `t_anime_tags` VALUES (529, 15, '17');
INSERT INTO `t_anime_tags` VALUES (530, 14, '17');
INSERT INTO `t_anime_tags` VALUES (531, 17, '17');
INSERT INTO `t_anime_tags` VALUES (532, 12, '17');
INSERT INTO `t_anime_tags` VALUES (533, 10, '17');
INSERT INTO `t_anime_tags` VALUES (534, 16, '17');
INSERT INTO `t_anime_tags` VALUES (535, 15, '17');
INSERT INTO `t_anime_tags` VALUES (536, 14, '17');
INSERT INTO `t_anime_tags` VALUES (537, 17, '17');
INSERT INTO `t_anime_tags` VALUES (538, 12, '17');
INSERT INTO `t_anime_tags` VALUES (539, 10, '17');
INSERT INTO `t_anime_tags` VALUES (540, 16, '17');
INSERT INTO `t_anime_tags` VALUES (541, 15, '17');
INSERT INTO `t_anime_tags` VALUES (542, 14, '17');
INSERT INTO `t_anime_tags` VALUES (543, 17, '17');
INSERT INTO `t_anime_tags` VALUES (544, 12, '17');
INSERT INTO `t_anime_tags` VALUES (545, 9, '39');
INSERT INTO `t_anime_tags` VALUES (546, 10, '39');
INSERT INTO `t_anime_tags` VALUES (547, 12, '39');
INSERT INTO `t_anime_tags` VALUES (548, 15, '39');
INSERT INTO `t_anime_tags` VALUES (549, 11, '39');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `anime_id` bigint NULL DEFAULT NULL,
  `parent_comment_id` bigint NULL DEFAULT NULL,
  `admincomment` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (9, '12414', 'qq@com', '123141', '/images/avatar.jpg', '2024-10-19 21:21:26', 11, -1, 0);
INSERT INTO `t_comment` VALUES (10, 'LIgg', '29544@qq.com', 'adw', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-19 21:23:31', 12, -1, 1);
INSERT INTO `t_comment` VALUES (11, 'LIgg', '29544@qq.com', 'dwads', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-19 21:23:33', 12, -1, 1);
INSERT INTO `t_comment` VALUES (12, 'LIgg', '29544@qq.com', 'sdawadadawd', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-19 21:24:48', 13, -1, 1);
INSERT INTO `t_comment` VALUES (13, 'LIgg', '29544@qq.com', 'dasdaw', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-19 21:24:50', 13, -1, 1);
INSERT INTO `t_comment` VALUES (14, 'LIgg', '29544@qq.com', 'sdawD', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-19 21:29:16', 12, -1, 1);
INSERT INTO `t_comment` VALUES (15, 'LIgg', '29544@qq.com', 'adsadwd', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-19 21:29:33', 12, -1, 1);
INSERT INTO `t_comment` VALUES (16, 'da', '', 'daDa', '/images/avatar.jpg', '2024-10-19 23:48:01', 14, -1, 0);
INSERT INTO `t_comment` VALUES (17, 'as', '', 'ada', '/images/avatar.jpg', '2024-10-20 01:10:35', 13, -1, 0);
INSERT INTO `t_comment` VALUES (18, 'adad', NULL, 'daw', '/images/avatar.jpg', '2024-10-20 01:12:21', 14, -1, 0);
INSERT INTO `t_comment` VALUES (19, 'adad', NULL, 'dawadad', '/images/avatar.jpg', '2024-10-20 01:12:22', 14, -1, 0);
INSERT INTO `t_comment` VALUES (20, 'adad', NULL, 'dawadad', '/images/avatar.jpg', '2024-10-20 01:12:24', 14, -1, 0);
INSERT INTO `t_comment` VALUES (21, 'adad', NULL, 'dawadad', '/images/avatar.jpg', '2024-10-20 01:12:26', 14, -1, 0);
INSERT INTO `t_comment` VALUES (22, 'a', NULL, 'daD', '/images/avatar.jpg', '2024-10-20 01:13:36', 14, -1, 0);
INSERT INTO `t_comment` VALUES (23, 'ada', NULL, 'aD', '/images/avatar.jpg', '2024-10-20 01:17:03', 14, NULL, 0);
INSERT INTO `t_comment` VALUES (24, 'dad', NULL, 'asda', '/images/avatar.jpg', '2024-10-20 01:33:08', 16, -1, 0);
INSERT INTO `t_comment` VALUES (25, 'dad', NULL, 'asdaad', '/images/avatar.jpg', '2024-10-20 01:33:15', 16, -1, 0);
INSERT INTO `t_comment` VALUES (26, 'aA', NULL, 'ad', '/images/avatar.jpg', '2024-10-20 01:45:18', 16, -1, 0);
INSERT INTO `t_comment` VALUES (27, '阿库娅', NULL, '阿达', '/images/avatar.jpg', '2024-10-20 02:18:51', 17, -1, 0);
INSERT INTO `t_comment` VALUES (28, 'LIgg', NULL, 'da', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-20 03:33:04', 19, -1, 1);
INSERT INTO `t_comment` VALUES (29, 'LIgg', NULL, 'sadada', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-20 05:54:04', 18, -1, 1);
INSERT INTO `t_comment` VALUES (30, 'dad', NULL, 'dawdad', '/images/avatar.jpg', '2024-10-20 07:29:01', 18, -1, 0);
INSERT INTO `t_comment` VALUES (31, 'Ligg', NULL, '测试回复\n', '/images/avatar.jpg', '2024-10-20 16:01:33', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (32, 'Ligg', NULL, '测试回复\n', '/images/avatar.jpg', '2024-10-20 16:01:36', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (33, 'Ligg', NULL, '测试回复\n', '/images/avatar.jpg', '2024-10-20 16:01:36', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (34, 'Ligg', NULL, '测试回复\n', '/images/avatar.jpg', '2024-10-20 16:01:36', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (35, 'ad', NULL, 'ad', '/images/avatar.jpg', '2024-10-20 16:01:57', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (36, 'ad', NULL, 'ad', '/images/avatar.jpg', '2024-10-20 16:01:57', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (37, 'ad', NULL, 'ad', '/images/avatar.jpg', '2024-10-20 16:01:57', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (38, 'ad', NULL, 'aa', '/images/avatar.jpg', '2024-10-20 16:02:03', 18, -1, 0);
INSERT INTO `t_comment` VALUES (39, '比企谷八幡', NULL, '我讨厌温柔的女孩子 温柔的女孩子 其实对所有人都温柔 我却会误以为只对我温柔 然后就沾沾自喜 得意忘形最后闹得不欢而散', 'https://lain.bgm.tv/pic/crt/g/71/60/19039_crt_F48f0.jpg', '2024-10-20 21:10:11', 24, -1, 1);
INSERT INTO `t_comment` VALUES (40, 'LIgg', NULL, 'SDAA', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-20 21:14:45', 24, NULL, 1);
INSERT INTO `t_comment` VALUES (41, 'LIgg', NULL, 'SDAA', 'https://lain.bgm.tv/r/400/pic/cover/l/9c/4d/333158_qc7CC.jpg', '2024-10-20 21:14:45', 24, NULL, 1);
INSERT INTO `t_comment` VALUES (42, '雪之下雪乃', NULL, '将来某一天，你要来拯救我哦\n', 'https://lain.bgm.tv/pic/crt/g/7a/02/19040_crt_wQQO2.jpg?r=1515405272', '2024-10-20 21:16:52', 24, -1, 1);
INSERT INTO `t_comment` VALUES (43, '由比滨结衣', NULL, 'ゆいがはま ゆい', 'https://lain.bgm.tv/pic/crt/g/f3/90/19041_crt_FG0PO.jpg', '2024-10-20 21:19:50', 24, -1, 1);
INSERT INTO `t_comment` VALUES (44, '薇尔莉特', NULL, '花无凋零之日，意无传达之期，爱情恒古不变，紫罗兰与世长存” #紫罗兰永恒花园 ', 'https://lain.bgm.tv/pic/crt/g/77/03/37344_crt_QeHnZ.jpg?r=1515695817', '2024-10-20 21:22:47', 20, -1, 1);
INSERT INTO `t_comment` VALUES (45, 'ギルベルト・ブーゲンビリア', NULL, 'ヴァイオレット・エヴァーガーデン', 'https://lain.bgm.tv/pic/crt/g/e8/25/38323_crt_FbUSl.jpg?r=1453465684', '2024-10-20 21:24:29', 20, -1, 1);
INSERT INTO `t_comment` VALUES (46, '星野アイ', NULL, '你们长大后...会变成什么样的人呢 好想看看你们背起书包的样子 真想待在你们身边...看着你们慢慢长大', 'https://lain.bgm.tv/pic/crt/g/40/e1/102127_crt_1BT0Q.jpg?r=1681671679', '2024-10-20 21:27:05', 17, -1, 1);
INSERT INTO `t_comment` VALUES (47, '阿库亚', NULL, '星野アイ星野アイ', 'https://lain.bgm.tv/pic/crt/g/c5/3a/102125_crt_I1eZN.jpg?r=1674520069', '2024-10-20 21:28:21', 17, -1, 1);
INSERT INTO `t_comment` VALUES (48, '露比', NULL, '星野アイ星野アイ露比', 'https://lain.bgm.tv/pic/crt/g/71/cc/102126_crt_aJfCA.jpg?r=1674520085', '2024-10-20 21:28:32', 17, -1, 1);
INSERT INTO `t_comment` VALUES (49, '神原秋人', NULL, '我看着像——普通的人类吗?”', 'https://lain.bgm.tv/pic/crt/g/ae/9f/20891_crt_t2w0t.jpg?r=1612039045', '2024-10-20 21:35:37', 27, -1, 1);
INSERT INTO `t_comment` VALUES (50, '栗山未来', NULL, 'きょうかいのかなた アイドル裁判! ～迷いながらも君を裁く民～', 'https://lain.bgm.tv/pic/crt/g/a7/e2/20890_crt_lZEaV.jpg?r=1612039348', '2024-10-20 21:36:23', 27, -1, 1);
INSERT INTO `t_comment` VALUES (51, 'Ligg', NULL, '测试', '/images/avatar.jpg', '2024-10-21 02:32:22', 26, -1, 0);
INSERT INTO `t_comment` VALUES (52, '宫水三叶', NULL, '测试', '/images/avatar.jpg', '2024-10-21 02:34:00', 18, -1, 0);
INSERT INTO `t_comment` VALUES (53, '栗山未来', NULL, '内网穿透测试', '/images/avatar.jpg', '2024-10-21 16:57:38', 27, -1, 0);
INSERT INTO `t_comment` VALUES (54, 'LiggPlus', NULL, 'admin', '/images/avatar.jpg', '2024-10-21 17:06:59', 27, -1, 0);
INSERT INTO `t_comment` VALUES (55, 'LiggPlus', NULL, 'admin', '/images/avatar.jpg', '2024-10-21 17:07:21', 27, -1, 0);
INSERT INTO `t_comment` VALUES (56, 'yy', NULL, '收到贵司的\n', '/images/avatar.jpg', '2024-10-21 20:48:37', 14, NULL, 0);
INSERT INTO `t_comment` VALUES (57, 'yy', NULL, '收到贵司的\n', '/images/avatar.jpg', '2024-10-21 20:48:39', 14, NULL, 0);
INSERT INTO `t_comment` VALUES (58, 'yy', NULL, '收到贵司的\n', '/images/avatar.jpg', '2024-10-21 20:48:39', 14, NULL, 0);
INSERT INTO `t_comment` VALUES (59, 'yy', NULL, '收到贵司的\n', '/images/avatar.jpg', '2024-10-21 20:48:39', 14, NULL, 0);
INSERT INTO `t_comment` VALUES (60, 'lwz', NULL, '陈靖华', '/images/avatar.jpg', '2024-10-21 20:49:30', 14, -1, 0);
INSERT INTO `t_comment` VALUES (61, 'lwz', NULL, '陈靖华', '/images/avatar.jpg', '2024-10-21 20:49:31', 14, -1, 0);
INSERT INTO `t_comment` VALUES (62, 'lwz', NULL, '陈靖华', '/images/avatar.jpg', '2024-10-21 20:50:34', 18, -1, 0);
INSERT INTO `t_comment` VALUES (63, 'lwz', NULL, '陈靖华', '/images/avatar.jpg', '2024-10-21 20:50:36', 18, -1, 0);
INSERT INTO `t_comment` VALUES (64, 'jj', NULL, 'jj', '/images/avatar.jpg', '2024-10-21 20:51:03', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (65, 'jj', NULL, 'jj', '/images/avatar.jpg', '2024-10-21 20:51:09', 18, NULL, 0);
INSERT INTO `t_comment` VALUES (66, 'ligg', NULL, '我推的露比', '/images/avatar.jpg', '2024-10-22 00:53:08', 23, -1, 0);
INSERT INTO `t_comment` VALUES (67, 'ligg', NULL, '我推的露比', '/images/avatar.jpg', '2024-10-22 00:53:10', 23, -1, 0);
INSERT INTO `t_comment` VALUES (68, 'lwz', NULL, '宫村一橙哟', '/images/avatar.jpg', '2024-10-22 00:58:07', 22, -1, 0);
INSERT INTO `t_comment` VALUES (69, 'ligg', NULL, '好看', '/images/avatar.jpg', '2024-10-22 05:32:49', 28, -1, 0);
INSERT INTO `t_comment` VALUES (70, 'lwz', NULL, '我推的阿库娅', '/images/avatar.jpg', '2024-10-22 05:47:33', 23, -1, 0);
INSERT INTO `t_comment` VALUES (71, 'lwz', NULL, '评论', '/images/avatar.jpg', '2024-10-24 00:57:58', 38, -1, 0);
INSERT INTO `t_comment` VALUES (72, '李文舟', NULL, '评论', '/images/avatar.jpg', '2024-10-24 01:01:08', 37, -1, 0);
INSERT INTO `t_comment` VALUES (73, '李文舟', NULL, '评论', '/images/avatar.jpg', '2024-10-24 12:19:19', 17, -1, 0);
INSERT INTO `t_comment` VALUES (74, 'lwz', NULL, '评论', '/images/avatar.jpg', '2024-11-05 10:05:43', 32, -1, 0);
INSERT INTO `t_comment` VALUES (75, 'adad', NULL, 'awdada', '/images/avatar.jpg', '2024-11-09 15:06:27', 36, -1, 0);
INSERT INTO `t_comment` VALUES (76, 'adadawdaa', NULL, 'awdada', '/images/avatar.jpg', '2024-11-09 15:06:33', 36, -1, 0);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, 'ADMIN');
INSERT INTO `t_role` VALUES (2, 'USER');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (9, '青春');
INSERT INTO `t_tag` VALUES (10, '感情');
INSERT INTO `t_tag` VALUES (11, '续作');
INSERT INTO `t_tag` VALUES (12, '剧场');
INSERT INTO `t_tag` VALUES (14, '奇幻');
INSERT INTO `t_tag` VALUES (15, '日常');
INSERT INTO `t_tag` VALUES (16, '校园');
INSERT INTO `t_tag` VALUES (17, '推理');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (7, '治愈番');
INSERT INTO `t_type` VALUES (10, '感情番');
INSERT INTO `t_type` VALUES (13, '搞笑番');
INSERT INTO `t_type` VALUES (15, '校园番');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `user_role` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `role_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id` ASC) USING BTREE,
  INDEX `t_user_id_index`(`id` ASC) USING BTREE,
  CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (2, 'LIggPlus', 'ligg200309', '202cb962ac59075b964b07152d234b70', '2954494754@qq.com', 'https://lain.bgm.tv/pic/crt/g/c5/3a/102125_crt_I1eZN.jpg?r=1674520069', 1, '2024-10-04 17:43:52', NULL, NULL, 1);
INSERT INTO `t_user` VALUES (18, 'Ligg', 'lwz', '$2a$10$GKsGL70vgKMqirlSDkmiLel5M9S6haXudDQqTNCwMhQzWhmb8v7GW', '2954494754@qq', 'https://lain.bgm.tv/pic/user/c/000/91/64/916400.jpg?r=1726915584&hd=1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (20, 'Ligg', 'ligg200309123', '$2a$10$GKsGL70vgKMqirlSDkmiLel5M9S6haXudDQqTNCwMhQzWhmb8v7GW', '', 'https://lain.bgm.tv/pic/crt/g/c5/3a/102125_crt_I1eZN.jpg?r=1674520069', NULL, '2024-11-08 12:10:51', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (21, NULL, 'qwert', '76d80224611fc919a5d54f0ff9fba446', NULL, NULL, NULL, '2024-11-08 17:44:37', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (22, '一橙', '123', '$2a$10$mA93DTAAs2cz5HIdp8DaSujp2.ywqixgHmtnBxBNFQRtos9mpQCkK', '2954494754@qq.com', 'https://lain.bgm.tv/pic/user/c/000/91/64/916400.jpg?r=1726915584&hd=1', NULL, '2024-11-08 17:45:31', NULL, NULL, 2);
INSERT INTO `t_user` VALUES (23, '一橙', '456', '202cb962ac59075b964b07152d234b70', '2954494754@qq.com', 'https://lain.bgm.tv/pic/user/c/000/91/64/916400.jpg?r=1726915584&hd=1', NULL, '2024-11-09 22:04:01', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (24, NULL, 'lwwww', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, '2024-11-11 15:55:08', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
