<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Admin;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Admin::create([
            'name'     => 'Administrator',
            'email'    => 'admin@localhost.com',
            'role'    => 'admin',
            'password' => bcrypt('password1'),
        ]);

        Admin::create([
            'name'     => 'Pengrajin',
            'email'    => 'pengrajin@localhost.com',
            'role'    => 'pengrajin',
            'password' => bcrypt('password2'),
        ]);

        Admin::create([
            'name'     => 'Ketua',
            'email'    => 'ketua@localhost.com',
            'role'    => 'ketua',
            'password' => bcrypt('password3'),
        ]);
    }
}
