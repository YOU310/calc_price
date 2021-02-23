Rails.application.routes.draw do
  get "/discounts", to: "discounts#index"

  get "/discounts/new", to: "discounts#new"

  post "/discounts", to: "discounts#create"
end
