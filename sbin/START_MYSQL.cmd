SetLocal

if "%MYSQL.DATADIR%"=="" (
    call SetEnv.cmd
)
Title Mysql %MYSQL.VERSION% sur le port %MYSQL.PORT%
if NOT EXIST %MYSQL.DATADIR% (
  mysqld --datadir=%MYSQL.DATADIR% --port=%MYSQL.PORT% --console --initialize-insecure
)
mysqld --datadir=%MYSQL.DATADIR% --port=%MYSQL.PORT% --console

EndLocal
