<?php

use Illuminate\Http\Request;
use App\Http\Resources\Product as ProductResource;
use App\Product;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/products/{id}', 'ProductController@show');


/*Route::get('/products', function()
{
	$products = Product::find(2);
	return new ProductResource($products);
});
*/