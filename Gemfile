source 'https://rubygems.org'

# https://github.com/bundler/bundler/issues/1668#issuecomment-4038992

PROJECT_ROOT = File.expand_path('..', __FILE__)

# install all gems needed by sub-libs
%w[ ruby-runtime ruby-tools/jpi ].each do |lib|
  eval File.read(File.join(PROJECT_ROOT, lib, "Gemfile"))
end
