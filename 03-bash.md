# 3. Bash

- command \[options\] \[arguments(flags)\]

- オプションを `-al` のようにまとめて指定できる

- Linux はファイル名拡張子に特に意味はない

- Linux は大文字と小文字を区別する

- ワイルドカード
  - `*` は、0文字以上
  - `?` は、1文字
  - `[jp]` は、 'j' または 'p' のうち1文字
  - `[A-Z]` は、英大文字1文字

- ワイルドカード文字がファイル名に含まれる場合、バックスラッシュでエスケープ

- `ls` コマンド: 現在のディレクトリ、または引数で指定したディレクトリの内容を一覧表示する
  - `-a`: `.` から始まる項目も表示
  - `-l`: アクセス許可、所有者、バイト単位のサイズ、最後に変更された日時、ファイル名

- `/etc/os-release`: ディストリビューションの情報

```text
PRETTY_NAME="Ubuntu 22.04.4 LTS"
NAME="Ubuntu"
VERSION_ID="22.04"
VERSION="22.04.4 LTS (Jammy Jellyfish)"
VERSION_CODENAME=jammy
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=jammy
```

- `~`: ホームディレクトリ

- `mkdir` コマンド: ディレクトリを作成
  - `--parents`: 親ディレクトリも無ければ作成

- `rmdir` コマンド: 空のディレクトリを削除

- `rm` コマンド: ファイルを削除
  - `-i`: 削除前に確認できるので、習慣化する
  - `-f`: プロンプトを表示せずに削除
  - `-r`: 再帰的に（ディレクトリの中身もまとめて）削除

- `cp` コマンド: ファイルとディレクトリをコピー
  - `-i`: 置き換える前に警告
  - `-r`: 再帰的に（サブディレクトリもまとめて）コピー
  - `cp 0001.jpg 0002.jpg` でファイルをコピー
  - `cp * photos` で、現在のディレクトリのファイルをサブディレクトリにコピー
  - `cp photos/* images` で、 photos ディレクトリのファイルを images にコピー

- `ps` コマンド: 実行中のプロセスのスナップショットを取得
  - 引数なし: 実行中のシェルプロセス
  - `-e`: 実行中のプロセス
  - `-ef` `aux`: システムで実行されているプロセスの総合的な情報。前者が POSIX 、後者が BSD 由来。

- `w` コマンド: 現在ログインしているユーザーの情報を確認\
  ユーザー名、IP アドレス、ログインした日時、現在実行しているプロセス、プロセスの消費時間

- `<` 演算子: 入力をリダイレクト

- `>` 演算子: 出力をリダイレクト（上書き）

- `>>` 演算子: 出力をリダイレクト（追加）

- `|` 演算子: コマンドの出力を別のコマンドの入力へパイプ

- `more` コマンド: Enterで読み進められる

- `head` コマンド: 最初の数行だけ読める

- `grep` コマンド: 行をフィルター

- `sort` コマンド: 行をソート

- `fmt` コマンド: 段落に書式設定

- `pr` コマンド: ページネーション処理

- `lpr` コマンド: プリンターに送信

- `pwd` コマンド: print working directory

- `.bash_history` ファイル: Bash で実行したコマンドの履歴

- `.bash_logout` ファイル: ログインシェルが存在すると実行。環境のカスタマイズに使う

- `.bashrc` ファイル: Bash の構成

- Tab キーで可能ならオートコンプリート、Tab キーを2回押すと全候補を表示

- vi エディタ

- `kill` コマンド: プロセスIDを指定して強制終了
  - `kill -l` でシグナルを一覧表示
  - `-数字` または `-s シグナル名` でシグナルを指定

- `killall` コマンド: プロセス名を指定して強制終了

- `&` を指定すると、コマンドが終了する前にコマンドラインに戻る

- `az vm list-sizes`: 利用可能なVMサイズの一覧
  - `--output`: json, jsonc, yaml, yamlc, table, tsv, none
