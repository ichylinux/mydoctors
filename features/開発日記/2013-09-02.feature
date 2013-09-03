# language: ja

機能:

  シナリオ: CloudFoundryにデプロイ
    * https://console.run.pivotal.io/register からアカウント作成
    * Rubyをインストール
    * CloundFoundry用のツールをインストール
      """
      <b>
      $ sudo gem install cf
      </b>
      """
    * デプロイ構成を管理する manifest.yml を作成
    * デプロイ先のターゲットを設定
      """
      <b>
      $ cf target api.run.pivotal.io
      </b>
      """
    * ログイン
      """
      <b>
      $ cf login
      </b>
      email>
      password>
      """
    * アプリをPUSH
      """
      <b>
      $ cf push
      </b>
      """

