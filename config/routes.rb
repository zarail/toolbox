Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :tools do
    resources :bookings, only: %i[new create show]
  end

  get "/dashboard", to: "pages#dashboard"
  # Defines the root path route ("/")
  # root "articles#index"
end

# /tools                        GET	tools     index
# /tools/:id	                  GET	tools     show
# /tools/:tool_id/bookings/new	GET	bookings	new
# /tools/:id/edit               GET	tools	    edit
# /tools/:tool_id/bookings/:id  GET	bookings	show

# tool_bookings POST   /tools/:tool_id/bookings(.:format)
# bookings#create
# new_tool_booking GET    /tools/:tool_id/bookings/new(.:format)
# bookings#new
#    tool_booking GET    /tools/:tool_id/bookings/:id(.:format)
# bookings#show
