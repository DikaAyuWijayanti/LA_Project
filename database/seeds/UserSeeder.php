<?php

use Illuminate\Database\Seeder;
use App\User;
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        $data = ['name' => 'ketua','email' => 'ketua@gmail.com','alamat' => 'Takeran, Jl.Manguharjo, Kec.Takeran, Kab.Magetan','password' => bcrypt('ketua1'),'role' => 'ketua'];
        $data = ['name' => 'admin','email' => 'admin@gmail.com','alamat' => 'Ds. Simbatan, Simbatan Wetan, Kec. Nguntoronadi, Kab.Magetan','password' => bcrypt('rahasia'),'role' => 'admin'];
        User::insert($data);
    }
}