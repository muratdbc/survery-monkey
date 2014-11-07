get '/' do
  # Look in app/views/index.erb
  if session[:user_id]
    @user = User.find(session[:user_id])
  end
  erb :index
end

get '/signup' do
  erb :signup
end

post 'signup' do
  #need to implement
end

post '/login' do
  if User.find_by(:email => params[:email], :password => params[:password])
    @user = User.find_by(:email => params[:email], :password => params[:password])
    session[:user_id] = @user.id
  end
  redirect '/'
end


get '/survey/:id/take' do
  if session[:user_id]
    @user = User.find(session[:user_id])
  end
  @survey = Survey.find(params[:id])
  erb :single_survey
end

post '/survey/:id/take' do
  #increment choice frequency
  params[:choices].each do |k, v|
    temp = Choice.find(v.to_i)
    temp.choice_frequency += 1
    temp.save
  end
  redirect '/'
end

get '/:id/surveys' do
 if session[:user_id]
    @user = User.find(session[:user_id])
  end
  erb :your_surveys
end


get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
