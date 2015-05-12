Faalis::Engine.load_seed


domain = SiteFramework::Domain.create!(name: 'faalis.io')
SiteFramework::Site.create!(title: 'Faalis', domains: [domain])
