
    namespace :db do
      task fresh: :environment do
        system "rm #{Rails.root}/db/development.sqlite3"
        system "rake db:migrate --trace"
        system "rake db:seed --trace"
      end
    end
  