// This will load on pageload
$(document).on("turbolinks:load", function() {
  if (document.getElementById("clients-page")) {
    console.log("it loaded");
  }
})