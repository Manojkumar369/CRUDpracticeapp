Rails.application.routes.draw do
  # get 'articles/list' ,to: 'articles#index'
  
  # get "articles/:id" ,to: "articles#show"

  # root 'articles#index'
  get '/home' ,to: 'articles#home'
  resources :articles

end
