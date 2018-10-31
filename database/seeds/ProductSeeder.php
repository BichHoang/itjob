<?php

use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
        	['id'=>"2",'name'=>"sdasdasd",'price'=>"20000"],
        	['id'=>"3",'name'=>"ddddd",'price'=>"30000"],
        ]);
    }
}
