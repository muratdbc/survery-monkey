get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/signup' do
  erb :signup
end

post 'signup' do
  #need to implement
end

post '/login' do
  if params[:email] == "test@gmail.com" && params[:password] == "pass"
 # if User.find_by(:email => params[:email], :password => params[:password])
 #    @user = User.find_by(:email => params[:email], :password => params[:password])
    # session[:user_id] = @user.id
    session[:user_id] = 1
  end
  redirect '/'
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
