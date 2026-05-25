import 'ol/ol.css';
import Map from 'ol/Map.js';
import View from 'ol/View.js';
import TileLayer from 'ol/layer/Tile.js';
import VectorLayer from 'ol/layer/Vector.js';
import OSM from 'ol/source/OSM.js';
import VectorSource from 'ol/source/Vector.js';
import GeoJSON from 'ol/format/GeoJSON.js';
import { fromLonLat } from 'ol/proj.js';
import { stylefunction } from 'ol-mapbox-style';

const overtureLayer = new VectorLayer({
  source: new VectorSource({
    url: '/data/overture.geojson',
    format: new GeoJSON()
  })
});

stylefunction(overtureLayer, {
  version: 8,
  sources: {
    overture: {
      type: 'geojson',
      data: '/data/overture.geojson'
    }
  },
  layers: [
    {
      id: 'overture-buildings',
      type: 'fill',
      source: 'overture',
      paint: {
        'fill-color': [
          'match',
          ['get', 'source_type'],
          'my', '#2ca25f',
          'osm', '#2b8cbe',
          'ml', '#fdae61',
          '#999999'
        ],
        'fill-opacity': 0.75,
        'fill-outline-color': '#333333'
      }
    }
  ]
}, 'overture');

new Map({
  target: 'map',
  layers: [
    new TileLayer({
      source: new OSM()
    }),
    overtureLayer
  ],
  view: new View({
    center: fromLonLat([50.333581, 53.294649]),
    zoom: 17.5
  })
});
