Rails.application.routes.draw do

  root 'links#index'

  resources :links, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :reads, only: [:create, :index]
    end
  end

end
