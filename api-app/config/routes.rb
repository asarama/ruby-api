Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :show, :create]
      resources :companies do
        resources :members, only: [:index, :create, :destroy], controller: "company_members"
      end
      resources :users do
        resources :projects, only: [:index], controller: "user_projects"
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end