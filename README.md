# scriptsのファイルについて
## alias.sh
よく使うコマンドをエイリアスとして設定
## library.sh
Homebrewで管理している言語やライブラリをインストール
また、brew caskコマンドでインストールできるChromeなどのアプリケーションもインストールを自動化している
## prompt.sh
コマンドプロンプトをカラーリングするための設定


## ドットファイルのシンボリックリンクを貼る
以下のコマンドでホームディレクトリにドットファイルの審美リックを貼る
```
$ ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
$ ln -sf ~/dotfiles/.bashrc ~/.bashrc
```


# shellScriptの覚書き

## ユーザーの入力を取得し、変数getInputに代入
    $ read getInput
## -pオプションでechoを代用
    $ read -p '電話番号を入力してください。' getInput

## コマンドの実行結果(出力)をファイルへ書き込む
  command >> 出力ファイルのパス
