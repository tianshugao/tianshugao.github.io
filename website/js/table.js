$("button#get_data").click(function() {
    var items = [];
    var i = 0;
    var airtable_read_endpoint = "https://api.airtable.com/v0/appWDkWqp3VqMgRfw/total?api_key=keyCcWhXbfv6rNvh2";
    var dataSet = [];
    $.getJSON(airtable_read_endpoint, function(result) {
           $.each(result.records, function(key,value) {
               items = [];
                   items.push(value.fields.Name);
                   items.push(value.fields.Active_years);
                   items.push(value.fields.Times);
                   items.push(value.fields.Attendance);
                   items.push(value.fields.Festival_evaluation);
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
                 { title: "Active Years",
                     defaultContent:"" },
                 { title: "Times in China",
                   defaultContent:"" },
                { title: "Attendance",
                   defaultContent:"" },
                   { title: "Evaluation",
                   defaultContent:"" },
             ]
         } );
    }); // end .getJSON


 }); // end button
