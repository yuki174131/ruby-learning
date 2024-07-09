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

# デフォルト引数
def default_arg(a, b, c = 0, d = 0)
    "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end
default_arg(1, 2) #=> a=1, b=2, c=0, d=0
default_arg(1, 2, 3) #=> a=1, b=2, c=3, d=0
default_arg(1, 2, 3, 4) #=> a=1, b=2, c=3, d=4

# デフォルト値は動的に変わる値や、他のメソッドの戻り値を指定したりできる
def foo(time = Time.now, message = bar)
    "time: #{time}, message: #{message}"
end

def bar
    'BAR'
end

# Rubyのメソッド名は?や!で終わらせることができる。?で終わるメソッドは慣習として真偽値を返すメソッドになっている
''.empty?
'abc'.empty?

# ?で終わるメソッドは自分で定義することもできる
def multiple_of_three?
    n % 3 == 0
end

# !で終わるメソッドは慣習として「使用する際は注意が必要」という意味を持つ
# upcaseメソッドとupcase!メソッドでは挙動が違う
a = 'ruby'
a.upcase #=> "RUBY"
a #=> 'ruby'

a.upcase! #=> "RUBY"
a #=> "RUBY"

# !で終わるメソッドも自分で定義できる


