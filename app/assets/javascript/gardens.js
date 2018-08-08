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

  $("a#alpha_plant_gardens").on("click", function(e){
    $.getJSON(this.href, function(data){
      let sorted = data.sort(sortAlphabetically)
      let formatted = sorted.map(garden => new Garden(garden.name, garden.id).formatGarden())
      $("#plantGardensList").html(formatted)
    })
    e.preventDefault();
  })

    $("a#plant_gardens").on("click", function(e){
      $.getJSON(this.href, function(data){
        let formatted = data.map(garden => new Garden(garden.name, garden.id).formatGarden())
        $("#plantGardensList").html(formatted)
      })
      e.preventDefault();
    })

  function Garden(name, id) {
    this.name = name
    this.id = id
  }

  Garden.prototype.formatGarden = function(){
    let html=''
      html += `<li><a href="http://localhost:3000/gardens/${this.id}"">${this.name}<a></li>`
    return html
  }

  function sortAlphabetically(a, b){
    var aName = a.name.toLowerCase();
    var bName = b.name.toLowerCase();
    return ((aName < bName) ? -1 : ((aName > bName) ? 1 : 0));
  }
})
