# language: ja

機能:

  シナリオ: Nodeアプリのひな形を作成
  * http://nodejs.org/ からインストーラをダウンロード
  * インストーラを実行
    """
    nodeコマンドをPATHに含める
    """
  * モジュール express をインストール
    """
    $ sudo npm install -g express
    """
  * expressのひな形を作成
    """
    $ express --sessions --css stylus --ejs mydoctors
    """
  * 依存モジュールをインストール
    """
    $ cd mydoctors
    $ npm install
    """
  * アプリを起動
    """
    $ node app
    """
