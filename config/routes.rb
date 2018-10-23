Rails.application.routes.draw do
  resources :article, only: %i[index show new create edit update]
end
