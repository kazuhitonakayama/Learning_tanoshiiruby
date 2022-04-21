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

p "========="
p "swapcaseは小文字を大文字に、大文字を小文字にするよ"
str = "Kazuhito Nakayama"
p str.swapcase

p "========="
p "capitalize は先頭を大文字に"
str = "orient culture"
p str.capitalize

p "========="
p "tr は gsubと似ているが、複数の文字について置換を設定できる。gsubと違うのは、複数の文字の置換はできない"
str = "orient culture"
p str.tr("o", "O")
