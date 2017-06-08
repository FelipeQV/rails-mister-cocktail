Rails.application.routes.draw do

 resources :cocktails, only: [:index, :show, :new, :create] do
  resources :doses, only: [:new, :create]
end

resources :doses, only: [:destroy]
end



# Rails.application.routes.draw do
#   resources :restaurants do
#     resources :reviews, only: [ :index, :new, :create ]
#   end
#   # resources :reviews, only: [ :show, :edit, :update, :destroy ]
# root to: 'restaurants#index'
# end
