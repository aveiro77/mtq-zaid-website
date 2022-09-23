<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        /* ganti pake factory */
        User::create([
            'name' => 'Jumhan Prayitno',
            'username' => 'jumhan',
            'email' => 'jumhan@gmail.com',
            'password' => bcrypt('jumhan')
        ]);

        /*
        User::create([
            'name' => 'aldo',
            'email' => 'aldo@gmail.com',
            'password' => bcrypt('aldo')
        ]);
        */

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming',
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design',
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal',
        ]);

        Post::factory(20)->create();

        /* ganti ke factory
        Post::create([
            'title' => 'Judul pertama',
            'slug' => 'judul-pertama',
            'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Labore odit hic veniam recusandae ex quam fuga ipsa laboriosam voluptates illu',
            'body' => '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Labore odit hic veniam recusandae ex quam fuga ipsa laboriosam voluptates illum,</p><p> voluptatum voluptate ea accusantium perspiciatis, explicabo rem eius tenetur necessitatibus et praesentium dignissimos magni? Nulla dolor minima distinctio quisquam temporibus voluptatibus quibusdam unde deleniti dolorem repudiandae porro quas hic delectus, saepe officia odio corporis maiores magnam nobis assumenda perferendis! Itaque, dolorem non quidem quam voluptatem at consequatur enim sit molestias consequuntur sint deserunt facere doloribus omnis? Dolore magnam vero tenetur veritatis, doloribus similique error corrupti ex dolor id assumenda, nobis repudiandae ullam laboriosam iure consectetur et quod incidunt cum. Autem earum, repudiandae esse maiores accusamus architecto nulla aliquam blanditiis eos praesentium, vero sint quis et, incidunt provident? Accusamus repudiandae nemo minima delectus earum doloribus, necessitatibus minus voluptatum nostrum. Dolores dignissimos vitae nulla, atque esse architecto, labore consequuntur quo libero sed accusantium deleniti molestias illo odit voluptates ullam. Officia, dolore fugiat.</p>',
            'category_id' => 1,
            'user_id' => 1,
        ]);
        Post::create([
            'title' => 'Judul kedua',
            'slug' => 'judul-kedua',
            'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Labore odit hic veniam recusandae ex quam fuga ipsa laboriosam voluptates illu',
            'body' => '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Labore odit hic veniam recusandae ex quam fuga ipsa laboriosam voluptates illum,</p><p> voluptatum voluptate ea accusantium perspiciatis, explicabo rem eius tenetur necessitatibus et praesentium dignissimos magni? Nulla dolor minima distinctio quisquam temporibus voluptatibus quibusdam unde deleniti dolorem repudiandae porro quas hic delectus, saepe officia odio corporis maiores magnam nobis assumenda perferendis! Itaque, dolorem non quidem quam voluptatem at consequatur enim sit molestias consequuntur sint deserunt facere doloribus omnis? Dolore magnam vero tenetur veritatis, doloribus similique error corrupti ex dolor id assumenda, nobis repudiandae ullam laboriosam iure consectetur et quod incidunt cum. Autem earum, repudiandae esse maiores accusamus architecto nulla aliquam blanditiis eos praesentium, vero sint quis et, incidunt provident? Accusamus repudiandae nemo minima delectus earum doloribus, necessitatibus minus voluptatum nostrum. Dolores dignissimos vitae nulla, atque esse architecto, labore consequuntur quo libero sed accusantium deleniti molestias illo odit voluptates ullam. Officia, dolore fugiat.</p>',
            'category_id' => 1,
            'user_id' => 1,
        ]);
        Post::create([
            'title' => 'Judul ketiga',
            'slug' => 'judul-ketiga',
            'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Labore odit hic veniam recusandae ex quam fuga ipsa laboriosam voluptates illu',
            'body' => '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Labore odit hic veniam recusandae ex quam fuga ipsa laboriosam voluptates illum,</p><p> voluptatum voluptate ea accusantium perspiciatis, explicabo rem eius tenetur necessitatibus et praesentium dignissimos magni? Nulla dolor minima distinctio quisquam temporibus voluptatibus quibusdam unde deleniti dolorem repudiandae porro quas hic delectus, saepe officia odio corporis maiores magnam nobis assumenda perferendis! Itaque, dolorem non quidem quam voluptatem at consequatur enim sit molestias consequuntur sint deserunt facere doloribus omnis? Dolore magnam vero tenetur veritatis, doloribus similique error corrupti ex dolor id assumenda, nobis repudiandae ullam laboriosam iure consectetur et quod incidunt cum. Autem earum, repudiandae esse maiores accusamus architecto nulla aliquam blanditiis eos praesentium, vero sint quis et, incidunt provident? Accusamus repudiandae nemo minima delectus earum doloribus, necessitatibus minus voluptatum nostrum. Dolores dignissimos vitae nulla, atque esse architecto, labore consequuntur quo libero sed accusantium deleniti molestias illo odit voluptates ullam. Officia, dolore fugiat.</p>',
            'category_id' => 2,
            'user_id' => 2,
        ]);
        Post::create([
            'title' => 'Judul keempat',
            'slug' => 'judul-keempat',
            'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Labore odit hic veniam recusandae ex quam fuga ipsa laboriosam voluptates illu',
            'body' => '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Labore odit hic veniam recusandae ex quam fuga ipsa laboriosam voluptates illum,</p><p> voluptatum voluptate ea accusantium perspiciatis, explicabo rem eius tenetur necessitatibus et praesentium dignissimos magni? Nulla dolor minima distinctio quisquam temporibus voluptatibus quibusdam unde deleniti dolorem repudiandae porro quas hic delectus, saepe officia odio corporis maiores magnam nobis assumenda perferendis! Itaque, dolorem non quidem quam voluptatem at consequatur enim sit molestias consequuntur sint deserunt facere doloribus omnis? Dolore magnam vero tenetur veritatis, doloribus similique error corrupti ex dolor id assumenda, nobis repudiandae ullam laboriosam iure consectetur et quod incidunt cum. Autem earum, repudiandae esse maiores accusamus architecto nulla aliquam blanditiis eos praesentium, vero sint quis et, incidunt provident? Accusamus repudiandae nemo minima delectus earum doloribus, necessitatibus minus voluptatum nostrum. Dolores dignissimos vitae nulla, atque esse architecto, labore consequuntur quo libero sed accusantium deleniti molestias illo odit voluptates ullam. Officia, dolore fugiat.</p>',
            'category_id' => 2,
            'user_id' => 2,
        ]);
        */
    }
}
