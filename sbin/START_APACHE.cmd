SetLocal

IF "%APACHE.HOME%" == "" (
  CALL setenv.cmd
)

TITLE Apache %APACHE.VERSION% sur le port %APACHE.PORT%

httpd -w

EndLocal
