# encoding: utf-8
class MyApp < Sinatra::Application
	set :views, File.expand_path('../views',  __dir__)

	get "/revenue" do
		@Revenue = "$10000"
		haml :index
	end
end
