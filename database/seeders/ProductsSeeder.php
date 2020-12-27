<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Seeder;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $products = [
            [
                'id'        => 1,
                'user_id'   => 1,
                'name'      => 'Bakso aci telur puyuh',
                'harga'     => 95000
            ],
            [
                'id'        => 2,
                'user_id'   => 2,
                'name'      => 'Es Teler',
                'harga'     => 34000
            ],
            [
                'id'        => 3,
                'user_id'   => 3,
                'name'      => 'Rice bowl ayam suwir scrambl',
                'harga'     => 12000
            ],
            [
                'id'        => 4,
                'user_id'   => 4,
                'name'      => 'Puding Strawberry',
                'harga'     => 19000
            ],
            [
                'id'        => 5,
                'user_id'   => 5,
                'name'      => 'roti korea',
                'harga'     => 50000
            ],
            [
                'id'        => 6,
                'user_id'   => 6,
                'name'      => 'RED Jelly',
                'harga'     => 13000
            ],
            [
                'id'        => 7,
                'user_id'   => 7,
                'name'      => 'Biji Salak',
                'harga'     => 35000
            ],
            [
                'id'        => 8,
                'user_id'   => 8,
                'name'      => 'Huawei',
                'harga'     => 23000
            ],
            [
                'id'        => 9,
                'user_id'   => 9,
                'name'      => 'soto',
                'harga'     => 15000
            ],
            [
                'id'        => 10,
                'user_id'   => 10,
                'name'      => 'Ciki',
                'harga'     => 25000
            ],
            [
                'id'        => 11,
                'user_id'   => 11,
                'name'      => 'Donken frozen',
                'harga'     => 24000
            ],
            [
                'id'        => 12,
                'user_id'   => 12,
                'name'      => 'Bebek goreng',
                'harga'     => 35000
            ],
            [
                'id'        => 13,
                'user_id'   => 13,
                'name'      => 'Pudding Strawberry',
                'harga'     => 55000
            ],
            [
                'id'        => 14,
                'user_id'   => 14,
                'name'      => 'Iphone 7',
                'harga'     => 60000
            ],
            [
                'id'        => 15,
                'user_id'   => 15,
                'name'      => 'Seprei Home Made Anti Luntur',
                'harga'     => 85000
            ],
        ];

        Product::insert($products);
    }
}
