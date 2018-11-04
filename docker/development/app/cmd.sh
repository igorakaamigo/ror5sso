bin/bundle install --jobs 20 --retry 5 --without production
bin/rake log:clear tmp:clear db:migrate db:seed
bin/rails s
