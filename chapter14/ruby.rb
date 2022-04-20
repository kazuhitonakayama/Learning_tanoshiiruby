p "========="
p "+での文字列の連結は、helloと同じオブジェクトを指していた変数があってもそちらには変更されません"
original = "僕は中山だよ"

hello = original
world = "World"

hello = hello + world
p "\"#{hello}\"と\"#{world}\"をつなげるよ"
p "連結の結果：#{hello}"
p "元々の文字列は：#{original}"

p "========="
p "concatでの文字列の連結は、helloと同じオブジェクトを指していた変数があってもそちらに変更が及ぶ"
original = "僕は中山だよ"

hello = original
world = "World"

hello = hello.concat(world)
p "\"#{hello}\"と\"#{world}\"をつなげるよ"
p "連結の結果：#{hello}"
p "元々の文字列は：#{original}"

p "========="
str = "abcde"
str.slice(1, 3)
p "元の文字列：#{str}：sliceは非破壊"

p "========="
str = "abcde"
str.slice!(1, 3)
p "元の文字列：#{str}：slice!は破壊的"

p "========="
str = "あ\nい\nう\n"
p "each_lineやeacy_charとかはこんなふうにEnumeratorオブジェクトを返却するよ：#{str.each_line}"


