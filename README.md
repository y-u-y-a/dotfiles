## 構築
```sh
$ cd dotfiles
$ zsh index.sh
```

### MySQL
`https://github.com/Homebrew/homebrew-services`
```sh
$ brew install mysql
$ brew tap homebrew/services # servicesコマンドインストール
$ brew services start mysql # 自動起動
```

### Node
```sh
$ brew install nodenv
$ nodenv install --list # インストールできるバージョンを確認
$ nodenv install 14.12.0
$ nodenv versions # インストール済みのバージョンを確認
$ nodenv global 14.12.0 # ゴローバルに使用するバージョンを指定
$ nodenv local 14.12.0 # プロジェクトごとに利用するバージョンを指定
$ npm install -g yarn
```

## ドットファイルのシンボリックリンクを貼る
以下のコマンドでホームディレクトリにドットファイルのシンボリックを貼る
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