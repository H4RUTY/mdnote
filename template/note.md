---
pdf_options:
  displayHeaderFooter: true
  headerTemplate: |-
    <style>
      .header {
        width: 100%;
        padding: 0 20px;
        font-family: 'Avenir', 'Zen Kaku Gothic New', sans-serif;
        font-style: italic;
        color: #ddd;
        font-size: 11px;
      }
    </style>
    <section class="header">
      Description of mdnote
    </section>
  footerTemplate: |-
    <style>
      .footer {
        margin: 0 auto;
        font-family: 'Avenir', 'Zen Kaku Gothic New', sans-serif;
        font-style: italic;
        color: #aaa;
        font-size: 11px;
      }
    </style>
    <section class="footer">
      <span class="pageNumber"></span> / <span class="totalPages"></span>
    </section>
---

# 使い方ガイド

---

## ファイル構成

```zsh
.
├── Makefile
├── [your_note].md
├── [your_note].pdf
└── style.css
```

### `Makefile`

- このファイルにより, pdf化のための長いコマンドを入力する必要がなくなります.
- シンタックスハイライトは, デフォルトでは`github`スタイルになっています.  
  `md-to-pdf`の`--highlight-style`オプションは, 内部的に`highlight.js`を用いているため, そのスタイルならなんでも指定できます.
- pdfを作成したいときはただ一言, "`make`".

### `[your_note].md`

あなたの作るノートです.

#### ヘッダとフッタの作り方

ヘッダ, フッタを作成できます. 以下は一例です.

```markdown
---
pdf_options:
  displayHeaderFooter: true
  headerTemplate: |-
    <style>
      .header {
        width: 100%;
        padding: 0 20px;
        font-family: 'Avenir', 'Zen Kaku Gothic New', sans-serif;
        font-style: italic;
        color: #ddd;
        font-size: 11px;
      }
    </style>
    <section class="header">
      <!-- Your Header -->
      Header
    </section>
  footerTemplate: |-
    <style>
      .footer {
        margin: 0 auto;
        font-family: 'Avenir', 'Zen Kaku Gothic New', sans-serif;
        font-style: italic;
        color: #aaa;
        font-size: 11px;
      }
    </style>
    <section class="footer">
      <!-- Your Footer -->
      <span class="pageNumber"></span> / <span class="totalPages"></span>
    </section>
---
```

### `[your_note].pdf`

- `make`コマンドによって得られる, PDF成果物です.

### `style.css`

- このcssファイルをカスタムすることで, 思いのままに文書をスタイリングできます.  
- css変数を用いることで, 保守性の高いスタイリングが可能になっています.

以下にCSS変数の概要を示します:

| 変数 | 用途 |
|------|------|
| `--[色名]-...` | パレットカラー | 
| `--clr-...` | セマンティックカラー | 
| `--radius-...` | 角丸 | 
| `--space-...` | 余白 | 
| `--fz-...` | フォントサイズ | 
| `--lh-...` | 行間 | 
| `--font-...` | フォントファミリー | 
| `--page-...` | ページ設定 | 

---

## Let's Get Started!

これからはあなたの番です! 以下の手順で進めましょう:

1. 当Markdownファイルの内容を全て削除する  
  [tips] vimをお使いのあなたへ... `:%d`でファイルの全内容を削除.
2. 何か書く
3. `make`コマンドを入力してpdfを作成する

<br><br>

> Design is how it works.  
> —Steve Jobs
