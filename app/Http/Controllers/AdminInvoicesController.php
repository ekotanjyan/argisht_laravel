<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminInvoicesController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = true;
			$this->table = "invoices";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Գործարքի Համար","name"=>"id"];
			$this->col[] = ["label"=>"Հաճախորդ","name"=>"customer_id","join"=>"customers,name"];
			$this->col[] = ["label"=>"Ապրանք","name"=>"product_id","join"=>"products,name"];
			$this->col[] = ["label"=>"Քանակ","name"=>"count"];
			$this->col[] = ["label"=>"Գինը","name"=>"product_id","join"=>"products,price"];
			$this->col[] = ["label"=>"Վաճառքի Գինը","name"=>"product_price"];
			$this->col[] = ["label"=>"Ընդհանուր Գինը","name"=>"total_price","callback_php"=>'$row->count * $row->product_price'];
			$this->col[] = ["label"=>"Ընդհանուր Պարտք","name"=>"due"];
			$this->col[] = ["label"=>"Վճարված է ամբողջությամբ   ","name"=>"paid_fully"];
			$this->col[] = ["label"=>"Նշումներ","name"=>"comments"];
			$this->col[] = ["label"=>"Ամսաթիվ","name"=>"created_at"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Հաճախորդ','name'=>'customer_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'customers,name'];
			$this->form[] = ['label'=>'Ապրանք','name'=>'product_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'products,name'];
			$this->form[] = ['label'=>'Պահեստում առկա քանակություն','name'=>'stock_count','type'=>'text','readonly'=>'true','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Ապրանքի գինը','type'=>'text','name'=>'product_price', 'width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Քանակ','name'=>'count','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Ընդհանուր  գին','name'=>'total_price','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10','readonly'=>'true','disabled'=>'true'];
			$this->form[] = ['label'=>'Վճարված է','name'=>'paid_fully','type'=>'text','readonly'=>'true','width'=>'col-sm-10','value'=>'Ոչ'];
			$this->form[] = ['label'=>'Նշումներ','name'=>'comments','type'=>'textarea','validation'=>'string|min:5|max:5000','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Հաճախորդ','name'=>'customer_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'customers,name'];
			//$this->form[] = ['label'=>'Ապրանք','name'=>'product_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'products,name'];
			//$this->form[] = ['label'=>'Քանակ','name'=>'count','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Ընդհանուր  գին','name'=>'total_price','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10','readonly'=>'true','disabled'=>'true'];
			//$this->form[] = ['label'=>'Վճարված է','name'=>'paid_fully','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'Այո; Ոչ'];
			//$this->form[] = ['label'=>'Նշումներ','name'=>'comments','type'=>'textarea','validation'=>'string|min:5|max:5000','width'=>'col-sm-10'];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();



	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array(asset("js/somescript.js"));
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {

	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {

	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {
            $postdata['total_price'] = $postdata['product_price'] * $postdata['count'];
            $newstockcount = $postdata['stock_count'] - $postdata['count'];

            DB::table('stock') ->where('product_id',$postdata['product_id'])->update(['count'=> $newstockcount]);
            unset($postdata['stock_count']);
            //unset($postdata['product_price']);

	    }


	    public function get_product_price($id)
        {
            $users = DB::table('products')->where('id',$id)->get();
            return $users[0]->price;
        }

        public function get_product_details($id)
        {
            $users = DB::table('products')->join('stock','stock.product_id', '=','products.id')->where('products.id',$id)->get();
            return response()->json($users[0]);
        }

        public function get_invoice_details($id)
        {
            $users = DB::table('invoices')->join('customers','invoices.customer_id', '=','customers.id')->where('invoices.id',$id)->get();
            return response()->json($users[0]);
        }


	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here
            $invoice = DB::table('invoices')->where('id',$id)->first();
            DB::table('invoices')
                ->where('id', $id)
                ->update(['due' => $invoice->total_price]);

            DB::table('stock_history')->insert(
                [
                    'product_id' => $invoice->product_id,
                    'customer_id' => $invoice->customer_id,
                    'count' => $invoice->count,
                    //'saled_price'=>$invoice->total_price / $invoice->count,
                    'invoice_id' => $invoice->id,
                    'in_out' => 'Ելք',
                    'comments' => $invoice->comments,
                ]
            );


	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {
	        return $this->hook_before_add($postdata);
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here
            $this->hook_after_add($id);

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }



	    //By the way, you can still create your own method in here... :) 


	}