// app/javascript/controllers/map_controller.js

import { Controller } from "stimulus";
import mapboxgl from "mapbox-gl";
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder";

export default class extends Controller {
  connect() {
    if (!this.map) {
      console.error('Map object is not initialized');
      return;
    }

    this.addMarkersToMap(); // Assuming #addMarkersToMap() is a method defined in this class
    this.fitMapToMarkers(); // Assuming #fitMapToMarkers() is a method defined in this class

    this.map.addControl(
      new MapboxGeocoder({
        accessToken: 'pk.eyJ1IjoiZGVsYW1hcmV0czg4IiwiYSI6ImNsd3J2YTVpaDA0cW4yanNqd3p0a2E5Z28ifQ.HIDdem5AaKMkkjss9kIang', // Replace with your access token
        mapboxgl: mapboxgl
      })
    );
  }

  addMarkersToMap() {
    // Implementation for adding markers to the map
  }

  fitMapToMarkers() {
    // Implementation for fitting map to markers
  }
}
