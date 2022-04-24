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
