echo -e "\e[33m Installing the Nginx server\e[0m"
dnf install nginx -y &>>/tmp/roboshop.log

echo -e "\e[33m Remove the default hosting content\e[0m"
rm -rf /usr/share/nginx/html/* &>>/tmp/roboshop.log

echo -e "\e[33m Downloading the Frontend content of roboshop\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip &>>/tmp/roboshop.log

echo -e "\e[33m Unzipping the hosting content of Nginx server\e[0m"
cd /usr/share/nginx/html &>>/tmp/roboshop.log
unzip /tmp/frontend.zip &>>/tmp/roboshop.log

echo -e "\e[33m Enabling the Nginx server\e[0m"
systemctl enable nginx &>>/tmp/roboshop.log

echo -e "\e[33m Restarting the Nginx server\e[0m"
systemctl restart nginx &>>/tmp/roboshop.log