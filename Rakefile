require 'rake/clean'

task default: %i[install serve]

task install_ruby: 'Gemfile' do
  sh 'bundle install'
end

task install_js: 'package.json' do
  sh 'yarn install'
end
CLOBBER << 'node_modules'

desc 'Installs Ruby and JavaScript dependencies'
multitask install: %i[install_ruby install_js]

task update_ruby: 'Gemfile' do
  sh 'bundle update'
end

task update_js: 'package.json' do
  sh 'yarn upgrade'
end

desc 'Updates Ruby and JavaScript dependencies'
multitask update: %i[update_ruby update_js]

task vendor_js: [
  'node_modules/jquery/dist/jquery.min.js',
  'node_modules/popper.js/dist/umd/popper.min.js',
  'node_modules/bootstrap/dist/js/bootstrap.min.js'
] do |t|
  mkdir_p 'assets/vendor'
  cp t.prerequisites, 'assets/vendor'
end
CLOBBER << 'assets/vendor'

task :build => :vendor_js do
  sh 'bundle exec jekyll build'
end
CLOBBER << '_site'
CLOBBER << '.sass-cache'

task :serve => :vendor_js do
  ENV['JEKYLL_ENV'] = 'production'
  sh 'bundle exec jekyll serve'
end
