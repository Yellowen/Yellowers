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
    get 'sites/new', to: "sites#new"
    post 'sites', to: "sites#create"
    get 'profile/editpassword', to: "profile#edit_password"
    post 'profile/editpassword', to: "profile#update_password"
  end


end
