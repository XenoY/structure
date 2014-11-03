require 'sinatra'
require 'date'

before do
	@year = DateTime.now.strftime('%Y')
	@color = "white"
end


get '/' do
    erb :index
end

get '/about' do
    erb :about
end

get '/contact' do
	@email = "Etwas lustiges"
	@color = "red"
    erb :contact
end

get '/login' do
	erb :login
end

post '/check' do
	password = params[:password]
	if password == 'qwertz'
		erb :success
	else
		erb :failure
	end
	
end
