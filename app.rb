# encoding: utf-8
require 'sinatra'
require 'haml'

class MyApp < Sinatra::Application
  enable :sessions

  configure :production do
    set :haml, { :ugly=>true }
    set :clean_trace, true
  end

  configure :development do
    # ...
  end

  helpers do
    include Rack::Utils
    alias_method :h, :escape_html
  end

  get '/dashboard' do
    haml :dashboard
  end

	get '/logs' do
		content_type :json
		{ :database_logs => ['Log Line 1', 'Log Line 2'], :application_logs => ['Log Line 1', 'Log Line 2'] }.to_json
	end
end
