# 範囲オブジェクト
# 最初の値..最後の値（最後の値を含む）
# 最初の値...最後の値（最後の値を含まない
1..5
1...5
'a'..'e'
'a'...'e'

# 範囲オブジェクトはRangeクラス
(1..5).class #=> Range

#include?メソッドを使って中身を判断
range = 1..5
range.include?(4.9) #=> true
range.include?(6) #=> false

range = 1...5
range.include?(4.9) #=> true
range.include?(5) #=> false

#配列や文字列の一部を抜き出す
a = [1 , 2, 3, 4, 5]
a[1..3] #=> [2, 3, 4]

a = 'abcdefg'
a[1..3] #=> "bcd"

# 以上/未満な判定をしたい場合は範囲オブジェクトを使った方がシンプリにかける
def liquild?(temperature)
  # 0 <= temperature && 100 > temperature
  (1...100).include?(temperature)
end

#case文と組み合わせる
def ticket_price(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end

# 値が連続する配列を作成する
(1..5).to_a #=> [1, 2, 3, 4, 5]
(1...5).to_a #=> [1, 2, 3, 4]

('a'..'e').to_a #=> ["a", "b", "c", "d", "e"]

#splat展開/[]の中に*を歯にオブジェクトを書く
[*1..5] #=> [1, 2, 3, 4, 5]
[*1...5] #=> [1, 2, 3, 4]

# 繰り返し処置を行う（配列に変更する必要はなし）
(1..4).inject { |result, num| result += num } #=> 10

# stepを呼び出して値を増やす間隔を指定できる
(1..10).step(2).inject([]) { |result, num| result << num } #=> [1, 3, 5, 7, 9]

