import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import "../plugins/flatpickr";


initMapbox();


import swal from 'sweetalert';
import { initSweetalert } from '../plugins/init_sweetalert';

// SWEET ALERT MONKEY

const cards = document.querySelectorAll('.card-footer-delete');
const MonkeyCardId = Object.values(cards).map(monkeyCard => monkeyCard.id.match(/^\S*/)[0]);

MonkeyCardId.forEach( (idSolo) => {
  const id = `${idSolo} alert-delete-monkey`;

  const options = {
    title: "🙉 Are you sure? 🙉",
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


// SWEET ALERT BOOKING

const cardsBis = document.querySelectorAll('.card-righter-delete');
const BookingCardId = Object.values(cardsBis).map(bookingCard => bookingCard.id.match(/^\S*/)[0]);

BookingCardId.forEach( (idSolo) => {
  const id = `${idSolo} alert-delete-booking`;

  const options = {
    title: "🙉 Are you sure? 🙉",
    text: "You will delete a booking for ever. This action cannot be reversed",
    icon: "warning"
  };

  const callback = ( (value) => {
    if (value) {
      const link = document.getElementById(`${idSolo}delete-link-booking`);
      link.click();
    };
  });

  initSweetalert(id, options, callback);
});

