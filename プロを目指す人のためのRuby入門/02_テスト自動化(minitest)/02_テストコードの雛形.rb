# 雛形

# ライブラリを読み込んでプログラム内でMinitestを使えるようにする
require 'minitest/autorun'

# テストコードの本体(テストクラス)
# 慣習としてTestで始まる、または終わるなあ目をつけることが多い
# テストコードが書かれたファイル名は、クラス名のキャメルケースと合わせる。（sample_test.rb）
class SampleTest < Minitest::Test
    # Minitestはtest_で始まるメソッドを探して、それを実行する。メソッド名はtest_で始めることが必須
    def test_sample
        # 'RUBY'と'ruby'.upcaseの結果が等しいかどうかを検証
        assert_equal 'RUBY', 'ruby'.upcase
    end
end

# aが真であればパス
# assert a

# aが偽であればパス
# refure a

# ruby ファイル名で実行