SET ANT.VERSION=apache-ant-1.10.7
SET APACHE.VERSION=httpd-2.4.46-win64-VS16
SET GITCLIENT.VERSION=Portable-2.35.1
SET GRADLE.VERSION=gradle-6.7.1
SET JAVA.VERSION=jdk-11.0.6
SET LIQUIBASE.VERSION=3.9.0
SET NODEJS.VERSION=node-v16.13.2-win-x64
SET MAVEN.VERSION=3.6.3
SET MYSQL.VERSION=mysql-8.0.20-winx64
::SET MYSQL.VERSION=mysql-5.1.73-winx64
SET PGSQL.VERSION=12.2.1
SET PHP.VERSION=php-8.0.7-nts-Win32-vs16-x64
SET SONARQUBE.VERSION=9.3.0.51899
SET SONARSCANNER.VERSION=4.6.2.2472-windows
SET SQUASH-TM.VERSION=1.21.0
SET SVNCLIENT.VERSION=SlikSvn-1.12
SET TOMCAT.VERSION=9.0.34

:: Autres options
call set-path PGDATA %PLATEFORME_HOME%.\var\data\default\postgres
call set-path MYSQL.DATADIR %PLATEFORME_HOME%.\var\data\default\mysql
SET MYSQL.PORT=3309
SET APACHE.PORT=8080

::SET JAVA_OPTS="-Xmx1024m -XX:MaxPermSize=256m"
SET JAVA_OPTS=

CALL set-path JAVA_HOME %APPS_HOME%.\java\%JAVA.VERSION%
CALL set-path PGSQL.HOME %APPS_HOME%.\postgres\pgsql-%PGSQL.VERSION%
CALL set-path PAYARA-MICRO %APPS_HOME%.\payara-micro
CALL set-path PAYARA.HOME %APPS_HOME%.\payara\payara5
CALL set-path SQLITE3.HOME %APPS_HOME%.\sqlite3
CALL set-path SVNCLIENT.HOME %APPS_HOME%.\subversion\%SVNCLIENT.VERSION%
CALL set-path GITCLIENT.HOME %APPS_HOME%.\git\%GITCLIENT.VERSION%
CALL set-path MYSQL.HOME %APPS_HOME%.\mysql\%MYSQL.VERSION%
CALL set-path MYSQL.HOME %APPS_HOME%.\mysql
CALL set-path APACHE.HOME %APPS_HOME%.\apache\%APACHE.VERSION%
CALL set-path APACHE.CONFDIR %~dp0.\etc\apache2
CALL set-path APACHE.DOCROOT %~dp0.\sites
CALL set-path OPENSSL_CONF %~dp0.\etc\openssl\openssl.cnf
CALL set-path NODEJS.HOME %APPS_HOME%.\nodejs\%NODEJS.VERSION%
CALL set-path SONARSCANNER.HOME %APPS_HOME%.\sonarqube\sonar-scanner-%SONARSCANNER.VERSION%
CALL set-path SONARQUBE.HOME %APPS_HOME%.\sonarqube\sonarqube-%SONARQUBE.VERSION%
SET PAYARA-MICRO.OPTIONS=--rootdir %PAYARA-MICRO%\rootdir

PATH %PATH%;%JAVA_HOME%\bin
CALL %APPS_HOME%\php\bin\add-php-path.cmd
PATH %PATH%;%APPS_HOME%\composer;%NODEJS.HOME%;%PGSQL.HOME%\bin;%PGSQL.HOME%\lib;%PAYARA-MICRO%;%MYSQL.HOME%\bin
PATH %PATH%;%APPS_HOME%\apache\bin;%APACHE.HOME%\bin;%SQLITE3.HOME%;%SVNCLIENT.HOME%\bin;%GITCLIENT.HOME%\bin
PATH %PATH%;%SONARSCANNER.HOME%\bin;%SONARQUBE.HOME%\bin\windows-x86-64
PATH %PATH%;%APPS_HOME%\selenium;C:\Program Files\IIS Express