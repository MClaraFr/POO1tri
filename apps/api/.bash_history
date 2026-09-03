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
ls app/Models
ls app/Http/Controllers
ls app/Http/Requests
ls database/migrations
cat routes/api.php
cat app/Models/Product.php
cat app/Models/Customer.php
cat database/migrations/2026_08_13_003801_create_products_table.php
cat database/migrations/2026_08_19_120310_create_customers_table.php
<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
#[Fillable(['name', 'description', 'price', 'stock', 'position', 'enabled'])]
class Product extends Model
{     /** @use HasFactory<\Database\Factories\ProductFactory> */;     use HasFactory; }
php artisan make:controller ProductController --api
php artisan make:controller CustomerController --api
php artisan make:request ProductStoreRequest
php artisan make:request ProductUpdateRequest
php artisan make:request CustomerStoreRequest
php artisan make:request CustomerUpdateRequest
php artisan route:list
php artisan tinker --execute="echo App\Models\Product::count();"
php artisan make:model Order -m
php artisan make:controller OrderController --api
php artisan make:request OrderStoreRequest
php artisan make:request OrderUpdateRequest
php artisan make:factory OrderFactory
php artisan make:seeder OrderSeeder
php artisan migrate
php artisan route:list
php artisan route:list
php artisan tinker --execute="echo App\Models\Customer::first()->id;"
curl -X POST http://localhost:8182/api/orders   -H "Content-Type: application/json"   -d '{"customer_id": 1, "status": "pending", "total": 150.50}'
exit
