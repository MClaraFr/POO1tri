clear
./vendor/bin/pest
clear
exit
composer install
cp .env.example .env
php artisan key:generate
php artisan migrate
exit
php artisan make:request CategoryStoreRequest
app/Http/Requests/CategoryStoreRequest.php
cat app/Http/Requests/CategoryStoreRequest.php
git status
exit
