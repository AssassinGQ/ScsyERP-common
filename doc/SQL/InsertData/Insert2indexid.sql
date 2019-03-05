drop procedure if exists myprocid;
create procedure myprocid()
begin
  declare num int;
  set num=1;
  while num <= 2000000 do
  insert into t_indexid(username,email,_password,status,width) values(CONCAT('username_',num), CONCAT(num ,'@qq.com'), CONCAT('password_',num), num%2, num);
  set num=num+1;
  end while;
end