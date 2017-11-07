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
    resources  :main_product, :jacket, :belt, :shurt, :pant, :pocket_chief, :shoes, :tie_pin, :tie, :vest, :socks, :necktie do
      collection do
        post 'confirm'
      end
    end
    get 'login', to: 'session#new', as: :login
    post 'login', to: 'session#create'
    delete 'logout', to: 'session#destroy', as: :logout

    get 'item_post', to: 'item#item_post'
    get 'item_edit', to: 'item#item_edit'
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
