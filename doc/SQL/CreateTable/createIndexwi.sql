DROP TABLE IF EXISTS `t_indexwi`;

CREATE TABLE `t_indexwi` (
  id        bigint(20)  not null AUTO_INCREMENT,
  username  varchar(50) DEFAULT NULL,
  email     varchar(30) DEFAULT NULL,
  _password  varchar(32) DEFAULT NULL,
  width     bigint(20)  not null,
  status    tinyint(1)  NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;
alter table t_indexwi add index index_wi(width);