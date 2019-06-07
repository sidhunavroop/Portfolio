Rails.application.routes.draw do
  resources :comments
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'register'
  }

  resources :personalportfolios, except: [:show] do
    put :sort, on: :collection
  end
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
