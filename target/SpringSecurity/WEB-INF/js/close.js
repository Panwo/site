$(document).ready(function(){

    $(".close").click(function(){
        var num = $(this).parent(".products-main").find("#item-rem").val();
        var data = {'Delete[]': []};
        data ['Delete[]'].push(num);
        $.post('/remove', data);
        alert('deleted!');
        location.reload();
    });

});