p "============="
p "ハッシュ[]の記法はもしキーが登録されていないときはnilが帰ってくる"
hash = {"a" => "これはaだよ！"}

p hash["b"]


p "============="
p "fecthメソッドはキーが登録されていないときは、例外を発生させてくれる"
hash = {"a" => "こxれはaだよ！"}

begin
  p hash.fetch("b")
rescue => e
  p e
end
  
