Rails.application.routes.draw do

  sites do
    #Gear.mount
    root 'home#index'
  end

  get 'home/index'

  get 'home/about'

  mount Faalis::Engine => '/'
  Faalis::Routes.define_api_routes do
    # Define your API routes here . . .
  end


end
