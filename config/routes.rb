Rails.application.routes.draw do
  # get 'top/index'
  root "top#index"
  post "income_values/new(/:name)" => "income_values#new"

  resources :incomes
  resources :fixedcosts
  resources :variablecosts
  resources :income_values
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
