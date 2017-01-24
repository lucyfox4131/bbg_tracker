source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem "omniauth-google-oauth2"
gem 'rails_12factor', group: :production
gem "figaro"
gem 'bootstrap-sass', '~> 3.3.6'
# gem 'sass-rails', '>= 3.2'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'pry-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'active-designer'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
end

group :test do
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'launchy'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
