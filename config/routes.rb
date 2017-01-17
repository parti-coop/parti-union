Rails.application.routes.draw do
  root 'pages#home'

  get 'campaigns/:slug', to: 'pages#campaign_detail', as: :campaign_detail
  get 'platforms/:slug', to: 'pages#platform_detail', as: :platform_detail

  namespace :admin do
    resources :slides
  end
end
