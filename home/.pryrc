# Only load plugins that I explicitly activate
Pry.config.should_load_plugins = false
# Pry.plugins["doc"].activate!

begin
  require 'pry-coolline'
  require 'pry-nav'
  Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
  puts err.inspect
end


# Launch Pry with access to the entire Rails stack.
# If you have Pry in your Gemfile, you can pass: ./script/console --irb=pry instead.
# If you don't, you can load it through the lines below :)

rails = File.join Dir.getwd, 'config', 'environment.rb'

if File.exist?(rails) && ENV['SKIP_RAILS'].nil?
  require rails

  if Rails.version[0..0] == "2"
    require 'console_app'
    require 'console_with_helpers'
  elsif Rails.version[0..0] == "3"
    require 'rails/console/app'
    require 'rails/console/helpers'
  else
    warn "[WARN] cannot load Rails console commands (Not on Rails2 or Rails3?)"
  end
end

# Have ActiveRecord log SQL queries to standard error, so I can see them
if defined?(ActiveRecord)
  require 'logger'
  ActiveRecord::Base.logger = Logger.new(STDERR)
end

