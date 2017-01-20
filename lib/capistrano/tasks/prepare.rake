namespace :prepare do
   desc "Copy files"
   task :copy do
      on roles(:all) do |host|
         %w[ secrets.yml database.yml ].each do |f|
            upload! './config/' + f , "/var/www/#{fetch(:application)}/shared/config/" + f
         end
      end
   end
end
