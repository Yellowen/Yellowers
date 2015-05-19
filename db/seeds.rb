Faalis::Engine.load_seed


domain = SiteFramework::Domain.create!(name: 'karajlug.local')
SiteFramework::Site.create!(title: 'Karajlug', domains: [domain])
