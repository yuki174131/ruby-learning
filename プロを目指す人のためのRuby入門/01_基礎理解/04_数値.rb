# Rubyには ++ や -- のような演算子がない。

n = 1
n += 1 #=> 2
n -= 1 #=> 1

n = 2

n *= 3 #=>6
n /= 2 #=>3

# 2乗する
n **= 2 #=>9

# 数値と文字列は暗黙的に変換されない

1 + '10' #=> TypeError
1 + '10'.to_i #=> 11
1 + '10.5'.to_s #=> 11.5

number = 10
'Number is ' + number #=> TypeError
'Number is ' + number.to_s #=> Number is 10

# 式展開は自動的にto_sメソッドが呼ばれるのでエラーにならない
"Number is #{number}" #=> Number is 10

# 少数の丸め誤差に注意
1.1 * 100 #=> 110.00000000000001
(1.1 * 100) == 110 #=> false

# 少数の計算はRationalクラスを利用する。
1.1r * 100 #=> (110/1)
# to_fで少数に変換する
(1.1r * 100).to_f #=> 110.0

# 変数に値が入っている場合は、rationalizeメソッドをよび、Rationalクラスの数値に変換できる
a = 0.5
b = 10
a.rationalize * b.rationalize #=> (5/1)

# 2進数の場合は0b、8進数の場合は0、16進数の場合は0xを先頭につけると、それぞれ10進数以外の整数値を作成できる
# 以下全て255
0b11111111
0377
0xff

# 数値クラスは4つ

10.class #=> Integer
1.5.class #=> Float

# 有理数を表すRationalクラス
r = 2 / 3r
r #=> (2/3)
r.class #=> Rational

#文字列から有理数に変換
'2/3'.to_r

# 複素数リテラル
c = 0.3 - 0.5i
c #=>(0.3-0.5i)
c.class #=> Complex

#文字列から複素数に変換
c='0.3-0.5i'.to_c

# 上記はNumericクラスのサブクラスに当たる