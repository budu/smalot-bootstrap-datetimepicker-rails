# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smalot-bootstrap-datetimepicker-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "smalot-bootstrap-datetimepicker-rails"
  gem.version       = SmalotBootstrapDatetimepicker::Rails::VERSION
  gem.authors       = ["Nicolas Buduroi"]
  gem.email         = ["nbuduroi@gmail.com"]
  gem.description   = %q{This gem packages the bootstrap-datetimepicker (JavaScripts & stylesheets) for Rails 3.1+ asset pipeline}
  gem.summary       = %q{bootstrap-datetimepicker's JavaScripts & stylesheets for Rails 3.1+ asset pipeline}
  gem.homepage      = "https://github.com/budu/smalot-bootstrap-datetimepicker-rails"
  gem.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]
end
