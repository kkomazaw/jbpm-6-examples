rewards-jsf
=============

このサンプルは Java Server Faces (JSF)を用いており以下の機能を利用しています。
- データ入出力をともなったヒューマンタスク
- JPA永続化
- ユーザートランザクション
- ビジネスプロセスを含むkjarによる動的デプロイ
- CDI
- Singleton セッションマネージャー
- Java server faces (JSF)
- Maven によるビルド

### 実行手順
- Java 6 以上と、Maven 3 以上がインストールされていることを確認します。
- org.jbpm.examples:rewards:1.0 の成果物がローカルMavenリポジトリにインストールされていることを確認します。 (`~/.m2/repository`)
　※ このプロジェクトは、https://github.com/kkomazaw/jbpm-6-examples-assets からダウンロードしてください。
- JBoss EAP 6.1.1をダウンロードします。
- アプリケーションサーバーを開始します。(デフォルトデータソース ExampleDS を使用します）
  (起動方法)
  $ cd jboss-eap-6.1/bin
  $ ./standalone.sh
- 以下のコマンドでプロジェクトをビルドし、アプリケーションサーバーにデプロイします。
  $ cd jbpm-6-examples/rewards-jsf
  $ mvn clean package
  $ mvn jboss-as:deploy
- ブラウザから http://localhost:8080/rewards-jsf/ にアクセスします。
 - [ビジネスプロセスを開始] リンク：新規プロセスを開始します。
 - [Jiriさんのタスク] リンク： Jiriさんのタスクをリストし承認します。
 - [Maryさんのタスク] リンク： Maryさんのタスクをリストし承認します。

