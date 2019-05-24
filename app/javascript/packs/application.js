import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import swal from 'sweetalert';


initMapbox();



import { initSweetalert } from '../plugins/init_sweetalert';


const cards = document.querySelectorAll('.card-footer-delete');

const MonkeyCardId = Object.values(cards).map(monkeyCard => monkeyCard.id.match(/^\S*/)[0]);

MonkeyCardId.forEach( (idSolo) => {
  const id = `${idSolo} alert-delete-monkey`;

  const options = {
    title: "Are you sure?",
    text: "You will delete a monkey for ever. This action cannot be reversed",
    icon: "warning"
  };

  const callback = ( (value) => {
    if (value) {
      const link = document.getElementById(`${idSolo}delete-link`);
      link.click();
    };
  });

  initSweetalert(id, options, callback);
});
