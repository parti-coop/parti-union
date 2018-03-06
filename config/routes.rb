Rails.application.routes.draw do
  root 'pages#home'

  get 'campaigns/:slug', to: 'pages#campaign_detail', as: :campaign_detail
  get 'platforms/:slug', to: 'pages#platform_detail', as: :platform_detail
  get 'products/:slug', to: "products#product_detail", as: :product_detail
  get 'about', to: 'pages#about', as: :campagin_detail

  namespace :admin do
    resources :slides
  end

  resources :products


end
