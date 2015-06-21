Rails.application.routes.draw do
  sites self do
    root 'home#index'
  end

  default_site self, ['localhost'] do
    get 'home/index'
    get 'home/about'
  end

  mount Faalis::Engine => '/'
  Faalis::Routes.define_api_routes do
    # Define your API routes here . . .
  end

  namespace Faalis::Engine.dashboard_namespace do
    get 'site/new', to: 'site#new'
    post 'site/new', to: 'site#create'
  end

end
