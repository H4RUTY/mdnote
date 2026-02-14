---
pdf_options:
  displayHeaderFooter: true
  margin: 30mm 20mm
  headerTemplate: |-
    <div></div>
  footerTemplate: |-
    <style>
      section {
        margin: 0 auto;
        font-family: system-ui;
        font-size: 11px;
      }
    </style>
    <section>
      <span class="pageNumber"></span> / <span class="totalPages"></span>
    </section>
---

# 使い方

> Design is how it works.  
> —Steve Jobs

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
- pdfを作成したいときはただ一言, "`make`".

### `[your_note].md`

- あなたの作るノートです.
- 思うままに綴ってください.

#### ヘッダとフッタの作り方

ヘッダ, フッタも作成できます.　以下の例を参考になさってください.

```markdown
---
pdf_options:
  displayHeaderFooter: true
  margin: 30mm 20mm
  headerTemplate: |-
    <div></div>
  footerTemplate: |-
    <style>
      section {
        margin: 0 auto;
        font-family: system-ui;
        font-size: 11px;
      }
    </style>
    <section>
      <span class="pageNumber"></span> / <span class="totalPages"></span>
    </section>
---
```

### `[your_note].pdf`

- `make`コマンドの成果物です.

### `style.css`

- このcssファイルをカスタムすることで, 思いのままに文書をスタイリングできます.

#### STUB

## Let's Get Started!

これからはあなたの番です!

`note.md`の内容を全て削除し, あなたの文章を綴ってください!

<br>

[tips]  
vimをお使いのあなたへ: `:%d`でファイルの全内容を削除.
