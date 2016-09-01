Rails.application.routes.draw do
  devise_for :users

  root "students#index"
  resources :teachers
  get "/reports/subjects", to: "reports#subjects", as: "report_subjects"

  resources :students do
    get :subjects
  end
end
