Rails.application.routes.draw do
  sites self do
    root 'home#index'
  end

  default_site self, ['localhost'] do
    get 'home/index'
    get 'home/about'
  end

  mount Faalis::Engine => '/'
  api_routes do
    # Define your API routes here . . .
  end

  in_dashboard do
  end

end
