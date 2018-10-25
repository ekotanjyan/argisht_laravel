<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddPriceCurrecnyStockHistory extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('stock_history', function($table) {
            $table->string('currency')->nullable();
            $table->string('price')->nullable();
            $table->string('original_price')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('stock_history', function($table) {
            $table->dropColumn('original_price');
            $table->dropColumn('price');
            $table->dropColumn('currency');
        });
    }
}
