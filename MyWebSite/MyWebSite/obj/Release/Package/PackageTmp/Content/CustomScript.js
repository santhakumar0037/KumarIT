$(document).ready(function () {
    $('#arrow').click(function () {
        $('html, body').animate({
            scrollTop: $('#Experties-section').offset().top
        }, 500, 'linear');
    });

    $('#lblStatus').fadeOut(5000);

    $('#ContactForm').click('hide');

});