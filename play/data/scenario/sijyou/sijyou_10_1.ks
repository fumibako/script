;¥¥¥¥¥¥¥¥イベント5おわり¥¥¥¥¥¥¥¥
;//////☆障害のはじまり 心の暗闇//////
;○手紙が帰ってこなくなる
;【背景】ヒロインの部屋
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[wait time=10]
[主人公通常]
[wait time=10]
;信じようと悩み無理をしている表情
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
[主人公伏目パチ1回]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(最近、お手紙の内容の繋がりが、おかしいと思っていたら)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(ついにお手紙が、来なくなってしまいました)[p]
[主人公伏目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、今日のお手紙に四条家からの手紙はありまして？」[p]
[whosay name="磯野" color="dimgray"]
「ありませんよ」[p]
[whosay name="磯野" color="dimgray"]
「本日のお手紙は、デパートからのお知らせが届いているくらいです」[p]
[主人公伏目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、お父さまから何かきいているかしら？」[p]
[whosay name="磯野" color="dimgray"]
「とくには」[p]
[主人公目閉じ]
;目を閉じて悩み考える表情へ
[whosay name=&sf.girl_namae color="#cf5a7f"]
……[p]
[whosay name="磯野" color="dimgray"]
「お嬢様、」[p]
;はじめの表情へ
[whosay name="磯野" color="dimgray"]
「四条家とは旧知の仲」[p]
[whosay name="磯野" color="dimgray"]
「なんの連絡も無しに婚約を破棄することは、ないと思われます」[p]
;一旦主人公を表示なしにする
[主人公退場]
;[暗転]
一方、そのころ四条邸では[p]
;○四条の苦悩シーン
[whosay name="四条母" color="#9B608B"]
「華衣！ 勝手に手紙を捨てるはやめて頂戴！」[p]
[whosay name="四条 華衣" color=%mp.color]
「うるさい！ 華織のせいであの人が死んだんだ！」[p]
[whosay name="四条祖父" color="#888898"]
「お前さんには、もっと良い相手を見繕ってくる！」[p]
[whosay name="四条祖父" color="#888898"]
「だから[苗字]家の手紙を返すんだ！」[p]
[whosay name="四条 華衣" color=%mp.color]
「いやだっ！」[p]
[whosay name="四条祖父" color="#888898"]
「この分からず屋が！！」[p]
;[SEビンタ]
#四条父
「華織……なんで」[p]
[whosay name="華織" color="olivedrab"]
「華衣を、叱らないであげて下さい、[r]
僕が悪いのですから」[p]
;[SE足音]
[whosay name="四条母" color="#9B608B"]
「華衣！どこ行くの？！」[p]

;☆障害の解決案、 第二ターニング・ポイント（主人公が解決策を見出す）
[主人公ポーズ通常]
[wait time=10]
[主人公困り]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(どうしましょう)[p]
[whosay name="磯野" color="dimgray"]
「文矢さまにお手紙を書いてはいかがでしょうか？」[p]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えっ」[p]
[whosay name="磯野" color="dimgray"]
「文矢さまから、四条さまのことで何かあれば相談するようにと言いつかっておりまして」
;△文矢さまと四条さまのお二人は、仲がよろしいのですよね→変更
[p]
[主人公伏目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね……」[p]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(お兄さまに恋の相談なんて、気恥ずかしいですが……)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(今はそんなことを考えている場合では、ないですよね)[p]
;○四条家の日常をみてプレイヤーが同調する形
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、ありがとう。さっそくお手紙を書いてみます」

;ここでイベントは区切り バッドが必要であれば、文矢から「話をしてみたけどダメだったよ」という返事に。イベントバッドへ追記
;¥¥¥¥¥¥¥¥イベント5おわり¥¥¥¥¥¥¥¥
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_sijyou.ks"
[s]

*window_close
[cm]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[l]

;会話ウィンドウ表示
[chara_mod name="message_bg" storage=&f.message_storage time=1]
;機能ボタン表示
;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
[if exp="f.kaogura!='off'"]
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endif]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]

[return]
