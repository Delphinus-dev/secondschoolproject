# Simple MVC website
## Description
2 other students and I had to use a simple PHP MVC structure with some cool vendors/libraries such as Twig and Grumphp to create a website. We had been learning PHP, MVC and Twig for a few weeks. The assignment was to create a website for a non profit organisation : login space for admin and members, blog, etc. We worked together using the SCRUM agile process framework.

## Steps
1. Clone the repo from Github.
2. Run `composer install`.
3. Create *config/db.php* from *config/db.php.dist* file and add your DB parameters. Don't delete the *.dist* file, it must be kept.
```php
define('APP_DB_HOST', 'your_db_host');
define('APP_DB_NAME', 'your_db_name');
define('APP_DB_USER', 'your_db_user_wich_is_not_root');
define('APP_DB_PWD', 'your_db_password');
```
4. Import `simple-mvc.sql` in your SQL server,
5. Run the internal PHP webserver with `php -S localhost:8000 -t public/`. The option `-t` with `public` as parameter means your localhost will target the `/public` folder.
6. Go to `localhost:8000` with your favorite browser.