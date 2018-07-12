$(function(){
  $("#new_garden_submit").on("click", function(e){
    //$.getJSON(this.action, function(data) {
    //  $("#plantKind-"+data["id"]).text(data["kind"])
    //})

    $.ajax({
      type: ($("input[name='_method']").val() || this.method),
      url: this.action,
      data: $(this).serialize(),
      success: function(response){
        console.log(response)
      }
    });

    e.preventDefault();
  })
})
