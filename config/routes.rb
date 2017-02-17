Rails.application.routes.draw do

  root 'home#index'

  namespace :api, path: '/api/v1' do
    resources :posts
  end

end
