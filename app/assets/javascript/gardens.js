$(function(){
  $("#new_garden_submit").on("click", function(e){
    $.getJSON(this.href, function(data) {
      $("#plantKind-"+data["id"]).text(data["kind"])
      $("#plantLight-"+data["id"]).text(data["light"])
      $("#plantWater-"+data["id"]).text(data["water"])
      $("#plantZone-"+data["id"]).text(data["zone"])
    })
    e.preventDefault();
  })
})
