Rails.application.routes.draw do

  get '/schools', to: "schools#index", as: "schools"
  get '/schools/support', to: "schools#support", as: "schools_support"
  get '/schools/:id', to: "schools#show", as: "school"

  #student routes
  get '/students', to: "students#index", as: "students"
  get '/students/new', to: "students#new", as: "new_student"
  get '/students/:id', to: "students#show", as: "student"
  post '/students', to: "students#create"
  get '/students/:id/edit', to: "students#edit", as: "edit_student"
  patch '/students/:id', to: "students#update"
  delete '/students/:id', to: "students#destroy", as: "delete_student"
  post '/students/search', to: "students#search", as: "search_student"
  
  #teacher
  get '/teachers', to: "teachers#index", as: "teachers"
  get '/teachers/new', to: "teachers#new"
  get '/teachers/:id', to: "teachers#show", as: "teacher"
  get '/teachers/:id/edit', to: "teachers#edit", as: "edit_teacher"
  post '/teachers', to: "teachers#create"
  patch '/teachers/:id', to: "teachers#update"
  delete '/teachers/:id', to: "teachers#delete", as: "delete_teacher"
  
  #courses
  get '/courses', to: "courses#index", as: "courses"
  get '/courses/new', to: "courses#new"
  get '/courses/:id', to: "courses#show", as: "course"
  get '/courses/:id/edit', to: "courses#edit", as: "edit_course"
  post '/courses', to: "courses#create"
  patch '/courses/:id', to: "courses#update"
  delete '/courses/:id', to: "courses#delete", as: "delete_course"
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
