<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\{User,Category,Post};
// use Illuminate\Support\Str;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // User::factory(5)->create();
        // User::create([
        //     "name" => "Rama Fajar Fadhillah",
        //     "username" => "ramarff",
        //     "email" => "ramafajar805@gmail.com",
        //     "password" => bcrypt("kjkszpj645"),
        //     "remember_token" => Str::random(10)
        // ]);
        // Post::create([
        //     "title" => "Linux Dasar - 1.Sejarah Linux",
        //     "slug" => "sejarah-linux",
        //     "excerpt" => "Lorem ipsum dolor sit amet consectetur adipisicing elit",
        //     "body" => "<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
        //     Porro a dolor rem error ducimus culpa, eaque cupiditate tempore molestiae dignissimos, 
        //     sed adipisci perferendis minus laudantium, quos illo ratione eum blanditiis nobis quaerat
        //     impedit optio beatae facilis! Facere exercitationem iusto officia ipsam autem deserunt, 
        //     velit a quos veniam nisi vitae ea debitis porro, quisquam repudiandae 
        //     voluptas in cumque tempora consequuntur eveniet eius, dolores beatae! Iusto sit consectetur 
        //     iure ad delectus? Sapiente 
        //     praesentium ad accusantium veniam distinctio sit doloribus saepe autem, velit 
        //     vitae itaque ullam fugit eos harum quisquam vero pariatur 
        //     perspiciatis.</p>",
        //     "category_id" => mt_rand(1,6),
        //     "user_id" => mt_rand(1,6)
        // ]);
        // Post::create([
        //     "title" => "PHP Dasar - 2.Sejarah PHP",
        //     "slug" => "sejarah-php",
        //     "excerpt" => "Lorem ipsum dolor sit amet consectetur adipisicing elit",
        //     "body" => "<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
        //     Porro a dolor rem error ducimus culpa, eaque cupiditate tempore molestiae dignissimos, 
        //     sed adipisci perferendis minus laudantium, quos illo ratione eum blanditiis nobis quaerat
        //     impedit optio beatae facilis! Facere exercitationem iusto officia ipsam autem deserunt, 
        //     velit a quos veniam nisi vitae ea debitis porro, quisquam repudiandae 
        //     voluptas in cumque tempora consequuntur eveniet eius, dolores beatae! Iusto sit consectetur 
        //     iure ad delectus? Sapiente 
        //     praesentium ad accusantium veniam distinctio sit doloribus saepe autem, velit 
        //     vitae itaque ullam fugit eos harum quisquam vero pariatur 
        //     perspiciatis.</p>",
        //     "category_id" => mt_rand(1,6),
        //     "user_id" => mt_rand(1,6)
        // ]);
        // Post::create([
        //     "title" => "Web Security - Mengenal Celah LFI pada Website",
        //     "slug" => "celah-lfi-pada-website",
        //     "excerpt" => "Lorem ipsum dolor sit amet consectetur adipisicing elit",
        //     "body" => "<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
        //     Porro a dolor rem error ducimus culpa, eaque cupiditate tempore molestiae dignissimos, 
        //     sed adipisci perferendis minus laudantium, quos illo ratione eum blanditiis nobis quaerat
        //     impedit optio beatae facilis! Facere exercitationem iusto officia ipsam autem deserunt, 
        //     velit a quos veniam nisi vitae ea debitis porro, quisquam repudiandae 
        //     voluptas in cumque tempora consequuntur eveniet eius, dolores beatae! Iusto sit consectetur 
        //     iure ad delectus? Sapiente 
        //     praesentium ad accusantium veniam distinctio sit doloribus saepe autem, velit 
        //     vitae itaque ullam fugit eos harum quisquam vero pariatur 
        //     perspiciatis.</p>",
        //     "category_id" => mt_rand(1,6),
        //     "user_id" => mt_rand(1,6)
        // ]);
        // Post::create([
        //     "title" => "MySQL Fundamental - Installasi MySQL di Linux",
        //     "slug" => "installasi-mysql-di-linux",
        //     "excerpt" => "Lorem ipsum dolor sit amet consectetur adipisicing elit",
        //     "body" => "<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
        //     Porro a dolor rem error ducimus culpa, eaque cupiditate tempore molestiae dignissimos, 
        //     sed adipisci perferendis minus laudantium, quos illo ratione eum blanditiis nobis quaerat
        //     impedit optio beatae facilis! Facere exercitationem iusto officia ipsam autem deserunt, 
        //     velit a quos veniam nisi vitae ea debitis porro, quisquam repudiandae 
        //     voluptas in cumque tempora consequuntur eveniet eius, dolores beatae! Iusto sit consectetur 
        //     iure ad delectus? Sapiente 
        //     praesentium ad accusantium veniam distinctio sit doloribus saepe autem, velit 
        //     vitae itaque ullam fugit eos harum quisquam vero pariatur 
        //     perspiciatis.</p>",
        //     "category_id" => mt_rand(1,6),
        //     "user_id" => mt_rand(1,6)
        // ]);
        // Post::create([
        //     "title" => "MySQL Fundamental - Type data Mysql",
        //     "slug" => "type-data-mysql",
        //     "excerpt" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a dolor 
        //                   rem error ducimus culpa, eaque cupiditate tempore molestiae dignissimos, 
        //                   sed adipisci perferendis minus laudantium, quos illo ratione eum blanditiis
        //                   nobis quaerat impedit optio beatae facilis! 
        //                   Facere exercitationem iusto officia ipsam autem deserunt,",
        //     "body" => "<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
        //                Porro a dolor rem error ducimus culpa, eaque cupiditate tempore molestiae dignissimos, 
        //                sed adipisci perferendis minus laudantium, quos illo ratione eum blanditiis nobis quaerat
        //                impedit optio beatae facilis! Facere exercitationem iusto officia ipsam autem deserunt, 
        //                velit a quos veniam nisi vitae ea debitis porro, quisquam repudiandae 
        //                voluptas in cumque tempora consequuntur eveniet eius, dolores beatae! 
        //                Iusto sit consectetur 
        //                iure ad delectus? Sapiente 
        //                praesentium ad accusantium veniam distinctio sit doloribus saepe autem, velit 
        //               vitae itaque ullam fugit eos harum quisquam vero pariatur 
        //                perspiciatis.</p>",
        //     "category_id" => mt_rand(1,6),
        //     "user_id" => mt_rand(1,6)
        // ]);
        // Category::create([
        //     "name" => "Operation Sistem",
        //     "slug" => "operation-sistem"
        // ]);
        // Category::create([
        //     "name" => "Web Programming",
        //     "slug" => "web-programming"
        // ]);
        // Category::create([
        //     "name" => "Mobile Programming",
        //     "slug" => "mobile-programming"
        // ]);
        // Category::create([
        //     "name" => "Cyber Security",
        //     "slug" => "cyber-security"
        // ]);
        // Category::create([
        //     "name" => "Database",
        //     "slug" => "database"
        // ]);
        // Category::create([
        //     "name" => "Networking",
        //     "slug" => "networking"
        // ]);
        Post::factory(5)->create();
    }
}
