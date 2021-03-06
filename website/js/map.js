
                    var mapboxTiles = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {attribution: 'Map data &copy; <a href="https://openstreetmap.org">OpenStreetMap</a>', maxZoom: 18,});
                                        var map = L.map('map')
                                            .addLayer(mapboxTiles)
                                            .setView([34.4494354, 104.15], 4);
                                        var items = [];
                                        var airtable_read_endpoint = "https://api.airtable.com/v0/appWDkWqp3VqMgRfw/shows?api_key=keyCcWhXbfv6rNvh2";
                                        var data = [];
                                        $.getJSON(airtable_read_endpoint, function(result) {
                                            $.each(result.records, function(key,value) {
                                                items = {};
                                                    items["name"] = value.fields.Name;
                                                    items["img"] = value.fields.img;
                                                    items["latitud"] = value.fields.lat;
                                                    items["longitud"] = value.fields.lng;
                                                    items["img_url"] = value.fields.img_url;
                                                    items["url"] = value.fields.url;
                                                    data.push(items);
                                                    console.log(items);
                                                }); 
                                        }); 


                                        function show_districts(){
                                            for (var i in data) {
                                                var latlng = L.latLng({ lat: data[i].latitud, lng: data[i].longitud });
                                                L.marker( latlng )
                                                .bindPopup( '<a href="' + data[i].url + '" target="_blank">' + '<img src="' + data[i].img_url+ '" width = "300px"><br>'+data[i].name + '</a>')
                                                .addTo(map);
                                           }
                                          }
    