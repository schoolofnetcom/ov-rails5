Rails.application.routes.draw do
  resources :articles
  root to: 'events#index'

  # get '/welcome' => 'welcome#index'
  #
  # mount ActionCable.server => '/ws'
  mount ActionCable.server => '/cable'
end
