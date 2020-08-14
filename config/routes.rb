Rails.application.routes.draw do
  get 'stars/create'
  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[new create]
    resources :stars, only: [:create]
  end
  delete '/doses/:id', to: 'doses#destroy', as: 'dose'
  root 'cocktails#index'
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
