# encoding: utf-8
require 'sinatra'
require 'haml'

class MyApp < Sinatra::Application
  enable :sessions
  set :views, File.expand_path('.',  __dir__)

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

  get '/' do
    haml :layout
  end
end

require_relative 'features/init.rb'
require_relative 'website/dashboard-page/init.rb'
