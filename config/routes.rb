Rails.application.routes.draw do

  namespace :v1 do
    resources :schools, only: [:index, :show] do
      resources :classrooms, only: :index do
        resources :students, only: [:index, :show] do
        end
      end
    end
  end

end
