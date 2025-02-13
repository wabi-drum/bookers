Rails.application.routes.draw do
  root 'homes#top'
  resources :books
  delete '/books/:id' => 'books#destroy', as:'destroy-abook'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
