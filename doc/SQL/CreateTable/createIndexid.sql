DROP TABLE IF EXISTS `t_indexid`;

CREATE TABLE `t_indexid` (
  id        bigint(20)  not null AUTO_INCREMENT,
  username  varchar(50) DEFAULT NULL,
  email     varchar(30) DEFAULT NULL,
  _password  varchar(32) DEFAULT NULL,
  width     bigint(20)  not null,
  status    tinyint(1)  NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;