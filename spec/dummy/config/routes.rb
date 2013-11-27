Rails.application.routes.draw do
  root :to => redirect("/style-guide")
  mount StyleGuide::Engine => "/style-guide"

  resources :style_guide_users, only: [:create]
end
