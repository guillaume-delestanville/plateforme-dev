# plateforme-dev
Base for a self-contained environment for web development

I regularly need to switch from one development environment to another. 
That's what gave me the idea for this project.

Moreover, the entire tree structure is completely independent of the machine on which it is running. 
That's why you can use it for demos or store it on usb key.

# How to install
You have to copy all the tree on a folder, either by zip file or by cloning the repository.

Then you have to adapt the file etc/env/default.bat so that it corresponds to your needs

After you can click on do-dev.bat to open a console. Personnaly I've added to Microsoft Console a tab with the command :

```bat
C:\Windows\System32\cmd.exe /k D:\plateforme-dev\bootstrap.bat
```
You have to download the portable versions of the different external programs.

## organization of external programs
You will find how I organize my programs to support different versions:

- vendor
  - apache
  - bin
  - git
      - Portable-2.28.0
      - Portable-2.35.1
  - mysql
      - mysql-5.1.73-winx64
      - mysql-8.0.20-winx64
  - php
  - sqlite3
  - and so on...
      
