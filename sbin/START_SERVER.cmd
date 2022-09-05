SetLocal
call setenv.cmd

::title serveur payara micro port 8080

:: serveur de base de données
::call START_POSTGRES.cmd

:: le serveur Tomcat
::call catalina.bat start

:: le serveur payara-micro
call payara-micro.bat --rootdir %PAYARA-MICRO%\rootdir

:: sonarqube
::start %SONARQUBE.HOME%\bin\windows-x86-64\StartSonar.bat
EndLocal
