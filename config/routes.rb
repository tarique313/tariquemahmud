Rails.application.routes.draw do
  devise_for :users, path: "", path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  resources :portfolios, except: [:show]
  get 'ruby_on_rails_portfolio_items', to: "portfolios#ror"
  get 'penetration_testing_portfolio_items', to: 'portfolios#pentest_portfolio_items' 
  get 'portfolios/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
