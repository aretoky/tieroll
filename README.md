TieRoll
-

**This service will shorten the coordinates of the tie!**

環境

* Ruby 2.4.1
* Rails 5.1.4
* postgreSQL 9.6.3


サービス概要
-

男性ももっとおしゃれであるべきだ、可能な限りのおしゃれを楽しもう！

を提供すべく開発します

コーディネートを考える時間を短縮させるために、セット売りの原則を課せ、コーディネートブックの役割を果たせるようにする


対象となるユーザー層
-

社会人として落ち着いていき、物にこだわり始める20代半ば〜よぼよぼになってもファッションへの飽くなき探究を求める男性の皆さん

プロジェクトプラン
-

* 9/11日着手 終りが見えなくなりました
* 1h/dayの時間を開発に充てます（予定）

Design
-

* サイト管理者
* スタッフ
* ユーザー

の3つの名前空間を設定し、某ファッションECサイトのスーツ特化版になるものを作っています。

スタッフよりジャケットやシャツなどの各アイテムを投稿する。
コーディネートブックの役割を果たさせるので統合するモデルを作成して、コーディネートとして各アイテムを集結させる→ユーザーに表示という流れです。

あとは普通のECサイトのように購入ができる

進捗
-

10/2~9は作業中止


随時更新

作業時間 47:30


**管理者サイド**

9/11~12 リポジトリ、登録ロジック

9/12~18 ログイン、CSSデザイン

9/20 adminによるスタッフ作成ロジック

9/21~22 adminによるスタッフ管理〜フロントまで

**ユーザーサイド**

9/22 トップページおおよその枠組み

9/22~28 登録、ログインロジック

9/23 Production環境構築

9/28 サイトアイコン作成

9/28~30 ヘッダーデザイン修正(一旦終了)


**スタッフサイド**

9/30 ログイン機能

10/1 rootページの制御

10/1 ドロワーメニューとcss


**商品**

10/1・10・15・20・22 DB設計

10/22・23 11/1・3・5~10投稿機能

10/31 設計見直し

11/13 投稿画面デザイン


**Test**

10/24 管理者モデルテスト

10/24・25 staffモデルテスト

10/25 userモデルテスト
