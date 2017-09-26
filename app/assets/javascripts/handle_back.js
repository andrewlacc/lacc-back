handleBack = function() {
  var baseSites = ["/computer"];
  
  $("#backButton").on("click", function() {
    history.back();
  });
}