Rails.application.routes.draw do
  # Routes for our static pages
  root 'static_pages#home'
  get 'static_pages/help'
  get 'static_pages/about'
end
