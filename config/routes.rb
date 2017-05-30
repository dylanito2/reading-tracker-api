Rails.application.routes.draw do

  namespace :v1 do
    get 'students/fuzzy-search', to: 'students#fuzzy_search'
    get '/students/:student_id/reading_levels', to: "students_reading_levels#index"
    post '/students/:student_id/conferences', to: "conferences#create"
    get '/teachers/:teacher_id/students', to: "teachers_students#index"

    resources :schools, only: [:index, :show] do
      resources :classrooms, only: :index do
        resources :students, only: [:index, :show] do
        end

      end
    end
  end

end
