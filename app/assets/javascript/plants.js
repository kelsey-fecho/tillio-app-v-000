$(function(){
  $("a.plant-details").on("click", function(e){
    $.getJSON(this.href, function(data) {
      let plantInfo = new Plant(data.kind, data.description, data.light, data.water, data.zone, data.landscape_categories)
      let formatted = plantInfo.formatPlant();
      $('#plant-info-' + data.id).html(formatted)
      // $("#plantKind-"+data["id"]).text("Kind: " + data["kind"])
      // $("#plantDescription-"+data["id"]).text("Description: " + data["description"])
      // $("#plantLight-"+data["id"]).text("Light: " + data["light"])
      // $("#plantWater-"+data["id"]).text("Water: " + data["water"])
      // $("#plantZone-"+data["id"]).text("Zone: " + data["zone"])
      // $("#plantCategories-"+data["id"]).text("Landscape Categories: " + data["landscape_categories"])
    })
    e.preventDefault();
  })

  function Plant(kind, desc, light, water, zone, categories) {
    this.kind = kind
    this.desc = desc
    this.light = light
    this.water = water
    this.zone = zone
    this.categories = categories
  }

  Plant.prototype.formatPlant = function(){
    let html = ''
    html += `<h4>Kind: ${this.kind}</h4>`
    html += `<p>${this.desc}</p>`
    html += `<p>Thrives at zone ${this.zone}</p>`
    html += `<p>Needs ${this.light} light and ${this.water} watering</p>`
    html += `Often good for ${this.categories}`
    return html
  }
})
