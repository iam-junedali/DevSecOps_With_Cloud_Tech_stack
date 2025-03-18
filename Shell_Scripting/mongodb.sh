echo -e "\e[33m Copying the mongodb.repo file\e[0m"
cp mongodb.repo /etc/yum.repos.d/mongo.repo &>>/tmp/roboshop.log

echo -e "\e[33m Installing the Mongodb\e[0m"
dnf install mongodb-org -y &>>/tmp/roboshop.log

echo -e "\e[33m Enabling the Mongodb\e[0m"
systemctl enable mongod &>>/tmp/roboshop.log

echo -e "\e[33m Restarting the Mongodb\e[0m"
systemctl restart mongod &>>/tmp/roboshop.log

