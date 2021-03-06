DROP TABLE IF EXISTS `t_indexunpw`;

CREATE TABLE `t_indexunpw` (
  id        bigint(20)  not null AUTO_INCREMENT,
  username  varchar(50) DEFAULT NULL,
  email     varchar(30) DEFAULT NULL,
  _password  varchar(32) DEFAULT NULL,
  width     bigint(20)  not null,
  status    tinyint(1)  NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;
alter table t_indexunpw add index un_pw_index(username, _password);