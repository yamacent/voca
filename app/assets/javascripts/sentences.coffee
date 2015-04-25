$(document).on 'page:change', ->
    topBtn = $('#page-top')
    topBtn.hide()

    $(window).scroll ->
        if $(this).scrollTop() > 100
            topBtn.fadeIn()
        else
            topBtn.fadeOut()
        return

    topBtn.click ->
        $('body,html').animate
            scrollTop: 0
        , 500

        return false
