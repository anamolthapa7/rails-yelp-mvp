Rails.application.routes.draw do
  # Routes for viewing all restaurnats
  get '/restaurants', to: 'restaurants#index', as: :restaurants
  get '/restaurants/new', to: 'restaurants#new', as: :restaurant_new
  post '/restaurants/', to: 'restaurants#create'
  get 'restaurants/:id', to:'restaurants#show', as: :restaurant_show

  # Routes for the reviews for the restaurants
  get '/restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  post '/restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews
  get '/restaurants/:restaurant_id/reviews', to: 'reviews#index', as: :restaurant_reviews_index


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
