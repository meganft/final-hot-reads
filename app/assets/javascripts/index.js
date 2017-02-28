$( document ).ready(function(){
  $('.link-list').on('click', sendData)
})

  function sendData(e) {
    e.preventDefault();
    var topLink = $(this).children().first();
    var $link = $(this).parents('.link');
    var url = topLink.data('link-url');

    $.ajax({
     type: "POST",
     url: "https://url-lockbox-final.herokuapp.com/api/v1/reads",
     data: {link: url},
     success: function(){
        alert("Marked as Read on Hot Reads");
       },
       error: function(error){
         console.log(error);
    }

})
};
