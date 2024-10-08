# サブスクリプション

## リージョン

- Azure グローバルインフラストラクチャのサイトで確認できる

- リージョン 1---0..N データセンター

- リージョンペア: 300マイル (483km) 以上離れたリージョンの組
  - geo冗長ストレージなど一部のサービスには、ペアへの自動複製が用意されている
  - Azureが広範囲に落ちると、ペアの片方を優先して復旧
  - Azureの更新もペアでロールアウトするので、ダウンタイムが減少
  - 多くは、同じ国・地域内でペアをなす

- リージョンを選択しないサービスもある
  - Entra ID
  - Traffic Manager
  - DNS

## サブスクリプションの利用

- Azure アカウント: EntraのID、またはEntra IDから信頼されたディレクトリ、個人の Microsoft アカウント

- サブスクリプション: アクセスの整理、使用状況、課金、支払いの単位

- Azureアカウント 1..N---0..M サブスクリプション

- サブスクリプションに紐づけられたアカウントが一つだけなら、その人が請求などに責任を負う

- 部門・プロジェクト・支社などで分け、ネットワークなどの共有物は共有サービスサブスクリプションにまとめるなど

- 取得方法: エンタープライズ契約、Microsoftリセラー、Microsoftパートナー、個人アカウント

## Microsoft Cost Management

- コスト分析、予算、支出の予測、使用状況の監視、コスト改善の推奨を行う

- 交渉済みの価格、ハイブリッド特典割引も考慮して算出

- Azure Marketplaceのサードパーティーサービスのコストも表示

- 予約購入、サポート、税金は非表示の場合も

- 自動的にCSVエクスポートやレポートを行うことができる

## リソースタグ

- 名前と値のペア

- リソースにつき、最大50個

## コストの削減方法

- 予約: サービスごとの先払いで最大72%割引

- Azure ハイブリッド特典: オンプレミス用にソフトウェアアシュアランスを含むライセンスがあれば割引

- Azure クレジット: テスト用の無料利用枠

- リージョンの検討

- 予算を設定してコスト分析

- 料金計算ツール
