module Seeds
  class SiteCategories

    def self.load
      SiteCategory.create(name: 'Arts and Entertainment')
      SiteCategory.create(name: 'Automotive')
      SiteCategory.create(name: 'Beauty and Fitness')
      SiteCategory.create(name: 'Books and Literature')
      SiteCategory.create(name: 'Business and Industrial Markets')
      SiteCategory.create(name: 'Computers and Electronics')
      SiteCategory.create(name: 'Finance')
      SiteCategory.create(name: 'Food and Drink')
      SiteCategory.create(name: 'Games')
      SiteCategory.create(name: 'Healthcare')
      SiteCategory.create(name: 'Hobbies and Leisure')
      SiteCategory.create(name: 'Home and Garden')
      SiteCategory.create(name: 'Internet and Telecom')
      SiteCategory.create(name: 'Jobs and Education')
      SiteCategory.create(name: 'Law and Government')
      SiteCategory.create(name: 'News')
      SiteCategory.create(name: 'Online Communities')
      SiteCategory.create(name: 'People and Society')
      SiteCategory.create(name: 'Pets and Animals')
      SiteCategory.create(name: 'Real Estate')
      SiteCategory.create(name: 'Reference')
      SiteCategory.create(name: 'Science')
      SiteCategory.create(name: 'Shopping')
      SiteCategory.create(name: 'Sports')
      SiteCategory.create(name: 'Travel')
      SiteCategory.create(name: 'Other')

    end
  end
end
