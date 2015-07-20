Rails.application.routes.draw do  
  resources :rooms
  resources :rooms, shallow: true do
    resources :reservations
  end
end
