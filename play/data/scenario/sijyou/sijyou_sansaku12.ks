;幸せはどこに？ 華衣へのイベント
;=======================お芝居の準備中です=================================
*sansaku
[stopbgm]
[call target=*bonyou storage="sijyou/preload_sijyou.ks"]
;[call target=*start storage="macro_tati_sijyou.ks"]
[freeimage layer = 1]
[wait time=10]
[背景_町]
[eval exp="f.haikei_credit='photo　by　宣教師ゴンドルフ+るくれしお(C) ガラスの家　http://www.geocities.jp/redglass_palace/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです==============================
#
町に出た。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(今日は橋に行ってみようかしら？)[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
[主人公目閉]
[暗転１]
[背景_橋]
[主人公目通常][r]
#
『見返り橋』にやってきた。[r]
橋の上で子女たちが、浮かない顔で相談している。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どうされたのかしら？）[p]
[whosay name="子女・その壱"]
「どうせ私なんか綺麗でもないし、お稽古もよく叱られるし……」[p]
[whosay name="子女・その弐 "]
「そんなことありませんわ」 [p]
[whosay name="子女・その壱 "]
「ううん、だって花子さんのほうが[ruby text=こと]箏が、お上手ですもの」 [p]
[whosay name="子女・その弐 "]
「花子さんは、御家柄上、その道のプロですもの。[r]
[sp]仕方ありませんわ。[r]
[sp]貴方には、茶道の才能があるとおもいますわ！」 [p]
[whosay name="子女・その壱 "]
「そんなことないわ。　道子さんには負けてしまうもの[r]
[sp]早く、誰よりもうまくならないと」[p]
[whosay name="子女・その弐 "]
「頑張屋さんですのね……」 [p]
[whosay name="子女・その壱"]
「けど、何をやったって、いつも無駄なの。[r]
[sp]"幸せってどこにあるのかしら？"」[p]
[whosay name="子女・その壱"]
「そうだわ！ 帰ってお稽古しないと！[r]
[sp]ごきげんよう！　またお会いしましょう！」[p]
[whosay name="子女・その弐]
「貴方には貴方の良さがあるのに……」 [p]
#
子女・その弐は、川の流れを悲しげに見つめた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
（……私も、帰りましょうか）[p]
[eval exp="sf.event_sijyou_sansaku_12 = 1"]
[イベントシーン終了]

[if exp="f.okeiko_gamen == true"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika
[else]
[イベントシーン終了２]
[endif]

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
[メッセージウィンドウ上ボタン表示]
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
