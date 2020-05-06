Rails.application.routes.draw do
  get 'dynamic_page/welcome/:user_entry', to: 'dynamic_page#welcome'
  get 'static_page/team', to: 'static_page#team'
  get 'static_page/contact', to: 'static_page#contact'
  resources :gossips #do 
    #resources :gossiptags
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
