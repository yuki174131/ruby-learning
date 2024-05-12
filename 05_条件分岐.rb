# if文
if 条件A
    #条件Aが真だった場合の処理
elsif 条件B
    #条件Bが真だった場合の処理
elsif 条件C
    #条件Cが真だった場合の処理
else
    #それ以外の条件の処理
end

# 与えられた数値が10より大きいかどうかで処理を変える場合
n = 11
if n > 10
    puts '10より大きい'
else    
    puts '10より小さい'
end

# Rubyのif文は最後に評価された指揮を戻り値として返す。そのため、戻り値を変数も代入することも可能
country = 'japan'
greeting = 
    if country == 'japan'
        'こんにちは'
    elsif country == 'us'
        'Hello'
    else
        '???'
    end

greeting #=> こんにちは

# Rubyのifは修飾子として文の後ろに置くことが出来る
point = 10
day = 1
point *= 5 if day == 1
point #=> 50

# ifとelsifの後ろにはthenも入れることもできる。thenを入れると、その条件が真だった場合の処理を１行に押し込める。
# 使用頻度はあまり高くない。
country = 'japan'
if country == 'japan' then 'こんにちは'
elsif country == 'us' then 'Hello'
else '???'
end
