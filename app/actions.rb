helpers do
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end

# Homepage (Root path)
get '/' do
	@ideas = Idea.all
  erb :index
end

get '/signup' do
	erb :'auth/signup'
end

get '/login' do
	erb :'auth/login'
end

# Ideas

get '/ideas/new' do
  erb :'ideas/new'
end

post '/ideas/new' do
  @idea = Idea.new(
    title: params[:title],
    content: params[:content],
    # url: params[:url]
    user_id: current_user.id
    )
  if @idea.save
    redirect '/'
  else
    erb :'ideas/new'
  end
end

get '/ideas/:id' do
  @idea = Idea.find params[:id]
  erb :'ideas/single'
end

# Form Auth

post '/signup' do
  @user = User.new(
  	username: params[:username],
    email: params[:email],
    password: params[:password]
  )

  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :'auth/signup'
  end
end

post '/login' do
	@user  = User.find_by(
		username: params[:username],
		password: params[:password]
		)
	if @user
		session[:user_id] = @user.id
		redirect '/'
	else
		erb :'auth/login'
	end
end

post '/logout' do
  session[:user_id] = nil
  redirect '/'
end

# # Likes/Dislikes

# post '/ideas/:idea_id/likes' do 
#     @idea = Idea.find params[:idea_id]
#     @like = @idea.idea_votes.current_user.idea_votes.find()
# end

# # Create Like

# post '/songs/:song_id/upvotes' do
#    @song = Song.find params[:song_id]
#    @upvote = @song.upvotes.create(user: current_user)
#     redirect '/songs'
# end

