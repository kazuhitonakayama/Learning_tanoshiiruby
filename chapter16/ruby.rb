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

p "============="
p "マッチさせたい文字を範囲で指定する"
reg = /[A-Z]/
p reg =~ "VBC" 

p "============="
p "[]]の先頭に`^`を描いたときには、指定範囲指定外のものにマッチするようになる"
reg = /[^A-Z]/
p reg =~ "VcBC" 
p "1と表示されてたら良さそう↑"

p "============="
p "`.`で任意の文字とのマッチングを行う"
reg = /[^A-Z]/
p reg =~ "VcBC" 
p "1と表示されてたら良さそう↑"

p "============="
p "\sなどの、バックスラッシュを利用する"
reg = /A\sB/
p reg =~ "CA B" 
p "1と表示されてたら良さそう↑"
p reg =~ "CA　B" 
p "全角スペースにはマッチしない"

p "============="
p "\dは0から9までの数字とマッチングする"
reg = /A\dB/
p reg =~ "CAB" 
p "nilと表示されてたら良さそう↑"
p reg =~ "CA1B" 
p "1と表示されてたら良さそう↑"

p "============="
p "\wは英数字にマッチする"
reg = /\w-\w/
p reg =~ "1-A" 
p "0と表示されてたら良さそう↑"

p "============="
p "\Aは文字列の先頭にマッチする"
reg = /\AMary/
p reg =~ "J.Mary-smiss" 
p "nilと表示されてたら良さそう↑"

p "============="
p "\zは文字列の末尾にマッチする"
reg = /Mary\z/
p reg =~ "smiss-Mary" 
p "6と表示されてたら良さそう↑"

