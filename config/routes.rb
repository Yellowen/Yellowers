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

<<<<<<< HEAD
  namespace Faalis::Engine.dashboard_namespace do
    get 'site/new', to: 'site#new'
    post 'site/new', to: 'site#create'
=======
  in_dashboard do
>>>>>>> c8e230982a3754d27fb6284c90d778025e1ef12f
  end

end
