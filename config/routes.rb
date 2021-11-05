Rails.application.routes.draw do
  devise_for :users
  # get 'articles/list' ,to: 'articles#index'
  
  # get "articles/:id" ,to: "articles#show"

  # root 'articles#index'
  root "articles#index"

 get '/home' ,to: 'articles#home'
  resources :articles do
    resources :comments
  end

resources :contacts

  get "articles/contact_us", to: "articles#contact_us"

end


