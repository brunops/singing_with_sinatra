require 'sinatra'
require 'shotgun'

get '/' do
  'Sup!'
end

get '/hello' do
  "Hello, World!"
end

get '/hello/:name' do
  "Hello #{params[:name]}, dear friend."
end

get '/more/*' do
  "Test splat operator #{params[:splat][0].split('/').join("|")}"
end

get '/form' do
  erb :form
end

post '/form' do
  "You've just posted '#{params[:message]}' with an awesome form!"
end
