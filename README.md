# MySQL For Android
**An Easy Way For Students To Install And Run A MySQL Server On Their Android Device.**  

| **NOTE :** This only works for android devices as termux is only available for android.|
| --- |

## Instructions
1. Install Termux App ([Click Here](https://play.google.com/store/apps/details?id=com.termux))

2. Open Termux Application

3. Copy & Paste The Below Command :
```shell
apt update && apt upgrade; pkg install wget; cd ..; wget -O mysql.tar.gz "https://github.com/sumit-buddy/mysql-for-termux-android/archive/v1.0.tar.gz"; tar -xzf mysql.tar.gz -C home --strip-components 1 && rm mysql.tar.gz && cd home && rm -r images && rm README.md; chmod u+x installer.sh; ./installer.sh; source ~/../usr/etc/bash.bashrc; rm installer.sh
``` 
4. Now the installation will begin. Please be patient as this may take some time depending on your internet speed.

5. You will be asked to answer
`Do you want to continue? [Y/n]` 
upto three times. Each time type in 'y' and press enter. 

7. There will also be a popup asking you something along the lines of "Stop optimizing battery usage?" similar to the one shown below. Press 'allow' or equivalent :

<img src="images/stop-optimizing-battery-usage.jpg" height="50%" width="50%" alt="Stop optimizing battery usage?"></img>

Do not worry, this app does not consume much battery at all.

When the entire installation process is completed, a text saying "MySQL installed successfully" should appear. Now, the MySQL server has started on your machine.

Enter the command `setpass` and set a password (for the user _root_). This can _only_ be done while the server is running.

4. Enter the command `start-client` to start the MySQL client or close the Termux application. The MySQL server will keep running in the background allowing you to use Python libraries like PyMySQL to connect to your databases through an app like Pydroid([Click Here](https://play.google.com/store/apps/details/Pydroid_3_IDE_for_Python_3?id=ru.iiec.pydroid3)), which is a Python editor and compiler for Android.

## Troubleshooting Errors
1. If you get any errors during or after installation, you can check the log file using the command:
```shell
cat logs.log
```

2. If you get the following error when you enter `setpass` or `start-client` into the terminal:  

```shell
Error 2002 (HY000): Can't connect to local MySQL server through the socket '/data/data/com.termux/files/usr/tmp/mysqld.sock' (111)
```
Type into the terminal the command `start-server` to start the MySQL server.
You should get the output: "MySQL server started". <br>
Now try using `setpass` / `start-client` again and everything should work normally.  <br>

