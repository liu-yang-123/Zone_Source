#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20250523.sql ./mysql/db
cp ../sql/ry_config_20250224.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../zone-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy zone-gateway "
cp ../zone-gateway/target/zone-gateway.jar ./ruoyi/gateway/jar

echo "begin copy zone-auth "
cp ../zone-auth/target/zone-auth.jar ./ruoyi/auth/jar

echo "begin copy zone-visual "
cp ../zone-visual/zone-monitor/target/zone-visual-monitor.jar  ./ruoyi/visual/monitor/jar

echo "begin copy zone-modules-system "
cp ../zone-modules/zone-system/target/zone-modules-system.jar ./ruoyi/modules/system/jar

echo "begin copy zone-modules-file "
cp ../zone-modules/zone-file/target/zone-modules-file.jar ./ruoyi/modules/file/jar

echo "begin copy zone-modules-job "
cp ../zone-modules/zone-job/target/zone-modules-job.jar ./ruoyi/modules/job/jar

echo "begin copy zone-modules-gen "
cp ../zone-modules/zone-gen/target/zone-modules-gen.jar ./ruoyi/modules/gen/jar

