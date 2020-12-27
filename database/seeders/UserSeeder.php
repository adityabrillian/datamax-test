<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [
            [
                'id'    => 1,
                'uid'    => 'USEM000000001',
                'email'    => 'John Stone',
            ],
            [
                'id'    => 2,
                'uid'    => 'USEM000000002',
                'email'    => 'Ponnappa Priya',
            ],
            [
                'id'    => 3,
                'uid'    => 'USEM000000003',
                'email'    => 'Mia Wong',
            ],
            [
                'id'    => 4,
                'uid'    => 'USEM000000004',
                'email'    => 'Peter Stanbridge',
            ],
            [
                'id'    => 5,
                'uid'    => 'USEM000000005',
                'email'    => 'Natalie Lee-Walsh',
            ],
            [
                'id'    => 6,
                'uid'    => 'USEM000000006',
                'email'    => 'Ang Li',
            ],
            [
                'id'    => 7,
                'uid'    => 'USEM000000007',
                'email'    => 'Nguta Ithya',
            ],
            [
                'id'    => 8,
                'uid'    => 'USEM000000008',
                'email'    => 'Tamzyn French',
            ],
            [
                'id'    => 9,
                'uid'    => 'USEM000000009',
                'email'    => 'Salome Simoes',
            ],
            [
                'id'    => 10,
                'uid'    => 'USEM0000000010',
                'email'    => 'Trevor Virtue',
            ],
            [
                'id'    => 11,
                'uid'    => 'USEM0000000011',
                'email'    => 'Tarryn Campbell-Gillies',
            ],
            [
                'id'    => 12,
                'uid'    => 'USEM0000000012',
                'email'    => 'Eugenia Anders',
            ],
            [
                'id'    => 13,
                'uid'    => 'USEM0000000013',
                'email'    => 'Andrew Kazantzis',
            ],
            [
                'id'    => 14,
                'uid'    => 'USEM0000000014',
                'email'    => 'Verona Blair',
            ],
            [
                'id'    => 15,
                'uid'    => 'USEM0000000015',
                'email'    => 'Jane Meldrum',
            ],
        ];

        User::insert($users);
    }
}
