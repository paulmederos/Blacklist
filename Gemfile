source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'less'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'responders'
gem 'formtastic'
gem 'show_for'
gem 'haml'
gem 'twitter-bootstrap-rails'
gem 'kumade'

# Prime Enterprise domain specific gems
# ==================================================
gem 'high_voltage'
gem 'aasm'
gem 'sentient_user'
gem 'stonepath'
gem 'delegate_presenter'
gem 'sunspot_rails'
gem 'gmaps4rails'

# ==================================================

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'


group :test, :development do
  # To use debugger
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'rspec-rails'
  gem 'cucumber'
  gem 'cucumber-rails'
  gem 'therubyracer'
  gem 'mongrel', '1.2.0.pre2'
  gem 'sqlite3'
  gem 'foreman'
end


group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'shoulda-matchers'
end

group :production do
  gem 'pg'
end
