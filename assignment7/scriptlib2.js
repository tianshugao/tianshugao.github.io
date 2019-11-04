$(document).ready(function(){

    $("button#hide_h2").click(function() {
        $("h2").hide(500);
    });

    $("button#show_h2").click(function() {
        $("h2").show(300);
        $("h2").css("color","blue");
        $("h2").html("You clicked me hard.");
    });

    $("button#clear_screen").click(function() {
        var $x = $("container");
        $x.empty();
    });

     $("button#get_data2").click(function() {
      var items = [];
      var i = 0;
      var airtable_read_endpoint = "https://api.airtable.com/v0/appWyZjwWEr3RX0Kv/Countries?api_key=keyCcWhXbfv6rNvh2";
      var dataSet = [];
      $.getJSON(airtable_read_endpoint, function(result) {
             $.each(result.records, function(key,value) {
                 items = [];
                     items.push(value.fields.Country);
                     items.push(value.fields.total);
                     dataSet.push(items);
                     console.log(items);
              }); // end .each
              console.log(dataSet);

           $('#table2').DataTable( {
               data: dataSet,
               retrieve: true,
               columns: [
                   { title: "Country",
                     defaultContent:""},
                   { title: "total",
                       defaultContent:"" },
               ]
           } );

           var chart = c3.generate({
                data: {
                    columns: dataSet,
                    type : 'bar'
                },
                axis: {
                  x: {label: 'Country'},
                  y: {label: 'total'}
                },
                bar: {
                    title: "total by country:",
                }
            });

      }); // end .getJSON

   }); // end button

}); // document ready