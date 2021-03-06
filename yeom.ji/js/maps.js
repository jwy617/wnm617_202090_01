

const makeMap = async(target, center={lat:37.786231,lng:-122.399310}) => {
	await checkData(()=>window.google);

	let map_el = $(target);

	if(!map_el.data("map"))
		map_el.data({
			"map": new google.maps.Map(map_el[0], {
				center: center,
				zoom: 12,
				styles:mapStyles,
				disableDefaultUI: true
			}),
			"infoWindow": new google.maps.InfoWindow({content:''})
		});

	return map_el;
}


const makeMarkers = (map_el,map_locs,setbounds=true) => {
	let map = map_el.data("map");
	let markers = map_el.data("markers");

	if(markers) markers.forEach(o=>o.setMap(null));

	markers = [];

	map_locs.forEach(o=>{
		let pos = {
			position:o,
			map:map
		}
		if(o.icon) pos.icon = {
			url: o.icon,
			scaledSize: {
				width:50,
				height:50
			}
		};
		let m = new google.maps.Marker(pos);
		markers.push(m);
	});

	map_el.data("markers",markers);
	if(setbounds) setTimeout(()=>setMapBounds(map_el,map_locs),150);
}


const setMapBounds = (map_el,map_locs) => {
	let map = map_el.data("map");
	let zoom = 14;

	if(map_locs.length==1) {
		map.setCenter(map_locs[0]);
		map.setZoom(zoom);
	} else if(map_locs.length==0) {
		if(window.location.protocol!=="https:") return;
		else {
			navigator.geolocation.getCurrentPosition(p=>{
				let pos = {
					lat:p.coords.latitude,
					lng:p.coords.longitude
				};
				map.setCenter(pos);
				map.setZoom(zoom);
			},(...args)=>{
				console.log("error?",args)
			},{
				enableHighAccuracy:false,
				timeout:5000,
				maximumAge:0
			});
		}
	} else {
		let bounds = new google.maps.LatLngBounds(null);
		map_locs.forEach(o=>{
			bounds.extend(o);
		});
		map.fitBounds(bounds);
	}
}




const mapStyles = [
    {
        "featureType": "landscape",
        "stylers": [
            {
                "hue": "#0000FF"
            },
            {
                "saturation": 43.400000000000006
            },
            {
                "lightness": 37.599999999999994
            },
            {
                "gamma": 1
            }
        ]
    },
    {
        "featureType": "road.highway",
        "stylers": [
            {
                "hue": "#FFC200"
            },
            {
                "saturation": -30
            },
            {
                "lightness": 45.599999999999994
            },
            {
                "gamma": 1
            }
        ]
    },
    {
        "featureType": "road.arterial",
        "stylers": [
            {
                "hue": "#FF0300"
            },
            {
                "saturation": -100
            },
            {
                "lightness": 51.19999999999999
            },
            {
                "gamma": 1
            }
        ]
    },
    {
        "featureType": "road.local",
        "stylers": [
            {
                "hue": "#FF0300"
            },
            {
                "saturation": -100
            },
            {
                "lightness": 52
            },
            {
                "gamma": 1
            }
        ]
    },
    {
        "featureType": "water",
        "stylers": [
            {
                "hue": "#0078FF"
            },
            {
                "saturation": -13.200000000000003
            },
            {
                "lightness": 2.4000000000000057
            },
            {
                "gamma": 1
            }
        ]
    },
    {
        "featureType": "poi",
        "stylers": [
            {
                "hue": "#0000FF"
            },
            {
                "saturation": -1.0989010989011234
            },
            {
                "lightness": 11.200000000000017
            },
            {
                "gamma": 1
            }
        ]
    }
]


