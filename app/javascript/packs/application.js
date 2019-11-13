import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { bookingPrice } from "../components/booking";
import { initMapbox } from '../plugins/init_mapbox';
import { initSingleMapbox } from '../plugins/init_single_mapbox';


const indexpage = document.getElementById("cars/index")
const showpage = document.getElementById("cars/show")
const bookingnew = document.getElementById("bookings/new")

if (bookingnew){
  bookingPrice();
}

if (indexpage) {
  initMapbox();
}

if (showpage) {
  initSingleMapbox();
}



