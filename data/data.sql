DROP TABLE IF EXISTS `demo_anahita_edges`;
CREATE TABLE `demo_anahita_edges` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `node_a_id` bigint(11) unsigned NOT NULL,
  `node_a_type` varchar(255) NOT NULL,
  `node_b_id` bigint(11) unsigned NOT NULL,
  `node_b_type` varchar(255) NOT NULL,
  `meta` text,
  `created_on` datetime DEFAULT NULL,
  `created_by` bigint(11) unsigned DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` bigint(11) unsigned DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `node_a_id` (`node_a_id`),
  KEY `node_b_id` (`node_b_id`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
LOCK TABLES `demo_anahita_edges` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_anahita_nodes`;
CREATE TABLE `demo_anahita_nodes` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `component` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `body` mediumtext,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `owner_type` varchar(255) DEFAULT NULL,
  `owner_id` bigint(11) unsigned DEFAULT NULL,
  `comment_status` tinyint(1) DEFAULT NULL,
  `comment_count` int(11) unsigned DEFAULT NULL,
  `last_comment_id` bigint(11) unsigned DEFAULT NULL,
  `last_comment_by` bigint(11) unsigned DEFAULT NULL,
  `last_comment_on` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `meta` text,
  `hits` int(11) unsigned DEFAULT NULL,
  `parent_id` bigint(11) unsigned DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `geo_latitude` float(10,6) DEFAULT NULL,
  `geo_longitude` float(10,6) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` bigint(11) unsigned DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` bigint(11) unsigned DEFAULT NULL,
  `actor_gender` varchar(50) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `status` text,
  `status_update_time` datetime DEFAULT NULL,
  `follower_count` int(11) unsigned DEFAULT NULL,
  `leader_count` int(11) unsigned DEFAULT NULL,
  `mutual_count` int(11) unsigned DEFAULT NULL,
  `leader_ids` mediumtext,
  `follower_ids` mediumtext,
  `mutual_ids` mediumtext,
  `blocker_ids` text,
  `allow_follow_request` tinyint(1) unsigned DEFAULT NULL,
  `follow_requester_ids` mediumtext,
  `subscriber_count` int(11) unsigned DEFAULT NULL,
  `subscriber_ids` mediumtext,
  `administrating_ids` text,
  `notification_ids` text,
  `new_notification_ids` text,
  `vote_up_count` int(11) unsigned DEFAULT NULL,
  `vote_down_count` int(11) unsigned DEFAULT NULL,
  `voter_up_ids` mediumtext,
  `voter_down_ids` mediumtext,
  `shared_owner_count` int(11) unsigned DEFAULT NULL,
  `shared_owner_ids` mediumtext,
  `administrator_ids` text,
  `blocked_ids` text,
  `tag_count` int(11) unsigned DEFAULT NULL,
  `tag_ids` text,
  `excerpt` text,
  `mimetype` varchar(100) DEFAULT NULL,
  `story_subject_id` bigint(11) unsigned DEFAULT NULL,
  `story_object_type` varchar(255) DEFAULT NULL,
  `story_object_id` bigint(11) unsigned DEFAULT NULL,
  `story_target_id` bigint(11) unsigned DEFAULT NULL,
  `story_comment_id` int(11) unsigned DEFAULT NULL,
  `person_userid` int(11) DEFAULT NULL,
  `person_username` varchar(255) DEFAULT NULL,
  `person_usertype` varchar(255) DEFAULT NULL,
  `person_useremail` varchar(255) DEFAULT NULL,
  `person_lastvisitdate` datetime DEFAULT NULL,
  `person_given_name` varchar(255) DEFAULT NULL,
  `person_family_name` varchar(255) DEFAULT NULL,
  `person_network_presence` varchar(255) DEFAULT NULL,
  `person_time_zone` int(11) DEFAULT NULL,
  `person_language` varchar(100) DEFAULT NULL,
  `access` text,
  `privacy_read_mode` varchar(15) NOT NULL DEFAULT 'graph',
  `permissions` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `person_username` (`person_username`),
  UNIQUE KEY `person_userid` (`person_userid`),
  UNIQUE KEY `person_useremail` (`person_useremail`),
  KEY `last_comment_by` (`last_comment_by`),
  KEY `created_by` (`created_by`),
  KEY `modified_by` (`modified_by`),
  KEY `person_lastvisitdate` (`person_lastvisitdate`),
  KEY `type` (`type`),
  KEY `component` (`component`),
  KEY `owner_id` (`owner_id`),
  KEY `parent_id` (`parent_id`),
  KEY `story_target_id` (`story_target_id`),
  KEY `story_object_id` (`story_object_id`),
  KEY `story_subject_id` (`story_subject_id`),
  KEY `story_comment_id` (`story_comment_id`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`),
  KEY `type_enabled` (`type`,`enabled`),
  KEY `type_modifed_on` (`type`,`modified_on`),
  KEY `type_created_on` (`type`,`created_on`),
  KEY `type_status_update_time` (`type`,`status_update_time`),
  KEY `type_default` (`type`,`is_default`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
LOCK TABLES `demo_anahita_nodes` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_categories`;
CREATE TABLE `demo_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
LOCK TABLES `demo_categories` WRITE;
INSERT INTO `demo_categories` VALUES (1,0,'Anahita  Lingo','','anahita-lingo','','1','left','<p>Learn the Anahita Lingo</p>',1,0,'0000-00-00 00:00:00',NULL,1,0,0,'');
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_components`;
CREATE TABLE `demo_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
LOCK TABLES `demo_components` WRITE;
INSERT INTO `demo_components` VALUES (14,'User','option=com_user',0,0,'','','com_user',0,'',1,'',1),(15,'Search','option=com_search',0,0,'option=com_search','Search Statistics','com_search',0,'js/ThemeOffice/component.png',1,'enabled=0\n\n',1),(16,'Categories','',0,1,'option=com_categories&section=com_banner','Categories','',3,'',1,'',1),(20,'Articles','option=com_content',0,0,'','','com_content',0,'',1,'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n',1),(21,'Configuration Manager','',0,0,'','Configuration','com_config',0,'',1,'',1),(22,'Installation Manager','',0,0,'','Installer','com_installer',0,'',1,'',1),(23,'Language Manager','',0,0,'','Languages','com_languages',0,'',1,'',1),(25,'Menu Editor','',0,0,'','Menu Editor','com_menus',0,'',1,'',1),(28,'Modules Manager','',0,0,'','Modules','com_modules',0,'',1,'',1),(29,'Plugin Manager','',0,0,'','Plugins','com_plugins',0,'',1,'',1),(30,'Template Manager','',0,0,'','Templates','com_templates',0,'',1,'',1),(31,'User Manager','',0,0,'','Users','com_users',0,'',1,'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n',1),(32,'Cache Manager','',0,0,'','Cache','com_cache',0,'',1,'',1),(33,'Control Panel','',0,0,'','Control Panel','com_cpanel',0,'',1,'',1),(36,'Bazaar','option=com_bazaar',0,0,'option=com_bazaar','Bazaar','com_bazaar',0,'js/ThemeOffice/component.png',1,'',1),(35,'Components','option=com_components',0,0,'option=com_components','Components','com_components',0,'js/ThemeOffice/component.png',1,'',1),(37,'Dashboard','option=com_dashboard',0,0,'','Dashboard','com_dashboard',0,'',1,'',1),(38,'People','option=com_people',0,0,'','People','com_people',0,'',1,'',1),(39,'Stories','',0,0,'','Stories','com_stories',0,'',1,'',1),(40,'Notifications','option=com_notifications',0,0,'option=com_notifications','Notifications','com_notifications',0,'js/ThemeOffice/component.png',1,'',1),(41,'Posts','option=com_posts',0,0,'','Posts','com_posts',0,'',1,'',1);
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_content`;
CREATE TABLE `demo_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
LOCK TABLES `demo_content` WRITE;
INSERT INTO `demo_content` VALUES (1,'Anahitapolis','anahitapolis','','<p>City of Anahita or the Home of Anahita project. The Anahita powered website where all the activities related to the Anahita project are happening. Those activities include managing and developing Anahita software, distributing, delivering support, and providing a learning environment for the <a href=\"http://anahitapolis.com/join\">premium members</a> to learn how to install, configure, and develop for Anahita platform</p>','',1,1,0,1,'0000-00-00 00:00:00',62,'','0000-00-00 00:00:00',62,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,1,'','',0,0,'robots=\nauthor='),(2,'Anahita Framework','anahita-framework','','<p>A remarkable software development framework specialized for developing social networking applications following the nodes-graphs-stories architecture. It also makes use of a Domain Driven Design (DDD) pattern in all the models.</p>\r\n\r\n','\r\n\r\n<p>Anahita framework has been developed using the Nooku Framework which is an MVC rapid application development framework itself. Nooku makes use of software development design patterns and DRY (Don\'t Repeat Yourself) principals and that results into writing way less code that does way more. Such a code is also more secure and has less bugs. Visit <a href=\"http://www.nooku.org\" target=\"_blank\">Nooku.org</a> to learn more.</p>',1,1,0,1,'0000-00-00 00:00:00',62,'','0000-00-00 00:00:00',62,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,2,'','',0,0,'robots=\nauthor='),(3,'NGS Architecture','ngs-architecture','','<p>Stands for the Nodes-Graphs-Stories architecture. In a social network everything and everybody are represented as nodes (people, groups, events, photos, topics, blog posts, etc.). The relationship amongst the nodes are maintained by the graphs. Stories propagate around in the network of nodes and graphs. Anahita  is developed following the correct Nodes-Graphs-Stories architecture of a social network. </p>','',1,1,0,1,'0000-00-00 00:00:00',62,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,3,'','',0,0,'robots=\nauthor=');
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_content_frontpage`;
CREATE TABLE `demo_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
LOCK TABLES `demo_content_frontpage` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_core_acl_aro`;
CREATE TABLE `demo_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
LOCK TABLES `demo_core_acl_aro` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_core_acl_aro_groups`;
CREATE TABLE `demo_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
LOCK TABLES `demo_core_acl_aro_groups` WRITE;
INSERT INTO `demo_core_acl_aro_groups` VALUES (17,0,'ROOT',1,22,'ROOT'),(28,17,'USERS',2,21,'USERS'),(29,28,'Public Frontend',3,12,'Public Frontend'),(18,29,'Registered',4,11,'Registered'),(19,18,'Author',5,10,'Author'),(20,19,'Editor',6,9,'Editor'),(21,20,'Publisher',7,8,'Publisher'),(30,28,'Public Backend',13,20,'Public Backend'),(23,30,'Manager',14,19,'Manager'),(24,23,'Administrator',15,18,'Administrator'),(25,24,'Super Administrator',16,17,'Super Administrator');
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_core_acl_aro_map`;
CREATE TABLE `demo_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
LOCK TABLES `demo_core_acl_aro_map` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_core_acl_aro_sections`;
CREATE TABLE `demo_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
LOCK TABLES `demo_core_acl_aro_sections` WRITE;
INSERT INTO `demo_core_acl_aro_sections` VALUES (10,'users',1,'Users',0);
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_core_acl_groups_aro_map`;
CREATE TABLE `demo_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`),
  KEY `group_id` (`group_id`),
  KEY `aro_id` (`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
LOCK TABLES `demo_core_acl_groups_aro_map` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_core_log_items`;
CREATE TABLE `demo_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
LOCK TABLES `demo_core_log_items` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_core_log_searches`;
CREATE TABLE `demo_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
LOCK TABLES `demo_core_log_searches` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_groups`;
CREATE TABLE `demo_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
LOCK TABLES `demo_groups` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_menu`;
CREATE TABLE `demo_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
LOCK TABLES `demo_menu` WRITE;
INSERT INTO `demo_menu` VALUES (1,'mainmenu','Home','home','index.php?option=com_content&view=frontpage','component',1,0,20,0,1,0,'0000-00-00 00:00:00',0,0,0,3,'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,1),(2,'mainmenu','Dashboard','dashboard','index.php?option=com_dashboard','component',1,0,37,0,2,0,'0000-00-00 00:00:00',0,0,1,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(4,'mainmenu','People','people','index.php?option=com_people&view=people','component',1,0,38,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(5,'viewer','Your Social Graph','your-social-graph','index.php?option=com_people&view=person&get=graph','component',1,0,38,0,4,0,'0000-00-00 00:00:00',0,0,1,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(6,'footer-about','Anahita Social Networking Platform','anahita-social-networking-platform','http://www.anahitapolis.com/download/anahita','url',1,0,0,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(8,'footer-about','Anahita Core Architects','anahita-core-architects','http://www.anahitapolis.com/about/anahita-core-architects','url',1,0,0,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(9,'footer-about','Anahita First Tribe','anahita-first-tribe','http://www.anahitapolis.com/about/anahita-first-tribe','url',1,0,0,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(10,'footer-about','Join','join','http://www.anahitapolis.com/join','url',1,0,0,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(11,'socialweb-footer','Anahitapolis Blog','anahitapolis-blog','http://blog.anahitapolis.com','url',1,0,0,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(12,'socialweb-footer','Twitter @anahitapolis','twitter-anahitapolis','http://www.twitter.com/anahitapolis','url',1,0,0,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(13,'socialweb-footer','Facebook Page','facebook-page','http://www.facebook.com/anahitasocial','url',1,0,0,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(14,'socialweb-footer','Anahitapolis (Home Of Anahita Project)','anahitapolis-home-of-anahita-project','http://www.anahitapolis.com','url',1,0,0,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(15,'socialweb-footer','Anahita Podcast','anahita-podcast','http://itunes.apple.com/ca/podcast/anahitapolis-blog/id485431193','url',1,0,0,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0);
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_menu_types`;
CREATE TABLE `demo_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
LOCK TABLES `demo_menu_types` WRITE;
INSERT INTO `demo_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site'),(2,'footer-about','About',''),(3,'socialweb-footer','Follow Our Updates',''),(4,'viewer','Viewer Menu','The menu that will show in the viewer module');
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_migrator_versions`;
CREATE TABLE `demo_migrator_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component` varchar(255) NOT NULL,
  `version` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `component` (`component`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
LOCK TABLES `demo_migrator_versions` WRITE;
INSERT INTO `demo_migrator_versions` VALUES (1,'anahita','1');
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_modules`;
CREATE TABLE `demo_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
LOCK TABLES `demo_modules` WRITE;
INSERT INTO `demo_modules` VALUES (2,'Login','',1,'login',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'',1,1,''),(12,'Admin Menu','',1,'menu',0,'0000-00-00 00:00:00',1,'mod_menu',0,2,1,'',0,1,''),(13,'Admin SubMenu','',1,'submenu',0,'0000-00-00 00:00:00',1,'mod_submenu',0,2,1,'',0,1,''),(21,'Login','',1,'maintop-c',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'cache=0\nmoduleclass_sfx=\npretext=\nposttext=\nlogin=2\nlogout=1\ngreeting=1\nname=0\nusesecure=0\n\n',0,0,''),(31,'Free Tribe Membership','<p>Do you have any questions that need to be answered before signing up as a <a href=\"http://www.anahitapolis.com/join/premium\">premium tribe</a> member?</p>\r\n<p><a class=\"btn\" href=\"http://www.anahitapolis.com/join/free\">Join Now!</a></p>',2,'maintop-b',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\n\n',0,0,''),(32,'Homepage Hero Unit','<div class=\"hero-unit\">\r\n<h1>Anahita®</h1>\r\n<p>a developer friendly and open source social networking platform and framework that helps you build the foundations of your apps and services in less time using a correct nodes-graphs-stories architecture.</p>\r\n<p><a class=\"btn btn-large btn-primary\" href=\"http://www.anahitapolis.com\">Learn More</a></p>\r\n</div>',0,'showcase-a',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(24,'Follow Our Updates','',2,'maintop-a',0,'0000-00-00 00:00:00',1,'mod_menu',0,0,1,'menutype=socialweb-footer\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',0,0,''),(25,'Developed By','<p>Anahita® is developed by <a href=\"http://www.peerglobe.com\" target=\"_blank\">Peerglobe Technology</a> and <a href=\"http://www.rmdstudio.com\" target=\"_blank\">rmd Studio</a> who are also the co-founders of the <a href=\"http://www.purplerat.com\" target=\"_blank\">Purplerat Tribe of Companies</a> in Vancouver, BC, Canada.</p>',0,'footer-a',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,0,'moduleclass_sfx=\n\n',0,0,''),(27,'Main Menu','',1,'navigation',0,'0000-00-00 00:00:00',1,'mod_menu',0,0,0,'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx= nav\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',0,0,''),(28,'Viewer','',1,'viewer',0,'0000-00-00 00:00:00',1,'mod_viewer',0,0,0,'menutype=viewer\n',0,0,''),(30,'Premium Tribe Membership','<p><strong>Get all the Anahita resources that you need!</strong></p>\r\n<p>Our 12 months Platinum, Gold, and Executive premium plans provide you all the resources that you need to execute and launch your social networking project or business idea.</p>\r\n<p><a class=\"btn btn-primary\" href=\"http://www.anahitapolis.com/join/premium\">Join Now!</a></p>',0,'maintop-b',0,'0000-00-00 00:00:00',1,'mod_custom',0,0,1,'moduleclass_sfx=\n\n',0,0,'');
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_modules_menu`;
CREATE TABLE `demo_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
LOCK TABLES `demo_modules_menu` WRITE;
INSERT INTO `demo_modules_menu` VALUES (1,0),(21,1),(24,1),(25,1),(27,0),(28,0),(30,1),(31,1),(32,1);
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_plugins`;
CREATE TABLE `demo_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
LOCK TABLES `demo_plugins` WRITE;
INSERT INTO `demo_plugins` VALUES (1,'Authentication - Joomla','joomla','authentication',0,1,1,1,0,0,'0000-00-00 00:00:00',''),(5,'User - Joomla!','joomla','user',0,0,1,0,0,0,'0000-00-00 00:00:00','autoregister=1\n\n'),(12,'Content - Pagebreak','pagebreak','content',0,10000,1,1,0,0,'0000-00-00 00:00:00','enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),(18,'Editor - No Editor','none','editors',0,0,1,1,0,0,'0000-00-00 00:00:00',''),(19,'Editor - TinyMCE','tinymce','editors',0,0,1,1,0,0,'0000-00-00 00:00:00','mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n'),(20,'Editor - XStandard Lite 2.0','xstandard','editors',0,0,0,1,0,0,'0000-00-00 00:00:00',''),(22,'Editor Button - Pagebreak','pagebreak','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(23,'Editor Button - Readmore','readmore','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(28,'System - Debug','debug','system',0,2,0,0,0,0,'0000-00-00 00:00:00','queries=1\nmemory=1\nlangauge=1\n\n'),(32,'System - Remember Me','remember','system',0,6,1,1,0,0,'0000-00-00 00:00:00',''),(36,'System - Anahita','anahita','system',0,1,1,1,0,0,'0000-00-00 00:00:00',''),(39,'System - MissionControl Support','missioncontrol','system',0,0,1,0,0,0,'0000-00-00 00:00:00','patching=0\nblacklist=com_virtuemart,com_somethingelse\n\n'),(40,'Content - SEF','sef','content',0,5,1,0,0,0,'0000-00-00 00:00:00',''),(41,'Content Filter - Hyperlink','link','contentfilter',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(42,'Content Filter - Syntax','syntax','contentfilter',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(43,'Content Filter - Video','video','contentfilter',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(44,'Content Filter - PTag','ptag','contentfilter',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(45,'Storage - Local','local','storage',0,0,1,1,0,0,'0000-00-00 00:00:00',''),(46,'Storage - Amazon S3','s3','storage',0,0,0,0,0,0,'0000-00-00 00:00:00',''),(47,'Installer - Core','core','installer',0,1,1,1,0,0,'0000-00-00 00:00:00','');
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_sections`;
CREATE TABLE `demo_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
LOCK TABLES `demo_sections` WRITE;
INSERT INTO `demo_sections` VALUES (1,'About','','about','','content','left','',1,0,'0000-00-00 00:00:00',2,0,1,'');
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_session`;
CREATE TABLE `demo_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
LOCK TABLES `demo_session` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_stats_agents`;
CREATE TABLE `demo_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
LOCK TABLES `demo_stats_agents` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_templates_menu`;
CREATE TABLE `demo_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
LOCK TABLES `demo_templates_menu` WRITE;
INSERT INTO `demo_templates_menu` VALUES ('shiraz',0,0),('rt_missioncontrol_j15',0,1);
UNLOCK TABLES;
DROP TABLE IF EXISTS `demo_users`;
CREATE TABLE `demo_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
LOCK TABLES `demo_users` WRITE;
UNLOCK TABLES;
