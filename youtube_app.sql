-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2019 at 08:41 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id` varchar(128) NOT NULL,
  `profile_picture` varchar(512) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id`, `profile_picture`, `name`, `description`) VALUES
('UCWJ2lWNubArHWmf3FIHbfcQ', 'https://yt3.ggpht.com/a/AGF-l78U5c2H6ecI8vrMu9seGbF3K3fHJ7rtaU8n=s88-c-k-c0xffffffff-no-rj-mo', 'NBA', 'National Basketball Association.  Official home of the most compelling basketball action from the NBA');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `id` int(11) NOT NULL,
  `video_id` varchar(128) NOT NULL,
  `video_title` varchar(256) NOT NULL,
  `thumbnail` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`id`, `video_id`, `video_title`, `thumbnail`) VALUES
(1, 'hon7p2eZ4D8', 'Kyle Lowry&#39;s Best Assists | 2018-19 Season | #NBAAssistWeek', 'https://i.ytimg.com/vi/hon7p2eZ4D8/default.jpg'),
(2, '9FFgn2-cIzU', 'Best of the Denver Nuggets! | 2018-19 NBA Season', 'https://i.ytimg.com/vi/9FFgn2-cIzU/default.jpg'),
(3, 'imLkGKt9dCE', 'NBA&#39;s Best Between The Legs Assists | 2018-19 NBA Season | #NBAAssistWeek', 'https://i.ytimg.com/vi/imLkGKt9dCE/default.jpg'),
(4, 'gZAsEBJ0pak', 'Best of the Indiana Pacers! | 2018-19 NBA Season', 'https://i.ytimg.com/vi/gZAsEBJ0pak/default.jpg'),
(5, '3_GV625A218', 'Jrue Holiday&#39;s Best Assists | 2018-19 Season | #NBAAssistWeek', 'https://i.ytimg.com/vi/3_GV625A218/default.jpg'),
(6, '747YW4gYHzQ', 'Best of the Los Angeles Lakers! | 2018-19 NBA Season', 'https://i.ytimg.com/vi/747YW4gYHzQ/default.jpg'),
(7, '2xYWA9uMSuA', 'Magic Johnson ULTIMATE Mixtape!', 'https://i.ytimg.com/vi/2xYWA9uMSuA/default.jpg'),
(8, 'VJnuIt8pP7s', 'Happy National Left-Handers Day!', 'https://i.ytimg.com/vi/VJnuIt8pP7s/default.jpg'),
(9, 'yjZamxEEi0A', 'Draymond Green&#39;s Best Assists | 2018-19 Season | #NBAAssistWeek', 'https://i.ytimg.com/vi/yjZamxEEi0A/default.jpg'),
(10, 'pTHBEXaeoGs', 'Best of the Oklahoma City Thunder | 2018-19 NBA Season', 'https://i.ytimg.com/vi/pTHBEXaeoGs/default.jpg'),
(11, '38_-vvLEm8w', 'NBA&#39;s Best Long Distance Assists | 2018-19 NBA Season | #NBAAssistWeek', 'https://i.ytimg.com/vi/38_-vvLEm8w/default.jpg'),
(12, 'mGrM5JYfr6E', 'NBA&#39;s Best 50 Clutch Plays | 2018-19 Season', 'https://i.ytimg.com/vi/mGrM5JYfr6E/default.jpg'),
(13, 'Y2zh9ORw-Ck', 'Nikola Jokic&#39;s Best Assists | 2018-19 Season | #NBAAssistWeek', 'https://i.ytimg.com/vi/Y2zh9ORw-Ck/default.jpg'),
(14, '1ARwKuYKTMo', 'Best of the Dallas Mavericks! | 2018-19 NBA Season', 'https://i.ytimg.com/vi/1ARwKuYKTMo/default.jpg'),
(15, 'WeotXLfaJo4', 'NBA&#39;s Best No-Look Assists | 2018-19 NBA Season | #NBAAssistWeek', 'https://i.ytimg.com/vi/WeotXLfaJo4/default.jpg'),
(16, '9Jkr3UrvvFo', '21 Questions at 2019 NBA Rookie Photo Shoot!', 'https://i.ytimg.com/vi/9Jkr3UrvvFo/default.jpg'),
(17, 'n8W1jyX0sNA', 'Best of the Utah Jazz! | 2018-19 NBA Season', 'https://i.ytimg.com/vi/n8W1jyX0sNA/default.jpg'),
(18, 'ahb6cNEd5pM', 'Best of the Sacramento Kings! | 2018-19 NBA Season', 'https://i.ytimg.com/vi/ahb6cNEd5pM/default.jpg'),
(19, 'nBSbNwa71jM', 'USAB Men&#39;s National Team Exhibition | USA White vs. USA Blue', 'https://i.ytimg.com/vi/nBSbNwa71jM/default.jpg'),
(20, 'gxA-mNEbSw0', 'Best of the New Orleans Pelicans! | 2018-19 NBA Season', 'https://i.ytimg.com/vi/gxA-mNEbSw0/default.jpg'),
(21, 'V-T8-j-9ib0', 'Best of the Philadelphia 76ers! | 2018-19 NBA Season', 'https://i.ytimg.com/vi/V-T8-j-9ib0/default.jpg'),
(22, 'WGAQAF2IZxo', 'Best of the Phoenix Suns! | 2018-19 NBA Season', 'https://i.ytimg.com/vi/WGAQAF2IZxo/default.jpg'),
(23, 'EHI4HT7Rvco', 'Best of the San Antonio Spurs! | 2018-19 NBA Season', 'https://i.ytimg.com/vi/EHI4HT7Rvco/default.jpg'),
(24, 'SC6A7LyTSBQ', 'USA Basketball 1-on-1 Challenge!', 'https://i.ytimg.com/vi/SC6A7LyTSBQ/default.jpg'),
(25, 'YZp2GXxev9Y', 'Best of the New York Knicks! | 2018-19 NBA Season', 'https://i.ytimg.com/vi/YZp2GXxev9Y/default.jpg'),
(26, 'HjQn5FPyCy0', 'Best of the Portland Trail Blazers! | 2018-19 NBA Season', 'https://i.ytimg.com/vi/HjQn5FPyCy0/default.jpg'),
(27, 'ErrnAAa7BiE', 'NBA&#39;s Top 100 Crossovers | 2018-19 NBA Season | #NBAHandlesWeek', 'https://i.ytimg.com/vi/ErrnAAa7BiE/default.jpg'),
(28, 'NpHsATWmFes', 'Best of the Golden State Warriors! | 2018-19 NBA Season', 'https://i.ytimg.com/vi/NpHsATWmFes/default.jpg'),
(29, 'OpbXeMo0O-U', 'NBA&#39;s Best Spin Moves | 2018-19 NBA Season | #NBAHandlesWeek', 'https://i.ytimg.com/vi/OpbXeMo0O-U/default.jpg'),
(30, '4FdIRPiL5vA', 'NBA&#39;s Best Ball Fakes | 2018-19 NBA Season | #NBAHandlesWeek', 'https://i.ytimg.com/vi/4FdIRPiL5vA/default.jpg'),
(31, 'H3HNCCOdKtg', 'NBA&#39;s Top 100 Dunks | 2018-19 NBA Season | #NBADunkWeek', 'https://i.ytimg.com/vi/H3HNCCOdKtg/default.jpg'),
(32, 'FD2BIpwwNCA', 'NBA&#39;s Best Dunk Every Team | 2018-19 NBA Season | #NBADunkWeek', 'https://i.ytimg.com/vi/FD2BIpwwNCA/default.jpg'),
(33, 'NAJdWoUYxPs', 'Derrick Jones Jr.&#39;s Best Dunks | 2018-2019 NBA Season | #NBADunkWeek', 'https://i.ytimg.com/vi/NAJdWoUYxPs/default.jpg'),
(34, 'lAqRazXRArM', 'Best of 2019 NBA Summer League First Team #LegendaryMoments', 'https://i.ytimg.com/vi/lAqRazXRArM/default.jpg'),
(35, 'fEW7EQJxrgU', 'Las Vegas NBA Summer League&#39;s Best 5 Individual Scoring Performances #LegendaryMoments', 'https://i.ytimg.com/vi/fEW7EQJxrgU/default.jpg'),
(36, '1q_ulIZ9etY', 'The BEST Plays! | 2019 NBA Summer League', 'https://i.ytimg.com/vi/1q_ulIZ9etY/default.jpg'),
(37, 'gFXoW1xQsdE', 'Best of Dunks! | MGM Resorts NBA Summer League', 'https://i.ytimg.com/vi/gFXoW1xQsdE/default.jpg'),
(38, '8jBdhuez_FU', 'NBA 360 | Zion Williamson&#39;s Summer League Debut', 'https://i.ytimg.com/vi/8jBdhuez_FU/default.jpg'),
(39, 'V10hfoLmO1M', 'Best Plays of Summer League Preliminary Round | MGM Resorts Summer League', 'https://i.ytimg.com/vi/V10hfoLmO1M/default.jpg'),
(40, 'UI7ZSgwPcHk', '2019 NBA Finals FULL Mini-Movie | Raptors Defeat Warriors In 6 Games', 'https://i.ytimg.com/vi/UI7ZSgwPcHk/default.jpg'),
(41, '8JeQSvYZ8HA', 'Luka Doncic&#39;s 2018-19 NBA Rookie of The Year Mixtape', 'https://i.ytimg.com/vi/8JeQSvYZ8HA/default.jpg'),
(42, 'VKtY3lgHwq0', 'EVERY Speech From The 2019 NBA Awards! | Giannis, Doncic, Siakam and More!', 'https://i.ytimg.com/vi/VKtY3lgHwq0/default.jpg'),
(43, 'OcInNvTuDw4', 'Giannis Antetokounmpo Gets EMOTIONAL During Kia MVP Speech | 2019 NBA Awards', 'https://i.ytimg.com/vi/OcInNvTuDw4/default.jpg'),
(44, 'jjSKY9NzxvQ', 'NBA 360 | Toronto Raptors Championship Celebration', 'https://i.ytimg.com/vi/jjSKY9NzxvQ/default.jpg'),
(45, 'tdL3dY_rJDY', 'Best 50 Plays | 2019 NBA Playoffs', 'https://i.ytimg.com/vi/tdL3dY_rJDY/default.jpg'),
(46, 'c1j5-jvJK8o', 'Best Plays From the Toronto Raptors | 2019 NBA Postseason', 'https://i.ytimg.com/vi/c1j5-jvJK8o/default.jpg'),
(47, 'C_pi_gbAaWI', 'Best Plays From Kawhi Leonard | 2019 NBA Postseason', 'https://i.ytimg.com/vi/C_pi_gbAaWI/default.jpg'),
(48, 'LMi7j68gecs', '2019 NBA Finals Game 6 Mini-Movie', 'https://i.ytimg.com/vi/LMi7j68gecs/default.jpg'),
(49, 'xjPi6IcSH_Q', 'The BEST Plays of the 2019 NBA Finals | Presented by YouTubeTV', 'https://i.ytimg.com/vi/xjPi6IcSH_Q/default.jpg'),
(50, 'neYKt5vs5iQ', 'NBA Top 5 Plays of the Night | NBA Finals Game 6', 'https://i.ytimg.com/vi/neYKt5vs5iQ/default.jpg'),
(52, 'ffdXLm8EaYg', '2019 NBA Finals Game 5 Mini-Movie', 'https://i.ytimg.com/vi/ffdXLm8EaYg/default.jpg'),
(53, 'u_edliCyfKA', 'NBA Top 5 Plays of the Night | NBA Finals Game 5', 'https://i.ytimg.com/vi/u_edliCyfKA/default.jpg'),
(54, 'plhVMWR33go', '2019 NBA Finals Game 4 Mini-Movie', 'https://i.ytimg.com/vi/plhVMWR33go/default.jpg'),
(55, '0BR2QBSKwaY', 'NBA Top 5 Plays of the Night | NBA Finals Game 4', 'https://i.ytimg.com/vi/0BR2QBSKwaY/default.jpg'),
(56, 'gC_I0G-veYo', 'Kawhi Leonard Drops A Finals Career-High 36 Points In Game 4 | 2019 NBA Finals', 'https://i.ytimg.com/vi/gC_I0G-veYo/default.jpg'),
(57, 'DNTjTcW9Atc', '2019 NBA Finals Game 3 Mini-Movie', 'https://i.ytimg.com/vi/DNTjTcW9Atc/default.jpg'),
(58, 'G9xtz7W2_Cg', 'NBA Top 5 Plays of the Night | NBA Finals Game 3', 'https://i.ytimg.com/vi/G9xtz7W2_Cg/default.jpg'),
(59, 'omcGSH2fdTA', '2019 NBA Finals Game 2 Mini-Movie', 'https://i.ytimg.com/vi/omcGSH2fdTA/default.jpg'),
(60, 'Yup1-dHKXHk', 'NBA 360 | Alessia Cara Leads Fans in Singing â€˜O Canadaâ€™ | 2019 NBA Finals', 'https://i.ytimg.com/vi/Yup1-dHKXHk/default.jpg'),
(61, 'UiVlpOtbROM', 'NBA Top 5 Plays of the Night | NBA Finals Game 2', 'https://i.ytimg.com/vi/UiVlpOtbROM/default.jpg'),
(62, 'cI6DTCFI2eU', 'Draymond Green Stuffs The Stat Sheet | NBA Finals Game 2', 'https://i.ytimg.com/vi/cI6DTCFI2eU/default.jpg'),
(63, 'h20NNBx9JXg', 'Andre Iguodala&#39;s CLUTCH Three-Pointer In Game 2 of the 2019 NBA Finals', 'https://i.ytimg.com/vi/h20NNBx9JXg/default.jpg'),
(64, 'DKCPciMkmpY', 'NBA 360 | Raptors Win Game 1, Toronto Celebrates', 'https://i.ytimg.com/vi/DKCPciMkmpY/default.jpg'),
(65, 'dRNHYa5IV2c', '2019 NBA Finals Game 1 Mini-Movie', 'https://i.ytimg.com/vi/dRNHYa5IV2c/default.jpg'),
(66, 'FlREse4m8sc', 'NBA Top 5 Plays of the Night | NBA Finals Game 1', 'https://i.ytimg.com/vi/FlREse4m8sc/default.jpg'),
(67, '3ugrYiEl9gg', 'Pascal Siakam Catches Fire! | NBA Finals Game 1', 'https://i.ytimg.com/vi/3ugrYiEl9gg/default.jpg'),
(68, 'XXrAiGzq2Mg', 'The White Jacket', 'https://i.ytimg.com/vi/XXrAiGzq2Mg/default.jpg'),
(69, '1TsUkR8nR7I', 'The BEST Plays From the 2019 NBA Playoffs!', 'https://i.ytimg.com/vi/1TsUkR8nR7I/default.jpg'),
(70, 'SuDTqt6Y5yY', 'Best Plays of the Conference Finals! | 2019 NBA Playoffs', 'https://i.ytimg.com/vi/SuDTqt6Y5yY/default.jpg'),
(71, 'RGWu6x0oG-w', 'NBA Top 5 Plays of the Night | May 25, 2019', 'https://i.ytimg.com/vi/RGWu6x0oG-w/default.jpg'),
(72, 'XBKiipZWOlg', 'The Best of Stephen Curry! | NBA Finals 2015-2018', 'https://i.ytimg.com/vi/XBKiipZWOlg/default.jpg'),
(73, 'Y7TW6XZ_h_0', 'NBA 360 | Stephen Curry&#39;s Game Day Rituals', 'https://i.ytimg.com/vi/Y7TW6XZ_h_0/default.jpg'),
(74, 'Y0kcm4LTE8E', 'Tracy McGrady&#39;s BEST 40 Plays!', 'https://i.ytimg.com/vi/Y0kcm4LTE8E/default.jpg'),
(75, 'wy-PS3ztz24', 'NBA Top 5 Plays of the Night | May 23, 2019', 'https://i.ytimg.com/vi/wy-PS3ztz24/default.jpg'),
(76, '8IJwoD0pD9E', 'NBA Top 5 Plays of the Night | May 21, 2019', 'https://i.ytimg.com/vi/8IJwoD0pD9E/default.jpg'),
(77, 'Q_TQTBnHhRA', 'NBA Top 5 Plays of the Night | May 20, 2019', 'https://i.ytimg.com/vi/Q_TQTBnHhRA/default.jpg'),
(78, '0HMue2wQMLk', 'NBA Top 5 Plays of the Night | May 19, 2019', 'https://i.ytimg.com/vi/0HMue2wQMLk/default.jpg'),
(79, 'eJM5FkCYsbM', 'NBA Top 5 Plays of the Night | May 18, 2019', 'https://i.ytimg.com/vi/eJM5FkCYsbM/default.jpg'),
(80, 'ojM9nVvigyA', 'ALL-ANGLES! Kawhi Leonard&#39;s AMAZING Game-Winner!', 'https://i.ytimg.com/vi/ojM9nVvigyA/default.jpg'),
(81, 'vV1UmVwtCNI', 'Best Plays of the 2019 NBA Playoffs | Second Round', 'https://i.ytimg.com/vi/vV1UmVwtCNI/default.jpg'),
(82, '75iExVNvrWw', 'Kawhi Leonard Wins The Series At The Buzzer! | May 12, 2019', 'https://i.ytimg.com/vi/75iExVNvrWw/default.jpg'),
(83, 'THiEZW1MGTw', 'NBA Bloopers - The Starters', 'https://i.ytimg.com/vi/THiEZW1MGTw/default.jpg'),
(84, 'CfaNOidukHY', 'Best Plays of the 2019 NBA Playoffs | First Round', 'https://i.ytimg.com/vi/CfaNOidukHY/default.jpg'),
(85, 'naRfmI_bVu4', 'Best of Rookies From The 2018-2019 NBA Regular Season (Luka Doncic, Trae Young and More!)', 'https://i.ytimg.com/vi/naRfmI_bVu4/default.jpg'),
(86, '86ouy2TIAAs', 'NBA&#39;s Game Winning Buzzer Beaters | 2018-19 Regular Season | #TissotBuzzerBeater #ThisIsYourTime', 'https://i.ytimg.com/vi/86ouy2TIAAs/default.jpg'),
(87, 'n67rBLkTHxg', 'Paul George&#39;s Best Plays From the 2018-19 NBA Regular Season', 'https://i.ytimg.com/vi/n67rBLkTHxg/default.jpg'),
(88, '6VtQOWiPOlI', 'Kawhi Leonard&#39;s Best Plays From the 2018-19 NBA Regular Season', 'https://i.ytimg.com/vi/6VtQOWiPOlI/default.jpg'),
(89, 'u90rfgt9fWk', 'Joel Embiid&#39;s Best Plays From the 2018-19 NBA Regular Season', 'https://i.ytimg.com/vi/u90rfgt9fWk/default.jpg'),
(90, '6aA4jkowCOE', 'NBA&#39;s Best Alley-Oops | 2018-19 NBA Regular Season', 'https://i.ytimg.com/vi/6aA4jkowCOE/default.jpg'),
(91, '2DjOxEHZMrg', 'Dwyane Wade&#39;s Best Plays From His Final Season', 'https://i.ytimg.com/vi/2DjOxEHZMrg/default.jpg'),
(92, 'nugc6yilydc', 'Trae Young&#39;s Best Plays From the 2018-19 NBA Regular Season', 'https://i.ytimg.com/vi/nugc6yilydc/default.jpg'),
(93, '4sG5z0BQUi0', 'Derrick Rose&#39;s Best Plays From the 2018-19 NBA Regular Season', 'https://i.ytimg.com/vi/4sG5z0BQUi0/default.jpg'),
(94, 'j-PLkxBrt-I', 'LeBron James&#39; Best Plays From the 2018-19 NBA Regular Season', 'https://i.ytimg.com/vi/j-PLkxBrt-I/default.jpg'),
(95, '3eK4wkdof-g', 'NBA&#39;s Best 50 Clutch Plays | 2018-19 NBA Regular Season', 'https://i.ytimg.com/vi/3eK4wkdof-g/default.jpg'),
(96, 'dbtbH5uhSIs', 'D&#39;Angelo Russell&#39;s Best Plays From the 2018-2019 NBA Regular Season', 'https://i.ytimg.com/vi/dbtbH5uhSIs/default.jpg'),
(97, 'iLoDIzTiCMs', 'NBA&#39;s Best 50 Assists | 2018-19 NBA Regular Season', 'https://i.ytimg.com/vi/iLoDIzTiCMs/default.jpg'),
(98, 'YZUc1ufS44U', 'Russell Westbrook&#39;s Best Plays From the 2018-19 NBA Regular Season', 'https://i.ytimg.com/vi/YZUc1ufS44U/default.jpg'),
(99, 'Trjd79-kRUE', 'NBA&#39;s Best 50 Crossovers | 2018-19 NBA Regular Season', 'https://i.ytimg.com/vi/Trjd79-kRUE/default.jpg'),
(100, 'ssdjlWiXufY', 'NBA&#39;s Best 50 H.O.R.S.E. Shots | 2018-19 NBA Regular Season', 'https://i.ytimg.com/vi/ssdjlWiXufY/default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `video_id` (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
