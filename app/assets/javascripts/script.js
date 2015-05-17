
$(document).ready(function(){  
    $('#main .thumbnails .span2').fadeTo('slow', 0.9);
    $('#main .thumbnails .span2').hover(function(){
        $(this).fadeTo('fast', 1);
    },function(){
        $(this).fadeTo('fast', 0.8); 
    });
    
    var $container = $('.thumbnails');

    $container.imagesLoaded( function(){
        $container.masonry({
            itemSelector : 'li.span2',
            isAnimated: true
        });
    });


    $('#main .thumbnails .span2').hover(function(){
        $(this).css('z-index','100');
    },function(){
        $(this).css('z-index','10');
    });
    
    $('#email,#subject,#email-comment,#name').tooltip();
    
    $('#contact').submit(function(){
        var error = 0;
        if (!validateEmail($('#email').val())) {
            $('#email').parents('.control-group').addClass('error');
            error = 1
        }
        else {
            $('#email').parents('.control-group').removeClass('error');
       
        }
        if (!$('#subject').val()) {
            $('#subject').parents('.control-group').addClass('error');
            error = 1
        }
        else {
            $('#subject').parents('.control-group').removeClass('error');
          
        }
        if (!$('#message').val()) {
            $('#message').parents('.control-group').addClass('error');
            error = 1
        }
        else {
            $('#message').parents('.control-group').removeClass('error');
        
        }
        if (error ==0){
            $('.confirm').show()
            $('#email,#message,#subject').val('');
        }
        return false;
    });
    $('#comment').submit(function(){
        var error = 0;
        if (!validateEmail($('#email-comment').val())) {
            $('#email-comment').parents('.control-group').addClass('error');
            error = 1
        }
        else {
            $('#email-comment').parents('.control-group').removeClass('error');
       
        }
        if (!$('#name').val()) {
            $('#name').parents('.control-group').addClass('error');
            error = 1
        }
        else {
            $('#name').parents('.control-group').removeClass('error');
          
        }
        if (!$('#comment-txt').val()) {
            $('#comment-txt').parents('.control-group').addClass('error');
            error = 1
        }
        else {
            $('#comment-txt').parents('.control-group').removeClass('error');
        
        }
        if (error ==0){
            $('.confirm-comment').show()
            $('#email-comment,#name,#comment-txt').val('');
        }
        return false;
    });

});

function validateEmail(elementValue){  
    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;  
    return emailPattern.test(elementValue);  
}  
