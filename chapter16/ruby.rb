p "============="
p "Regexpで正規表現オブジェクトを生成する"
re = Regexp.new("Ruby")
p re

p "============="
p "%r、でも作成できるよ"
re = %r(Ruby)
p re

p "============="
p "正規表現 =~ 文字列、で正規表現比較ができる。マッチしない場合はnilを返す！！！マッチしたら、文字列の中でそのマッチする文字列が始まる文字の位置を返すよ"
re = /A.C/
p re =~ "VBC" 

options = "options"
hash = {
  options => "中山"
}

p hash
