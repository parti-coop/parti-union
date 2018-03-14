Rails.application.routes.draw do
  root 'pages#home'

  get 'campaigns/:slug', to: 'pages#campaign_detail', as: :campaign_detail
  get 'platforms/:slug', to: 'platforms#platform', as: :platform_detail
  get 'products/:slug', to: "products#product_detail", as: :product_detail
  get 'about', to: 'abouts#about', as: :about_detail
  get 'campaign', to: 'campaigns#campaign', as: :campaigns

  namespace :admin do
    resources :slides
  end

  resources :products


end
