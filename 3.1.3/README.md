# oceanbase

### 修改root密码

[//]: # (docker exec -it obstandalone ob-mysql sys # 连接 sys 租户的 root 用户（root@sys）)

[//]: # (docker exec -it obstandalone ob-mysql root # 连接 test 租户的 root 用户（root@test）)

[//]: # (docker exec -it obstandalone ob-mysql test # 连接 test 租户的 test 用户 （test@test）)

docker exec -it obstandalone ob-mysql sys
use sys;
ALTER USER 'root' IDENTIFIED BY 'GlyEOqRl3%2zkn';