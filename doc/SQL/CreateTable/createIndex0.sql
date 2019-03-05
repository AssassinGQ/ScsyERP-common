DROP TABLE IF EXISTS `t_index0`;

CREATE TABLE `t_index0` (
  id        bigint(20)  not null,
  username  varchar(50) DEFAULT NULL,
  email     varchar(30) DEFAULT NULL,
  _password varchar(32) DEFAULT NULL,
  width     bigint(20)  not null,
  status    tinyint(1)  NULL DEFAULT 0
) ENGINE = MyISAM DEFAULT CHARSET = utf8;