Rails.application.routes.draw do
  get "orders/new", to: "orders#new"
  post "orders", to: "orders#create"  # This adds the missing POST route for order creation

  root "home#index"  # Set home#index as the homepage

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "/up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service_worker" => "rails/pwa/service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa/manifest", as: :pwa_manifest

  # Add route for the About page with a named helper
  get "/about", to: "pages#about", as: :about

  # Add routes for toppings management (from application.html.erb JavaScript)
  get "/toppings/check_duplicate" => "toppings#check_duplicate"
  get "/toppings/:id/edit" => "toppings#edit", as: :edit_topping

  # Add route for pizza toppings
  get "/pizzas/:type/toppings" => "pizzas#toppings", as: :pizza_toppings

  # Add route for cart (if not already present)
  get "/cart", to: "carts#show", as: :cart

  get "/order", to: "orders#new"
end
