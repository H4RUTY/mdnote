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

# 使い方

> Design is how it works.  
> —Steve Jobs

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
- pdfを作成したいときはただ一言, "`make`".

### `[your_note].md`

- あなたの作るノートです.
- 思うままに綴ってください.

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

- `make`コマンドの成果物です.

### `style.css`

- このcssファイルをカスタムすることで, 思いのままに文書をスタイリングできます.  
- css変数を用いることで, 保守性の高いスタイリングが可能になっています.

以下にCSS変数の概要を示します:

#### 1. Color

パレットカラーとセマンティックカラーに分かれています.

| 変数 | 用途 |
|------|------|
| `--clr-text-main` | 本文テキスト |
| `--clr-text-heading` | 見出しテキスト |
| `--clr-text-muted` | 補足テキスト・リンク |
| `--clr-bg-main` | ページ背景 |
| `--clr-bg-code` | インラインコード背景 |
| `--clr-bg-pre` | コードブロック背景 |
| `--clr-bg-table1` | テーブルヘッダ背景 |
| `--clr-bg-table2` | テーブル偶数行背景 |
| `--clr-border-main` | 主要ボーダー |
| `--clr-border-muted` | 補助ボーダー |
| `--clr-accent` | アクセントカラー（強調・チェックボックス等） |

パレットは `--black-10` 〜 `--black-100`（モノクロ階調）とアクセントカラーで構成されています.

#### 2. Radius

| 変数 | 用途 |
|------|------|
| `--radius-sm` | インラインコード・画像など |
| `--radius-md` | コードブロックなど |

#### 3. Spacing

スペースのサイズ色々です.

#### 4. Typography

- `fz`は`font-size`, `lh`は`line-height`を表します.
- Avenir, Zen Kaku Gothic New, EB Garamond, IBM Plex Monoは非常に美しいフォントです. どれも無料なので, ぜひダウンロードしてお使いになることをおすすめします.

| 変数 | 用途 |
|------|-----|
| `--fz-h1` 〜 `--fz-h4` | 見出しフォントサイズ |
| `--fz-body` | 本文フォントサイズ |
| `--fz-caption` | キャプションフォントサイズ |
| `--lh-main` | 本文行間 |
| `--lh-lg` | 見出し行間 |
| `--font-sans` | サンセリフフォント (ゴシック体) |
| `--font-serif` | セリフフォント (明朝体) |
| `--font-code` | コードフォント (等幅) |

#### 5. Page Settings

| 変数 | 用途 |
|------|------|
| `--page-margin` | A4印刷余白 |
| `--page-max-width` | コンテンツ最大幅 |

## Let's Get Started!

これからはあなたの番です! 以下の手順で進めましょう:

1. 当Markdownファイルの内容を全て削除する
2. あなたの文章を綴る!!
3. `make`コマンドを入力してpdfを作成する

<br>

[tips]  
vimをお使いのあなたへ: `:%d`でファイルの全内容を削除.
