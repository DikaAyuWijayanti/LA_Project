<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(RoleSeeder::class);
        $this->call(UserSeeder::class);
        $this->call(CouriersTableSeeder::class);
        $this->call(ProductsTableSeeder::class);
        $this->call(ProvincesTableSeeder::class);
        $this->call(CitiesTableSeeder::class);
        $this->call(OrderStatusSeeder::class);
        $this->call(RekeningTableSeeder::class);
        $this->call(OngkirSeeder::class);
        $this->call(Alamat_TokoTableSeeder::class);
    }
}
