# Azure Policy

- Azure Policy: リソースにルールを適用して、会社の標準に準拠した状態に保つサービス

## 管理グループ (Management Group)

- Azure Policy で設定できる、サブスクリプションの上位単位

- IDと表示名(任意)を持つ

- アクセス、ポリシー、コンプライアンス、予算を管理、継承

- 最大深さ6の木構造

## Azure Policy の実装手順

### 1 ポリシー定義

リソースの条件と、条件が満たされたときに完了するアクションの記述

- Azure Portal で作成するか、GitHubからJSONをインポート
- [組み込みの定義](https://learn.microsoft.com/ja-jp/azure/governance/policy/samples/built-in-policies)から選択してもOK
- 例えば、「VMがパブリックIPアドレスに公開されているとき、デプロイしない」

### 2 イニシアチブ定義

ポリシー定義のグループ

- Azure Portal で作成するか、GitHubからJSONをインポート
- Azure Policyに[組み込みの定義](https://learn.microsoft.com/ja-jp/azure/governance/policy/samples/built-in-initiatives)から選択してもOK
- 例えば、「Windowsマシンを構成してAzure Monitorエージェントを実行し、それらをデータ収集ルールに関連付ける」

### 3 イニシアチブ定義のスコープ

- 適用対象は、管理グループ、サブスクリプション、リソースグループ

### 4 準拠性（コンプライアンス）の決定

- 「コンプライアンス」機能で、準拠状態を確認できる。

- 個々のリソース、リソースグループ、サブスクリプションを除外することもできる
