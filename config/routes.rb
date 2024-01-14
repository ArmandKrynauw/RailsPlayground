Rails.application.routes.draw do
  devise_for :users

  root "pages#landing"

  get "/service-worker.js" => "service_worker#service_worker"
  get "/manifest.json" => "service_worker#manifest"

  get "pages/home" => "pages#home"
end
