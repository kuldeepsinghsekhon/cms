-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2017 at 10:26 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--
CREATE DATABASE IF NOT EXISTS `cms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cms`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `short_detail` varchar(500) DEFAULT NULL,
  `detail` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `short_detail`, `detail`, `image`) VALUES
(2, 'Java', NULL, 'care java Programming', NULL),
(4, 'Java Tokens', NULL, 'Java Tokens', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(45) DEFAULT NULL,
  `href` varchar(100) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `link_name`, `href`, `level`, `parent_id`) VALUES
(2, 'Home', '/cms/index', 0, 0),
(3, 'Java', '/cms/category?action=4', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `short_detail` varchar(800) DEFAULT NULL,
  `detail` mediumtext,
  `image` varchar(500) DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_date` date DEFAULT NULL,
  `post_viewed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `fk_post_user1_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `name`, `short_detail`, `detail`, `image`, `cat_id`, `user_id`, `post_date`, `post_viewed`) VALUES
(3, 'History of java', NULL, 'James Gosling, Mike Sheridan, and Patrick Naughton initiated the Java language project in June 1991. The small team of sun engineers called Green Team..\n Originally designed for small, embedded systems in electronic appliances like set-top boxes.\n Firstly, it was called "Greentalk" by James Gosling and file extension was .gt.\nAfter that, it was called Oak and was developed as a part of the Green project.\nWhy Oak? Oak is a symbol of strength and choosen as a national tree of many countries like U.S.A., France, Germany, Romania etc.\nIn 1995, Oak was renamed as "Java" because it was already a trademark by Oak Technologies.\n Why they choosed java name for java language? The team gathered to choose a new name. The suggested words were "dynamic", "revolutionary", "Silk", "jolt", "DNA" etc. They wanted something that reflected the essence of the technology: revolutionary, dynamic, lively, cool, unique, and easy to spell and fun to say.\nAccording to James Gosling "Java was one of the top choices along with Silk". Since java was so unique, most of the team members preferred java. \n Java is an island of Indonesia where first coffee was produced (called java coffee).\n Notice that Java is just a name not an acronym.\n Originally developed by James Gosling at Sun Microsystems (which is now a subsidiary of Oracle Corporation) and released in 1995.\n In 1995, Time magazine called Java one of the Ten Best Products of 1995. \n JDK 1.0 released in(January 23, 1996).\nAt that time, Java aimed at programming home appliances which are controlled by a wide variety of computer processors. So,Gosling''s new language needed to be accessible by a variety of computer processors.  In 1994, he realized that such a language would be ideal for use with web browsers and Java''s connection to the internet .  In 1995, Netscape Incorporated released its latest version of the Netscape browser which was capable of running Java programs. \n', NULL, 2, 1, NULL, NULL),
(4, 'Java Version History', NULL, '1.	JDK Alpha and Beta (1995)\r\n2.	JDK 1.0 (23rd Jan, 1996)\r\n3.	JDK 1.1 (19th Feb, 1997)\r\n4.	J2SE 1.2 (8th Dec, 1998)\r\n5.	J2SE 1.3 (8th May, 2000)\r\n6.	J2SE 1.4 (6th Feb, 2002)\r\n7.	J2SE 5.0 (30th Sep, 2004)\r\n8.	Java SE 6 (11th Dec, 2006)\r\n9.	Java SE 7 (28th July, 2011)\r\n10.	Java SE 8 (18th March, 2014)\r\n', NULL, 2, 1, NULL, NULL),
(5, 'Object class in Java', NULL, 'The Object class is the parent class of all the classes in java bydefault. In other words, it is the topmost class of java.\r\nThe Object class is beneficial if you want to refer any object whose type you don''t know. Notice that parent class reference variable can refer the child class object, know as upcasting.\r\nLet''s take an example, there is getObject() method that returns an object but it can be of any type like Employee,Student etc, we can use Object class reference to refer that object.\r\n', NULL, 2, 1, NULL, NULL),
(6, 'Java Tokens', NULL, 'The smallest individual unit in a program is known as token. Java is collection of tokens , There are five type of tokens in java:\r\nï??	Reserve Keywords\r\nï??	Identifiers\r\nï??	Literals\r\nï??	Operators\r\nï??	Seperators\r\n', NULL, 2, 1, NULL, NULL),
(7, 'Keywords ', NULL, 'Keywords \r\nKeywords are reserved words in java language which have predefined meaning . Java has reserved 60 words as key words.\r\n\r\nAbstract	boolean	Break	byte\r\nCase	catch	Char	class\r\nConst	continue	Default	do\r\nDouble	else	Extends	final\r\nFinally	float	For	future\r\nGeneric	goto	If	implements\r\nImport	inner	Instanceof	int\r\nInterface	long	Native	new\r\nNull	operator	Outer	package\r\nPrivate	protected	Public	rest\r\nReturn	short	Static	super\r\nSwitch	synchronized	This	throw\r\nThrows	transient	Try	var\r\nVoid	volatile	While	\r\n\r\n', NULL, 4, 1, NULL, NULL),
(9, 'Identifier', NULL, 'Identifier are programmer designed tokens . They are used for naming classes, methods, variables, objects , Labels, Packages and interface in program.Identifiers have following rules:\r\n\r\nâ?¢	All variable names must begin with a letter of the alphabet, an underscore, or ( _ ), or a dollar sign ($). The convention is to always use a letter of the alphabet. The dollar sign and the underscore are discouraged. \r\nâ?¢	After the first initial letter, variable names may also contain letters and the digits 0 to 9.  No spaces or special characters are allowed.\r\nâ?¢	Uppercase characters are distinct from lowercase characters. Using ALL uppercase letters are primarily used to identify constant variables. Remember that variable names are case-sensitive. \r\nâ?¢	You cannot use a java keyword (reserved word) for a variable name. \r\n', NULL, 4, 1, NULL, NULL),
(10, 'Operators', NULL, 'Operators<br/>\r\nOperators are special symbols that perform specific operations on one, two, or three operands, and then return a result. Java supports a rich set of operators. Some of them are =, +, -, *. An Operator is a symbol that tells the computer to perform certain mathematical or logical manipulations. Operators are used in programs to manipulate data and variables. They usually form a part of mathematical or logical expressions.<br/>\r\nJava operators can be classified into a number of related categories as below:<br/>\r\nArithmetic Operators<br/>\r\n            +  Additive operator (also used for String concatenation)<br/>\r\n            -  Subtraction operator<br/>\r\n            *  Multiplication operator<br/>\r\n            /  Division operator<br/>\r\n            % Remainder operator<br/>\r\nEquality, Relational Operators<br/>\r\n            ==   Equal to<br/>\r\n            !=   Not equal to<br/>\r\n            >   Greater than<br/>\r\n            >= Greater than or equal to<br/>\r\n            <   Less than<br/>\r\n            <= Less than or equal to<br/>\r\n\r\nLogical Operators<br/>\r\n            &&  Logical AND<br/>\r\n            ||  Logical OR<br/>\r\n            ! Logical NOT<br/>\r\n', NULL, 4, 1, NULL, NULL),
(11, 'Increment and decrement Operators', NULL, ' ++ Adds 1 to the Operand<br/>\r\n            --  Subtracts 1 from the Operand<br/>\r\n\r\nCONDITIONAL OPERATORS<br/>\r\n?:  Ternary (shorthand for if-then-else statement)<br/>\r\n\r\nBITWISE OPERATORS<br/>\r\n\r\n~     Unary bitwise complement<br/>\r\n<<   Signed left shift<br/>\r\n>>   Signed right shift<br/>\r\n>>> Unsigned right shift<br/>\r\n&     Bitwise AND<br/>\r\n^      Bitwise exclusive OR<br/>\r\n|      Bitwise inclusive OR<br/>\r\n\r\nSPECIAL OPERATORS<br/>\r\n\r\n. (Dot Operator)  - To access instance variables<br/>\r\ninstanceof  - Object reference Operator<br/>', NULL, 2, 1, '2017-05-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `user_detail_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `user_detail_id`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `fk_post_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
