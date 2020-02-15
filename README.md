# graphql_rails
I made this repository for learn GraphQL with Ruby on Rails

## Executed commands

### Create rails project
`bundle exec rails new . -B -d mysql --skip-turbolinks --webpack=vue`

### Create DB

```
CREATE DATABASE graphql_rails_db CHARACTER SET utf8mb4;
CREATE USER graphql_rails_user@localhost IDENTIFIED BY 'graphql_rails_user';
GRANT ALL PRIVILEGES ON graphql_rails_db.* TO graphql_rails_user@localhost;
```

### How to try GraphQL
- Fill post table by seed.

    `bundle exec rails db:seed`

- Run server

    `bundle exec rails s`

- Access to `http://127.0.0.1:3000/graphiql`
- Put below query on left window.
  
    ```
    {
        allPosts {
            id,
            title,
            content
        }
    }
    ```

- push `Command⌘ + Enter`