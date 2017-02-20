Rails.application.routes.draw do

  root 'home#index'

  post 'authenticate', to: 'authentication#authenticate'

  namespace :api, path: '/api/v1' do
    resources :posts
  end

end
