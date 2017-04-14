{ mapboxgl } = require "npm"

# Mapbox Configuration
mapWidth = Screen.width
mapHeight = Screen.height

mapboxLayer = new Layer {
	html: "<div id='map'></div>"
	width: mapWidth
	height: mapHeight
	ignoreEvents: false
}

mapElement = mapboxLayer.querySelector("#map")
mapElement.style.height = mapHeight + "px"

mapboxgl.accessToken = "pk.eyJ1IjoiYWZuaXphcm51ciIsImEiOiJjajFoNTJucXUwMDB6MndsZHRtZzRrMGRpIn0.EVK4eY7s578nCDMxrLbzhw"

map = new mapboxgl.Map({
	container: mapElement
	zoom: 12
	center: [-6.976758, 107.631202]
	style: 'mapbox://styles/mapbox/streets-v10'
	hash: true
})

	

