Rails.application.routes.draw do
  root 'characters#new'
  resources :characters
end
