$(document).ready(function(){

    $("button#get_data").click(function() {
        var items = [];
        var i = 0;
        var airtable_read_endpoint = "https://api.airtable.com/v0/appWDkWqp3VqMgRfw/Music%20Festivals?maxRecords=3&view=Grid%20view?api_key=keyCcWhXbfv6rNvh2";
        var dataSet = [];
        $.getJSON(airtable_read_endpoint, function(result) {
               $.each(result.records, function(key,value) {
                   items = [];
                       items.push(value.fields.Name);
                       items.push(value.fields.start_year);
                       items.push(value.fields.founder);
                       items.push(value.fields.genre);
                       items.push(value.fields.attendance);
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
                     { title: "start_year",
                         defaultContent:"" },
                     { title: "founder",
                       defaultContent:"" },
                     { title: "genre",
                       defaultContent:""},
                     { title: "attendance",
                         defaultContent:""},
                 ]
             } );
        }); // end .getJSON
     }); // end button

}); // document ready