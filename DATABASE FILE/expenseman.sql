SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE IF NOT EXISTS `budget` (
`ID` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Budget` decimal(25,2) NOT NULL,
  `RDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


INSERT INTO `budget` (`ID`, `UserId`, `Budget`, `RDATE`) VALUES
(3, 2, '7895.00', '2023-06-12 04:50:46');



CREATE TABLE IF NOT EXISTS `expense` (
  `UserId` int(11) NOT NULL,
`ID` int(11) NOT NULL,
  `Item` varchar(255) NOT NULL,
  `Cost` decimal(25,2) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;


INSERT INTO `expense` (`UserId`, `ID`, `Item`, `Cost`, `Date`) VALUES
(2, 2, 'Grocery', '196.00', '2023-04-01 13:56:00'),
(2, 4, 'Test Yesterday', '699.00', '2023-06-11 17:55:00'),
(2, 5, 'T220', '2000.00', '2023-06-12 04:52:00');



CREATE TABLE IF NOT EXISTS `user` (
  `Full_Name` varchar(40) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
`UserId` int(11) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Photo` varchar(255) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;



INSERT INTO `user` (`Full_Name`, `Email`, `Username`, `UserId`, `Password`, `Photo`, `RegDate`) VALUES
('Christine Moore', 'christine@mail.com', 'christine', 1, '5f4dcc3b5aa765d61d8327deb882cf99', '../static/images/userlogo.png', '2023-03-26 12:59:25'),
('Claire', 'claire@mail.com', 'claire', 2, '5f4dcc3b5aa765d61d8327deb882cf99', '../static/images/userlogo.png', '2023-03-26 09:16:13');

ALTER TABLE `budget`
 ADD PRIMARY KEY (`ID`);


ALTER TABLE `expense`
 ADD PRIMARY KEY (`ID`);


ALTER TABLE `user`
 ADD PRIMARY KEY (`UserId`);


ALTER TABLE `budget`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;

ALTER TABLE `expense`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;

ALTER TABLE `user`
MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;

