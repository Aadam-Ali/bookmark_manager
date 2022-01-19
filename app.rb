require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  post '/bookmark/new' do
    Bookmark.create(params[:address])
    redirect '/bookmarks'

  end

  get '/bookmark/new' do
    erb :"bookmark/new"
  end

  
end
