rm -rf name-of-your-file.tar.gz && mysqldump -u user -p'password' database_name > database_name.sql && tar -czf name-of-your-file.tar.gz database_name.sql && rm -rf database_name.sql;
echo "Database backup done.";
