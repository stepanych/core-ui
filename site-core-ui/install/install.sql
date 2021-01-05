# --- WireDatabaseBackup {"time":"2021-01-05 11:20:34","user":"","dbName":"coreui","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_acp_scripts_and_styles`;
CREATE TABLE `field_acp_scripts_and_styles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_acp_template`;
CREATE TABLE `field_acp_template` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_acp_template` (`pages_id`, `data`) VALUES('1042', 'site/templates/vendor/admin/development.php');

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '159');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('27', '<h3>The page you were looking for is not found.</h3><p>Please use our search engine or navigation above to find the page.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1050', '<p>Magni accumsan, mattis irure esse incidunt, ante feugiat, recusandae sagittis asperiores vestibulum! Nonummy fermentum id eum malesuada accumsan, eleifend curae? Accumsan dis euismod, totam senectus hic dignissimos libero illo felis maecenas tenetur culpa faucibus turpis, porttitor tempore auctor debitis dapibus necessitatibus tortor. Urna facilisi, officiis. Id nullam voluptas sodales feugiat quidem vel? Dignissim montes necessitatibus qui quo, accusamus magni mollitia, omnis! Wisi ab. Eu cillum consequuntur tenetur ducimus, bibendum non reprehenderit in exercitationem arcu aliquet, quas magnam lorem posuere varius quidem! Accumsan mollitia habitant sociosqu adipisci porta repellat! Blanditiis molestiae sint omnis cupiditate iaculis nec ab adipisci enim, commodi, dolor.</p>\n\n<p>Malesuada augue minus anim. Repudiandae, quod. Deleniti vel dicta donec nostra dui commodo nec assumenda magni officia fringilla mollitia, ultricies odit consequat, autem tortor. Voluptatem, aspernatur tenetur fugit maecenas? Nibh. Justo gravida, dolorum ligula officiis? Facilisi? Optio cupidatat convallis leo, malesuada porta! Nonummy vivamus integer! Repellendus enim auctor, praesent rerum quae ipsam sint, tellus, scelerisque! Justo. Hac, nibh nostrud integer nec taciti risus, turpis potenti cumque! Turpis aspernatur, vel architecto dicta proin. Quasi aliquid rem urna voluptate. Distinctio posuere sint! Ante maiores tellus deserunt, inceptos temporibus habitant lectus, fugit pede aliquam mollis, nostrum nullam adipisicing imperdiet dolorem necessitatibus, distinctio dicta.</p>\n\n<p>Nonummy maecenas, blandit, mollitia suspendisse? Eius, consectetuer diamlorem per eu eum necessitatibus perferendis? Bibendum proident netus natus quisquam vel habitasse illo unde torquent vivamus accumsan arcu cras ex, primis veniam, exercitationem occaecati natoque! Dolorem porta, expedita, praesentium facere, maecenas lorem molestias repudiandae viverra qui? Inventore lorem elementum, aliquam, nostra maiores similique, blandit accumsan scelerisque. Hymenaeos unde blanditiis vehicula vero nulla! Totam nesciunt, saepe viverra, senectus torquent. Debitis nam aliquip rem, eros soluta placerat, parturient, nemo. Laudantium laoreet molestiae, sunt ac, facilisi, vivamus occaecati nibh iste, nascetur laborum curabitur? Quo nostrud, labore earum sociosqu nihil, sollicitudin excepteur diam dui? Vivamus erat.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1051', '<h2>Editor</h2>\n\n<p>Eiusmod, libero iure commodo fames pulvinar molestias vivamus commodo turpis consequatur natus dolorem quibusdam minim consequatur? Etiam gravida, ornare metus? Placerat iusto adipisicing eleifend vitae, orci. Aliquam anim a, sequi excepteur taciti tortor leo doloribus, congue proin mollis ipsa harum! Quisquam dolor cumque volutpat fugit? Quidem aliquet at lectus iure vero dolorum? Adipisicing explicabo esse laoreet eos ornare netus primis, molestie accusamus explicabo doloribus odit! Lectus ad consectetur natus condimentum dapibus cupiditate? Cum quia quasi amet, consequatur aut cum dolores officiis delectus est eleifend, justo justo sequi tortor, odit phasellus! Eligendi eleifend excepturi dapibus ultricies reiciendis mauris mus cumque sapien.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1057', '<p>Hymenaeos suspendisse curabitur facilisis purus mattis pede lectus vestibulum fugiat incidunt, ducimus! Pharetra quia euismod convallis potenti senectus, etiam cras dolores iste consectetuer minim? Dis. Impedit fugit vero nostra libero eleifend reprehenderit! Dolorum ipsam. Fames cras? Pharetra consectetur doloribus, ducimus, per sagittis vel ipsam? Expedita anim odio beatae, repellat, officia, nostra, molestie, lectus consequuntur nisi metus, nullam nulla tincidunt per facilisis et wisi error, rhoncus platea elementum aut posuere! Accusamus. Primis mauris! Pariatur feugiat. Mollis fuga deleniti rerum quasi gravida cursus torquent mattis, curabitur adipisci, aliquid perferendis! Cillum corrupti dicta pulvinar porta nobis auctor blandit fringilla? Mollis nullam? Inceptos fermentum.</p>\n\n<p>Eget nostrum? Aliquet accumsan recusandae. Minim, fugiat laudantium sapien accusamus, fugiat massa leo, nec nobis temporibus urna, distinctio delectus eveniet! Facilis! Quam ipsa? Nulla? Inventore cupidatat ullamco nesciunt? Non atque? Magnam ullam sollicitudin rutrum vero libero impedit vel fringilla maxime facilisis tristique! Voluptate deserunt? Non? Pede doloribus erat, molestiae, praesent ridiculus, dignissim, diamlorem earum augue, etiam magnis natus nisi? Nihil maxime saepe integer recusandae interdum convallis luctus urna tempore fringilla? In excepteur? Dolores mollis dolores elit magni, velit feugiat ratione hendrerit optio torquent auctor nisi molestias scelerisque ante auctor urna voluptates neque architecto? Volutpat laudantium recusandae. Eligendi quia erat porta.</p>\n\n<p>Tortor, sodales. Elit tincidunt sunt sapiente, elit dictum dicta sapien proident sollicitudin totam saepe nobis in felis quae facere nonummy natus distinctio voluptate pariatur unde elit explicabo esse! Occaecat impedit sit proident doloribus laboris tempore integer adipisci penatibus, magni nesciunt rhoncus torquent. Sodales accumsan aute totam neque! Consequat, quaerat senectus vehicula facilisis iste id, bibendum molestias? Reprehenderit neque voluptatum volutpat incidunt pede diamlorem accusamus pretium metus suscipit tempora habitant! Aut viverra morbi fugit curae duis fames cillum! Adipisicing? Doloribus dictum, nobis. Eveniet quasi necessitatibus libero inceptos turpis numquam tempore officiis mollitia libero cumque, pulvinar sapiente cum, mollitia ipsum class voluptatibus.</p>');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1048', 'Widget');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('27', '404 Page Not Found');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1', 'Core UI');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `filedata` mediumtext,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_img`;
CREATE TABLE `field_img` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_link`;
CREATE TABLE `field_link` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_link` (`pages_id`, `data`) VALUES('1041', '{{home}}system/web-elements');
INSERT INTO `field_link` (`pages_id`, `data`) VALUES('1059', '{{home}}system/widgets');
INSERT INTO `field_link` (`pages_id`, `data`) VALUES('1061', '{{home}}system/forms');

DROP TABLE IF EXISTS `field_link_attr`;
CREATE TABLE `field_link_attr` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_link_block`;
CREATE TABLE `field_link_block` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_link_block` (`pages_id`, `data`) VALUES('1037', '1038');
INSERT INTO `field_link_block` (`pages_id`, `data`) VALUES('1040', '1041');
INSERT INTO `field_link_block` (`pages_id`, `data`) VALUES('1054', '1055');
INSERT INTO `field_link_block` (`pages_id`, `data`) VALUES('1058', '1059');
INSERT INTO `field_link_block` (`pages_id`, `data`) VALUES('1060', '1061');
INSERT INTO `field_link_block` (`pages_id`, `data`) VALUES('1062', '1063');

DROP TABLE IF EXISTS `field_link_title`;
CREATE TABLE `field_link_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_link_type`;
CREATE TABLE `field_link_type` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_link_type` (`pages_id`, `data`, `sort`) VALUES('1038', '1', '0');
INSERT INTO `field_link_type` (`pages_id`, `data`, `sort`) VALUES('1041', '3', '0');
INSERT INTO `field_link_type` (`pages_id`, `data`, `sort`) VALUES('1055', '2', '0');
INSERT INTO `field_link_type` (`pages_id`, `data`, `sort`) VALUES('1059', '2', '0');
INSERT INTO `field_link_type` (`pages_id`, `data`, `sort`) VALUES('1061', '3', '0');
INSERT INTO `field_link_type` (`pages_id`, `data`, `sort`) VALUES('1063', '2', '0');

DROP TABLE IF EXISTS `field_matrix`;
CREATE TABLE `field_matrix` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_matrix` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1051,1048', '2', '1047');

DROP TABLE IF EXISTS `field_menu`;
CREATE TABLE `field_menu` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1037', '1040,1058,1060', '3', '1039');
INSERT INTO `field_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1054', '', '0', '1056');
INSERT INTO `field_menu` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1062', '', '0', '1064');

DROP TABLE IF EXISTS `field_page_icon`;
CREATE TABLE `field_page_icon` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_page_icon` (`pages_id`, `data`) VALUES('1042', 'code');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_phits`;
CREATE TABLE `field_phits` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_price`;
CREATE TABLE `field_price` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` decimal(12,2) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1009', '158');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1011', '160');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1015', '170');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1019', '189');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1021', '190');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1022', '192');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1026', '193');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1028', '198');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1030', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1031', '199');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1042', '188');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1044', '204');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1052', '207');

DROP TABLE IF EXISTS `field_repeater_matrix_type`;
CREATE TABLE `field_repeater_matrix_type` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_repeater_matrix_type` (`pages_id`, `data`) VALUES('1048', '1');
INSERT INTO `field_repeater_matrix_type` (`pages_id`, `data`) VALUES('1051', '2');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_search_index`;
CREATE TABLE `field_search_index` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_search_index` (`pages_id`, `data`) VALUES('1057', 'Basic Page ... Hymenaeos suspendisse curabitur facilisis purus mattis pede lectus vestibulum fugiat incidunt, ducimus! Pharetra quia euismod convallis potenti senectus, etiam cras dolores iste consectetuer minim? Dis. Impedit fugit vero nostra libero eleifend reprehenderit! Dolorum ipsam. Fames cras? Pharetra consectetur doloribus, ducimus, per sagittis vel ipsam? Expedita anim odio beatae, repellat, officia, nostra, molestie, lectus consequuntur nisi metus, nullam nulla tincidunt per facilisis et wisi error, rhoncus platea elementum aut posuere! Accusamus. Primis mauris! Pariatur feugiat. Mollis fuga deleniti rerum quasi gravida cursus torquent mattis, curabitur adipisci, aliquid perferendis! Cillum corrupti dicta pulvinar porta nobis auctor blandit fringilla? Mollis nullam? Inceptos fermentum. Eget nostrum? Aliquet accumsan recusandae. Minim, fugiat laudantium sapien accusamus, fugiat massa leo, nec nobis temporibus urna, distinctio delectus eveniet! Facilis! Quam ipsa? Nulla? Inventore cupidatat ullamco nesciunt? Non atque? Magnam ullam sollicitudin rutrum vero libero impedit vel fringilla maxime facilisis tristique! Voluptate deserunt? Non? Pede doloribus erat, molestiae, praesent ridiculus, dignissim, diamlorem earum augue, etiam magnis natus nisi? Nihil maxime saepe integer recusandae interdum convallis luctus urna tempore fringilla? In excepteur? Dolores mollis dolores elit magni, velit feugiat ratione hendrerit optio torquent auctor nisi molestias scelerisque ante auctor urna voluptates neque architecto? Volutpat laudantium recusandae. Eligendi quia erat porta. Tortor, sodales. Elit tincidunt sunt sapiente, elit dictum dicta sapien proident sollicitudin totam saepe nobis in felis quae facere nonummy natus distinctio voluptate pariatur unde elit explicabo esse! Occaecat impedit sit proident doloribus laboris tempore integer adipisci penatibus, magni nesciunt rhoncus torquent. Sodales accumsan aute totam neque! Consequat, quaerat senectus vehicula facilisis iste id, bibendum molestias? Reprehenderit neque voluptatum volutpat incidunt pede diamlorem accusamus pretium metus suscipit tempora habitant! Aut viverra morbi fugit curae duis fames cillum! Adipisicing? Doloribus dictum, nobis. Eveniet quasi necessitatibus libero inceptos turpis numquam tempore officiis mollitia libero cumque, pulvinar sapiente cum, mollitia ipsum class voluptatibus. \n{}');
INSERT INTO `field_search_index` (`pages_id`, `data`) VALUES('27', '404 Page ... 404 Page Not Found ... The page you were looking for is not found. Please use our search engine or navigation above to find the page. \n{}');

DROP TABLE IF EXISTS `field_select_page`;
CREATE TABLE `field_select_page` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_select_page` (`pages_id`, `data`, `sort`) VALUES('1063', '1000', '0');
INSERT INTO `field_select_page` (`pages_id`, `data`, `sort`) VALUES('1059', '1049', '0');
INSERT INTO `field_select_page` (`pages_id`, `data`, `sort`) VALUES('1055', '1057', '0');

DROP TABLE IF EXISTS `field_select_widget`;
CREATE TABLE `field_select_widget` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_select_widget` (`pages_id`, `data`, `sort`) VALUES('1048', '1050', '0');

DROP TABLE IF EXISTS `field_seo`;
CREATE TABLE `field_seo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `meta_inherit` tinyint(3) unsigned NOT NULL,
  `opengraph_inherit` tinyint(3) unsigned NOT NULL,
  `twitter_inherit` tinyint(3) unsigned NOT NULL,
  `robots_inherit` tinyint(3) unsigned NOT NULL,
  `sitemap_inherit` tinyint(3) unsigned NOT NULL,
  `structuredData_inherit` tinyint(3) unsigned NOT NULL,
  `sitemap_include` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_seo` (`pages_id`, `data`, `meta_inherit`, `opengraph_inherit`, `twitter_inherit`, `robots_inherit`, `sitemap_inherit`, `structuredData_inherit`, `sitemap_include`) VALUES('1057', '{\"meta_title\":\"inherit\",\"meta_description\":\"inherit\",\"meta_keywords\":\"inherit\",\"meta_canonicalUrl\":\"inherit\",\"opengraph_title\":\"inherit\",\"opengraph_description\":\"inherit\",\"opengraph_image\":\"inherit\",\"opengraph_imageAlt\":\"inherit\",\"opengraph_type\":\"inherit\",\"opengraph_locale\":\"inherit\",\"opengraph_siteName\":\"inherit\",\"twitter_card\":\"inherit\",\"twitter_site\":\"inherit\",\"twitter_creator\":\"inherit\",\"robots_noIndex\":\"inherit\",\"robots_noFollow\":\"inherit\",\"structuredData_breadcrumb\":\"inherit\",\"sitemap_include\":\"inherit\",\"sitemap_priority\":\"inherit\",\"sitemap_changeFrequency\":\"inherit\"}', '1', '1', '1', '1', '1', '1', '1');

DROP TABLE IF EXISTS `field_seo_tab`;
CREATE TABLE `field_seo_tab` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_seo_tab_end`;
CREATE TABLE `field_seo_tab_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_text`;
CREATE TABLE `field_text` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1000', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Clone');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1009', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Clone a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Clone a tree of pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Trigger database backup when a user logs in or logs out (CronjobDatabaseBackup)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'DB Backups');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', 'Manage database backups (recommended for superuser only)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1021', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1022', 'Hanna Code');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1023', 'List and view Hanna Codes');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'Add/edit/delete Hanna Codes (text/html, javascript only)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1025', 'Add/edit/delete Hanna Codes (text/html, javascript and PHP)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1026', 'Upgrades');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1028', 'Translator');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'Manage Translations');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'Manage');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'Menu Manager');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'Access to menu manager');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'System');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1034', 'link_block');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1035', 'menu');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1036', 'Main Menu');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1037', 'Features');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1039', 'features');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1040', 'Web Elements');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'Development');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1043', 'Ajax');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1044', 'Widgets');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1045', 'Manage widgets');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1046', 'matrix');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1047', 'home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1049', 'Widgets');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1050', 'Editor Widget Example');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1052', 'Settings');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1053', 'Access to system settings');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1062', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1054', 'Basic Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1056', 'basic-page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1057', 'Basic Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1058', 'Widgets');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1060', 'Forms');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1064', 'search');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'system');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('80', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'menu');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'menu-item');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'menu-item-dropdown');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'repeater_link_block');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'repeater_menu');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'ajax');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'repeater_matrix');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'widgets');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'editor-wg');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '100', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '117', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '118', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '102', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '103', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '44', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '76', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '76', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '104', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '106', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '105', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '106', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '108', '1', '{\"showIf\":\"link_type=2\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '109', '2', '{\"columnWidth\":60,\"description\":\"If you use `toggle` or `scroll` attributes, use element css id as link eg: `#my_css_id`\",\"maxlength\":2048,\"showIf\":\"link_type=3\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '110', '3', '{\"columnWidth\":40,\"description\":\"Use `toggle` to invoke modal or off-canvas, or `scroll` to smooth-scroll\",\"showIf\":\"link_type=3\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '105', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '103', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', '{\"columnWidth\":50,\"required\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '105', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '106', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '111', '3', '{\"label\":\"Dropdown Menu\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '112', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '113', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '102', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '107', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '104', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '76', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '116', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '104', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '101', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '103', '5', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeTextarea', 'text', '32768', 'Text', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"textformatters\":[\"TextformatterHannaCode\"]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeInteger', 'repeater_matrix_type', '25', 'Repeater matrix type', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":270,\"textformatters\":[\"TextformatterEntities\"],\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextarea', 'body', '32768', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nJustifyLeft,JustifyCenter,JustifyRight\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"textformatters\":[\"TextformatterHannaCode\"],\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeText', 'headline', '32768', 'Headline', '{\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":1024,\"minlength\":0,\"showCount\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeImage', 'img', '32768', 'Image', '{\"fileSchema\":270,\"extensions\":\"gif jpg jpeg png svg\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypePageHitCounter', 'phits', '32768', 'Page hits', '{\"collapsed\":4,\"tags\":\"pagehits\",\"icon\":\"eye\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeTextarea', 'ACP_scripts_and_styles', '0', 'Scripts and styles for admin pages', '{\"description\":\"Add the .js and .css URLs in this field textarea, one in each line. can be absolute or relative (relative is assumed from the site root eg: site\\/templates\\/styles\\/my.css)\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeAdminCustomPagesSelect', 'ACP_template', '0', 'Template', '{\"description\":\"Select the template which should get rendered. Templates have to be in \\/site\\/templates\\/.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeTextarea', 'search_index', '0', '', '{\"collapsed\":4}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeFieldsetTabOpen', 'seo_TAB', '32768', 'SEO', '{\"closeFieldID\":103,\"collapsed\":10}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeFieldsetClose', 'seo_TAB_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'seo_TAB\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":102}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeSeoMaestro', 'seo', '0', 'SEO', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeText', 'link_title', '32768', 'Link Title', '{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeFieldsetPage', 'link_block', '32768', 'Link Block', '{\"template_id\":47,\"parent_id\":1034,\"repeaterLoading\":2,\"repeaterMaxItems\":1,\"repeaterMinItems\":1,\"tags\":\"Blocks\",\"collapsed\":0,\"repeaterFields\":[107,108,109,110],\"minimal\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeOptions', 'link_type', '32768', 'Link Type', '{\"inputfieldClass\":\"InputfieldRadios\",\"optionColumns\":1,\"required\":1,\"defaultValue\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypePage', 'select_page', '32768', 'Select Page', '{\"derefAsPage\":1,\"inputfield\":\"InputfieldPageListSelect\",\"parent_id\":1,\"labelFieldName\":\"title\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeText', 'link', '0', 'Link', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeOptions', 'link_attr', '32768', 'Link Attributes', '{\"inputfieldClass\":\"InputfieldCheckboxes\",\"optionColumns\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeRepeater', 'menu', '32768', 'Menu', '{\"template_id\":48,\"parent_id\":1035,\"repeaterFields\":[1,105,106],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"tags\":\"Repeater\",\"icon\":\"bars\",\"repeaterTitle\":\"{title}\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeRuntimeMarkup', 'admin_markup', '32768', 'Admin Markup', '{\"runtimeCodeMode\":2,\"codeRows\":7,\"defaultPath\":1,\"renderPHPFileMode\":2,\"addJSFileMode\":1,\"addJSFileSuppressErrors\":2,\"addCSSFileMode\":1,\"addCSSFileSuppressErrors\":2,\"renderPHPFile\":\"vendor\\/admin\\/RuntimeMarkup\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeText', 'page_icon', '32768', 'Page Icon', '{\"description\":\"Font Awesome 4 eg: `code`\",\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeRepeaterMatrix', 'matrix', '32768', 'Matrix', '{\"template_id\":50,\"parent_id\":1046,\"matrix1_name\":\"widget\",\"matrix1_label\":\"Widget\",\"matrix1_head\":\"{matrix_label} [\\u2022 {matrix_summary}]\",\"matrix1_sort\":1,\"repeaterFields\":[116,76,78,118],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"matrix1_fields\":[78,118],\"matrix2_name\":\"editor\",\"matrix2_label\":\"Editor\",\"matrix2_head\":\"{matrix_label} [\\u2022 {matrix_summary}]\",\"matrix2_sort\":0,\"matrix2_fields\":[76],\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypePage', 'select_widget', '32768', 'Select Widget', '{\"derefAsPage\":1,\"inputfield\":\"InputfieldSelect\",\"parent_id\":1049,\"labelFieldName\":\"title\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('119', 'FieldtypeDecimal', 'price', '32768', 'price', '{\"digits\":12,\"precision\":2,\"icon\":\"money\",\"collapsed\":0,\"inputType\":\"text\",\"size\":10}');

DROP TABLE IF EXISTS `fieldtype_options`;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `title` text,
  `value` varchar(250) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(250),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  FULLTEXT KEY `title_value` (`title`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('107', '1', 'No Link', '', '0');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('107', '2', 'Page', '', '1');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('107', '3', 'External Link', '', '2');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('110', '1', 'New Tab', '', '0');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('110', '2', 'Nofollow', '', '1');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('110', '3', 'Toggle', '', '2');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('110', '4', 'Scroll', '', '3');

DROP TABLE IF EXISTS `hanna_code`;
CREATE TABLE `hanna_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `code` text,
  `modified` int(10) unsigned NOT NULL DEFAULT '0',
  `accessed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `hanna_code` (`id`, `name`, `type`, `code`, `modified`, `accessed`) VALUES('1', 'widget', '2', '/*hc_attr\nid=\"\"\nhc_attr*/\n<?php\n$file = wire(\"config\")->paths->templates.\"vendor/shortcodes/widget.php\";\nwire(\"files\")->include($file, [\"id\" => $id]);', '1596304642', '1596349500');
INSERT INTO `hanna_code` (`id`, `name`, `type`, `code`, `modified`, `accessed`) VALUES('2', 'column', '2', '/*hc_attr\nrows=\"2\"\nhc_attr*/\n<?php\n\necho \"<div class=\'uk-column-1-{$rows}@m\'>\";', '1609783756', '0');
INSERT INTO `hanna_code` (`id`, `name`, `type`, `code`, `modified`, `accessed`) VALUES('3', 'column_end', '2', '<?php\n\necho \"</div>\";', '1609783803', '0');
INSERT INTO `hanna_code` (`id`, `name`, `type`, `code`, `modified`, `accessed`) VALUES('4', 'icon', '2', '/*hc_attr\ntitle=\"\"\nratio=\"1\"\nhc_attr*/\n<?php\n\n?>\n\n<span uk-icon=\'icon: <?= $title ?>; ratio: <?= $ratio ?>\'><span>', '1609783854', '0');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '{\"classOptions\":\"uk-button\\nuk-button-default\\nuk-button-primary\\nuk-button-secondary\\nuk-button-text\\nuk-button-small\\nuk-button-large\\ntm-toggle\",\"relOptions\":\"nofollow\",\"targetOptions\":\"_blank\",\"extLinkClass\":\"\",\"extLinkRel\":\"\",\"extLinkTarget\":\"\",\"urlType\":\"0\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('209', 'InputfieldDecimal', '0', '', '2021-01-04 16:45:08');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '{\"collapsedTags\":[\"_pagehits\",\"Blocks\",\"Vendor\",\"pagehits\",\"Repeater\"]}', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\"]}', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":19,\"coreVersion\":\"3.0.170\"}', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'PagePathHistory', '3', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2020-08-01 16:47:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('158', 'ProcessRecentPages', '1', '', '2020-08-01 16:47:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'AdminThemeUikit', '10', '{\"useAsLogin\":\"\",\"userAvatar\":\"icon.user-circle\",\"userLabel\":\"{Name}\",\"logoURL\":\"\",\"logoAction\":\"0\",\"layout\":\"\",\"noGrid\":\"0\",\"maxWidth\":1400,\"groupNotices\":\"1\",\"cssURL\":\"\",\"inputSize\":\"m\",\"noBorderTypes\":[],\"offsetTypes\":[],\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 16:47:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'ProcessLogger', '1', '', '2020-08-01 16:47:53');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'InputfieldIcon', '0', '', '2020-08-01 16:47:53');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'FieldtypeRepeater', '3', '{\"repeatersRootPageID\":1014}', '2020-08-01 16:52:52');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'InputfieldRepeater', '0', '', '2020-08-01 16:52:52');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'FieldtypeFieldsetPage', '35', '{\"repeatersRootPageID\":1014,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 16:52:52');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'FieldtypeOptions', '1', '', '2020-08-01 16:52:59');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'InputfieldToggle', '0', '', '2020-08-01 16:56:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'FieldtypeToggle', '1', '', '2020-08-01 16:56:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'ImageSizerEngineAnimatedGif', '0', '{\"enginePriority\":9,\"sharpening\":\"soft\",\"quality\":90,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 16:56:53');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'InputfieldPageAutocomplete', '0', '', '2020-08-01 16:57:03');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'ProcessPageClone', '11', '', '2020-08-01 16:57:41');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'FieldtypeJsonOptions', '1', '', '2020-08-01 17:02:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'LazyCron', '3', '', '2020-08-01 17:05:52');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'CronjobDatabaseBackup', '3', '{\"cycle\":\"every4Weeks\",\"backup_name\":\"\",\"backup_fileinfo\":\"\",\"max\":\"\",\"deadline\":\"\",\"stopword\":\"protected\",\"field_storage_path\":\"\",\"backup_all\":1,\"tables\":{\"caches\":\"caches\",\"field_admin_theme\":\"field_admin_theme\",\"field_body\":\"field_body\",\"field_email\":\"field_email\",\"field_headline\":\"field_headline\",\"field_images\":\"field_images\",\"field_pass\":\"field_pass\",\"field_permissions\":\"field_permissions\",\"field_process\":\"field_process\",\"field_roles\":\"field_roles\",\"field_title\":\"field_title\",\"fieldgroups\":\"fieldgroups\",\"fieldgroups_fields\":\"fieldgroups_fields\",\"fields\":\"fields\",\"fieldtype_options\":\"fieldtype_options\",\"modules\":\"modules\",\"page_path_history\":\"page_path_history\",\"pages\":\"pages\",\"pages_access\":\"pages_access\",\"pages_parents\":\"pages_parents\",\"pages_sortfields\":\"pages_sortfields\",\"session_login_throttle\":\"session_login_throttle\",\"templates\":\"templates\"},\"tables_content\":{\"caches\":\"caches\",\"field_admin_theme\":\"field_admin_theme\",\"field_body\":\"field_body\",\"field_email\":\"field_email\",\"field_headline\":\"field_headline\",\"field_images\":\"field_images\",\"field_pass\":\"field_pass\",\"field_permissions\":\"field_permissions\",\"field_process\":\"field_process\",\"field_roles\":\"field_roles\",\"field_title\":\"field_title\",\"fieldgroups\":\"fieldgroups\",\"fieldgroups_fields\":\"fieldgroups_fields\",\"fields\":\"fields\",\"fieldtype_options\":\"fieldtype_options\",\"modules\":\"modules\",\"page_path_history\":\"page_path_history\",\"pages\":\"pages\",\"pages_access\":\"pages_access\",\"pages_parents\":\"pages_parents\",\"pages_sortfields\":\"pages_sortfields\",\"session_login_throttle\":\"session_login_throttle\",\"templates\":\"templates\"},\"auto_add_new_fields\":null,\"cleanup\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 17:05:52');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('204', 'Widgets', '1', '{\"widgets_per_page\":15,\"protected_widgets\":[1050],\"delete_in_use\":\"2\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 19:26:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('205', 'FieldtypeRepeaterMatrix', '33', '{\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 19:28:40');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'FieldtypeAdminCustomPagesSelect', '1', '', '2020-08-01 17:05:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'FieldtypeMapMarker', '1', '{\"googleApiKey\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 17:06:07');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('176', 'InputfieldMapMarker', '0', '', '2020-08-01 17:06:07');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('177', 'PageHitCounter', '3', '{\"forTemplates\":[],\"forAPITemplates\":[],\"sessionLifetime\":\"1200\",\"showForBackend\":1,\"excludeTemplates\":[],\"botFilter\":1,\"ipValidation\":1,\"customAttributes\":\"defer\",\"thousandSeparator\":\".\",\"forRoles\":[],\"ipFilter\":\"\",\"resetSelector\":\"\",\"dryRun\":1,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 17:06:16');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('178', 'FieldtypePageHitCounter', '1', '', '2020-08-01 17:06:16');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('179', 'FieldtypeRuntimeMarkup', '1', '', '2020-08-01 17:06:27');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('180', 'SeoMaestro', '3', '', '2020-08-01 17:06:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('181', 'FieldtypeSeoMaestro', '1', '', '2020-08-01 17:06:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('182', 'InputfieldSeoMaestro', '0', '', '2020-08-01 17:06:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('183', 'InputfieldRuntimeMarkup', '0', '', '2020-08-01 17:06:40');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('184', 'KreativanForms', '1', '{\"alert_type\":\"notification\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 17:06:47');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('185', 'KreativanHelper', '3', '{\"hide_system_pages\":\"2\",\"sys_pages\":[],\"load_admin_style\":\"2\",\"fa\":\"1\",\"fa_link\":\"https:\\/\\/cdnjs.cloudflare.com\\/ajax\\/libs\\/font-awesome\\/5.13.0\\/css\\/all.min.css\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 17:07:05');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('186', 'KreativanLess', '0', '{\"css_prefix\":\"css_4051\",\"auto_cache_buster\":\"2\",\"minify_css\":\"1\",\"dev_mode\":\"2\",\"timestamp\":\"1609770970\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 17:07:13');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('187', 'MarkupGoogleMap', '0', '', '2020-08-01 17:07:26');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('188', 'ProcessAdminCustomPages', '1', '', '2020-08-01 17:07:32');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('189', 'ProcessDatabaseBackups', '1', '', '2020-08-01 17:07:39');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('191', 'TextformatterHannaCode', '1', '', '2020-08-01 17:07:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('192', 'ProcessHannaCode', '1', '', '2020-08-01 17:07:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('193', 'ProcessWireUpgrade', '1', '', '2020-08-01 17:08:08');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('194', 'ProcessWireUpgradeCheck', '11', '', '2020-08-01 17:08:08');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('195', 'SearchEngine', '3', '{\"indexed_fields\":[\"title\",\"headline\",\"body\"],\"indexed_templates\":[\"basic-page\"],\"find_args__sort\":\"sort\",\"find_args__operator\":\"*=\",\"index_pages_now_selector\":\"\",\"index_field\":\"search_index\",\"override_compatible_fieldtypes\":\"\",\"compatible_fieldtypes\":[\"FieldtypeEmail\",\"FieldtypeFieldsetPage\",\"FieldtypeDatetime\",\"FieldtypeText\",\"FieldtypeTextLanguage\",\"FieldtypeTextarea\",\"FieldtypeTextareaLanguage\",\"FieldtypePageTitle\",\"FieldtypePageTitleLanguage\",\"FieldtypeCheckbox\",\"FieldtypeInteger\",\"FieldtypeFloat\",\"FieldtypeURL\",\"FieldtypeModule\",\"FieldtypeFile\",\"FieldtypeImage\",\"FieldtypeSelector\",\"FieldtypeOptions\",\"FieldtypeRepeater\",\"FieldtypeRepeaterMatrix\",\"FieldtypePageTable\",\"FieldtypePage\",\"FieldtypeTable\",\"FieldtypeTextareas\"],\"debugger_page\":0,\"debugger_query\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\",\"index_pages_now\":\"\"}', '2020-08-01 17:08:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('196', 'TracyDebugger', '3', '{\"enabled\":1,\"outputMode\":\"detect\",\"superuserForceDevelopment\":\"\",\"guestForceDevelopmentLocal\":\"\",\"ipAddress\":\"\",\"strictMode\":\"\",\"strictModeAjax\":\"\",\"forceScream\":\"\",\"showLocation\":[\"Tracy\\\\Dumper::LOCATION_SOURCE\",\"Tracy\\\\Dumper::LOCATION_LINK\",\"Tracy\\\\Dumper::LOCATION_CLASS\"],\"debugInfo\":1,\"maxDepth\":3,\"maxLength\":150,\"collapse\":14,\"collapse_count\":7,\"maxAjaxRows\":3,\"reservedMemorySize\":500000,\"showFireLogger\":1,\"referencePageEdited\":1,\"linksNewTab\":\"\",\"logSeverity\":[],\"fromEmail\":\"\",\"email\":\"\",\"clearEmailSent\":\"\",\"showDebugBar\":[\"frontend\",\"backend\"],\"hideDebugBarModals\":[],\"hideDebugBarFrontendTemplates\":[],\"hideDebugBarBackendTemplates\":[],\"hideDebugBar\":\"\",\"showPanelLabels\":\"\",\"barPosition\":\"bottom-right\",\"panelZindex\":100,\"frontendPanels\":[\"processwireInfo\",\"requestInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"console\",\"panelSelector\",\"tracyToggler\"],\"backendPanels\":[\"processwireInfo\",\"requestInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"console\",\"panelSelector\",\"tracyToggler\"],\"restrictedUserDisabledPanels\":[],\"nonToggleablePanels\":[],\"panelSelectorTracyTogglerButton\":1,\"editor\":\"vscode:\\/\\/file\\/%file:%line\",\"localRootPath\":\"\",\"useOnlineEditor\":[],\"onlineEditor\":\"tracy\",\"forceEditorLinksToTracy\":1,\"snippetsPath\":\"templates\",\"consoleBackupLimit\":25,\"consoleCodePrefix\":\"\",\"fileEditorBaseDirectory\":\"templates\",\"fileEditorAllowedExtensions\":\"php, module, js, css, txt, log, htaccess\",\"fileEditorExcludedDirs\":\"site\\/assets\",\"aceTheme\":\"tomorrow_night_bright\",\"codeFontSize\":14,\"codeLineHeight\":24,\"codeShowInvisibles\":\"1\",\"codeTabSize\":4,\"codeUseSoftTabs\":\"1\",\"pwAutocompletions\":1,\"codeShowDescription\":1,\"customSnippetsUrl\":\"\",\"processwireInfoPanelSections\":[\"versionsList\",\"adminLinks\",\"documentationLinks\",\"gotoId\",\"processWireWebsiteSearch\"],\"customPWInfoPanelLinks\":[\"\\/admin\\/setup\\/template\\/\",\"\\/admin\\/setup\\/field\\/\",\"\\/admin\\/setup\\/\",\"\\/admin\\/module\\/\",\"\\/admin\\/access\\/users\\/\",\"\\/admin\\/access\\/roles\\/\",\"\\/admin\\/access\\/permissions\\/\",\"\\/admin\\/profile\\/\"],\"showPWInfoPanelIconLabels\":1,\"pWInfoPanelLinksNewTab\":\"\",\"apiExplorerShowDescription\":1,\"apiExplorerToggleDocComment\":\"\",\"apiExplorerModuleClasses\":[],\"captainHookShowDescription\":1,\"captainHookToggleDocComment\":\"\",\"requestInfoPanelSections\":[\"moduleSettings\",\"templateSettings\",\"fieldSettings\",\"pageInfo\",\"pagePermissions\",\"languageInfo\",\"templateInfo\",\"fieldsListValues\",\"serverRequest\",\"inputGet\",\"inputPost\",\"inputCookie\",\"session\",\"editLinks\"],\"imagesInFieldListValues\":\"\",\"debugModePanelSections\":[\"pagesLoaded\",\"modulesLoaded\",\"hooks\",\"databaseQueries\",\"selectorQueries\",\"timers\",\"user\",\"cache\",\"autoload\"],\"alwaysShowDebugTools\":1,\"diagnosticsPanelSections\":[\"filesystemFolders\"],\"dumpPanelTabs\":[\"debugInfo\",\"fullObject\"],\"validatorUrl\":\"https:\\/\\/html5.validator.nu\\/\",\"todoIgnoreDirs\":\"git, svn, images, img, errors, sass-cache, node_modules\",\"todoAllowedExtensions\":\"php, module, inc, txt, latte, html, htm, md, css, scss, less, js\",\"todoScanModules\":\"\",\"todoScanAssets\":\"\",\"numLogEntries\":10,\"variablesShowPwObjects\":\"\",\"customPhpCode\":\"\",\"userSwitcherSelector\":\"\",\"userSwitcherRestricted\":[],\"userSwitcherIncluded\":[],\"requestMethods\":[\"GET\",\"POST\",\"PUT\",\"DELETE\",\"PATCH\"],\"requestLoggerMaxLogs\":10,\"requestLoggerReturnType\":\"array\",\"styleWhere\":[\"backend\",\"frontend\"],\"styleAdminColors\":\"local|#FF9933\\n*.local|#FF9933\\n*.dev|#FF9933\\ndev.*|#FF9933\\n*.test|#FF9933\\nstaging.*|#8b0066\\n*.com|#009900\",\"styleAdminType\":[\"favicon\"],\"styleAdminElements\":\"body::before {\\n\\tcontent: \\\"[type]\\\";\\n\\tbackground: [color];\\n\\tposition: fixed;\\n\\tleft: 0;\\n\\tbottom: 100%;\\n\\tcolor: #ffffff;\\n\\twidth: 100vh;\\n\\tpadding: 0;\\n\\ttext-align: center;\\n\\tfont-weight: 600;\\n\\ttext-transform: uppercase;\\n\\ttransform: rotate(90deg);\\n\\ttransform-origin: bottom left;\\n\\tz-index: 999999;\\n\\tfont-family: sans-serif;\\n\\tfont-size: 11px;\\n\\theight: 13px;\\n\\tline-height: 13px;\\npointer-events: none;\\n}\",\"userDevTemplate\":\"\",\"userDevTemplateSuffix\":\"dev\",\"showUserBar\":\"\",\"showUserBarTracyUsers\":null,\"userBarFeatures\":[\"admin\",\"editPage\"],\"userBarCustomFeatures\":\"\",\"userBarTopBottom\":\"bottom\",\"userBarLeftRight\":\"left\",\"userBarBackgroundColor\":null,\"userBarBackgroundOpacity\":\"1\",\"userBarIconColor\":\"#666666\",\"enableShortcutMethods\":1,\"enabledShortcutMethods\":[\"addBreakpoint\",\"bp\",\"barDump\",\"bd\",\"barEcho\",\"be\",\"barDumpBig\",\"bdb\",\"debugAll\",\"da\",\"dump\",\"d\",\"dumpBig\",\"db\",\"fireLog\",\"fl\",\"l\",\"templateVars\",\"tv\",\"timer\",\"t\"],\"uninstall\":\"\",\"submit_save_module\":\"Submit\",\"apiDataVersion\":\"3.0.170\"}', '2020-08-01 17:08:25');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('198', 'Translator', '1', '{\"hide_populated\":\"2\",\"exc_multilang_fields\":[],\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 17:08:41');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('199', 'MenuManager', '1', '{\"show_home\":\"1\",\"enable_search\":\"1\",\"main_menu_source\":\"1036\",\"mobile_menu_source\":\"1036\",\"hide_menus\":[],\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 17:16:18');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('200', 'MinimalFieldset', '10', '', '2020-08-01 17:37:08');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('201', 'TextformatterVideoOrSocialPostEmbed', '1', '{\"maxWidth\":640,\"maxHeight\":480,\"responsive\":\"\",\"clearCache\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 17:50:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('202', 'TextformatterVideoEmbed', '1', '{\"maxWidth\":640,\"maxHeight\":480,\"responsive\":\"\",\"clearCache\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 17:50:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('203', 'TextformatterMarkdownExtra', '1', '{\"flavor\":\"2\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2020-08-01 17:52:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('206', 'InputfieldRepeaterMatrix', '0', '', '2020-08-01 19:28:40');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('207', 'KreativanSettings', '1', '{\"default_lang\":\"en\",\"scripts_in_head\":\"\",\"scripts_in_body\":\"\",\"scripts_in_footer\":\"\"}', '2020-08-01 20:31:37');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('208', 'FieldtypeDecimal', '1', '', '2021-01-04 16:45:08');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(250) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1066 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2020-08-02 08:36:14', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'admin', '1035', '2021-01-04 16:05:59', '40', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2020-08-01 16:47:58', '40', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2020-08-01 16:48:00', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2020-08-01 16:47:59', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '29', 'http404', '1035', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '3', '2020-08-01 16:47:36', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'admin', '1', '2021-01-04 16:05:59', '40', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '41', '2020-08-01 16:47:36', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1000', '1', '26', 'search', '1', '2020-08-02 10:22:35', '41', '2020-08-01 16:47:36', '2', '2020-08-01 16:47:36', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '3', '2', 'clone', '1024', '2020-08-01 16:57:41', '41', '2020-08-01 16:57:41', '41', '2020-08-01 16:57:41', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '31', '5', 'page-clone', '1', '2020-08-01 16:57:41', '41', '2020-08-01 16:57:41', '41', '2020-08-01 16:57:41', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '31', '5', 'page-clone-tree', '1', '2020-08-01 16:57:41', '41', '2020-08-01 16:57:41', '41', '2020-08-01 16:57:41', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2020-08-01 16:47:36', '40', '2020-08-01 16:47:36', '40', '2020-08-01 16:47:36', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2020-08-01 16:47:36', '40', '2020-08-01 16:47:36', '40', '2020-08-01 16:47:36', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1009', '3', '2', 'recent-pages', '1', '2020-08-01 16:47:48', '40', '2020-08-01 16:47:48', '40', '2020-08-01 16:47:48', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '31', '5', 'page-edit-recent', '1', '2020-08-01 16:47:48', '40', '2020-08-01 16:47:48', '40', '2020-08-01 16:47:48', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '22', '2', 'logs', '1', '2020-08-01 16:47:53', '40', '2020-08-01 16:47:53', '40', '2020-08-01 16:47:53', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '31', '5', 'logs-view', '1', '2020-08-01 16:47:53', '40', '2020-08-01 16:47:53', '40', '2020-08-01 16:47:53', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-edit', '1', '2020-08-01 16:47:53', '40', '2020-08-01 16:47:53', '40', '2020-08-01 16:47:53', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '2', '2', 'repeaters', '1036', '2020-08-01 16:52:52', '41', '2020-08-01 16:52:52', '41', '2020-08-01 16:52:52', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '31', '5', 'trigger-db-backup', '1', '2020-08-01 17:05:52', '41', '2020-08-01 17:05:52', '41', '2020-08-01 17:05:52', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '22', '2', 'db-backups', '1', '2020-08-01 17:07:39', '41', '2020-08-01 17:07:39', '41', '2020-08-01 17:07:39', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1020', '31', '5', 'db-backup', '1', '2020-08-01 17:07:39', '41', '2020-08-01 17:07:39', '41', '2020-08-01 17:07:39', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1022', '22', '2', 'hanna-code', '1', '2020-08-01 17:07:58', '41', '2020-08-01 17:07:58', '41', '2020-08-01 17:07:58', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1023', '31', '5', 'hanna-code', '1', '2020-08-01 17:07:58', '41', '2020-08-01 17:07:58', '41', '2020-08-01 17:07:58', '17');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1024', '31', '5', 'hanna-code-edit', '1', '2020-08-01 17:07:58', '41', '2020-08-01 17:07:58', '41', '2020-08-01 17:07:58', '18');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1025', '31', '5', 'hanna-code-php', '1', '2020-08-01 17:07:58', '41', '2020-08-01 17:07:58', '41', '2020-08-01 17:07:58', '19');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1026', '22', '2', 'upgrades', '1', '2020-08-01 17:08:08', '41', '2020-08-01 17:08:08', '41', '2020-08-01 17:08:08', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1028', '1030', '2', 'translator', '1', '2020-08-01 17:15:31', '41', '2020-08-01 17:08:41', '41', '2020-08-01 17:08:41', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1029', '31', '5', 'translator', '1', '2020-08-01 17:08:41', '41', '2020-08-01 17:08:41', '41', '2020-08-01 17:08:41', '20');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '2', '2', 'manage', '1', '2020-08-01 21:06:50', '41', '2020-08-01 17:15:09', '41', '2020-08-01 17:15:15', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1031', '1030', '2', 'menu-manager', '1', '2020-08-01 17:35:18', '41', '2020-08-01 17:16:18', '41', '2020-08-01 17:16:18', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '31', '5', 'menu-manager', '1', '2020-08-01 17:16:18', '41', '2020-08-01 17:16:18', '41', '2020-08-01 17:16:18', '21');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1033', '1', '43', 'system', '1025', '2020-08-01 19:09:34', '41', '2020-08-01 17:18:13', '41', '2020-08-01 17:18:13', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1034', '1014', '2', 'for-field-106', '17', '2020-08-01 17:24:40', '41', '2020-08-01 17:24:40', '41', '2020-08-01 17:24:40', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1035', '1014', '2', 'for-field-111', '17', '2020-08-01 17:33:10', '41', '2020-08-01 17:33:10', '41', '2020-08-01 17:33:10', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1036', '1033', '44', 'main-menu', '1025', '2021-01-05 11:09:25', '41', '2020-08-01 17:35:29', '41', '2021-01-05 11:09:17', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1037', '1036', '46', 'features', '0', '2020-08-02 10:08:28', '41', '2020-08-01 17:35:43', '41', '2020-08-01 17:41:29', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1038', '1034', '47', 'for-page-1037', '1', '2020-08-02 10:08:28', '41', '2020-08-01 17:35:43', '41', '2020-08-01 17:41:29', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1039', '1035', '2', 'for-page-1037', '17', '2020-08-01 17:35:43', '41', '2020-08-01 17:35:43', '41', '2020-08-01 17:35:43', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1040', '1039', '48', '1596296312-2958-1', '1', '2020-08-02 09:54:48', '41', '2020-08-01 17:38:32', '41', '2020-08-01 17:41:01', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '1034', '47', 'for-page-1040', '1', '2020-08-02 09:54:48', '41', '2020-08-01 17:38:32', '41', '2020-08-01 17:41:01', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1042', '2', '2', 'development', '0', '2020-08-02 12:58:55', '41', '2020-08-01 18:55:10', '41', '2020-08-02 09:25:12', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1043', '1033', '49', 'ajax', '1025', '2021-01-05 11:09:21', '41', '2020-08-01 19:09:27', '41', '2020-08-01 19:09:27', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1044', '1030', '2', 'widgets', '1', '2020-08-01 20:04:09', '41', '2020-08-01 19:26:35', '41', '2020-08-01 19:26:35', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1045', '31', '5', 'widgets', '1', '2020-08-01 19:26:35', '41', '2020-08-01 19:26:35', '41', '2020-08-01 19:26:35', '22');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1046', '1014', '2', 'for-field-117', '17', '2020-08-01 19:29:04', '41', '2020-08-01 19:29:04', '41', '2020-08-01 19:29:04', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1047', '1046', '2', 'for-page-1', '17', '2020-08-01 19:32:16', '41', '2020-08-01 19:32:16', '41', '2020-08-01 19:32:16', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1048', '1047', '50', '1596303149-7752-1', '1', '2020-08-02 08:30:36', '41', '2020-08-01 19:32:29', '41', '2020-08-01 20:13:56', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1049', '1033', '51', 'widgets', '1025', '2021-01-05 11:09:28', '41', '2020-08-01 19:34:39', '41', '2020-08-01 19:34:39', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1050', '1049', '52', 'widget-1050', '0', '2020-08-02 08:28:57', '41', '2020-08-01 19:37:31', '41', '2020-08-02 08:28:57', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1052', '1030', '2', 'settings', '1', '2020-08-02 09:25:55', '41', '2020-08-01 20:31:37', '41', '2020-08-01 20:31:37', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1051', '1047', '50', '1596305671-4215-1', '1', '2020-08-02 08:32:21', '41', '2020-08-01 20:14:31', '41', '2020-08-01 20:14:52', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1053', '31', '5', 'cms-settings', '1', '2020-08-01 20:31:37', '41', '2020-08-01 20:31:37', '41', '2020-08-01 20:31:37', '23');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1054', '1036', '46', 'basic-page', '1', '2020-08-01 23:22:34', '41', '2020-08-01 23:21:45', '41', '2020-08-01 23:21:45', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1055', '1034', '47', 'for-page-1054', '1', '2020-08-01 23:22:34', '41', '2020-08-01 23:21:45', '41', '2020-08-01 23:21:45', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1056', '1035', '2', 'for-page-1054', '17', '2020-08-01 23:21:45', '41', '2020-08-01 23:21:45', '41', '2020-08-01 23:21:45', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1057', '1', '29', 'basic-page', '1', '2020-08-02 08:43:07', '41', '2020-08-01 23:22:03', '41', '2020-08-01 23:22:19', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1058', '1039', '48', '1596316985-7236-1', '1', '2020-08-02 10:08:28', '41', '2020-08-01 23:23:05', '41', '2020-08-01 23:23:15', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1059', '1034', '47', 'for-page-1058', '1', '2020-08-02 10:08:28', '41', '2020-08-01 23:23:05', '41', '2020-08-01 23:23:15', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1060', '1039', '48', '1596316989-7926-1', '1', '2020-08-02 09:54:48', '41', '2020-08-01 23:23:09', '41', '2020-08-01 23:23:15', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1061', '1034', '47', 'for-page-1060', '1', '2020-08-02 09:54:48', '41', '2020-08-01 23:23:09', '41', '2020-08-01 23:23:15', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1062', '1036', '46', 'search', '1', '2020-08-02 12:02:34', '41', '2020-08-02 12:02:24', '41', '2020-08-02 12:02:24', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1063', '1034', '47', 'for-page-1062', '1', '2020-08-02 12:02:32', '41', '2020-08-02 12:02:24', '41', '2020-08-02 12:02:24', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1064', '1035', '2', 'for-page-1062', '17', '2020-08-02 12:02:24', '41', '2020-08-02 12:02:24', '41', '2020-08-02 12:02:24', '2');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2020-08-01 16:47:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2020-08-01 16:47:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2020-08-01 16:47:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2020-08-01 16:47:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2020-08-01 16:47:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2020-08-01 16:47:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2020-08-01 16:47:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2020-08-01 16:47:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2020-08-01 16:47:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2020-08-01 16:47:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2020-08-01 16:47:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2020-08-01 16:47:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1010', '2', '2020-08-01 16:47:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1012', '2', '2020-08-01 16:47:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2020-08-01 16:47:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '2', '2020-08-01 16:57:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '2', '2020-08-01 17:05:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '2', '2020-08-01 16:57:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1020', '2', '2020-08-01 17:07:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '2', '2020-08-01 17:07:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1024', '2', '2020-08-01 17:07:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1025', '2', '2020-08-01 17:07:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '2', '2020-08-01 17:08:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1032', '2', '2020-08-01 17:16:18');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1033', '1', '2020-08-01 17:18:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1036', '1', '2020-08-01 17:35:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1038', '2', '2020-08-01 17:35:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1037', '1', '2020-08-01 17:35:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1041', '2', '2020-08-01 17:38:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1040', '2', '2020-08-01 17:38:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1043', '1', '2020-08-01 19:09:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1045', '2', '2020-08-01 19:26:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1048', '2', '2020-08-01 19:32:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1049', '1', '2020-08-01 19:34:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1050', '1', '2020-08-01 19:37:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1051', '2', '2020-08-01 20:14:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1053', '2', '2020-08-01 20:31:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1055', '2', '2020-08-01 23:21:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1054', '1', '2020-08-01 23:21:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1057', '1', '2020-08-01 23:22:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1059', '2', '2020-08-01 23:23:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1058', '2', '2020-08-01 23:23:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1061', '2', '2020-08-01 23:23:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1060', '2', '2020-08-01 23:23:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1063', '2', '2020-08-02 12:02:24');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1062', '1', '2020-08-02 12:02:24');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1014', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1030', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1034', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1034', '1014');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1035', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1035', '1014');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1036', '1033');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1039', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1039', '1014');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1039', '1035');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1046', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1046', '1014');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1047', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1047', '1014');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1047', '1046');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1049', '1033');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1609768425,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1609768425,\"ns\":\"ProcessWire\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1609781047,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-search title\",\"compile\":3,\"modified\":1609770179,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'system', '97', '0', '0', '{\"noParents\":-1,\"urlSegments\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-cog title\",\"compile\":3,\"tags\":\"-Vendor\",\"modified\":1609768425,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'menu', '98', '0', '0', '{\"childTemplates\":[45,46],\"parentTemplates\":[43],\"slashUrls\":1,\"pageLabelField\":\"fa-bars title\",\"compile\":3,\"label\":\"Menu\",\"tags\":\"Vendor\",\"modified\":1596295932}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'menu-item', '99', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[44],\"slashUrls\":1,\"compile\":3,\"tags\":\"Vendor\",\"modified\":1596295909}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'menu-item-dropdown', '100', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[44],\"slashUrls\":1,\"compile\":3,\"tags\":\"Vendor\",\"modified\":1596296446}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'repeater_link_block', '101', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"FieldsetPage\",\"pageLabelField\":\"for_page_path\",\"noGlobal\":1,\"compile\":3,\"modified\":1596295479}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'repeater_menu', '102', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1596295990}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'ajax', '103', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"urlSegments\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-code title\",\"compile\":3,\"tags\":\"Vendor\",\"modified\":1609770436,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'repeater_matrix', '104', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterMatrixPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1596302944}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'widgets', '105', '0', '0', '{\"noParents\":-1,\"parentTemplates\":[43],\"slashUrls\":1,\"pageLabelField\":\"fa-rocket title\",\"compile\":3,\"tags\":\"Vendor\",\"modified\":1609768425,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'editor-wg', '106', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[51],\"slashUrls\":1,\"pageLabelField\":\"fa-pencil title\",\"noSettings\":1,\"compile\":3,\"label\":\"Editor\",\"tags\":\"Widget\",\"modified\":1596365527}');

DROP TABLE IF EXISTS `textformatter_video_embed`;
CREATE TABLE `textformatter_video_embed` (
  `video_id` varchar(128) NOT NULL,
  `embed_code` varchar(1024) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `textformatter_video_or_social_embed`;
CREATE TABLE `textformatter_video_or_social_embed` (
  `video_id` varchar(128) NOT NULL,
  `embed_code` text NOT NULL,
  `created` timestamp NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":40,"numCreateTables":47,"numInserts":582,"numSeconds":0}