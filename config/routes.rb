Rails.application.routes.draw do
  resources :users do
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'   
    resources :moves do
      get 'items' => 'items#allItemsInAMove'
      resources :boxes do 
        resources :items do
        end
      end
    end
  end
end

