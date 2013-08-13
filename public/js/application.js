function changeColor(e) {
  e.preventDefault();
  $.getJSON('/color', function(data){
      console.log(data);
      $('#color_me li').eq(data.cell).css({'background-color': data.color});
  });
}

$(document).ready(function(){
  $('#get_color').on('click', changeColor);
});