Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :players
      resources :teams
      resources :accounts
    end
  end
end
