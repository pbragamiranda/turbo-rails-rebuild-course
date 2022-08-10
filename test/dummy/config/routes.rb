Rails.application.routes.draw do
  resources :articles
  # mount PmTurboClone::Engine => "/pm_turbo_clone"
end
