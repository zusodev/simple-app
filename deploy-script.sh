#!/usr/bin/env sh

composer install --no-dev
cp .env.example .env
composer dump
php artisan key:generate
php artisan migrate:fresh --seed
