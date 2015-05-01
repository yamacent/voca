centeringModal = ->
    $win = $(window)
    w = $win.width()
    h = $win.height()

    $modal = $('#modal-result')
    mw = $modal.outerWidth(true)
    mh = $modal.outerHeight(true)

    $modal.css(left: "#{(w - mw) / 2}px")
    $modal.css(top: "#{(h - mh) / 2}px")

    return

isModalOpen = ->
    $('#modal-overlay')[0]?

moveToNextQuestion = ->
    location.href = '/start'

closeModal = ->
    $('#modal-result,#modal-overlay').fadeOut 'slow', ->
        moveToNextQuestion()
        $('#modal-result').removeClass()
        $('#modal-overlay').remove()

openModal = ->
    $(this).trigger('blur')
    if isModalOpen() then return false

    $('<div id="modal-overlay"></div>')
        .appendTo(document.body)
        .fadeIn('slow')
    $('#modal-result').fadeIn('slow')
    centeringModal()

    $('#modal-close,#modal-overlay').off().on 'click', closeModal

$(document).on 'page:change', ->
    form = document.answer_form
    if form?
        form.answer.focus()
        $(form).on 'keypress', (e) ->
            if e.keyCode is 13
                $(e.target).trigger('blur')
        $(form).on 'ajax:success', (e, data) ->
            a = data.answer
            if a.result
                $('#result-header').text('正解')
                $('#modal-result').addClass('panel panel-success')
            else
                $('#result-header').text('不正解')
                $('#modal-result').addClass('panel panel-danger')
            $('#result-japanese').text('問題: ' + a.japanese)
            $('#result-english').text('答え: ' + a.english)
            $('#result-useranswer').text('回答: ' + a.user_answer)

            openModal()

$(document).on 'keypress', (e) ->
    if e.keyCode is 13
        closeModal() if isModalOpen()
