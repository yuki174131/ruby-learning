# Rubyはdefを使ってメソッドを定義する
# 2つの数字を加算するメソッド
def add(a, b)
    a + b
end
add(1, 2) #=> 3

# メソッド名も変数名と同じルールになっており、小文字のスネークケースが一般的
def hello_world
    'Hello, world'
end

# メソッドの戻り値Rubyは最後に評価された式がメソッドの戻り値になるのが特徴。returnのようなキーワードは不要。
# returnはメソッドを途中で脱出する場合に使われることが多い
def greeting(country)
    # countryがnilならメッセージを返してメソッドを抜ける
    return 'countryを入力してください' if country.nil

    if country == 'japan'
        'こんにちは'
    else
        'hello'
    end
end

# メソッドにおける引数の()
# 引数がない場合は()をつけない方が主流。()をつけても良いが省略されることが多い。引数がある場合は()をつけることのほうが多い。
def greeting
    'こんにちは'
end

