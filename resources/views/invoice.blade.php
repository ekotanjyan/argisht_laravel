<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Add Invoice</title>

    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap-select.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/boot-select.min.css') }}"/>
    <!-- Styles -->
    <style>
        html, body {
            height: 100%;
            width: 100%;
            margin: 0;
            padding: 0;
        }

        .header {
            width: 100%;
            height: 100px;
            background-color: #dd4b39;
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        .header > p {
            color: #FFF;
            font-size: 35px;
            flex: 7;
            font-family: cursive;
        }

        .client {
            text-align: center;
            align-items: center;
            justify-content: center;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .block {
            display: flex;
            justify-content: space-around;
            align-items: center;
            margin-top: 20px;
            align-items: baseline;
        }

        @media only screen and (max-width: 700px) {
            .block {
                display: block;
            }
        }

        .divInput {
            text-align: center;
        }

        .mainList {
            display: none;
        }

        .xstyle {
            color: red;
            font-weight: 900;
            font-size: 25px;
            padding-top: 17px;
            cursor: pointer;
            align-self: center;
            padding-left: 10px;
            padding-right: 5px;
        }

        .totalStyle {
            color: #0049b9;
            font-weight: 700;
            font-size: 20px;
            margin-top: 20px;
            display: flex;
            justify-content: flex-end;
            margin-right: 30px;
        }

        @media print {
            body {
                font-size: 12px;
            }

            .hid {
                visibility: hidden;
            }

            .divInput {
                padding: 0;
            }

            .area {
                margin-top: -120px;
                height: 80px;
            }

            .block > select {
                width: 200px;
            }
        }

    </style>
</head>
<body>

<div class="header hid">
    <p>Գործարք</p>
</div>
<div class="client">
    <div style="font-size: 20px;font-weight: bold;margin-bottom: 5px">Հաճախորդ</div>
    <select onchange="userSelect()" name='userSelector' class="selectpicker div" data-live-search="true">
        <option value="">None</option>
        @foreach($customers as $customer)
            <option value="{{$customer->id}}">{{$customer->name}}</option>
        @endforeach
    </select>
</div>
<div class="alert alert-info text-center" id="datetime">Սերարփ ՍՊԸ, ք։ Երեւան Շիրակի 92              <br> <?php echo date('d/m/Y h:i');?></div>

<div id="mainList" class="mainList blocks0"
     style="align-items: center;justify-content: center;text-align: center;padding-bottom: 50px;">

    <form id="addproductform">
        <input id="user_id" type="text" name="user_id" style="visibility: hidden;position: absolute;">

        <div id="addd">
            <div style="border-bottom: 2px solid #141414;padding-bottom: 21px;">

                <div class="block hid">
                    <div>
                        <label for="selector0">Ընտրել ապրանքը</label><br/>
                        <select onchange="myFunction(0)" name='selector0' id="select0"
                                style="width: 272px;margin: 0 auto;" data-live-search="true"
                                class="selectpicker form-control" required>
                            <option value="">None</option>
                            @foreach($products as $product)
                                <option value="{{$product->id}}">{{$product->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="hid">
                        <label for="stock0">Առկա է</label><br/>
                        <input type="number" name="stock0" placeholder="0" class="form-control divInput" id="stock0"
                               disabled>
                    </div>


                    <div class="hid">
                        <label for="currency0">Արժույթ</label><br/>
                        <input type="text" name="currency0" placeholder="0" class="form-control divInput" id="currency0"
                               disabled>
                    </div>


                    <div class="hid">
                        <label for="price0">Ապրանքի գինը</label><br/>
                        <input type="number" name="price0" placeholder="0" class="form-control divInput" id="price0"
                               disabled>
                    </div>

                    <div>
                        <label for="changed0">Գինը (դրամ)</label><br/>
                        <input onchange="changePrice(0)" type="number" name="changed0" value="0"
                               class="form-control divInput" id="changed0" step="0.01">
                    </div>
                    <div class="hid">
                        <label for="sale0">Զեղչ</label><br/>
                        <input type="text" name="sale0" value="0" class="form-control divInput" id="sale0" disabled>
                    </div>
                    <div>
                        <label for="countorder0">Քանակ</label><br/>
                        <input onchange="changeCount(0)" type="number" name="countorder0" class="form-control divInput"
                               min="0" step="0.01" id="countorder0" required>
                    </div>
                    <div>
                        <label for="total0">Ընդհանուր գին (դրամ)</label><br/>
                        <input type="number" name="total0" class="form-control divInput" id="total0" disabled>
                    </div>
                    <input id="product_id0" type="text" name="product_id0" value="0"
                           style="visibility: hidden;position: absolute;">
                </div>
                <button style="margin: 15px; align-items: center" id="add" class="btn btn-warning add hid">Ավելացնել
                    ապրանքը
                </button>


                <div class="container">
                    <table style="margin:0px 50px" border="1" class="productstable table table-bordered table-striped">
                        <thead>
                        <th>Ապրանքը</th>
                        <th>Գինը</th>
                        <th>Քանակ</th>
                        <th>Ընդհանուր գին</th>
                        <th></th>
                        </thead>
                        <tbody id="productslist">

                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="3"></td>
                            <td>
                                <div>Ընդհանուր <span id="totalamount">0</span> դրամ</div>
                            </td>
                            <td></td>
                        </tr>
                        </tfoot>

                    </table>

                </div>

            </div>
        </div>

        <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">

        <input name="submitbtn" onclick="sendData()" id="send" type="button" class="btn btn-primary dis hid"
               style="margin-top: 15px;width: 200px;" value="Հաստատել">
    </form>

    <div style="    justify-content: space-around;display: flex;">
        <textarea id="area" class="area hid" name="area" rows="5" cols="30" placeholder="Նշումներ"></textarea>
        <button onclick="window.print()" class="btn btn-danger add hid" style="height: 38px;width: 100px;">Տպել</button>
    </div>
</div>


</body>

<script>
    $.validator.setDefaults({
        debug: true,
        success: "valid"
    });
    var check = false;
    var num = 1;
    var finals = 0;
    var users;
    var totalSale = 0;
    var dollar = 0;
    var amd = 1;
    var data = {};
    var productsObject = [];
    var totalamount = 0;

    function myFunction(x) {
        $('#stock' + x).val('');
        $('#price' + x).val('');
        $('#product_id' + x).val('');
        $("#countorder" + x).val('');
        $('#changed' + x).val('');
        $('#total' + x).val('');
        $('#sale' + x).val(0);
        var id = $('select[name=selector' + x + ']').val();
        if (id !== '') {
            $.get("/index.php/getProduct?id=" + id, function (data) {
                var product = data;
                var stock = 0;
                if (product['1'] !== null && product['1'] !== 0) {
                    stock = product['1'];
                }
                if (product[2] == 1) {
                    dollar = product[3];
                }
                $('#stock' + x).val(stock);
                $('#currency' + x).val(product[2] == 1 ? "USD" : "AMD");
                $('#price' + x).val(product['0']);
                $('#product_id' + x).val(id);
                $("#countorder" + x).attr({"max": stock});
                $('#changed' + x).val(product[2] == 1 ? product['0'] * dollar : product['0']);
            });
        } else {
            $('#stock' + x).val(0);
            $('#price' + x).val(0);
            $('#currency' + x).val(0);
            $('#product_id' + x).val(0);
            $("#countorder" + x).val(0);
            $('#changed' + x).val(0);
            $('#total' + x).val(0);
        }
    }

    function userSelect() {
        var checking = $('select[name=userSelector]').val();
        if (checking !== '') {
            check = true;
            $('#mainList').removeClass("mainList");
            $('#user_id').val(checking);
            users = checking;
        } else {
            check = false;
            $('#mainList').addClass("mainList");
        }
    }

    function changeCount(a) {
        var dol;
        if ($('#currency' + a).val() === 'USD') {
            dol = dollar;
        } else {
            dol = amd;
        }
        var i;

        var price = $('#changed' + a).val();
        var sum = $('#countorder' + a).val();

        var total = price * sum;

        $('#total' + a).val(total);
        // finals = 0;
        // for (i = 0; i < num; i++) {
        //     finals+=+$('#total'+i).val();
        // }
        // $('.totalStyle').text('Ընդհանուր '+finals+' դրամ');
    }

    function changePrice(x) {
        var money = $('#price' + x).val();

        var changed = $('#changed' + x).val();
        if ($('#currency' + a).val() === 'USD') {
            changed = changed / dollar;
        }
        var tot = (money - changed) / (money / 100);
        var prc = Math.round(tot * 10) / 10;
        $('#sale' + x).val(prc + '%');
        changeCount(x);
    }

    function sendData() {

        var didPrice = 0;


        data.user = users;
        data.products = [];
        data.comments = $('#area').val();
        var totalAmountAll = 0;

        console.log(Object.values(productsObject));
        $.each(Object.values(productsObject), function (index, product) {


            var doll = product.currency == 1 ? dollar : amd;
            didPrice += +(product.count * parseFloat(doll) * parseFloat(product.price));
            totalAmountAll += parseFloat(product.total);
            data.products.push(product);
        })

        data.amount = totalAmountAll;

        totalSale = (didPrice - totalAmountAll) / (didPrice / 100);
        data.total_sale = Math.round(totalSale * 10) / 10;
        data.loop = productsObject.length;
        data.did_price = didPrice;
        console.log(data);
        $.ajax({
            type: "POST",
            url: '/index.php/saveInvoice',
            headers: {
                'X-CSRF-TOKEN': $('#token').val()
            },
            data: data,
            success: function (data) {
                if (data === 'Done') {
                    var url = "/index.php/admin/invoices";
                    $(location).attr("href", url);
                }
            }
        });


    }

    $('#add').click(function () {

        if ($('#addproductform').valid()) {
            var productObj = {};
            productObj.product_id = $('#select0').val();
            productObj.product_name = $('#select0 option:selected').text();
            productObj.count = $('#countorder0').val();
            productObj.price = $('#price0').val();
            productObj.sale_price = $('#changed0').val();
            productObj.sale = $('#sale0').val();
            productObj.total = $('#total0').val();
            productObj.original = $('#changed0').val() * $('#countorder0').val();
            if ($('#currency0').val() === "USD") {
                productObj.currency = 1;
            } else {
                productObj.currency = 2;
            }

            var htmlstring = '<tr>' +
                '<td>' + productObj.product_name + '</td>' +
                '<td>' + productObj.sale_price + '</td>' +
                '<td>' + productObj.count + '</td>' +
                '<td>' + productObj.total + '</td>' +
                '<td><div class="btn btn-danger deleteproductfromlist hid" data-productid="' + productObj.product_id + '">Ջնջել</div></td>' +
                '</tr>';
            $('#productslist').append(htmlstring);
            $("#select0").val('default');
            $("#select0").selectpicker("refresh");

            $('#countorder0').val("");
            $('#price0').val("");
            $('#changed0').val("");
            $('#sale0').val("");
            $('#total0').val("");
            $('#changed0').val("");
            $('#currency0').val("");

            productsObject[productObj.product_id] = productObj;
            totalamount = parseFloat(totalamount) + parseFloat(productObj.total);
            $('#totalamount').text(totalamount);


            num++;

        }


    });
    $(document).on("click", '.deleteproductfromlist', function (e) {
        e.preventDefault();
        $(this).parent().parent().remove();
        var price = productsObject[$(this).data('productid')].total;
        totalamount = totalamount - parseFloat(price);
        $('#totalamount').text(totalamount);
        delete productsObject[$(this).data('productid')];


    })


</script>

</html>
