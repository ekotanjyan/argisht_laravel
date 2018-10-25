<?php

namespace App\Http\Controllers;

use crocodicstudio\crudbooster\helpers\CRUDBooster;
use Illuminate\Http\Request;
use Session;
use DB;

class AddInvoiceController extends Controller
{
    public function invoice (){

        $products = DB::table('products')->select('id','name')->get();
        $customers = DB::table('customers')->select('id','name')->get();

        return view("invoice", ["customers"=>$customers,'products'=>$products]);

    }

    public function getProduct (Request $request){


        $products = DB::table('products')->select('price', "currency")->where('id', '=', $request['id'])->get();
        $dollar = DB::table('dollar')->select('price')->where('id', '=', $products['0']->currency)->get();
        $stock = DB::table('stock')->select('count') ->where('product_id', '=', $request['id'])->get();
        if (!empty($stock)) {
            $array = [$products['0']->price,$stock[0]->count, $products['0']->currency,$dollar['0']->price ];

            return $array;
        }

        $array = [$products['0']->price,0];

        return $array;

    }


    public function addInvoice (Request $request){

        $user_id = CRUDBooster::myId();
        $product= json_encode($request->products);
        $products= $request->products;
        $client = $request->user;
        $comment = $request->comments;
        $total_sale = $request->total_sale;
        $loop = $request->loop;
        $due = $request->amount;
        $total_price = $request->did_price;

        $invoice_id = DB::table('invoices')->insertGetId(
            [
                'customer_id' => $client,
                'total_price' => $due,
                'paid_fully' => 'Ոչ',
                'comments' => $comment,
                'due' => $due,
                'user_id' => $user_id,
                'product_list' => $product,
                'total_sale' => $total_sale,
                'did_price' => $total_price,
                'created_at'=>date("Y-m-d H:i:s")
            ]
        );

        foreach ($products as $prod) {
            DB::table('stock_history')->insert(
                [
                    'customer_id' => $client,
                    'product_id' => $prod['product_id'],
                    'invoice_id' => $invoice_id,
                    'comments' => $comment,
                    'created_at'=>date("Y-m-d H:i:s"),
                    'in_out' => 'Ելք',
                    'count' => $prod['count'],
                    'currency' => $prod['currency'],
                    'price' => $prod['total'],
                    'original_price' => $prod['original'],
                    'sale' => $prod['sale'],
                ]
            );
        }

        foreach ($products as $prod) {
            $stock = DB::table('stock')->select('count') ->where('product_id', '=', $prod['product_id'])->get();
            $count = $stock['0']->count - $prod['count'];

            DB::table('stock') ->where('product_id', '=', $prod['product_id'])->update(['count'=> $count]);
        }

        return 'Done';

    }






}
