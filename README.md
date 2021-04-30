Users service is written in Java-8 version, Hence we need to install Java.

Install Maven, This will install Java-8 too
# apt update 
# apt install maven -y 
As per the standard process, we always run the applications as a normal user.
Create a user
# useradd -m -s /bin/bash todo
Download the repo
$ cd /home/todo
$ git clone https://github.com/zelar-soft-todoapp/todo.git
$ curl -s -L -o /tmp/users.zip "https://github.com/zelar-soft-todoapp/users/archive/main.zip"
$ unzip /tmp/users.zip
$ mv users-main users
$ cd users
$ mvn clean package 
$ mv target/user-api-0.0.1.jar user.jar 
Copy the service file and start the service.
# mv /home/todoapp/users/systemd.service /etc/systemd/system/users.service
# systemctl daemon-reload
# systemctl start users 
# systemctl enable users
# systemctl status users
