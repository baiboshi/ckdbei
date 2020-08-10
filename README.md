##clickhouse 数据导出导入脚本

#导出执行脚本

clickhouse-export.sh

配置解释

IP=clickhouse数据的地址

PASSWORD=用户密码

USER=登录用户

PORT=端口号

DATABASES=数据库名

导出数据存放目录export

#导入执行脚本

clickhouse-import.sh

配置解释

IP=clickhouse数据的地址

PASSWORD=用户密码

USER=登录用户

PORT=端口号

DATABASES=数据库名

创建表文件import/tables.sql

可以把创建的表语句写到这个文件里，自动创建导入数据。

