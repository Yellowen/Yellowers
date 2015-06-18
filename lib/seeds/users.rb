module Seeds
  class Users

    def self.load
      unless Rails.env.production?
        Faalis::User.create({ email: 'user@user.com',
                              group_id: 1,
                              password: '123123123',
                              password_confirmation: '123123123'})

      end
    end
  end
end
