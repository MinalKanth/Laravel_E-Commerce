<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
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
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        $faker = \Faker\Factory::create();

        DB::table("products")->insert([
            "title" => $faker->randomElement(["Shirt", "Teady Bear", "Neclace", "Boutique for women", "Apple Laptop", "Samsung Galaxy Nexus"]),
            "description" => $faker->text,
            'image' => fake()->imageUrl($width=400, $height=400),
            "price" => $faker->numberBetween(2500, 5000),
            "quantity" => $faker->numberBetween(1, 20),
            "catagory" => $faker->randomElement(["Anjaan Catagory", "Anjaan Catagory 2 see", "others"]),
            "discount_price" => $faker->numberBetween(500, 2500),
        ]);
    }
}
