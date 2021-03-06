Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :posts, only: %i[new create index]
  resources :users, only: %i[new create index]
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'static_pages/home'
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
