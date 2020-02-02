# README
1．アプリ概要
誰でも書き込みしたり、画像を張ることができる掲示板。  
管理ユーザーだけは、書き込みの削除ができる。  
URL: https://my-bbs-app.herokuapp.com/ 

２．アプリ機能一覧
トピック投稿・詳細・編集・削除機能  
トピックにコメントをつける・編集・削除機能  
削除依頼投稿・編集・削除機能  
DBトランザクションの制御機能  
トピックとコメントのリレーション機能  
トピックとコメントでの画像ファイルのアップロード機能  
ページネーション機能  
管理ユーザ登録機能  
管理ユーザログイン機能  
トピックとコメントの検索機能  

３.アプリに使っている技術一覧
言語（ruby）  
フレームワーク（ruby on rails）  
認証機能（devise/devise-i18n-views）  
webデザイン（jquery-rails/bootstrap-sass/sass-rails）  
画像アップロード機能（carrierwave/mini_magick）  
クラウドストレージ(AWS_S3)  
ページネーション機能（will_paginate/bootstrap-will_paginate）  
DB（PostgreSQL）  
バージョン管理（git）  
ホスティングサービス（github/bitbucket）  
テスト（minitest）  
PaaS(heroku)  

ER図  
![ER図](https://user-images.githubusercontent.com/38838696/73279643-cb9aba80-4230-11ea-9d0d-7578d1dd849c.png)
