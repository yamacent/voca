Rails.application.routes.draw do
  resources :sentences, only: [:index, :show, :edit, :update]

  root 'sentences#index'
  match 'start', to: 'answers#start', via: 'get'
  match 'mark',  to: 'answers#mark',  via: 'post'
end
