h, w = gets.chomp.split.map(&:to_i)
arr = []
h.times{
    line = gets.chomp
    arr << line if line.count("#") != 0
}

p arr
# =>  ["##.#", "##.#", ".#.#"]

(w-1).downto(0){|x|
    if arr.all?{|line| line[x] == "."}
        arr.each{|line| line[x, 1] = ""}
    end
}
arr.each{|line| puts line}


・行すべてが'.'のものを除外して配列を作る
・列が全て'.'の場合、該当列の '.' を '' に置換

・以下の操作で arry の要素が上書きされているのがちょっと怖い
  （アドレス渡しなので値が変更されるということだが、注意が必要）

        arr.each{|line| line[x, 1] = ""}
