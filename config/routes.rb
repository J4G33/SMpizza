Rails.application.routes.draw do
  # Orders routes
  get "orders/new", to: "orders#new"
  post "orders", to: "orders#create"  # Add this missing route

  # Set home#index as the homepage
  root "home#index"

  # Health check route
  get "/up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files
  get "service_worker" => "rails/pwa/service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa/manifest", as: :pwa_manifest

  # About Page
  get "/about", to: "pages#about", as: :about

  # Toppings management routes
  get "/toppings/check_duplicate", to: "toppings#check_duplicate"
  get "/toppings/:id/edit", to: "toppings#edit", as: :edit_topping

  # Pizza toppings route
  get "/pizzas/:type/toppings", to: "pizzas#toppings", as: :pizza_toppings

  # Cart route (if applicable)
  get "/cart", to: "carts#show", as: :cart

  # Order page
  get "/order", to: "orders#new"
  post "/order", to: "orders#create"  # Ensure this is included
end
