#!/bin/bash

OB_LOCAL_PATH="./data"
OB_HOME_PATH="/root/ob"
OB_TENANT_PASSWORD="mysql"


docker run -p 12881:2881 --name obstandalonenew \
    -e MODE=mini \
    -e OB_TENANT_PASSWORD="${OB_TENANT_PASSWORD}" \
    -v "${OB_LOCAL_PATH}:${OB_HOME_PATH}" \
    -d oceanbase/oceanbase-ce:4.0.0