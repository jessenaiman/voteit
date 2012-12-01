Voteit::Application.routes.draw do
  resources :add_group_to_users


  resources :add_location_to_users


  resources :user_votes


  resources :votes


  resources :answers


  resources :questions


  resources :groups


  root :to => "home#index"
  resources :users, :only => [:index, :show, :edit, :update ]
  match '/auth/:provider/callback' => 'sessions#create'
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
  match '/auth/failure' => 'sessions#failure'
end
