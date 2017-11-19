#!/bin/sh

#CUR_DIR=`dirname $BASH_SOURCE`
#export JAVA_HOME="/application/jdk"
export CATALINA_BASE="/home/opt/tomcat-instance/tomcat_8082"
export CATALINA_HOME="/home/tools/apache-tomcat-8.0.39"

case $1 in
 start)
 [ -f $CATALINA_HOME/bin/startup.sh ] && $CATALINA_HOME/bin/startup.sh
 ;;
 stop)
 [ -f $CATALINA_HOME/bin/shutdown.sh ] && $CATALINA_HOME/bin/shutdown.sh
 ;;
 restart)
 [ -f $CATALINA_HOME/bin/shutdown.sh ] && $CATALINA_HOME/bin/shutdown.sh && \
 [ -f $CATALINA_HOME/bin/startup.sh ] && $CATALINA_HOME/bin/startup.sh
 ;;
 *)
 echo "usage : $0 { start | stop | restart }"
 return 1;
 ;;
esac