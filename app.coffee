{ mapboxgl } = require "npm"

# Mapbox Configuration
mapWidth = Screen.width
mapHeight = Screen.height

mapboxLayer = new Layer
	html: "<div id='map'></div>"
	width: mapWidth
	height: mapHeight
	ignoreEvents: false

mapElement = mapboxLayer.querySelector("#map")
mapElement.style.height = mapHeight + "px"

myAccessToken = "pk.eyJ1IjoiYWZuaXphcm51ciIsImEiOiJjajFobjQ4ZG8wMDFhMzJwNnQ1NGI5b2xhIn0.EKqbXESOKEUL7chG1QmgYA"

mapboxgl.accessToken = myAccessToken

# Initialize Map
map = new mapboxgl.Map
	container: mapElement
	zoom: 2
	center: [106.830235, -6.173539]
	style: 'mapbox://styles/mapbox/streets-v10'
	hash: true
	
# Map animation when start
map.flyTo
	speed: 2
	zoom: 19

# Loading the map
map.on "load", () ->
	mark = document.createElement('div')
	mark.className = "location-marker"
	mark.style.backgroundColor = "deepskyblue"
	mark.style.width = "30px"
	mark.style.height = "30px"
	mark.style.borderRadius = "100px"
	
	marker = new mapboxgl.Marker(mark).setLngLat([106.830235, -6.173539]).addTo(map)
	
	

