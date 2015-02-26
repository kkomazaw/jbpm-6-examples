rewards-basic
=============

このサンプルは サーブレットを用いたWebアプリケーションで、以下の機能を利用しています。
- データ入出力をともなったヒューマンタスク
- JPA永続化
- ユーザートランザクション
- CDI
- Singleton セッションマネージャー
- Maven によるビルド

### 実行手順
- Java 6 以上と、Maven 3 以上がインストールされていることを確認します。
- JBoss EAP 6.1.1をダウンロードします。
- アプリケーションサーバーを開始します。(デフォルトデータソース ExampleDS を使用します）
  (起動方法)
  $ cd jboss-eap-6.1/bin
  $ ./standalone.sh
- 以下のコマンドでプロジェクトをビルドし、アプリケーションサーバーにデプロイします。
  $ cd jbpm-6-examples/rewards-basic
  $ mvn clean package
  $ mvn jboss-as:deploy
- ブラウザから http://localhost:8080/rewards-basic/ にアクセスします。
 - [ビジネスプロセスを開始] リンク：新規プロセスを開始します。
 - [Jiriさんのタスク] リンク： Jiriさんのタスクをリストし承認します。
 - [Maryさんのタスク] リンク： Maryさんのタスクをリストし承認します。


