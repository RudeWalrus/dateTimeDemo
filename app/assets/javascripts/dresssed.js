//= require dresssed/bootstrap
//= require dresssed/sheets
//= require dresssed/header
//= require dresssed/metis_menu
//= require dresssed/maps
//= require dresssed/flot
//= require dresssed/morris
//= require dresssed/prettify
//= require dresssed/rickshaw
//= require dresssed/slimscroll

//= require generators/data_generator
//= require demo/helpers

$(document).ready(function(){
  $('[data-toggle="popover"]').popover({
    container: 'body'
  });

  $('[data-toggle="tooltip"]').tooltip({
    container: 'body'
  });

  // Required for the SideNav dropdown nav-side-menu
  $('.nav-side-menu').metisMenu();

  if(!Modernizr.touch) {
    $('#menu-content').slimScroll({
         height: 'auto'
     });
  } else {
    $('#menu-content').slimScroll({
         destroy: 'true'
     });
  }

  // AHOY THERE!
  //
  // This code exists purely for the situation of when the demo
  // app hosts the Ives theme. Slimscroll will prevent the sidenav
  // bar from collapsing correctly ONLY in the circumstance that
  // someone is wanking the browser window back and forth.
  //
  // It is safe to delete this code yourself.
  $(window).on('resize', function(){
    var width = document.body.clientWidth;
    if(width<800) {
      $('#menu-content').height(0);
      $('#menu-content').slimScroll({
           destroy: 'true'
       });
    } else if( width > 800) {
      $('#menu-content').slimScroll({
           height: '100%'
       });
    }
  });


});
