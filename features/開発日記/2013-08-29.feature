# language: ja

機能:

  シナリオ: Nodeアプリのひな形を作成
  * http://nodejs.org/ からインストーラをダウンロード
  * インストーラを実行
    """
    nodeコマンドをPATHに含めておく
    バージョンを確認
    <b>
    $ node -v
    </b>
    """
  * モジュール express をインストール
    """
    <b>
    $ sudo npm install -g express
    </b>
    """
  * expressのひな形を作成
    """
    <b>
    $ express --sessions --css stylus --ejs mydoctors
    </b>
    """
  * 依存モジュールをインストール
    """
    <b>
    $ cd mydoctors
    $ npm install
    </b>
    """
  * アプリを起動し、http://localhost:3000 にアクセス
    """
    <b>
    $ node app
    </b>
    """
