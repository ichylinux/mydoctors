# language: ja

機能:

  シナリオ: 評価の登録
    * MongoDBをインストール
      """
      <b>
      $ sudo yum install --enablerepo=epel mongodb-server
      </b>
      """
    * MongDBを起動
      """
      <b>
      $ mongod --dbpath data &
      </b>
      """
    * MongoDBドライバーをインストール
      """
      <b>
      $ sudo npm install -g mongodb
      </b>
      """
    * パッケージ構成を修正
    * パッケージを更新
      """
      <b>
      $ npm install
      </b>
      """
    * ビューを作成
    * 登録処理を実装