<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('roles')->insert([
            'name' => 'user', 
      ]);

      DB::table('roles')->insert([
            'name' => 'admin', 
      ]);

      DB::table('roles')->insert([
        'name' => 'pengrajin', 
      ]);

       DB::table('roles')->insert([
       'name' => 'ketua', 
  ]);
    }
}
