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
            padding: 0 ;
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

        .header  > p {
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
                margin-top:-120px;
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

<div id="mainList" class="mainList blocks0" style="align-items: center;justify-content: center;text-align: center;padding-bottom: 50px;">
    <form >
        <input id="user_id" type="text" style="visibility: hidden;position: absolute;">
        <div id="addd">
            <div style="border-bottom: 2px solid #141414;padding-bottom: 21px;">

                <div class="block">
                    <div>
                        <label for="selector0">Ընտրել ապրանքը</label><br/>
                        <select onchange="myFunction(0)" name='selector0' id="select0" style="width: 272px;margin: 0 auto;" class="form-control" required>
                            <option value="">None</option>
                            @foreach($products as $product)
                                <option value="{{$product->id}}">{{$product->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div>
                        <label for="stock0">Առկա է</label><br/>
                        <input type="number" name="stock0" placeholder="0" class="form-control divInput" id="stock0"  disabled >
                    </div>


                    <div>
                        <label for="currency0">Արժույթ</label><br/>
                        <input type="text" name="currency0" placeholder="0" class="form-control divInput" id="currency0" disabled >
                    </div>


                    <div>
                        <label for="price0">Ապրանքի գինը</label><br/>
                        <input type="number" name="price0" placeholder="0" class="form-control divInput" id="price0" disabled >
                    </div>

                    <div>
                        <label for="changed0">Փոփոխել գինը</label><br/>
                        <input onchange="changePrice(0)" type="number" name="changed0" value="0" class="form-control divInput" id="changed0" step="0.01" >
                    </div>
                    <div>
                        <label for="sale0">Զեղչ</label><br/>
                        <input type="text" name="sale0" value="0" class="form-control divInput" id="sale0" disabled >
                    </div>
                    <div>
                        <label for="countorder0">Քանակ</label><br/>
                        <input onchange="changeCount(0)" type="number" name="countorder0"  class="form-control divInput" id="countorder0" min="0"  step="0.01" required>
                    </div>
                    <div>
                        <label for="total0" >Ընդհանուր գին</label><br/>
                        <input type="number" name="total0"  class="form-control divInput" id="total0" disabled >
                    </div>
                    <input id="product_id0" type="text" name="product_id0" value="0" style="visibility: hidden;position: absolute;">
                </div>
            </div>
        </div>

        <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
        <div class="totalStyle">
            <div>Ընդհանուր 0 դրամ</div>
        </div>
        <input onclick="sendData()" id="send" type="button" class="btn btn-primary dis hid" style="margin-top: 15px;width: 200px;" value="Հաստատել">
        <div></div>
    </form>
    <button style="margin-top: 15px; align-items: center" id="add" class="btn btn-warning add hid">Ավելացնել ապրանք</button>
    <div style="    justify-content: space-around;display: flex;">
        <textarea id="area" class="area" name="area" rows="5" cols="30" placeholder="Նշումներ"></textarea>
        <button onclick="window.print()" class="btn btn-danger add hid" style="height: 38px;width: 100px;">Տպել</button>
    </div>
</div>


</body>

<script>
    var check = false;
    var num = 1;
    var finals = 0;
    var users;
    var totalSale = 0;
    var dollar = 0;
    var amd = 1;
    var data={};

    function myFunction(x) {
        $('#stock'+x).val('');
        $('#price'+x).val('');
        $('#product_id'+x).val('');
        $("#countorder"+x).val('');
        $('#changed'+x).val('');
        $('#total'+x).val('');
        $('#sale'+x).val(0);
        var id = $('select[name=selector'+x+']').val();
        if(id !== ''){
            $.get("/getProduct?id=" + id, function (data) {
                var product = data;
                var stock = 0;
                if (product['1'] !== null &&  product['1'] !== 0) {
                    stock = product['1'];
                }
                if(product[2] == 1) {
                    dollar = product[3];
                }
                $('#stock'+x).val(stock);
                $('#currency'+x).val(product[2] == 1 ? "USD" : "AMD");
                $('#price'+x).val(product['0']);
                $('#product_id'+x).val(id);
                $("#countorder"+x).attr({"max" : stock});
                $('#changed'+x).val(product['0']);
            });
        }else {
            $('#stock'+x).val(0);
            $('#price'+x).val(0);
            $('#currency'+x).val(0);
            $('#product_id'+x).val(0);
            $("#countorder"+x).val(0);
            $('#changed'+x).val(0);
            $('#total'+x).val(0);
        }
    }

    function userSelect(){
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
        if($('#currency'+a).val() === 'USD') {
            dol = dollar;
        }else {
            dol = amd;
        }
        var i;

        var price = $('#changed'+a).val();
        var sum = $('#countorder'+a).val();

        var total = price*sum * dol;

        $('#total'+a).val(total);
        finals = 0;
        for (i = 0; i < num; i++) {
            finals+=+$('#total'+i).val();
        }
        $('.totalStyle').text('Ընդհանուր '+finals+' դրամ');
    }

    function changePrice(x) {
        var money = $('#price'+x).val();
        var changed = $('#changed'+x).val();
        var tot = (money - changed) / (money / 100);
        var prc = Math.round(tot * 10) / 10;
        $('#sale'+x).val(prc+'%');
        changeCount(x);
    }

    function sendData() {
        var allert = 0;
        var alertt = 0;
        var didPrice = 0;

        for(var i = 0; i < num; i++) {
            if ($('#stock'+i).val() === '' || $('#stock'+i).val() === '0') {
                allert++;
            }
            if ($('#total'+i).val() === '0' || $('#total'+i).val() === '') {
                allert++;
            }
            if (parseInt($('#stock'+i).val()) < parseInt($('#countorder'+i).val())) {
                console.log('mtav');
                alertt++;
            }
        }

        if(allert === 0) {
            if(alertt === 0) {
                data.user = users;
                data.amount = finals;
                data.products = [];
                data.comments = $('#area').val();

                for(var x = 0; x < num; x++) {
                    var object = {};
                    var doll;
                    object.product_id = $('#product_id'+x).val();
                    object.count = $('#countorder'+x).val();
                    object.price = $('#price'+x).val();
                    object.sale_price = $('#changed'+x).val();
                    object.sale = $('#sale'+x).val();
                    object.total = $('#total'+x).val();
                    object.original = $('#changed'+x).val() * $('#countorder'+x).val();

                    if($('#currency'+x).val() === "USD") {
                        object.currency = 1;
                        doll = dollar;
                    }else {
                        object.currency = 2;
                        doll = amd;
                    }

                    didPrice += +($('#countorder'+x).val() * doll * $('#price'+x).val());
                    data.products.push(object);
                }

                totalSale = (didPrice - finals)/(didPrice/100);
                data.total_sale = Math.round(totalSale * 10) / 10;
                data.loop = num;
                data.did_price = didPrice;
                $.ajax({
                    type: "POST",
                    url: '/saveInvoice',
                    headers: {
                        'X-CSRF-TOKEN': $('#token').val()
                    },
                    data: data,
                    success: function(data){
                        if(data === 'Done') {
                            var url = "/admin/invoices";
                            $(location).attr("href", url);
                        }
                    }
                });
            }else {
                alert('Տվյալ քանակության ապրանք  պահեստում առկա չէ');
            }

        }else {
            alert('Լրացրեք բոլոր բաժինները');
        }


    }

    $('#add').click(function () {
        $('#addd').append('<div class="xlist'+num+'" style="margin-top:15px;border-bottom: 2px solid #141414;padding-bottom: 21px;">\n' +
            '                <div class="block">\n' +
            '               <div>\n' +
            '                <label for="selector'+num+'">Ընտրել ապրանքը</label><br/>\n' +
            '                <select onchange="myFunction('+num+')" name="selector'+num+'" id="select'+num+'" style="width: 272px;margin: 0 auto;"  class="form-control" required>\n' +
            '                    <option value="">None</option>\n' +
            '                    @foreach($products as $product)\n' +
            '                        <option value="{{$product->id}}">{{$product->name}}</option>\n' +
            '                    @endforeach\n' +
            '                </select>\n' +
            '                    </div>\n' +
            '                    <div>\n' +
            '                        <label for="stock'+num+'">Առկա է</label><br/>\n' +
            '                        <input type="number" name="stock'+num+'" placeholder="0" class="form-control divInput" id="stock'+num+'"  disabled >\n' +
            '                    </div>\n' +
            '                    <div>\n' +
            '                        <label for="currency'+num+'">Արժույթ</label><br/>\n' +
            '                        <input type="text" name="currency'+num+'" placeholder="0" class="form-control divInput" id="currency'+num+'" disabled >\n' +
            '                    </div>\n' +
            '                    <div>\n' +
            '                        <label for="price'+num+'">Ապրանքի գինը</label><br/>\n' +
            '                        <input type="number" name="price'+num+'" placeholder="0" class="form-control divInput" id="price'+num+'" disabled >\n' +
            '                    </div>\n' +
            '                    <div>\n' +
            '                        <label for="changed'+num+'">Փոփոխել գինը</label><br/>\n' +
            '                        <input onchange="changePrice('+num+')" type="number" name="changed'+num+'" value="0" class="form-control divInput" id="changed'+num+'" step="0.01" >\n' +
            '                    </div>\n' +
            '                    <div>\n' +
            '                        <label for="sale'+num+'">Զեղչ</label><br/>\n' +
            '                        <input type="text" name="sale'+num+'" value="0" class="form-control divInput" id="sale'+num+'" disabled >\n' +
            '                    </div>\n' +
            '                    <div>\n' +
            '                        <label for="countorder'+num+'">Քանակ</label><br/>\n' +
            '                        <input onchange="changeCount('+num+')" type="number" name="countorder'+num+'"  class="form-control divInput" id="countorder'+num+'" min="0" step="0.01" >\n' +
            '                    </div>\n' +
            '                    <div>\n' +
            '                        <label for="total'+num+'" >Ընդհանուր գին</label><br/>\n' +
            '                        <input type="number" name="total'+num+'"  class="form-control divInput" id="total'+num+'" disabled >\n' +
            '                    </div>\n' +
            '                <div onclick="clickx('+num+')" class="xstyle hid">X</div>\n' +
            '                    <input id="product_id'+num+'" type="text" value="0" name="product_id'+num+'" style="visibility: hidden;position: absolute;">\n' +
            '                </div>\n' +
            '            </div>');

        num++;
    });

    function clickx (x) {
        if(num-1 === x) {
            $( ".xlist"+x ).remove();
            num--;
        }
        else {
            alert('ջնջեք վերջին բլոկը');
        }
    }


</script>

</html>
