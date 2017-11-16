$(document).ready(function(){
    $('#invoice_id').on('change', function(){
       var inovice_id = $(this).val();
       if(customer_id != "" && inovice_id != "")
       {
           $.get( "/getinvoicedetails/"+inovice_id, function( data ) {
               var invoice = data;
               $('#customer_id').html('<option value="'+invoice.customer_id+'">'+invoice.name+'</option>');
               $('#due').val(invoice.due + ' Դրամ');

           });
       }
    });

    $('#currency').on('change', function(){
        var currency = $(this).val();
        //http://apilayer.net/api/live?access_key=5ef0e5738bcfdeafbcdf0504d0daba5a&source=AMD&currencies=USD,EUR,RUB,GBR&format=1


        $.ajax({
            url: 'https://www.google.am/search?q=get+usd+amd&oq=get+usd+amd&aqs=chrome..69i57.2744j0j7&sourceid=chrome&ie=UTF-8',
            type: "GET",
            dataType: 'html',
            crossDomain: true,
            cache: false,
            success: function(response){
                //var usdRate = $(data).find('#currency_converter_result span').text();
               // console.log(response);
                console.log($(response).find('#exchange_rate').val());
            }
        });

    })

    var totalprice = 0;
    var totalpaid = 0;

    $('#table_dashboard tbody > tr').each(function(){
        totalprice += parseFloat($(this).find('td:nth-child(4)').text()=='' ? 0 : $(this).find('td:nth-child(4)').text());
    })
    $('#table_dashboard tbody > tr').each(function(){
        totalpaid += parseFloat($(this).find('td:nth-child(5)').text() =='' ? 0 : $(this).find('td:nth-child(5)').text());
    })
    $('#table_dashboard tfoot').append('<tr><td></td><td></td><td></td><td>'+totalprice+'</td><td>'+totalpaid+'</td><td></td><td></td><td></td></tr>')
})