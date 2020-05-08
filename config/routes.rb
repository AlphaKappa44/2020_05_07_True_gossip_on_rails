Rails.application.routes.draw do
root to:'homes#gossips_list'

  get '/hello/:name', to: 'homes#hello' #on ajoute une variable puis on va dans le controller pour l'utiliser
  get '/welcome/:user_entry', to: 'dynamic_pages#welcome'
  get '/team', to: 'static_pages#team'
  get 'contact', to: 'static_pages#contact'

  resources:gossips #do 
    # resources :gossiptags

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
