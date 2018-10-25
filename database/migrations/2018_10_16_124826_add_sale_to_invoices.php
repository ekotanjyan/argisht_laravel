<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddSaleToInvoices extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('invoices', function($table) {
            $table->text('product_list');
            $table->text('user_id');
            $table->dropColumn('product_id');
            $table->dropColumn('product_price');
            $table->dropColumn('count');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('invoices', function($table) {
            $table->dropColumn('product_list');
            $table->dropColumn('user_id');
            $table->integer('product_id');
            $table->integer('product_price');
            $table->integer('count');
        });
    }
}
