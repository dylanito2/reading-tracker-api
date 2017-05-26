Rails.application.routes.draw do

  namespace :v1 do

    resources :students, only: :index do
      resources :reading_levels, only: :show
    end

    
    resources :students, only: :index do
      resources :comments, only: :create
    end

    resources :schools, only: [:index, :show] do
      resources :classrooms, only: :index do
        resources :students, only: [:index, :show] do
        end

      end
    end
  end

end
