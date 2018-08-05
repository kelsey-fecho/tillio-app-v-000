$(function(){
  $("a.plant-details").on("click", function(e){
    $.getJSON(this.href, function(data) {
      let plantInfo = new Plant(data.kind, data.description, data.light, data.water, data.zone, data.landscape_categories)
      let formatted = plantInfo.formatPlant();
      $('#plant-info-' + data.id).html(formatted)
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
    html += `<p>I'm a ${this.kind}</p>`
    html += `<p>${this.desc}</p>`
    html += `<p>I thrive at zone ${this.zone} and I'm especially good for ${this.categories}</p>`
    html += `<p>I need ${this.light} light and ${this.water} watering</p>`
    return html
  }

  $("a#new_plant").on("click", function(e){
    $.get(this.href).success(function(response){
      $("div#addNew").html(response)
    })
    e.preventDefault();
  })
})
