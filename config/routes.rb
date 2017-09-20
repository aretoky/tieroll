Rails.application.routes.draw do
  root to: 'customer#top'

  namespace :admin do
    root to: 'top#index'
    resources :top do
      collection do
        post 'confirm'
      end
    end

    resources :staff_member do
      collection do
        post 'confirm'
      end
    end
    get 'login', to: 'session#new', as: :login
    post 'login', to: 'session#create'
    delete 'logout', to: 'session#destroy', as: :logout
  end

  namespace :staff_member do
    resources :top
    get 'login', to: 'session#new', as: :login
    post 'login', to: 'session#create'
    delete 'logout', to: 'session#destroy', as: :logout
  end

  namespace :customer do
    resources :top do
      collection do
        post 'confirm'
      end
    end
    get 'login', to: 'session#new', as: :login
    post 'login', to: 'session#create'
    delete 'logout', to: 'session#destroy', as: :logout
  end
end
