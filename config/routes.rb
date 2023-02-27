Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :tools do
    resources :bookings, only: [:new, :create, :show]
  end

  # Defines the root path route ("/")
  # root "articles#index"
end

# /tools                        GET	tools     index
# /tools/:id	                  GET	tools     show
# /tools/:tool_id/bookings/new	GET	bookings	new
# /tools/:id/edit               GET	tools	    edit
# /bookings/new                 GET	bookings	new
# /bookings/:id                 GET	bookings	show
