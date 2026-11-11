source 'https://rubygems.org'

gemspec

group :test do
  gem 'rails', '~> 8.1.0'
  gem ENV.fetch('ASSET_PIPELINE', 'sprockets-rails')
  gem 'minitest', '~> 5.0'
  gem 'sqlite3', '>= 2.1'
  gem 'good_job', '~> 4.0'
end

gem 'rake', '~> 13.0'
gem 'trestle-auth', github: 'TrestleAdmin/trestle-auth', branch: 'main'
