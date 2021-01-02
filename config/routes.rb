Rails.application.routes.draw do
  resources :users do   
    resources :moves do
      get 'items' => 'items#allItemsInAMove'
      resources :boxes do 
        resources :items do
        end
      end
    end
  end
end

