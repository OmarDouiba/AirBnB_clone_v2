sudo systemctl stop mysql
sudo mysqld_safe --skip-grant-tables &
mysql -uroot

# Inside the MySQL shell
use mysql;
update user set authentication_string=password('new_password') where user='root';
flush privileges;
quit;

sudo systemctl restart mysql