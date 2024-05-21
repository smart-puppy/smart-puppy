# Rails.application.routes.draw do
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#   devise_for :users

#   root to: "pages#home"

#   # Static pages
#   get 'dashboard', to: 'pages#dashboard'
#   get 'about-us', to: 'pages#about_us', as: :about_us
#   get 'get-in-touch', to: 'pages#get_in_touch', as: :get_in_touch
#   get 'cookies-preferences', to: 'pages#cookies_preferences', as: :cookies_preferences
#   get 'privacy-policy', to: 'pages#privacy_policy', as: :privacy_policy

#   # Defines the root path route ("/")
#   # root "posts#index"

#   # NEsted resources for jobs and applications
#   resources :jobs do
#     resources :applications, only: [:create, :new]
#   end

#   resources :dashboard do
#     resources :my_jobs
#     resources :my_resumes
#   end

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
#   get "up" => "rails/health#show", as: :rails_health_check
# end


# config/routes.rb
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users

  root to: "pages#home"

  # Static pages
  get 'dashboard', to: 'pages#dashboard'
  get 'about-us', to: 'pages#about_us', as: :about_us
  get 'get-in-touch', to: 'pages#get_in_touch', as: :get_in_touch
  get 'cookies-preferences', to: 'pages#cookies_preferences', as: :cookies_preferences
  get 'privacy-policy', to: 'pages#privacy_policy', as: :privacy_policy

  # Defines the root path route ("/")
  # root "posts#index"

  # Nested resources for jobs and applications
  resources :jobs do
    resources :applications, only: [:create, :new]
  end

  get 'dashboard/my_jobs', to: 'pages#my_jobs', as: :my_jobs
  get 'dashboard/my_resumes', to: 'pages#my_resumes', as: :my_resumes

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
