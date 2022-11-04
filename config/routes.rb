Rails.application.routes.draw do
  root 'home#index'
  resources :novels do
    member do
      post :turn_page
    end
  end
end
