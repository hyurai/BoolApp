Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tweets#index'
  resources :tweets,except:[:update]
  post '/tweets/:id' => 'tweets#update'
end
