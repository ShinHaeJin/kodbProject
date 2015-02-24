// Replace source
$('img').error(function(){
        $(this).attr('src', 'missing.png');
});

// Or, hide them
$("img").error(function(){
        $(this).hide();
});
var container = document.querySelector('#list');
var msnry = new Masonry( container, {
  
  itemSelector: '.item'
});