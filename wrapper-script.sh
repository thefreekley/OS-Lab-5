/etc/init.d/mysql start

cd
git clone -b new_exam_app https://github.com/thefreekley/OS-Lab-5.git
cd OS-Lab-5/
mvn install
mvn clean package
timeout 30s mvn spring-boot:run

export MYSQL_PWD=root
/usr/bin/mysql -u root -e "CREATE DATABASE IF NOT EXISTS db_jdbc_lab;"
/usr/bin/mysql -u root -e "FLUSH PRIVILEGES;"
/usr/bin/mysql -u root db_jdbc_lab < src/main/resources/db_jdbc_lab.sql
mvn spring-boot:run