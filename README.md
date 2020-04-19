<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## Laravel 7.x Scaffold with Docker, MariaDB, Redis and MongoDB

#### Generate most recently (7.x) Laravel project with ```composer create-project --prefer-dist laravel/laravel app```

##### Laravel Version: 7.x ([Bitnami Laravel Container](https://github.com/bitnami/bitnami-docker-laravel))
##### PHP Version: 7.3 ([Bitnami Laravel Container](https://github.com/bitnami/bitnami-docker-laravel))
##### MariaDB Version: latest
##### MongoDB Version (optional): latest
##### Redis Version (optional): latest

<br>
<br>

Start
```
docker-compose up
```

Start Background + rebuild
```
docker-compose up -d --build
```

Stop (or scripts/stop-dev.sh):
```
docker-compose down
```

### Run commands into container:
```docker exec app php artisan key:generate``` <br>

```docker exec app php storage:link``` <br>

```docker exec app php artisan migrate --seed``` <br>

### Port bindings and default parameters - to access from outside of container (host)
All parameters can be edited at <b>docker-compose.yml</b>

<b>WEB Application</b>: 3000 (localhost:3000)<br>
<b>MYSQL</b>: 33061<br>
<b>MONGODB</b>: 27018<br>
<b>MARIADB DATABASE</b>: app<br>
<b>MARIADB ROOT_PASSWORD</b>: root<br>
<b>MARIADB USER</b>: admin<br>
<b>MARIADB PASSWORD</b>: admin<br>
<b>MONGO ROOT USERNAME</b>: root<br>
<b>MONGO ROOT PASSWORD</b>: root<br>
<b>REDIS PORT</b>: 6379<br>

## License

Open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
