p "============="
p "Regexpで正規表現オブジェクトを生成する"
re = Regexp.new("Ruby")
p re

p "============="
p "%r、でも作成できるよ"
re = %r(Ruby)
p re

p "============="
p "正規表現 =~ 文字列、で正規表現比較ができる"
re = /A.C/
p re =~ "VBC" 

options = "options"
hash = {
  options => "中山"
}

p hash
