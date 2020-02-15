# graphql_rails

## Create DB

```
CREATE DATABASE graphql_rails_db CHARACTER SET utf8mb4;
CREATE USER graphql_rails_user@localhost IDENTIFIED BY 'graphql_rails_user';
GRANT ALL PRIVILEGES ON graphql_rails_db.* TO graphql_rails_user@localhost;
```
