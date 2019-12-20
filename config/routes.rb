Rails.application.routes.draw do

  resources :credit_cards
  resources :banks, only: [:index, :new, :create, :show, :update, :edit,:destroy]
 
end
