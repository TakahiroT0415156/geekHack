Rails.application.routes.draw do
  resources :posts do
    collection do
      get :top
    end
  end

  root 'posts#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
