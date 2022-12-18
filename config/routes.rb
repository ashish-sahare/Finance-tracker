Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do 
    get '/users/sign_out',to: "devise/sessions#destroy"
  end
 devise_for :installs
  get 'welcomes/index'

  root to: "welcomes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
