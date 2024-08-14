# ストレージ

## データの大別

- 仮想マシンデータ: Azure Managed Disks

- 非構造化データ
  - Azure Blob Storage: REST ベースのオブジェクトストア
    - Azure Data Lake Storage: Hadoop 分散ファイルシステム (HDFS)

- 構造化データ
  - Azure SQL Database: フルマネージドSQL
  - Azure Cosmos DB: グローバル分散型DB
    - Azure Table Storage: 自動スケールするNoSQL

## Azure ストレージの主要なサービス

- Azure Blob Storage コンテナー
  - REST ベースのオブジェクトストア
  - テキストやバイナリなど、非構造化データを格納
  - HTTP(S) や NFS で配信

- Azure Files
  - VM間で共有ドライブとしてマウント
  - オンプレミスアプリの移行に便利。ログやメトリックなど
  - SMB または NFS プロトコルで読み書き
  - REST、クライアントライブラリで読み取り
  - マウントには完全な読み書き権限が必要で、ストレージアカウントの資格情報で認証する

- Azure Queue Storage
  - 64KB以下のメッセージを多数格納

- Azure Table Storage
  - NoSQLデータをスキーマなしで格納
  - ニーズに合わせてデータを容易に変更
  - SQL よりコスト効率が良い
  - Azure Cosmos DB の一部
  - スループット、分散、自動セカンダリチェックなら Azure Cosmos DB Table API が便利

- Azure Managed Disks: 仮想マシンデータ

## ストレージアカウント

- Standard: HDD、低コスト
  - Standard汎用v2: BLOB、Queue、Table、Filesなど向けのアカウント。

- Premium: SSD、短い待ち時間
  - PremiumブロックBLOB: ブロックBLOBと追加BLOB向けの、待ち時間の短いアカウント。スケーラブルな設計。
  - Premium ファイル共有: Files向けのアカウント。SMBとNFSの両対応。
  - PremiumページBLOB: ページBLOB（VMディスクやデータベースの基盤）用。

- Standard / Premium は後から変更できないず、新しいアカウントに移すしかない

## 特徴

- 持続性と可用性
- すべてのデータが暗号化
- スケーラブルな設計
- メンテナンス、更新、問題への対処はおまかせ
- HTTP(S)でどこからでもアクセス
- 多くの言語にクライアントライブラリが存在
