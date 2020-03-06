Rails.application.routes.draw do
  get 'top/index'
  root "top#index"

  resources :incomes
  resources :fixedcosts
  resources :variablecosts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
