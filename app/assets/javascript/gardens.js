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
      $.get(this.href).success(function(response){
        $("div#plantGardensList").html(response)
      })
      e.preventDefault();
    })
  })
})
