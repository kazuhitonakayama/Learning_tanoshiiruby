# to_aメソッド：それぞれのオブジェクトを配列に変換します
map =
  {
    name: "中山一仁",
    age: 23,
    gender: "male"
  }

pp map.to_a

# splitメソッド：それぞれのオブジェクトを配列に変換します

sentence = "僕は,中山,一仁,です"
pp sentence.split(",")

# a.value_at(n1, n2, ..)：既存の配列から新たに飛び飛びの値の配列を作成する
list = %w(a b c d e)
p list.values_at(2, 4)

# "|" -> 和集合（重複はなくす）、"+" -> 和集合（重複を許す）、"&" -> 共通集合
list1 = %w(a b c)
list2 = %w(b c d)
p (list2 - list1)

# キュー：first in first out（FIFO）-> pushとshift
list = %w(a b c d e)
p list.push("f")
p list.shift # -> "a"  # shift は先頭要素を取り出す

# スタック：Last in First out（LIFO）->pushとpop
list = %w(a b c d e)
p list.push("f")
p list.pop # -> "f"  # pop は先頭要素を取り出す


p "------"
p "配列の先頭に要素を追加する unshift"
list = %w(a b c d e)
p "元のlist：#{list}"
p list.unshift("f")

p "------"
p "配列の最後尾に要素を追加する push"
list = %w(a b c d e)
p "元のlist：#{list}"
p list.push("f")

p "------"
p "配列の結合（+）を試してみるよ"
listSingle = %w(a b c d e)
listDouble = %w(ka bf cf df ef)
result = listSingle + listDouble
p "元のlistがどうなるか：#{listSingle}"
p "結合の結論：#{result}"
p "つまり配列結合における＋は非破壊だよ"

p "------"
p "配列の結合（concat）を試してみるよ"
listSingle = %w(a b c d e)
listDouble = %w(ka bf cf df ef)
result = listSingle.concat(listDouble)
p "元のlistがどうなるか：#{listSingle}"
p "結合の結論：#{result}"
p "つまり配列結合におけるconcatは破壊的メソッドだよ"

p "------"
p "...と..の違いを確認するよ"
list = %w(a b c d e f g)

p "元のリストは、#{list}"
p "これは1..3の場合：#{list[1..3]}、つまり3つ目も含むよ"
p "これは1...3の場合：#{list[1...3]}、つまり、3つ目は含まないよ"

p "------"
p "freezeの効果を確認するよ"
list = %w(a b c d e f g).freeze

p "元のリストは、#{list}"

begin
  list.push("freese！")
rescue
  p "freezeのエラーが出るよ"
end

p "------"
p "compactは配列からnilのものを取り除くよ"
list =["a", "b","c", nil, nil]

p "元のリストは、#{list}"
p "compactを実行すると、#{list.compact}、ね、nilが除かれたたよね？"
p "実行後、元のリストは、#{list}、つまり非破壊"

p "------"
p "compact!は配列からnilのものを破壊的に取り除くよ"
list =["a", "b","c", nil, nil]

p "元のリストは、#{list}"
p "compactを実行すると、#{list.compact!}、ね、nilが除かれたたよね？"
p "実行後、元のリストは、#{list}、つまり破壊的だね"


p "------"
p "shiftは配列の先頭から要素を破壊的に取り出すよ"
list =["a", "b","c"]

p "元のリストは、#{list}"
p "shiftを実行すると#{list.shift}、ね、先頭の要素が取り出されたよね？"
p "実行後、元のリストは、#{list}、つまり破壊的だね"

p "------"
p "popは配列の末尾から要素を破壊的に取り出すよ"
list =["a", "b","c"]

p "元のリストは、#{list}"
p "shiftを実行すると#{list.pop}、ね、末尾の要素が取り出されたよね？"
p "実行後、元のリストは、#{list}、つまり破壊的だね"
