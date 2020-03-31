#!/bin/bash

export ODBCSYSINI=${HOME}/.apt/usr/lib/snowflake/odbc/conf/

mkdir -p /etc
echo "
[ODBC Data Sources]
${SNOWFLAKE_DSN} = Snowflake

[${SNOWFLAKE_DSN}]
Server = ${SNOWFLAKE_SERVER}
Warehouse = ${PI_WH}
Driver=SnowflakeDSIIDriver
Description = ${SNOWFLAKE_DSN}
Locale = en-US
Tracing = 0
Role = READ_ONLY
" > ${ODBCSYSINI}/odbc.ini
