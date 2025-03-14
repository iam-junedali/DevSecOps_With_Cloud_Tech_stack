dnf install nginx -y

rm -rf /usr/share/nginx/html/*

curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip

systemctl enable nginx
systemctl restart nginx