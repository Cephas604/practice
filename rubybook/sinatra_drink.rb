require "sinatra"
get "/drink" do
  ["カフェラテ", "モカ", "コーヒー"].sample
end
# sinatra_hi.rbと手順は同じ
