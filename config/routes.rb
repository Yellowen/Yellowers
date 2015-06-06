Rails.application.routes.draw do

  sites do
    #Gear.mount
    root 'home#index'
  end

  default_site do
    get 'home/index'
    get 'home/about'
  end

  mount Faalis::Engine => '/'
  Faalis::Routes.define_api_routes do
    # Define your API routes here . . .
  end


end
