;9回目イベント【背景】公園　背景森林公園 主人公と葛城宮抱擁CG
=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*3_4_nomal storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;【背景】公園
[chara_mod name="bg" storage="bg/I9IhvvVdPo/kouenn.jpg"]
[表示準備 storage="bg/I9IhvvVdPo/kouenn.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
[主人公目パチ1回]


[whosay name=磯野 color="dimgray"]
「ああ……殿下が来られましたね。[r]
;test
;====================
;【立ち絵】葛城宮通常
[葛城宮ベース私服]
[葛城宮通常]
[表示開始 time=300]
;====================
[sp]では私は呼ばれるまで、暫く失礼します」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】はなごよみ〜さくら〜（normal/goodED用
[playbgm storage="ending_hanagoyomi_sakura.ogg" loop=true]
[eval exp="f.bgm_storage='ending_hanagoyomi_sakura.ogg'"]
[endif]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「ええ」[p]

;【立ち絵】葛城宮　微笑み
[葛城宮笑顔大]
[whosay name="葛城宮　晴仁" color=%mp.color]
「[名前]殿、やっと会えたな！」[p]
;【立ち絵】葛城宮 真剣
[葛城宮目伏せ照れ]
「……抱きしめていいだろうか？」[p]

;【立ち絵】主人公 照れ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
「はい」[p]

#
殿下は私を引き寄せ、ぎゅっと力強く抱きしめました[p]

;=============================================================
・主人公と葛城宮抱擁CG[p]
;【背景】主人公と葛城宮抱擁 まだない
;[chara_mod name="bg" storage="bg/I9IhvvVdPo/kouenn.jpg"]
;=============================================================
;【立ち絵】主人公 照れ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ]
「……」[p]

;【立ち絵】葛城宮 微笑み
[whosay name="葛城宮　晴仁" color=%mp.color]
「そんなに照れないでくれないか？[r]
[sp]私までうつってしまいそうだ」[p]

「今は純粋に再会できたことを喜んでいる[r]
[sp]だからもっと自然に受け止めてほしい」[p]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公笑顔]
「はい」[p]
#
私は殿下の背にそっと手をまわしました[p]
[葛城宮効果消]
[葛城宮目閉じ]
;【立ち絵】葛城宮 真剣
[whosay name="葛城宮　晴仁" color=%mp.color]
「やっと落ち着いた[r]
[sp]君にはずっと待たせてすまなかった」[p]

;【立ち絵】主人公 目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
[主人公眉下げ下]
[主人公口ほほえみ]
「いいえ、[r]
[sp]殿下の御心を分かっておりました」[p]

;【立ち絵】主人公 微笑み
[主人公ほほえみ]
「ずっと信じておりました。[r]
[sp]ずっとお会いしたく思っていました」[p]

;【立ち絵】葛城宮 微笑み
[葛城宮微笑み]
[whosay name="葛城宮　晴仁" color=%mp.color]
「私もずっと君に会いたかった。[r]
[sp]左手を出してくれるか？」[p]


;=============================================================
・CGここまで　背景森林公園[p]
;【背景】背景森林公園 まだない
;[chara_mod name="bg" storage="bg/I9IhvvVdPo/kouenn.jpg"]
;=============================================================

[主人公ポーズ通常]
[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公 通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
 [主人公目大]
 [主人公口通常]
「？　ええ」[p]

[葛城宮微笑み照れ]
;【立ち絵】葛城宮照れ
[whosay name="葛城宮　晴仁" color=%mp.color]
「……」[p]

#
私の手をとり薬指に指輪をはめました[p]

;【立ち絵】主人公 驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「この指輪は？」[p]

[葛城宮効果消]
[葛城宮真剣]
;【立ち絵】葛城宮真剣
[whosay name="葛城宮　晴仁" color=%mp.color]
「エンゲージメントリングという。[r]
[sp]西洋では婚約する時こうして指輪を贈るんだ」[p]
[葛城宮目伏]
「もう一度君に結婚を申し込もう」[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公 微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
[主人公眉下げ下]
「はい！　お受けします[r]
[sp]不束者ですがよろしくお願いいたします」[p]
[葛城宮微笑み]

[主人公目伏柔]
「貴方とともに喜びも悲しみも、共にすると誓います」[p]

[葛城宮退場]

;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
@jump storage="test_katuragi.ks"
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
