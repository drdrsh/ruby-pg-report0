git clone https://github.com/drdrsh/ruby-pg.git --branch mostafa_set-internal-encoding
cd ruby-pg
cat ext/pg_connection.c
printf "module PG\nVERSION = '1.5.3-fix'\nend" > lib/pg/version.rb
gem build pg.gemspec
gem install pg-1.5.3.pre.fix.gem
