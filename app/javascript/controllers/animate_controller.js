import { Controller } from "@hotwired/stimulus"
import animate from "animateplus";

// Connects to data-controller="animate"
export default class extends Controller {
  connect() {

     animate({
       elements: "#animated",
       duration: 2000,
       delay: index => index * 100,
       transform: ["scale(0)", "scale(1)"],
     })
     //.then(options => animate({
     //  ...options,
     //  transform: ["translate(0%)", "translate(100%%)"]
     //}));


    //animate({
    //  elements: "#logo",
    //  easing: "out-exponential",
    //  duration: 2500,
    //  loop: true,
    //  direction: "alternate",
    //  blur: {x: 20, y: 2},
    //  transform: ["translate(0%)", "translate(800%)"]
    //});
  }

  
}
