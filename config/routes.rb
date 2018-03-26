Rails.application.routes.draw do
  get 'static_pages/help'

  get 'static_pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home"
  get "pages/home", to: "pages#home" 

  get "/recipes" , to: "recipes#index"
  get "/recipes/new" , to: "recipes#new"
  #get "/recipes/:id/edit" , to: "recipes#edit"

  get '/recipe_list', to: 'recipe_list#index'

  get '/recipe_listing' , to: 'recipe_listing#index'

end
