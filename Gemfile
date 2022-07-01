source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'


gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'bootstrap-sass', '3.4.1'
gem 'bootstrap',  '~>4.3.1'
gem 'jquery-rails'
gem 'rails-i18n'
gem 'faker',          '2.11.0'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'kaminari', '1.1.1'
gem 'chartkick', '~> 4.1', '>= 4.1.3'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.8'
gem 'font-awesome-sass'
gem 'mail_form'
gem 'pg', '~> 1.1'



gem 'bootsnap', '>= 1.4.4', require: false
gem 'rails-controller-testing'
gem 'bcrypt',         '3.1.13'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  
end

group :production do

end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
