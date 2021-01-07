#!/usr/bin/env sh

composer install
cp .env.example .env
composer dump
php artisan key:generate
php artisan migrate:fresh --seed
./vendor/bin/phpunit --testdox
