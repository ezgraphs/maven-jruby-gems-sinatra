%w{rubygems sinatra java}.each{|r|require r}
java_import 'java.lang.System'

# Allow changes without restarting server - sometimes :)
configure {Sinatra::Application.reset!; use Rack::Reloader}

get '/' do
   "Hello World (Ruby Platform: #{RUBY_PLATFORM} Ruby Version: #{RUBY_VERSION}) Call From Java: #{System.currentTimeMillis()}"
end