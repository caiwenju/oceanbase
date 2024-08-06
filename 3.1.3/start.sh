#!/bin/bash

OB_LOCAL_PATH="./data"      # OceanBase 数据库实例的部署路径。
OB_HOME_PATH="/root/ob"      # OceanBase 数据库实例的容器内部署路径。
OB_MYSQL_PORT=2881      # OceanBase 数据库实例的 MySQL 协议端口。
OB_RPC_PORT=2882        # OceanBase 数据库实例的 RPC 通信端口。
OB_ROOT_PASSWORD="empty"        # OceanBase 数据库实例 sys 租户的密码。
OB_CLUSTER_NAME="obcluster"     # OceanBase 数据库实例名称，OBD 将使用这个名称作为集群名。
OB_TENANT_NAME="test"   # OceanBase 数据库实例默认初始化的用户租户的名称。


# obclient -uroot -h127.1 -P2881

docker run -p 2881:2881 -p 2882:2882 --name obstandalone \
    -e MINI_MODE=1 \
    -e OB_HOME_PATH="${OB_HOME_PATH}" \
    -e OB_MYSQL_PORT="${OB_MYSQL_PORT}" \
    -e OB_RPC_PORT="${OB_RPC_PORT}" \
    -e OB_ROOT_PASSWORD="${OB_ROOT_PASSWORD}" \
    -e OB_CLUSTER_NAME="${OB_CLUSTER_NAME}" \
    -e OB_TENANT_NAME="${OB_TENANT_NAME}" \
    -v "${OB_LOCAL_PATH}:${OB_HOME_PATH}" \
    -d oceanbase/oceanbase-ce:3.1.3