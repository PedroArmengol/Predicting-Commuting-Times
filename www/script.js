// I COPIED THIS CODE FROM: https://shiny.rstudio.com/articles/dynamic-ui.html

// Make sure the Shiny connection is established
$(document).on('shiny:connected', function(event) {

  /************ REACTIVE DOM MANIPULATION ************/
  // Insert a textInput after a complicated calculation
  function complicatedCalculation(a, b, callback) {
    var res = a + b;
    console.log('Complicated calculation finished!');
    callback(res);
  }
  
  complicatedCalculation(1, 1, function(value) {
    Shiny.unbindAll();
    // insert a reactive textInput
    $('#placeholder1').append(
      '<div class=\"form-group shiny-input-container\">' +
        '<label for=\"txt1\"> Please type a number </label>' +
        '<input id=\"txt1\" type=\"text\"' +
                'class=\"form-control\" value=\"\">' + 
      '</div>'
    );
    $('#placeholder2').append(
      '<div class=\"form-group shiny-input-container\">' +
        '<label for=\"txt2\"> Please type a number </label>' +
        '<input id=\"txt2\" type=\"text\"' +
                'class=\"form-control\" value=\"\">' + 
      '</div>'
    );
    $('#placeholder3').append(
      '<div class=\"form-group shiny-input-container\">' +
        '<label for=\"txt3\"> Please type a number </label>' +
        '<input id=\"txt3\" type=\"text\"' +
                'class=\"form-control\" value=\"\">' + 
      '</div>'
    );
    $('#placeholder4').append(
      '<div class=\"form-group shiny-input-container\">' +
        '<label for=\"txt4\"> Please type a number </label>' +
        '<input id=\"txt4\" type=\"text\"' +
                'class=\"form-control\" value=\"\">' + 
      '</div>'
    );
    $('#txt1').val(value);
    $('#txt2').val(value);
    $('#txt3').val(value);
    $('#txt4').val(value);

    Shiny.bindAll();
  });
});