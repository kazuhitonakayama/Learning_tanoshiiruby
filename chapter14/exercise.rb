p "=========="
p "問題1：各単語を要素とする配列を作ろう"
str = "Ruby is an object oriented programming language"
list = str.split
p list

p "=========="
p "問題2：1の配列をアルファベット順に並び替えよう"
list.each do |item|
  item.downcase!
end

p list.sort_by {|l| -l}

p "=========="
p "問4：数を調べ上げよう"
str = "Ruby is an object oriented programming language"

list = str.split(//)
sorted_list = list.sort_by  {|l| -l}

used_word_list = []

sorted_list.each do |word|
  if used_word_list.include?(word)
    print "*"
  else
    used_word_list << word
    print "\n'#{word}\'：*"
  end
end
