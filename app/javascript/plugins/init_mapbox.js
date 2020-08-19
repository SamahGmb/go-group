import mapboxgl from 'mapbox-gl';

const addMarkerToMap = (map, marker) => {
    new mapboxgl.Marker({ color: "#FF1252"})
    .setLngLat([marker.lng, marker.lat])
    .addTo(map);
};

const fitMapToMarker = (map, marker) => {
    const bounds = new mapboxgl.LngLatBounds();
    bounds.extend([marker.lng, marker.lat]);
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
    const mapElement = document.getElementById('map');

    if (mapElement) {
        mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
        
        const map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/streets-v10'
        })
        
        const marker = JSON.parse(mapElement.dataset.marker);
        
        addMarkerToMap(map, marker);
        fitMapToMarker(map, marker);
    }
};

export { initMapbox };