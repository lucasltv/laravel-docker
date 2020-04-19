<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## Laravel 7.x Scaffold with Docker, Nginx, PHP, MariaDB (or MySql), Redis and MongoDB

#### This structure was built with ```composer create-project --prefer-dist laravel/laravel app```

##### PHP Version: 7.2
##### MariaDB Version: latest
##### MySql (disabled by default): latest
##### MongoDB Version (optional): latest
##### Redis Version (optional): latest

<br>
<br>

Start (or scripts/start-dev.sh):
```
docker-compose up -d --build
```

Stop (or scripts/stop-dev.sh):
```
docker-compose down
```

### Run commands into container:
```docker exec -it app php artisan key:generate``` <br>

```docker exec -it app php storage:link``` <br>

```docker exec -it app php artisan migrate --seed``` <br>

### Port bindings and default password - for outside access (host)
This parameters can be edited at <b>docker-compose.yml</b>

<b>WEB Application</b>: 8080 (localhost:8080)<br>
<b>MYSQL</b>: 33061<br>
<b>MONGODB</b>: 27018<br>
<b>MYSQL_DATABASE</b>: app<br>
<b>MYSQL_ROOT_PASSWORD</b>: root<br>
<b>MYSQL_USER</b>: admin<br>
<b>MYSQL_PASSWORD</b>: admin<br>
<b>MONGO_INITDB_ROOT_USERNAME</b>: root<br>
<b>MONGO_INITDB_ROOT_PASSWORD</b>: root<br>
<b>REDIS</b>: 6379<br>

## License

Open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
