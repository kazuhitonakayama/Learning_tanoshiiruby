p "練習問題第一問：英語と日本語の対応を表すハッシュを作成"
wday = Hash.new

wday.store(:sunday, "日曜日")
wday.store(:monday, "月曜日")
wday.store(:tuesday, "火曜日")
wday.store(:wednesday, "水曜日")
wday.store(:thursday, "木曜日")
wday.store(:friday, "金曜日")
wday.store(:saturday, "土曜日")

p wday[:sunday]

p "=================="

p "練習問題第二問：ハッシュのメソッドを使ってペアの数を数えてください"
wday = Hash.new

wday.store(:sunday, "日曜日")
wday.store(:monday, "月曜日")
wday.store(:tuesday, "火曜日")
wday.store(:wednesday, "水曜日")
wday.store(:thursday, "木曜日")
wday.store(:friday, "金曜日")
wday.store(:saturday, "土曜日")

p wday.size


p "=================="

p "練習問題第三問：「sunday」は日曜日のことです、のような文字列を出力させてください"

wday.each do |key, value|
  p "「#{key}」は#{value}のことです"
end

p "=================="

p "練習問題第四問：str2hashメソッドを定義しなさい"
def str2hash(given_str)
  result_hash = Hash.new
  list = given_str.split(/\s+/)
  while key = list.shift
    value = list.shift
    result_hash[key] = value
  end
  return result_hash
end

result = str2hash("blue 青 white 白 \nred 赤")
p result
