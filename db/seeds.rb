Faalis::Engine.load_seed
Seeds::Users.load
Seeds::SiteCategories.load

namespace = Namespace.create!(name: 'karajlug', owner_id: 1)

domain1   = SiteFramework::Domain.create!(name: 'site-karajlug.factorien.com',
                                          alias: false,
                                          namespace: namespace)

domain2   = SiteFramework::Domain.create!(name: 'karajlug.local',
                                          parent_id: domain1,
                                          alias: true,
                                          namespace: namespace)

site = SiteFramework::Site.create!(title: 'Karajlug',
                                   site_category_id: 1,
                                   owner_id: 1,
                                   domains: [domain1,
                                             domain2]);
