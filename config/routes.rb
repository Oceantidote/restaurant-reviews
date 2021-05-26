Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # get '/restaurants/top_restaurants', to: 'restaurants#top_restaurants', as: 'top_restaurants'
  resources :restaurants do
    # STATIC
    collection do
      get :top_restaurants
      get :worst_restaurants
    end
    # DYNAMIC
    member do
      get :chef_name
    end
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]


  # get 'restaurants', to: 'restaurants#index'
  # get '/restaurants/new', to: 'restaurants#new'
  # get '/restaurants/:id', to: 'restaurants#show'
  # post '/restaurants', to: 'restaurants#create'
  # get '/restaurants/:id/edit', to: 'restaurants#edit'
  # patch '/restaurants/:id', to: 'restaurants#update'
  # delete '/restaurants/:id', to: 'restaurants#destroy'
end
