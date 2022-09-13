require "sinatra"
get "/hi" do
  "hi"
end
# ruby sinatra_hi.rb -p 4567で起動
# http://localhost:4567/hiにアクセス
