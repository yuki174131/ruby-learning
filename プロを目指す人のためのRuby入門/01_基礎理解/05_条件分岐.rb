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

# &&や||の戻り値と評価を終了するタイミング
# 左から順に検索し、nil or false以外であるメソッドの戻り値が変数に格納される
user = find_user('Alice') || find_user('Bob') || find_user('Carol')

# 正常なユーザであればメールを送信する（左辺が偽であればメールは送信されない）
user.valid? && send_email_to(user)

# &&、!!、!に近い働きをする演算子としてand、or、notがあるが優先順位が違う
# 高い
#   !
#   &&
#   ||
#   not
#   and or
# 低い

# and orは制御フローに向いている
def greeting(country)
    # countryがnil or falseならメッセージを返してメソッドを抜ける
    country or return 'countryを入力してください'

    if country == 'japan'
        'こんにちは'
    else
        'hello'
    end
end

# Rubyにはifと反対の意味を持つunless文がある
# elseを使って条件が偽でなかった場合の処理も欠ける。しかし、elsifに相当するものは存在しない
# 戻り値を変数に直接変数に代入することは可能
status = 'error'

message =
    unless status == 'ok'
        '何か異常があります'
    else
        '正常です'
    end

message #=>"何か異常があります"

# 複数の条件を指定する場合は、elsifを重ねるよりもcase文で書いたほうがシンプルになる
# 結果を変数に入れることも可能
country = 'italy'

message =
    case country
    when 'japan'
        'こんにちは'
    when 'us'
        'Hello'
    when 'italy'
        'chao'
    else
        '???'
    end

message #=> "chao"    

#三項演算子
n = 11
n > 10 ? '10より大きい' : '10以下'
