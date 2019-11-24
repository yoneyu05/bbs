# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


とりあえず作ってみるもの
！掲示板！(うえから順番にやる)

！実装予定機能一覧！
スレッド投稿機能　○
スレッド詳細機能　○
スレッド削除機能 管理ユーザだけ

記事投稿機能　○
記事削除機能 管理ユーザだけ


DBトランザクションの制御機能 ○
スレッドと記事のリレーション機能　
スレッドと記事をユーザにリレーション機能　
画像ファイルのアップロード機能（画像アップロード系のライブラリを使う） ○
ページネーション機能（ライブラリを使う）


管理ユーザ登録機能（ライブラリを使う）　○
管理ユーザログイン機能（認証系ライブラリを使う）　○


単体テスト機能（ライブラリを使う）
統合テスト機能（ライブラリを使う）


AWS
Doocker
circleCIツール


！DB定義書！
・スレッドDB
タイトル　thread string NotNull
名前 name string
内容 content text

・記事DB
名前 name string
内容 content text NotNull


！ページ遷移図！



作るもの
掲示板




DB定義書
