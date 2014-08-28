source 'https://rubygems.org'

gem 'rails', '~> 4.1.4'
gem 'pg'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',      group: :doc

group :development, :test do
  gem 'rspec', '~> 3.0'
  gem 'shoulda-matchers'

  gem 'factory_girl', '~> 4.0'
  gem 'database_cleaner'
  gem 'ffaker'

  gem 'diff_matcher'

  # https://github.com/nixme/jazz_hands/issues/25
  gem 'jazz_hands', github: 'nixme/jazz_hands', branch: 'bring-your-own-debugger'
  gem 'pry-byebug'   # This may or may not work with 2.1.2 either, so remove if you still get errorrs
end
