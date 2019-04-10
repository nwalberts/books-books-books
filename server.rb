require 'sinatra'
require "sinatra/reloader" if development?
require 'sinatra/flash'
require "pry" if development? || test?
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces

configure do
  set :views, 'app/views'
end

enable :sessions

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
  also_reload file
end

get '/' do
  redirect '/books'
end

get '/books' do
  erb :'books/index'
end




# Book.create(title: , description:)
# Book.create(title: , description:)

# Author.create(name:)
# Author.create(name:)

# Authorship.create(author_id:, book_id:)
# Authorship.create(author_id:, book_id:)
