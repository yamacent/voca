# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.addEventListener('load',
    -> document.answer_form?.answer.focus(),
    false)

window.addEventListener('keypress',
    -> document.getElementById('next_link')?.focus(),
    false)
