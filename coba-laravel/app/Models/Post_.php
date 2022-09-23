<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            'title' => 'judul Pos Pertama',
            'slug' => 'judul-post-pertama',
            'author' => 'Jumhan Prayitno',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam repudiandae rerum error. Dignissimos, deserunt neque? Autem at veritatis maiores labore ex deserunt assumenda error facere odit tempore optio enim, doloremque dolore porro maxime illo fugit eius in eveniet non culpa ratione! Soluta alias obcaecati modi tempora non, sed similique eaque dignissimos perferendis. Ducimus repellendus quidem repudiandae magni hic, laudantium dolorum! Excepturi eaque, rem aliquam error dolor praesentium saepe exercitationem at nulla quam, iure voluptates id placeat labore. Labore, cum itaque!'
        ],
        [
            'title' => 'judul Pos Kedua',
            'slug' => 'judul-post-kedua',
            'author' => 'Jumhan',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam repudiandae rerum error. Dignissimos, deserunt neque? Autem at veritatis maiores labore ex deserunt assumenda error facere odit tempore optio enim, doloremque dolore porro maxime illo fugit eius in eveniet non culpa ratione! Soluta alias obcaecati modi tempora non, sed similique eaque dignissimos perferendis. Ducimus repellendus quidem repudiandae magni hic, laudantium dolorum! Excepturi eaque, rem aliquam error dolor praesentium saepe exercitationem at nulla quam, iure voluptates id placeat labore. Labore, cum itaque!'
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
