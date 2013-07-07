CookbookApp::Application.routes.draw do
  resources :ingredient_categories


  resources :ingredients


  resources :regions


  resources :meal_categories


  resources :recipes


  resources :authors


  get '/manage', to: "manage#manage"

  root to: 'recipes#index'
end
