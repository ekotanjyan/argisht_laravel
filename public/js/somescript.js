/**
 * Created by user on 10/25/17.
 */
$(document).ready(function () {

    $('#product_id').on('change', function(){
        var product_id = $(this).val();
        $.get( "/index.php/getproductdetails/"+product_id, function( data ) {
            var product = data;
            $('#stock_count').val(product.count);
            $('#product_price').val(product.price);

        });
    })
    $('#count').on('change', function(data){
        var inovice_count = $(this).val();
        var alertmessageobj =  $(this).parent().find('.text-danger');
        var count = $('#stock_count').val();
        if(count - inovice_count < 0)
        {
            alertmessageobj.text("Տվյալ քանակության ապրանք  պահեստում առկա չէ").show();
            $('.btn-success').attr('disabled','true');
            $('#total_price').val('');
        }
        else {
            alertmessageobj.hide();
            $('#form .btn-success').removeAttr('disabled');
            $('#total_price').val(inovice_count * $('#product_price').val() + " Դրամ");

        }


    })
    var totalcount = 0;
    var totalprice = 0;
    var totaldue = 0;
    $('#table_dashboard tbody > tr').each(function(){
        totalcount += parseFloat($(this).find('td:nth-child(5)').text());
    })
    $('#table_dashboard tbody > tr').each(function(){
        totalprice += parseFloat($(this).find('td:nth-child(7)').text());
    })
    $('#table_dashboard tbody > tr').each(function(){
        totaldue += parseFloat($(this).find('td:nth-child(8)').text());
    })
    $('#table_dashboard tfoot').append('<tr><td></td><td></td><td></td><td></td><td>'+totalcount+'</td><td></td><td>'+totalprice+'</td><td>'+totaldue+'</td><td></td><td></td><td></td><td></td></tr>')
})