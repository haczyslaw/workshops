Rails.application.routes.draw do
  devise_for :users

  root "students#index"

  resources :teachers do
    get :subjects
  end

  get "/reports/subjects", to: "reports#subjects", as: "report_subjects"

  resources :students do
    get :subjects
  end
end
