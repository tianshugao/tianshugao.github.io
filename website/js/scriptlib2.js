

    $("button#get_data").click(function() {
        var items = [];
        var i = 0;
        var airtable_read_endpoint = "https://api.airtable.com/v0/appWDkWqp3VqMgRfw/total?api_key=keyCcWhXbfv6rNvh2";
        var dataSet = [];
        $.getJSON(airtable_read_endpoint, function(result) {
               $.each(result.records, function(key,value) {
                   items = [];
                       items.push(value.fields.Name);
                       items.push(value.fields.Start_year);
                       items.push(value.fields.Founder);
                       dataSet.push(items);
                       console.log(items);
                }); // end .each
                console.log(dataSet);

             $('#table1').DataTable( {
                 data: dataSet,
                 retrieve: true,
                 columns: [
                     { title: "Name",
                       defaultContent:""},
                     { title: "Start_year",
                         defaultContent:"" },
                     { title: "Founder",
                       defaultContent:"" },
                 ]
             } );
        }); // end .getJSON
     }); // end button
