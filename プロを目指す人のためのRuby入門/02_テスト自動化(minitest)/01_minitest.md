- Minitestについて
  - Rubyをインストールすると一緒にインストールされる
  - 学習コストが比較的低い
  - Railsのデフォルトのテスティングフレームワークなので、Railsを開発するときにも知識を活かしやすい

```
gem install minitest -v 5.10.1
```

- 必要な手順
  - テスティングフレームワークのルールに沿って、プログラムの実行結果を検証するRubyプログラム（テストコード）を書く
  - 上記で作ったテストコードを実行する
  - テスティングフレームワークが実行結果をチェックし、その結果が正しいか間違っているかを報告する

実行結果例

```
ruby 02_テストコードの雛形.rb
Run options: --seed 45470

# Running:

.

Finished in 0.002267s, 441.1116 runs/s, 441.1116 assertions/s.

1 runs, 1 assertions, 0 failures, 0 errors, 0 skips
```

- 他のテスティングフレームワーク
  - test-unit(Minitestと同じくRubyインストール時に一緒にインストールされる)
  - Rspec
