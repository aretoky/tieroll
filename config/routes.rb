Rails.application.routes.draw do
  root to: 'customer/shopping#index'

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

  namespace :staff do
    root to: 'member#show'
    resources :member
    get 'login', to: 'session#new', as: :login
    post 'login', to: 'session#create'
    delete 'logout', to: 'session#destroy', as: :logout
  end

  # urlをtieroll/~~にしたい
  namespace :customer, path: '' do
    root to: 'shopping#index'
    resources :user do
      collection do
        post 'confirm'
      end
    end
    resources :shopping

    get 'login', to: 'session#new', as: :login
    post 'login', to: 'session#create'
    delete 'logout', to: 'session#destroy', as: :logout
  end
end
