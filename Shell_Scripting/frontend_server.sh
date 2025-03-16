echo -e "\e[33m Install Nginx server\e[0m"
dnf install nginx -y >/tmp/project.log

echo -e "\e[33m Remove the default content\e[0m"
rm -rf /usr/share/nginx/html/* >/tmp/project.log

echo -e "\e[33m Download the Frontend roboshop content\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip >/tmp/project.log

echo -e "\e[33m Navigate to Nginx path\e[0m"
cd /usr/share/nginx/html
unzip /tmp/frontend.zip >/tmp/project.log

echo -e "\e[33m Enable the Nginx server\e[0m"
systemctl enable nginx >/tmp/project.log

echo -e "\e[33m Restart the Nginx server\e[0m"
systemctl restart nginx >/tmp/project.log