
NAME=edu-api
tempId=`ps -ef|grep $NAME|grep -v grep|grep -v kill|grep -v stop|awk '{print $2}'`
if [ ${tempId} ]; then
    echo 'Kill Process!'
    kill -9 $tempId
else
    echo 'Stop Success!'
fi

nohup java -Xmx1024m -Xms256m  -jar  -Dspringfox.documentation.swagger.v2.host=edu-dev.beckda.com:8090 -Dspring.profiles.active=prd -Dserver.port=18888 edu-api.jar --spring.config.location=../conf/application.yml> ../log/edu`date +-%Y-%m-%d`.out &