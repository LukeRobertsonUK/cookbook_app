CookbookApp::Application.routes.draw do

  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  resources :users

  resources :sessions, only: [:create, :destroy]


  resources :ingredient_categories


  resources :ingredients


  resources :regions


  resources :meal_categories


  resources :recipes do
    collection do
      match 'search', to: 'recipes#search', via: [:get, :post], as: :search
    end
  end

  resources :authors


  get '/manage', to: "manage#manage"

  root to: 'recipes#index'

get '/login', to: "sessions#new"

end
