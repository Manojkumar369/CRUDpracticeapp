Rails.application.routes.draw do
  # get 'articles/list' ,to: 'articles#index'
  
  # get "articles/:id" ,to: "articles#show"

  # root 'articles#index'
  resources :articles

end
