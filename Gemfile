source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'coffee-rails', '~> 4.2'
gem 'devise', '~> 4.3'
gem 'friendly_id', '~> 5.1.0'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'petergate', '~> 1.7', '>= 1.7.5'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.1'
gem 'sass-rails', '~> 5.0'
gem 'tarique_view_tool', '~> 0.1.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'kaminari', '~> 1.0', '>= 1.0.1'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'dotenv-rails', '~> 2.2', '>= 2.2.1'
gem 'carrierwave-aws', '~> 1.3'
gem 'carrierwave', '~> 1.2', '>= 1.2.1'
gem 'mini_magick', '~> 4.8'
gem 'cocoon', '~> 1.2', '>= 1.2.11'
gem 'gritter', '~> 1.2'
gem 'twitter', '~> 6.1'
gem 'redis', '~> 3.3', '>= 3.3.1'
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'pry-byebug'
end

group :development do

  gem 'listen', '~> 3.0.5'
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
