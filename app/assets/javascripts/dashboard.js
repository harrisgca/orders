$(document).ready(function(){


// var activeURL = window.location

// $('#side-nav li').click(function(){
//   $('#side-nav li').removeClass("active");
//   $(this).addClass("active");
// });



// $('#side-nav li')
// $('a[href="' + activeURL + '"]').parent('li').addClass('active');

$("#side-nav a").each(function(){
    if (this.href.search(window.location.hostname) != -1){
        $(this).addClass("active-sidebar-link");
    }
});​




})