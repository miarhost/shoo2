source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.2'

gem 'puma', '~> 3.11'
gem 'active_model_serializers', '~> 0.10.9'
gem 'sass-rails', '~> 5.0'
gem 'jquery-rails', '~> 4.3.1'

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
	 gem "sqlite3", "~> 1.3.6"
	 gem 'rspec-rails', '~> 3.8'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg', '~> 0.21.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
