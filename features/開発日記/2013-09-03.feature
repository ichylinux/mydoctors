# language: ja

機能:

  シナリオ: 評価の登録
    * MongoDBをインストール
      """
      <b>
      $ sudo yum install mongodb mongodb-server
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
      $ npm install
      </b>
      """
    * ビューを作成
    * 登録処理を実装