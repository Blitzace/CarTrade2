source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3-ruby', :require => 'sqlite3'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

gem "hobo", "= 2.0.0.pre7"
# Hobo has a lot of assets.   Stop cluttering the log in development mode.

gem "quiet_assets", :group => :development
# Hobo's version of will_paginate is required.

gem "will_paginate", :git => "git://github.com/Hobo/will_paginate.git"
gem "hobo_jquery_ui", "2.0.0.pre7"
gem "hobo_bootstrap", "2.0.0.pre7"
gem "jquery-ui-themes", "~> 0.0.4"
gem "hobo_clean_admin", "2.0.0.pre7"
