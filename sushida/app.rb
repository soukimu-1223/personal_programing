require "sinatra"

get "/" do
    erb :index
end


get "/game_sql" do
    erb :game_sql
end

get "/game_ruby" do
    erb :game_ruby
end

get "/game_aws" do
    erb :game_aws
end