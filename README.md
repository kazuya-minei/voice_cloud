## Voice Cloud
<img src="https://user-images.githubusercontent.com/74249764/117097754-7dffec80-ada7-11eb-80fb-b1fa92804357.png">
<img src="https://user-images.githubusercontent.com/74249764/117097650-2bbecb80-ada7-11eb-96e5-c45b6a80558a.png" width="374">

---
## URL
http://voicecloud.work

---
## 概要
声で繋がるSNSサービスです。  
誰かが投稿した「私が考えたセリフを読み上げてほしい]、「この文章を朗読してください」等、  
「お題」に対し、そのお題に沿った内容で録音した音声ファイルを投稿し共有出来ます。    
また、プロフィールページではサンプルボイスの設定なども可能で、  
自身のプロフィールとして他の人に共有することも出来ます。  
他のSNSなどのように「お題、ボイス投稿」に対するいいね・コメント・ユーザーに対するフォロー機能も備えています。

開発環境と本番環境にDocker、インフラにAWSを利用しています。

---
## 制作背景
私自身も高校生の頃から類似の音声共有サービスを使ってネット上の人と交流をしていました。  
しかしこういったサービスは声優志望の中高生等若いユーザーが多いということで、なかなか収益が見込めない、  
すなわちサービスが長続きせず、ユーザーは類似のサービスを転々とせざるを得ない、という状況がありました。  
私は現在声優やナレーターの仕事を自宅で行っていますが、  
その私の技術はこういったサービスの中で他のユーザーとの交流を通して培われたものだと思っています。  
このサービスを通して、学生時代の私のようなユーザーを応援したいという思いで着想を得ました。

---
## 使用言語
Ruby 2.6.6, Rails 6.1.3  
JavaScript(Vue.js), HTML5, TailwindCSS

---
## 使用技術
AWS(VPC, EC2, RDS, Route53)  
Docker, docker-compose  
PostgresQL  
Rspec  
Nginx  
Git

---
## ER図
<img width="966" alt="スクリーンショット 2021-05-05 13 59 38" src="https://user-images.githubusercontent.com/74249764/117098764-56f6ea00-adaa-11eb-9018-2e06470b9b1e.png">

---
## サービス構成図
<img width="1440" alt="PCHome" src="https://user-images.githubusercontent.com/74249764/117098149-97556880-ada8-11eb-9bbe-fe329251f1ba.png">

---
## 機能一覧
- ### 認証機能(devise)
  - 新規登録(メール認証)、ログイン、ログアウト
    - 名前、メールアドレス、パスワード必須。ログイン時はメールアドレス、パスワードのみでログイン可能。
- ### プロフィール
  - アイコン(jpg, jpeg, gif, png)の設定
  - ボイスサンプル(mp3, wavw, wav)の設定
- ### お題投稿機能
- ### ボイス投稿機能
- ### いいね(ボイス)、コメント(ボイス)、お気に入り(お題)機能
- ### フォロー機能
  - フォロー、アンフォロー機能
- フォロー、フォロワー一覧表示
- ### テスト
  - Rspecで150以上

---
## 今後の改善点
- ### 機能面
  - 検索機能の実装
  - SPA化
  - 通知機能
  - サンプルボイスを複数設定、タイトルも個別に設定できるように
  - お気に入りのボイスをプレイリスト化出来る機能
- ### デザイン面
  - 全体的に漂う素人臭さを改善したい
  - エラー、インフォメッセージのデザイン改善
