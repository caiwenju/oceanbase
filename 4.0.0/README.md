# oceanbase

### 修改root密码
obclient -uroot@sys -h127.1 -P2881 -p
use sys;
ALTER USER 'root' IDENTIFIED BY 'mysql';