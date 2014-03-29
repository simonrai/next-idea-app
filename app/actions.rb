# Homepage (Root path)
get '/' do
	@ideas = Idea.all
  erb :index
end
