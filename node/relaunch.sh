# Nodeの再起動
systemctl disable --now isupipe-node.service
systemctl enable --now isupipe-node.service

# nginxのログを消し、再起動する
rm /var/log/nginx/access.log
systemctl restart nginx

# MySQLのスローログを消し、再起動する
rm /var/log/mysql/mysql-slow.log
systemctl restart mysql
