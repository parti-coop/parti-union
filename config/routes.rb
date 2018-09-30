Rails.application.routes.draw do
  root 'pages#home'

  get 'subscribe', to: 'pages#subscribe', as: :subscribe
  get 'campaigns/:slug', to: 'pages#campaign_detail', as: :campaign_detail
  get 'platforms/:slug', to: 'platforms#platform', as: :platform_detail
  get 'products/:slug', to: "products#product_detail", as: :product_detail
  get 'about', to: 'abouts#about', as: :about_detail
  get 'campaign', to: 'campaigns#campaign', as: :campaigns
  get 'contents', to: 'contents#contents', as: :contents
  get 'en', to: 'pages#english', as: :english
  post 'stibee', to: 'pages#stibee', as: :stibee

  namespace :admin do
    resources :slides
  end

  resources :products


end
