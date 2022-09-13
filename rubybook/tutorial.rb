=begin
# 四則演算
puts (1.00 + 2.00)* 3.00 / 4.00 - 5.00

# 累乗・剰余
puts 2 ** 8 % 3

# 文字列の表示
puts "Hello" + " " + "new" + " " + "world!"
puts "6" + "4"

# 文字列・数値の変換
puts 2 + "3".to_i #文字列 → 数値
puts "2" + 3.to_s #数値 → 文字列

# クラス:Integer=整数、Float=小数、String=文字列

# 変数と式展開
order = "ぴょこ"
puts "かえる" + order + order + " " + "み" + order + order
puts "あわせて" + order + order + " " + "む" + order + order
puts "合計#{2 * 4}ぴょこ言った"

# 代入
x = gets
y = gets
puts x.to_i * y.to_i
a = gets
b = gets
puts a + b

# irbの起動
irb #Terminal上での実行
binding.irb #スクリプトでの実行

#デバック用のコマンド
P #直前の変数やオプジェクトを表示する

# 比較
puts 1 < 2 
puts 1 > 2
puts 1 <= 2
puts 1 >= 2
puts 1 == 2 # 等しくなるならtrue
puts 1 != 2 # 等しくならないならtrue
puts "ruby" == "ruby" # 文字列でも出来る
puts "ruby" != "ruby"

# 条件（2つの分岐）
wallet = 500
season = "春"
# 条件を満たしたときに実行される
# &&はandという意味
if season == "春" && wallet >= 600
  puts "コンビニでアイスを買っていこう！"
# 別の条件を満たしたときに実行される
# ||はorという意味
elsif season == "夏" || wallet >= 600 
  puts "コンビニでかき氷を買っていこう！"
# 条件を満たさなかったときに実行される
else
  puts "川沿いを散歩しよう"
end

puts "コンビニでアイスを買っていこう！" if wallet >= 300 # 後置if

unless wallet >= 300 # 条件を満たさないときに実行される
  puts "コンビニでアイスを買っていこう！"
end

x = false
if !x # !でtrueとfalseが反転する
  puts "if: xはfalseです"
end

# 条件（多数の分岐）
order = "パフェ"
case order # 変数を指定しなければifと同じような扱いになる
when "カフェラテ"
  puts "300円です"
when "モカ"
  puts "350円です"
when "コーヒー"
  puts "250円です"
else
  puts "取り扱っていません"
end

# 条件（繰り返し）
3.times do # 指定した回数分繰り返す
  puts "カフェラテ"
end
# doとendを使わなくても表現できる
# 1行でも表現できる
3.times { puts "カフェラテください" }

# 条件（条件付き繰り返し）
biscuit = 0
while biscuit < 5 # 条件を満たしている間ずっと繰り返す
  biscuit += 1
  puts "ポケットをたたくとビスケットが#{biscuit}つ"
end

# 配列
even_numbers = [2, 4, 6] # クラスが異なっていても配列できる
two_numbers = [2, 4, 8]
sugers = ["白砂糖", "黒糖", "角砂糖"]
drinks = ["カフェラテ", "コーヒー", "モカ", "カプチーノ"]
puts even_numbers
puts sugers

# 要素の指定
puts drinks[0] # []で指定すると配列内の特定の要素を取り出せる
puts drinks[3]
puts drinks.first
puts drinks.last
puts drinks[4] # 指定した要素がない場合は「nil」と表示される

# 要素の追加・削除
drinks.push("オレンジジュース") # 末尾に追加
puts drinks[4]
drinks.unshift("ティーラテ") # 先頭に追加
puts drinks[0]
drinks << "アイスティー" # 末尾に追加
puts drinks[6]
drinks.pop # 末尾を削除
puts drinks
drinks.shift # 先頭を削除
puts drinks
puts drinks.pop
puts drinks.shift
puts sugers + drinks # 足し引きも可能
puts even_numbers - two_numbers

# 配列の繰り返し
drinks = ["コーヒー", "カフェラテ", "モカ", "カプチーノ", "ティーラテ"]
drinks.each do |drink| # パイプ内は変数
  next if drink == "カフェラテ" # 指定した回を中断して次の回に進む
  break if drink == "カプチーノ" # 途中で繰り返しを終わらせる
  puts drink
end
(2..9).each do |x|
  puts x
end

# 便利なメソッド
a = [2, 4, 6, 9]
puts a.size # 要素数を得る
puts a.sum # 全要素の合計を得る
puts a.sum / a.size # 平均値を得る
puts a.sum.to_f / a.size # 小数点以下まで表示させる
array1 = [1, 1, 2]
array2 = array1.uniq # 重複する要素を削除する（配列に反映されない）
p array1
p array2
array3 = [1, 1, 2]
array4 = array3.uniq! # 重複する要素を削除する（配列に反映される）
p array3
p array4
p [1, 3, 2, "2", "3"].uniq { |n| n.to_s } # ブロックを渡せる

# 機能からメソッドを探す
puts [1, 2, 3].sample # 要素を一個ランダムで返す
puts [1, 2, 3].shuffle # 要素をランダムで並び変える
puts [7, 3, 9, 1, 4].sort # 要素を順に並び変える
puts [7, 3, 9, 1, 4].sort.reverse # 要素を逆順に並び変える
puts ["カフェラテ", "チーズケーキ", "バニラアイス"].join("と") # 要素を連結して配列にする
p "カフェラテとチーズケーキとバニラアイス".split("と") # 文字列を分割して配列にする

# 配列の各要素を変換する
result = [456, 123].map do |x|
  x * 2
  "#{x}円".reverse
end
p result

# ハッシュ
coffee_menu = {coffee: 300, cafe_latte: 400} # キーと値で組を作る
p coffee_menu[:coffee] # 値を取得する
# キーには文字列（ハッシュロケット必須）、値には文字列や配列を置ける
ruby = {"タイトル" => "Ruby Book", "メンバー" => ["yano", "beco"]}
p ruby["メンバー"]
coffee_menu[:mocha] = 400 # キーと値の組を追加
coffee_menu.default = 0 # キーがなかった場合の値を設定する
p coffee_menu[:tea]
tea_menu = {tea: 300, tea_latte: 400}
menu = coffee_menu.merge(tea_menu) # 複数のハッシュをまとめる
p menu
menu.delete(:mocha) # キーと値の組を削除する
p menu
menu.each do |key, value|
  puts "#{key}は#{value}円です"
end
menu.each_key do |key|
  puts key
end

# メソッドの定義
def area # defでメソッドを作って定義する
  2 * 2
end
puts area
def area(x) # 引数も定義できる
  x * x
end
puts area(2)
def thanks_and_receipt(receipt)
  puts "ありがとうございました。"
  unless receipt
    return # メソッドを途中で終わらせ、後に続くオブジェクトを戻り値とする
  end
  puts "こちら、レシートになります。"
end
thanks_and_receipt(false)
def order(item = "コーヒー") # 引数にデフォルト値を指定できる
  "#{item}をください"
end
puts order
puts order("カフェラテ")
puts order("モカ")
def order(item: "コーヒー", size: "ショート") # キーワード引数で表示する順番を固定できる
  "#{item}を#{size}サイズでください"
end
puts order
puts order(item: "カフェラテ")
puts order(item: "モカ", size: "ペンティ")

# クラス
p 5.class #=> Integer
p "hello".class #=> String
p [3, 67, 32].class #=> Array
#うまくいかない場合は、オブジェクトを（）で囲む
p String.class #=> Class
p 1.even? # 偶数かどうかを判断する
p Array.new(2, "カフェラテ") # 指定されたクラスのオブジェクトを作る
class Drink # クラスを作る
  def order(item) # 新しいクラスにメソッドを定義する
    p self # レシーバを取得
    puts "#{item}をください"
    @name = item # インスタンス変数で変数を他のメソッドと共有できる
  end
  def reorder
    puts "#{@name}をもう一杯ください"
  end
end
drink = Drink.new # クラスのオブジェクトを作って代入
p drink.methods # レシーバであるオブジェクトで呼び出せるメソッドを一覧表示する
p drink
puts drink.order("モカ")
puts drink.reorder
class Drink
  def initialize # オブジェクトが新しく作られるときに自動で呼び出される
    puts "新しいオプジェクト！"
    @name = "カフェラテ" # 初期値を設定できる
  end
  def name
    @name
  end
end
drink = Drink.new
puts drink.name
class Cafe
  def self.welcome # クラスメソッドを定義するときは、メソッド名の前にselfをつける
    "いらっしゃいませ！"
  end
end
puts Cafe.welcome
class Cafe
  class << self # クラスメソッドを複数定義する場合はこの書き方の方が便利
    def welcome
      "いらっしゃいませ！"
    end
    def welcome_again
      welcome + "ありがとうございます！" # 他のメソッドを呼び出せる
    end
  end
end
puts Cafe.welcome_again
class Item
  def name
    @name
  end
  def name=(text)
    @name = text
  end
end
class Drink < Item # 他クラスの全メソッドを継承できる
  def size
    @size
  end
  def size=(text)
    @size = text
  end
end
item = Item.new
item.name = ("カフェラテ")
drink = Drink.new
drink.name = ("モカ")
drink.size = ("tall")
puts "#{drink.name} #{drink.size}サイズ"
p Integer.ancestors # クラスの継承関係を見る
# superで親クラスの同名メソッドを呼び出せる
class Cafe
  private_class_method def self.welcome # クラスメソッドのレシーバ呼び出しを禁止する
    "いらっしゃいませ！"
  end
  def self.welcome_again
    welcome + "ありがとうございます！"
  end
  def staff
    makanai
  end
  private # 以降のレシーバを指定してのメソッド呼び出しを禁止する
  def makanai
    "店員用スペシャルメニュー"
  end
  public # 以降のprivateを解除する
  def order(item)
    puts "#{item}をください"
  end
end

# 部品を共同利用する - モジュール
module WhippedCream # 複数のクラスで部品を共同利用できる
  def whipped_cream
    @name += "ホイップクリーム"
  end
end
class Drink
  include WhippedCream # モジュールをクラスで使えるようにする
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end
drink = Drink.new("モカ")
drink.whipped_cream
puts drink.name
module Greeting
  def welcome
    "いらっしゃいませ！"
  end
end
class Cafe
  extend Greeting # extendを使うとクラスメソッドとして使えるようになる
end
puts Cafe.welcome
puts Math::PI # モジュールの定数を使うときは::を間に入れる
puts Math.cos(Math::PI) # Rubyが用意しているモジュールもある
module BecoCafe # 同じクラス名を別々に定義するときにも使える
  class Coffee
    def self.info
      "深みと香りのコーヒー"
    end
  end
end
module MachuCafe
  class Coffee
    def self.info
      "豊かな甘みのコーヒー"
    end
  end
end
puts BecoCafe::Coffee.info
puts MachuCafe::Coffee.info
require_relative "whipped_cream" # 他ファイルに定義されたクラスやモジュールを使えるようにする
class Drink
  include WhippedCream
  def name
    @name
  end
  def initialize
    @name = "モカ"
  end
end
mocha = Drink.new
mocha.whipped_cream
puts mocha.name

# Webアプリを作る
gem install Gem名 # 外部ライブラリをインストールする
gem i Gem名
gem list # インストールされたGemとそのバージョンを確認する
require "awesome_print" # requireでGemを使えるようにする
ap ["カフェラテ", "モカ", "コーヒー"]

# Bundler
bundle init # Gemfileを作る
bundle install # Gemfileに書き込んだgemを全てインストールする
bundle i
bundle
# インストール時にGemfile.lockが作られるが、
# Gem名とそのバージョンが記載されているため、必ず保管する
bundle update # Gemをバージョンアップする
bundle exec ruby example.rb # bundle execで指定したバージョンのGemを使う

# 例外処理
begin
  # 例外が発生する可能性がある処理
rescue
  # 例外が発生したときに実行する処理（rescue節）
ensure
	# 例外の発生有無に関わらず実行される処理
end
puts "金額を入力してください"
bill = gets.to_i
puts "割り勘する人数を入力してください"
number = gets.to_i
begin
  warikan = bill / number
  puts "１人あたり#{warikan}円です"
rescue ZeroDivisionError # => e と書くと、変数eに例外オブジェクトを代入できる
  # ZeroDivisionError例外が発生したらメッセージを表示する
  puts "おっと、0人では割り勘できません"
end # メソッド及びブロック内ではbeginとendを省略できる
def type(age)
	if age < 0
		raise "年齢がマイナスです（#{age}才）" # raiseでエラーを発生させる
	elsif age < 20
		"未成年"
	else
		"成年"
	end
end
begin
	age = ARGV.first.to_i
	type = type(age)
	puts "#{age}才は#{type}です"
rescue => e
	puts "例外が発生しました #{e.message}"
ensure
	puts "ご利用ありがとうございました"
end
=end

# クラスの高度な話

