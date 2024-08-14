# Microsoft Entra ID の概要

- **ディレクトリサービス**: ユーザー アカウント、パスワード、ネットワーク上の様々なリソースとその設定を管理するサービス

- directory = 名簿、住所録

- ITU-T X.500: 電子ディレクトリサービスの標準規格

- Active Directory Domain Services (AD DS): Windows Server 上のディレクトリサービス
  - オンプレミスに重点を置く。

- Microsoft Entra ID: PaaS として提供されるディレクトリサービス
  - Web アプリに重点を置く
  - マルチテナント
  - コンピューティングリソースの配分を考えなくていい

- テナント
  - 普通は Microsoft 365、Microsoft Intune、Azure などを使用する組織を指す
  - 技術的には、個々の Microsoft Entra インスタンスを指す

- サブスクリプション内に複数のテナントを作成できる

- Azure サブスクリプションと、**関連付ける**テナントは多対一\
  - リソースへのアクセス許可を付与するのに使う

- ドメイン名: `...@onmicrosoft.com` またはカスタムドメイン

- AD DS にあったコンピュータークラスがない
  - デバイスクラスはある

- AD DS にあった組織単位（OU）クラスがない
  - グループメンバーシップに基づいて編成

- Application クラス: アプリケーションを定義

- servicePrincipal クラス: 現在の Entra テナント内のインスタンス

- Application と servicePrincipal を分離することで、アプリケーションの定義を複数のテナントで使用できる

## AD DS

- Windows Active Directory スイートのうちの1つ。ほかに、AD CS、AD LDS、AD FS、AD RMS も含まれる。

- DNS と LDAP

- Kerberos 認証

- 組織単位（OU）とグループポリシー オブジェクト（GPO）

- Azure VM にデプロイする場合、Cドライブはダメなので、ホストキャッシュなしの データディスクを追加する

## Microsoft Entra ID

- HTTP (80) と HTTPS (443) で REST API を使用

- SAML、WS-Federation、OpenID Connect で認証、OAuth で認可

- フラットな構造（OU や GPO なし）

- フェデレーションサービス: プラットフォーム間の信頼に基づき、リソースに共有アクセス（SSO）を提供

- Microsoft のクラウドサービス、Facebook、Google、Yahoo で SSO が使える

## プラン

- Freeプラン

- Office 365 エディション

- P1プラン:\
  グループ管理、セキュリティレポートとアラート、MFA、オンプレとの橋渡し（MIM）、99.9% SLA、パスワードリセット、Cloud App Discovery、条件付きアクセス、Microsoft Entra Connect Health

- P2プラン:\
  ID保護、特権ID管理

## Microsoft Entra Domain Services

- ローカル AD DS との互換機能

- 基幹アプリの一部または全部をそのままIaaSに載せ替える場合に、ローカルの AD DS と統合 (Entra Connect) または代替して認証を提供

- Entra ID P1 / P2 レベルで提供

- ローカルとAzure間にVPNを張ったり、Azureにレプリカを立てたりしなくて済む

- Domain Admins や Enterprise Admins グループが不要

- 制限
  - 基本のコンピューターのオブジェクトのみ
  - スキーマを拡張できない
  - フラットな組織単位 (OU)
  - コンピューターとユーザー用の組み込みのグループポリシーオブジェクト (GPO) がある
  - 組み込みの GPO を持つ OU を対象にすることはできません。 また、Windows Management Instrumentation フィルターやセキュリティグループのフィルター処理を使用することはできません。

- ディレクトリの大きさと時間によって課金
