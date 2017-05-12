rake db:create

rake db:create_migration NAME=create_stores
#then edit the migration to have the right columns
rake db:migrate

rake db:create_migration NAME=create_brands
#then edit the migration to have the right columns
rake db:migrate

rake db:create_migration NAME=create_brands_stores
#then edit the migration to have the right columns
rake db:migrate

rake db:test:prepare
#and now you can begin testing!
