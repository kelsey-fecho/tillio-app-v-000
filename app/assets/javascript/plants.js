$(function(){
  $("a.plant-details").on("click", function(e){
    $.getJSON(this.href, function(data) {
      $("#plantKind-"+data["id"]).text("Kind: " + data["kind"])
      $("#plantDescription-"+data["id"]).text("Description: " + data["description"])
      $("#plantLight-"+data["id"]).text("Light: " + data["light"])
      $("#plantWater-"+data["id"]).text("Water: " + data["water"])
      $("#plantZone-"+data["id"]).text("Zone: " + data["zone"])
      $("#plantCategories-"+data["id"]).text("Landscape Categories: " + data["landscape_categories"])
    })
    e.preventDefault();
  })
})
