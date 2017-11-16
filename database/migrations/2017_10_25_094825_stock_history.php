<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class StockHistory extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stock_history', function(Blueprint $table)
        {
            $table->increments('id');

            $table->integer('product_id');
            $table->integer('customer_id');
            $table->integer('invoice_id');
            $table->integer('partner_id');
            $table->string('count')->nullable();
            $table->enum('in_out', ['Մուտք', 'Ելք']);
            $table->text('comments')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
