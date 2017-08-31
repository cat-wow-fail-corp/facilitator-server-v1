# encoding: utf-8
class MyApp < Sinatra::Application
	set :views, File.expand_path('.',  __dir__)

	get "/dashboard" do
		haml :index
	end
end
