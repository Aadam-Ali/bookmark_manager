require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/bookmarks'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    erb :bookmarks
  end

  post '/bookmarks/new' do
    Bookmarks.create(params[:address])
    redirect '/bookmarks'

  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  
end
