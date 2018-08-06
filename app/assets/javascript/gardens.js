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


  // <li id=`garden-${garden.id}-details`>
  //   <%= link_to garden.name, garden_path(garden) %>
  // </li>
    $("a#plant_gardens").on("click", function(e){
      $.getJSON(this.href, function(data){
        let formatted = data.map(garden => new Garden(garden.name, garden.id).formatGarden())
        $("div#plantGardensList").html(formatted)
      })
      e.preventDefault();
    })

  function Garden(name, id) {
    this.name = name
    this.id = id
  }

  Garden.prototype.formatGarden = function(){
    let html=''
      html += `<ul>`
      html += `<li><a href="http://localhost:3000/gardens/${this.id}"">${this.name}<a></li>`
      html += `</ul>`
    return html
  }

})
