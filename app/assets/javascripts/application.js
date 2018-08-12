// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

var map;
	var marker;
	var infowindow;
	var next = { lat: 3.090356, lng: 101.559754 };

	function initMap() {

	    map = new google.maps.Map(document.getElementById("map"), {
	        center: {
	                lat: 3.090356,
	                lng: 101.559754
	        },
	        zoom: 18,
	        styles: [{
        elementType: 'geometry',
        stylers: [{
            color: '#242f3e'
        }]
    },
    {
        elementType: 'labels.text.stroke',
        stylers: [{
            color: '#242f3e'
        }]
    },
    {
        elementType: 'labels.text.fill',
        stylers: [{
            color: '#746855'
        }]
    },
    {
        featureType: 'administrative.locality',
        elementType: 'labels.text.fill',
        stylers: [{
            color: '#d59563'
        }]
    },
    {
        featureType: 'poi',
        elementType: 'labels.text.fill',
        stylers: [{
            color: '#d59563'
        }]
    },
    {
        featureType: 'poi.park',
        elementType: 'geometry',
        stylers: [{
            color: '#263c3f'
        }]
    },
    {
        featureType: 'poi.park',
        elementType: 'labels.text.fill',
        stylers: [{
            color: '#6b9a76'
        }]
    },
    {
        featureType: 'road',
        elementType: 'geometry',
        stylers: [{
            color: '#38414e'
        }]
    },
    {
        featureType: 'road',
        elementType: 'geometry.stroke',
        stylers: [{
            color: '#212a37'
        }]
    },
    {
        featureType: 'road',
        elementType: 'labels.text.fill',
        stylers: [{
            color: '#9ca5b3'
        }]
    },
    {
        featureType: 'road.highway',
        elementType: 'geometry',
        stylers: [{
            color: '#746855'
        }]
    },
    {
        featureType: 'road.highway',
        elementType: 'geometry.stroke',
        stylers: [{
            color: '#1f2835'
        }]
    },
    {
        featureType: 'road.highway',
        elementType: 'labels.text.fill',
        stylers: [{
            color: '#f3d19c'
        }]
    },
    {
        featureType: 'transit',
        elementType: 'geometry',
        stylers: [{
            color: '#2f3948'
        }]
    },
    {
        featureType: 'transit.station',
        elementType: 'labels.text.fill',
        stylers: [{
            color: '#d59563'
        }]
    },
    {
        featureType: 'water',
        elementType: 'geometry',
        stylers: [{
            color: '#17263c'
        }]
    },
    {
        featureType: 'water',
        elementType: 'labels.text.fill',
        stylers: [{
            color: '#515c6d'
        }]
    },
    {
        featureType: 'water',
        elementType: 'labels.text.stroke',
        stylers: [{
            color: '#17263c'
        }]
    }
],
	        mapTypeControl: false,
	        streetViewControl: false,
	        fullscreenControl: false
	    });

	    marker = new google.maps.Marker({
	        position: next,
	        map: map,
	        icon: "https://mt.googleapis.com/vt/icon/name=icons/onion/169-ltblue-dot.png",
	        animation: google.maps.Animation.DROP,
	        title: "Christie Png"
	    });

	    infowindow = new google.maps.InfoWindow({
	        content: "We Are Here!"
	    });

	    marker.addListener("click", function() {
	        infowindow.open(map, marker);
	    });

	}

    var owl = $('.owl-carousel');
    owl.owlCarousel({
        items:1,
        loop:true,
        margin:10,
        autoplay:true,
        autoplayTimeout:2000,
        autoplayHoverPause:true
    });
    $('.play').on('click',function(){
        owl.trigger('play.owl.autoplay',[1000])
    });
    $('.stop').on('click',function(){
        owl.trigger('stop.owl.autoplay')
    });