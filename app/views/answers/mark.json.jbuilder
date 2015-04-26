json.answer do
  json.result @result
  json.extract! @sentence, :japanese, :english
  json.user_answer @user_answer
end
