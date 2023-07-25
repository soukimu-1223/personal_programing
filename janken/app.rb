require "sinatra"

get "/" do
    erb :janken
end

post "/result" do
    erb :result
end
