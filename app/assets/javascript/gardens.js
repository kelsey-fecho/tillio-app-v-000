$(function(){
  $("#new_garden").on("submit", function(e){
    $.ajax({
      type: ($("input[name='_method']").val() || this.method),
      url: this.action,
      data: $(this).serialize(),
      success: function(response){
        $("#gardensList").append(response)
        $("#garden_name").val("")
      }
    });
    e.preventDefault();
  })

  $(function(){
    $("a#plant_gardens").on("click", function(e){
      $.getJSON(this.href, function(data){
        let formatted = data.map(garden => new Garden(garden.name, garden.target).formatGarden())
        $("div#plantGardensList").html(formatted)
      })
      e.preventDefault();
    })
  })
})

function Garden(name, href) {
  this.name = name
  this.href = href
}

Garden.prototype.formatGarden = function(){
  let html=''
    html += `<ul>`
    html += `<li><a href=${this.href}>${this.name}<a></li>`
    html += `</ul>`
  return html
}
