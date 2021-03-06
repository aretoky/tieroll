男のおしゃれ。もっと気軽に、もっと身近に。
-

**今のあなたが考える気合の入った服装。１年後にはそれがあなたのスタンダードであるように**。そう願いを込めて

<br />
<br />
男達の「おしゃれになりたい」「もっとおしゃれを楽しみたい」「ずっとおしゃれであり続けたい」そんな願望を叶えましょう

<br />
<br />
スーツがないならタキシードを着ればいい・・・そんな事は言いません。
<br />
<br />
チーフがないならハンカチ挿せばいいじゃない
<br />
<br />
タイピンがないならヘアピンで止めたっていいじゃない
<br />
<br />
カッコイイ。そう思ったコーデを明日から真似できるようなすばらしいサービスを提供します。
<br />
<br />

### 第一印象が与える影響はとても大きい
---


第一印象は実に３〜５秒で決定し、印象を決める情報の半数以上が視覚からの情報である。だからこそ服装が与える影響は計り知れない。

右を見ても左を見ても似たような服装のヤツしかいない状態で、一体誰が自分を覚えてくれているだろうか。

<br />
「こいつ、他とは違う」（もちろんいい意味で）そう思わせただけでもファーストコンタクトは成功を収めるはずだ。だとすれば、ビジネスで成功できるチャンスも飛躍的に上昇するであろう。

<br />
<br />
オシャレになったらコーヒーショップでコーヒーを入れてくれるだけの<strong>あの子</strong>もきっと振り向いてくれる・・・かは自分次第だがきっとプライベートも充実したものになる。

<br />
<br />
<br />
服を買った後に誰もが一度は経験する「モデル映え」に落胆させないように、コーデはトルソーに着せたもののみとし、コーディネートの良さそのものを提供する。

<br />
そして、この制約により必要以上の情報を与えないことで、統一感が生まれ、ユーザーは服と向き合えるのである



### そして今回、私が提案するファッションECサイトの新しいカタチ
---

**アイテムを探す。から「コーデを探す」へ**

明日に控えたプレゼン。旧友たちとの飲み会。デート、パーティー、結婚式。あこがれの格式高いレストランへ行くときも。何気ない明日の服装だってそうだ。ファッションに正解は無いからこそ悩むものではないだろうか。

５分、１０分、ターニングポイントとなるイベントでは１時間近く悩む人もいるそうだ（詳しい数値はCWアンケあたりで採る予定）

オシャレをしたいが悩む時間がもったいないと感じる人は多く（これもアンケとるよきっと）、ファッションライターの私であっても例外ではなく、カテゴリからあれよこれよと探すだけでも疲れてしまう

#### ならば
一つにまとめてしまえばよいではないか！！！

これでまるっと解決だ！！（書くの疲れたのでそのうちまとめます）



#### 環境

* Ruby 2.4.1
* Rails 5.1.4
* postgreSQL 9.6.3
* フリーで鍛え上げた自らを律せる強靭な精神力
* どうせやるなら本格的に。お金を生み出す仕組みを作ろうの開発理念
* 「2017年、私が選ぶ今年のBestBuy」に見事１位タイで選ばれた１４ボタンマウスの開発効率（もう一つはホワイトボード）
* そしてライター譲りの他の追従を許さないREADME!!!



機能と設計
-

* サイト管理者
* スタッフ
* ユーザー

の3つの名前空間を設定し、某ファッションECサイトのメンズ特化版になるものを作っています。


* サイト管理者はスタッフの登録から削除や停止、ユーザーの停止措置などを課す事ができる
* スタッフは各アイテムを投稿できる
* トップページには各アイテムを集結させたコーディネート済の写真のみが並び、詳細を押すことでマネキン買い、もしくは各アイテムの購入ができる
* ユーザーは買う、お気に入り、投票の機能が使える
* お気に入りした中から「1week」分の登録ができる


#### そしてもうひとつ

働く女性たちへ向けたバージョンの案はあるが実装は未定

そんな彼女達に送るコピーは **Fashionableに生きよう！** 〜カレとトレンド、どっちを追うの？〜（サブタイトルは嘘）です

このFashionableの意味は「流行り」という意味合いではなく、流行りに流されずに自分のスタイルを確立出来ている人。という意味


設計段階では下記にあるメンズボードに購入機能がついたものであるが、平置きで撮影したものでも良いとするかも

参考(対象とする層の服装イメージ)

mens
<https://www.pinterest.jp/akiya3/vzone/>

ladys
<https://www.pinterest.jp/akiya3/ladys-style/>

#### レスポンシブ未対応

#### 本番環境の対応終わってません


寝る前には動かずともpushするやつということを念頭に`rails db:fixtures:load`してからあれこれしてください


進捗
-


作業時間 73:20

作業時間の載せ方を少し変えました。66時間30分より前は2017-11-24のpushで見れます

※変えても大雑把には変わりないです

**namespaceもしくはカテゴリ**

|作業name(未or完or仮)|
|:--:|
|分|

の形式


#### ロジック

**共通**

|検証(未)|
|:--:|
|15|

**商品**

|marchandise(未)|
|:--:|
|435|

**Admin**

|モデル(仮)|
|:--:|
|5|


**Staff**

|モデル(未)|
|:--:|
|5|

**ユーザー**

|モデル(未)|
|:--:|
|5|

#### View

**Staff**

|staff共通view(未)|
|:--:|
|25|

随時更新
