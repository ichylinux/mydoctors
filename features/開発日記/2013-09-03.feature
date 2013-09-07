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
      $ mkdir -p data
      $ mongod --dbpath data &
      </b>
      """
    * パッケージ構成を修正
    * パッケージを更新
      """
      <b>
      $ npm install
      </b>
      """
    * モデルを作成
    * ビューを修正
    * コントローラを修正
