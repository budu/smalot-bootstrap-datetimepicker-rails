#!/usr/bin/env rake
require "bundler/gem_tasks"

task :submodule do
  sh 'git clone https://github.com/smalot/bootstrap-datetimepicker.git bootstrap-datetimepicker' unless File.exist?('bootstrap-datetimepicker/README.md')
  sh "cd bootstrap-datetimepicker && git pull origin master"
end

desc "Remove the vendor directory"
task :clean do
  rm_rf 'vendor'
end

desc "Generate the JavaScript assets"
task javascripts: :submodule do
  target_dir = "vendor/assets/javascripts"
  FileUtils.mkdir_p target_dir
  Rake.rake_output_message 'Generating javascripts'
  FileUtils.cp_r Dir["bootstrap-datetimepicker/js/*"], "vendor/assets/javascripts"
  FileUtils.rm Dir.glob('vendor/assets/javascripts/*.min.js')
end

desc "Generate the CSS assets"
task stylesheets: :submodule do
  target_dir = "vendor/assets/stylesheets"
  mkdir_p target_dir
  Rake.rake_output_message 'Generating stylesheets'
  FileUtils.cp_r Dir["bootstrap-datetimepicker/css/*"], "vendor/assets/stylesheets"
  FileUtils.rm Dir.glob('vendor/assets/stylesheets/*.min.css')
end

desc "Clean and then generate everything (default)"
task assets: [:clean, :javascripts, :stylesheets]

task build: :assets

task default: :assets
