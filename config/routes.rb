Rails.application.routes.draw do
  resources :sentences, only: [:index, :show]

  get 'answers/start'
  post 'answers/mark'
end
