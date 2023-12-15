<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Product::factory()->create([
            'name' => 'iPhone 12 Pro Max',
            'slug' => 'iphone-12-pro-max',
            'sku' => 'iphone-12-pro-max',
            'image_url' => 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-pro-max-blue-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021660000',
            'description' => 'iPhone 12 Pro Max. 5G to download huge files on the go and stream HDR video.¹ Larger 6.7-inch Super Retina XDR display.² Ceramic Shield with 4x better drop performance.³ Incredible low-light photography with the best Pro camera system on an iPhone, and 5x optical zoom range. Cinema-grade Dolby Vision video recording, editing, and playback. Night mode portraits and next-level AR experiences with the LiDAR Scanner. Powerful A14 Bionic chip. And new MagSafe accessories for easy attach and faster wireless charging.⁴ For infinitely spectacular possibilities.',
            'price' => 1099.00,
            'quantity' => 10,
            'is_visible' => true,
            'is_featured' => true,
            'published_at' => now(),
        ]);

        Product::factory()->create([
            'name' => 'iPhone 12 Pro',
            'slug' => 'iphone-12-pro',
            'sku' => 'iphone-12-pro',
            'image_url' => 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-pro-graphite-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021659000',
            'description' => 'iPhone 12 Pro. 5G to download huge files on the go and stream HDR video.¹ Beautifully bright 6.1-inch Super Retina XDR display.² Ceramic Shield with 4x better drop performance.³ Incredible low-light photography with a new Pro camera system, and 4x optical zoom range. Cinema-grade Dolby Vision video recording, editing, and playback. Night mode portraits and next-level AR experiences with the LiDAR Scanner. Powerful A14 Bionic chip. And
            new MagSafe accessories for easy attach and faster wireless charging.⁴ For infinitely spectacular possibilities.',
            'price' => 999.00,
            'quantity' => 10,
            'is_visible' => true,
            'is_featured' => true,
            'published_at' => now(),
        ]);

        Product::factory()->create([
            'name' => 'iPhone 12',
            'slug' => 'iphone-12',
            'sku' => 'iphone-12',
            'image_url' => 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-blue-select-2020?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1601620624000',
            'description' => 'iPhone 12. 5G to download movies on the fly and stream high-quality video.¹ Beautifully bright 6.1-inch Super Retina XDR display.² Ceramic Shield with 4x better drop performance.³ Incredible low-light photography with Night mode on all cameras. Cinema-grade Dolby Vision video recording, editing, and playback. Powerful A14 Bionic chip. And new MagSafe accessories for easy attach and faster wireless charging.⁴ Let the fun begin.',
            'price' => 799.00,
            'quantity' => 10,
            'is_visible' => true,
            'is_featured' => true,
            'published_at' => now(),
        ]);

        Product::factory()->create([
            'name' => 'iPhone 12 mini',
            'slug' => 'iphone-12-mini',
            'sku' => 'iphone-12-mini',
            'image_url' => 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-mini-blue-select-2020?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1601620623000',
            'description' => 'iPhone 12 mini. 5G to download movies on the fly and stream high-quality video.¹ Beautifully bright 6.1-inch Super Retina XDR display.² Ceramic Shield with 4x better drop performance.³ Incredible low-light photography with Night mode on all cameras. Cinema-grade Dolby Vision video recording, editing, and playback. Powerful A14 Bionic chip. And new MagSafe accessories for easy attach and faster wireless charging.⁴ It’s big news for mini.',
            'price' => 699.00,
            'quantity' => 10,
            'is_visible' => true,
            'is_featured' => true,
            'published_at' => now(),
        ]);
    }
}
