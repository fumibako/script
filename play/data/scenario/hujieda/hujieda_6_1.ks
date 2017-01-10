*replay_hujieda_6_1.ks
*start
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*6_1 storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;[call target=*start storage="macro_tati_sijyou.ks"]
[イベントシーン構築ボタン無し版]
[暗転]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
;ゆっくり表示
[chara_mod name="bg" storage="bg/bg_kinari_sakura.jpg" time=2000]
―― 夢を見た。[p]
;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]
#
あの時の鳩さんだわ。[p]
;【SE】鳩の羽ばたき（バサバサッ）
[playse storage=tori_habataki_hato.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
「あ！　待って！」[p]

#
私は鳩さんを追いかけた。[r]
するとお琴を爪びく音がする[p]
;箏SE

[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（優しい音だわ）

#
白い霧が立ち込める中、声がした。[p]

[whosay name=？？？]
「僕は、貴方の琴の音を聞き続けたい」[p]

[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「誰ですか？」[p]

[whosay name=？？？]
「貴方がお琴のお稽古をし続けるなら[r]
[sp]僕は、お手紙をださずにはいられないでしょう」[p]

#
[主人公目閉]
光が差し、私は瞼を閉じた。[p]
[chara_mod name="bg" storage="bg/bg_kinari_sakura.jpg" time=2000]
;【背景】主人公邸 部屋
;[chara_mod name="bg" storage="bg/room_niwa.jpg" time=100]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;【背景】主人公邸 お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「夢？」[p]

[主人公ポーズ指]
（琴のお稽古をすると、誰かとのご縁があるのかしら）[p]
  
;
;=============================================
[イベントシーン終了４]


@jump storage="test_hujieda.ks"
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
