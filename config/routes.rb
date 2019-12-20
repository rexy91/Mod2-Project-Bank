Rails.application.routes.draw do

  resources :banks, only: [:index, :new, :create, :show, :update, :edit,:destroy]
 
end
