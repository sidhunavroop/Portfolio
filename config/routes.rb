Rails.application.routes.draw do
  devise_for :users
  resources :personalportfolios, except: [:show]
  get 'personalportfolio/:id', to: 'personalportfolios#show', as: 'personalportfolio_show'
  get 'angular-items', to: 'personalportfolios#angular'
  
  get 'about', to:'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs do
    member do
      get :toggle_status 
    end
  end
  root to:'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
