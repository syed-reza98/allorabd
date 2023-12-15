<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Category;
// Faker\Factory as fake;
use Illuminate\Support\Str;


class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Category::factory()->create([
            'name' => 'Phone',
            'slug' => 'phone',
            'description' => 'A phone is a telecommunications device that permits two or more users to conduct a conversation when they are too far apart to be heard directly.',
        ]);

        Category::factory()->create([
            'name' => 'Tablet',
            'slug' => 'tablet',
            'description' => 'A tablet computer, commonly shortened to tablet, is a mobile device, typically with a mobile operating system and touchscreen display processing circuitry, and a rechargeable battery in a single, thin and flat package.',
        ]);

        Category::factory()->create([
            'name' => 'Laptop',
            'slug' => 'laptop',
            'description' => 'A laptop computer, or simply laptop, is a portable computer which usually weighs 4-8 pounds (2 to 4 kilograms), depending on display size, hardware, and other factors.',
        ]);
    }
}
