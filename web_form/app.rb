require "sinatra"

get "/" do
    erb :index
end

get "/contact" do
    erb :contact
end

get "/complete" do
    erb :complete
end