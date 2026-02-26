Markdownから美しいpdf書類を作成するツール

[📄 サンプルPDFを見る](template/note.pdf)

<br>

> [!WARNING]
> MacOSのみサポートしています.

> [!NOTE]
> 今後の展望:  
> [simonhaenisch / md-to-pdf](https://github.com/simonhaenisch/md-to-pdf) を直接クローンしてカスタマイズ

<br>

## 0. リポジトリのクローン

```bash
git clone git@github.com:H4RUTY/mdnote.git
cd mdnote
```

<br>

## 1. `md-to-pdf` のインストール

内部的に `md-to-pdf` というツールを使用しています.  
インストールされていない場合は, 以下のコマンドを実行してください.

```bash
npm i -g md-to-pdf
```

Big thanks to [simonhaenisch / md-to-pdf](https://github.com/simonhaenisch/md-to-pdf)

<br>

## 2. 'mdnote' コマンド登録

どこからでもコマンドを実行してノートを書き始められるように, パスの通った場所にシンボリックリンクを作成します.

```bash
chmod +x mdnote.sh
sudo ln -s "$(pwd)/mdnote.sh" /usr/local/bin/mdnote
```

<br>

## 3. 実行

お好きな名前でノートを作成できます.

```bash
mdnote my-new-note
```

<br>

## メモ

シンボリックリンク作成後, コマンドが認識されない場合は, 以下のコマンドを実行してキャッシュを更新してください.

```bash
hash -r    # for Bash
rehash     # for Zsh
```
