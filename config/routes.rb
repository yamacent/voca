Rails.application.routes.draw do
  resources :sentences, only: [:index, :show, :edit, :update]

  get 'answers/start'
  post 'answers/mark'
end
