TieRoll
-

**This service will shorten the coordinates of the tie!**

男のおしゃれ。もっと気軽に、もっと身近に。
-

**今のあなたが考える気合の入った服装。１年後にはそれがあなたのスタンダードであるように**。そう願いを込めて

<br />
<br />
男達の「おしゃれになりたい」「もっとおしゃれを楽しみたい」「ずっとおしゃれであり続けたい」そんな願望を叶えましょう

スーツがないならタキシードを着ればいい・・・そんな事は言いません。

チーフがないならハンカチ挿せばいいじゃない

タイピンがないならヘアピンで止めたっていいじゃない

カッコイイ。そう思ったコーデを明日から真似できるようなすばらしいサービスを提供します。



### 第一印象が与える影響はとても大きい

第一印象は実に３〜５秒で決定し、印象を決める情報の半数以上が視覚からの情報である。だからこそ服装が与える影響は計り知れない。

右を見ても左を見ても似たような服装しかいない状態で、一体誰が自分を覚えてくれているだろうか。

<br />
「こいつ、他とは違う」（もちろんいい意味で）そう思わせただけでもファーストコンタクトは成功を収めるはずだ。だとすれば、ビジネスで成功できるチャンスも飛躍的に上昇するであろう。

オシャレになったらコーヒーショップでコーヒーを入れてくれるだけの**あの子**もきっと振り向いてくれる・・・かは自分次第だがきっとプライベートも充実したものになる。

<br />
服を買った後に誰もが一度は経験する「モデル映え」に落胆させないように、コーデはトルソーに着せたもののみとし、コーディネートの良さそのものを提供する。

そして、この制約により必要以上の情報を与えないことで、統一感が生まれ、ユーザーは服と向き合えるのである


### 環境

* Ruby 2.4.1
* Rails 5.1.4
* postgreSQL 9.6.3



機能と設計
-

* サイト管理者
* スタッフ
* ユーザー

の3つの名前空間を設定し、某ファッションECサイトのメンズ特化版になるものを作っています。

* サイト管理者はスタッフの登録から削除や停止、ユーザーの停止措置などを課す事ができる
* スタッフは各アイテムを投稿できる
* トップページにはコーディネート済の写真のみが並び、詳細を押すことで各アイテムの購入ができる
* ユーザーは買う、お気に入り、投票の機能のみが使える


進捗
-

10/2~9は作業中止


随時更新

作業時間 49:00


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
