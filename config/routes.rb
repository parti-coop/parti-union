Rails.application.routes.draw do
  root 'pages#home'

  get 'campaigns/:slug', to: 'campaigns#show', as: :campaign_detail
end
