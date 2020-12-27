<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;

class CategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = [
            [
                'id'        => 1,
                'name'      => 'Umum',
                'parent_id' => null,
            ],
            [
                'id'        => 2,
                'name'      => 'Handphone dan Aksesoris',
                'parent_id' => null,
            ],
            [
                'id'        => 3,
                'name'      => 'Baju dan Aksesoris',
                'parent_id' => null,
            ],
            [
                'id'        => 4,
                'name'      => 'Makanan dan Minuman',
                'parent_id' => null,
            ],
            [
                'id'        => 5,
                'name'      => 'Motor',
                'parent_id' => null,
            ],
            [
                'id'        => 6,
                'name'      => 'Aksesoris',
                'parent_id' => 2,
            ],
            [
                'id'        => 7,
                'name'      => 'Casing',
                'parent_id' => 2,
            ],
            [
                'id'        => 8,
                'name'      => 'Samsung',
                'parent_id' => 2,
            ],
            [
                'id'        => 9,
                'name'      => 'Kering',
                'parent_id' => 4,
            ],
            [
                'id'        => 10,
                'name'      => 'Basah',
                'parent_id' => 5,
            ],
            [
                'id'        => 11,
                'name'      => 'Honda',
                'parent_id' => 5,
            ],
            [
                'id'        => 12,
                'name'      => 'Yamaha',
                'parent_id' => 5,
            ],
            [
                'id'        => 13,
                'name'      => 'Suzuki',
                'parent_id' => 5,
            ],
            [
                'id'        => 14,
                'name'      => 'Fashion Pria',
                'parent_id' => 3,
            ],
            [
                'id'        => 15,
                'name'      => 'Fashion Wanita',
                'parent_id' => 3,
            ],
        ];

        Category::insert($categories);
    }
}
