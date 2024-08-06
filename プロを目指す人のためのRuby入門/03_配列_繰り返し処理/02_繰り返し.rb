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