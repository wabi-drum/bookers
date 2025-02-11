Rails.application.routes.draw do
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  resources :books
  root 'homes#top'
  get 'books/:id' => 'books#show', as: 'booker'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
