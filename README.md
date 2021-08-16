# 卒業論文執筆環境

- [LaTeX](https://www.latex-project.org/) を用いて卒業論文を執筆する環境のテンプレート
  - オンライン環境: [Overleaf](https://overleaf.com)
    - ネットワーク環境がないと、論文の執筆・コンパイルができない
  - ローカル環境: [paperist/alpine-texlive-ja](https://hub.docker.com/r/paperist/alpine-texlive-ja)
    - オフラインでも執筆・コンパイルが可能
    - Overleaf に課金することで GitHub や Dropbox を使った同期を取ることも可能

## 環境構築

### オンライン環境

1. [keitalab 卒論テンプレート2019](https://ja.overleaf.com/read/pznvhsdyxmbn) にアクセスする
2. 左上のメニューをクリックし、「プロジェクトのコピー」をクリック
  - ![img](https://i.gyazo.com/1b8d5e08553ba306053f03ee1eda86c8.png)
3. 自身の卒論プロジェクトであることが分かる名前を入力し、「コピーする」をクリック
  - プロジェクトの名前は、後から変更することも可能

### ローカル環境

⚠️ Overleaf だけでの執筆が可能です ⚠️
⚠️ オフラインでも執筆・コンパイルがしたい場合のみ、環境構築を行ってください ⚠️

#### Docker

1. [Docker](https://www.docker.com/) (stable) をインストール
  - Windows: http://docs.docker.jp/docker-for-windows/index.html
  - Mac: http://docs.docker.jp/docker-for-mac/index.html
2. `docker pull paperist/alpine-texlive-ja`

#### GitHub

![img](https://i.gyazo.com/fcd374035db7f55627dd5cf4650b35dd.png)

1. GitHub で [新しいレポジトリを作成](https://github.com/new)
  - `Repository template` には [keitalab/sotsuron-template](https://github.com/keitalab/sotsuron-template) を指定
2. 作成したレポジトリを `git clone` する


## 論文の執筆

- LaTeX の書き方については、本テンプレートを参考にするか、各自調べること

```
.
├── main.tex          # エントリーポイント (⚠️ 編集不要)
├── titlepage.tex     # 表紙
├── abstract.tex      # 論文の概要
├── body.tex          # 第1章から最終章まで
└── references.tex    # 参考文献
├── settings.tex      # LaTeX の設定関連 (⚠️ 編集不要)
├── images/           # 論文内で使用する画像を入れる
```

## オフラインでのコンパイル

- 以下のコマンドで、 `main.pdf` というファイルが生成される

```sh
make build
```

- 以下のコマンドで、セーブされるたびに `main.pdf` が更新されるようになる
  - [Skim](https://skim-app.sourceforge.io/) を使用すると、リアルタイムにPDFを見ながら執筆ができる

```sh
make watch
```
