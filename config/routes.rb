Rails.application.routes.draw do

  root to: 'travelers#home'

  resources :travelers do
    resources :early_bookings
  end

end
