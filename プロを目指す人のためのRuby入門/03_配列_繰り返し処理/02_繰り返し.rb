numbers = [1, 2, 3, 4, 5]

# Rubyではforをほとんど使わない。配列に対する複数のメソッドを使用することが多い
sum = 0
# numはブロック引数。eachメソッドから渡された引数の要素が入る
numbers.each do |num|
  # ブロックの部分。自由にコードが書ける
  sum += num 
end

sum #=> 15

numbers = [10, 20, 10, 10]
# 配列から20の要素を削除
numbers.delete(20)
numbers #=> [10, 10, 10]

numbers = [1, 2, 3, 4]
# ブロックの戻り値がtrue（偶数）なら要素を削除
numbers.delete_if do |num| 
  num.even?
end
numbers #=> [1, 3]

numbers = [1, 2, 3, 4]
sum = 0
# do...endの代わりに{}で囲んでブロックを作れる
numbers.each { |num| sum += n }
sum #=> 10

# 改行を含むブロックを書くときはdo...end
# 1行でコンパクトに書きたいときは{}のように使い分けられる

# 空の配列を用意して、他の配列をループ処理した結果をからの配列に詰め込んでいくような処理の大半はmapメソッドに置き換えられる
numbers = [1, 2, 3, 4]
# ブロックの戻り値が新しい配列の要素になる
new_numbers = numbers.map { |num| num * 10}
new_numbers #=> [10, 20, 30, 40]

# ブロックの戻り値がtrueのものだけ集められる。エイリアスメソッドはfind_all
even_numbers = numbers.select { |num| num.even? }
even_numbers #=> [2, 4]

# ブロックの戻り値がtrueのものを除外する
odd_numbers = numbers.reject { |num| num.even? }
odd_numbers #=> [1, 3]

# ブロックの戻り値が最初にtrueになった要素を返す。エイリアスメソッドはdetect
min_even_number = numbers.find { |num| num.even? }
min_even_number #=> 2

# たたみ込み演算を行うメソッド。エイリアスメソッドはreduce
# injectの引数がresultの初期値。繰り返し処理が終わると、ブロックの戻り値がinjectの戻り値となる
sum = numbers.inject(0) { |result, num| result += num}
sum #=> 10
# 文字列にも使える
day_of_weeks = ['Mon', 'The', 'Wed', 'Thu', 'Fri', 'Sat'].reduce('Sun') { |result, d| result + d}
day_of_weeks#=> "SunMonTheWedThuFriSat"

