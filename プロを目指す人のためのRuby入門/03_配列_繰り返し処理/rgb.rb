def to_hex(r, g, b)
  # rjustは第1引数の文字列数になるまで、第2引数の文字で埋める
  [r, g, b].inject('#') { |hex, n| hex += n.to_s(16).rjust(2, '0') }
end

# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   [r, g, b].map { |s| s.hex }
# end

# 上記をリファクタリング
def to_ints(hex)
  # spanメソッドは正規表現にマッチした文字列を配列にして返す
  hex.scan(/\w\w/).map { |s| s.hex }
end