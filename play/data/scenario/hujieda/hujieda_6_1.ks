*replay_hujieda_6_1
*start
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*6_1 storage="hujieda/preload_hujieda.ks"]
[freeimage layer = 1]
[wait time=10]
[イベントシーン構築ボタン無し版]
[暗転１]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
#
;ゆっくり表示
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_kinari_sakura.jpg" time=2000]
[wait time=10]
[eval exp="f.haikei_credit=''"]
――夢を見た。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】「深雪白雪」
[playbgm storage="miyuki.ogg" loop=true]
[eval exp="f.bgm_storage='miyuki.ogg'"]
[endif]

[bg wait=true method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/bg_hujieda_hato.jpg" time=1000]
[wait time=10]
[eval exp="f.haikei_credit='illustration by ◆I9IhvvVdPo editing by ＠名無しさん１'"]
;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（あの時の鳩さんだわ）[p]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_kinari_sakura.jpg" time=1000]
[wait time=10]
[eval exp="f.haikei_credit=''"]
#
私が近づこうとした途端、鳩は飛立つ。[p]
;【SE】鳩の羽ばたき（バサバサッ）
[playse storage=tori_habataki_hato.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
「あ！　待って！」[p]

#
私は鳩を追いかけた。[r]
白い霧が立ち込め、視界が白く染まる。[p]

お[ruby text=こと]箏の爪びく音がした。[p]
;箏SE
;【SE】お箏（短くド・レ…）
[playse storage=koto_dore.ogg loop=false ]
[主人公眉通常]
[主人公目閉じ]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（優しい音だわ）[p]


[whosay name=？？？]
「貴方の[ruby text=こと]箏の音で心が癒されました」[p]
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/bg_moon_lake.jpg" time=1000]
[wait time=10]
[eval exp="f.haikei_credit='illustration by＠名無しさん１'"]
#
声とともに霧が晴れ、月の光を映した湖の美しい夜景が広がる。[p]

[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「誰ですか？」[p]

[whosay name=？？？]
「貴方がお[ruby text=こと]箏のお稽古をし続けるなら[r]
[sp]僕は、手紙をださずにはいられないでしょう」[p]
;【SE】お箏ぽい音（3秒ほどのトレモロとキラキラ）
[playse storage=kotopoi_kira.ogg loop=false ]

[whosay name=？？？]
「ただ貴方の文通を邪魔する気はないのです。[r]
[sp]誰かと手紙を交わし、その相手と親しくなっても、[r]
[sp]僕の事を想ってくれるなら」[p]

[whosay name=？？？]
「――その時はきっと」[p]
#
[主人公目閉]
光が差し、私は瞼を閉じた。[p]
[fadeoutse time=2000]
[fadeoutbgm time=3000]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_kinari_sakura.jpg" time=2000]
[wait time=10]
;【背景】主人公邸 部屋
;[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=100]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;【背景】主人公邸 お稽古部屋
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_okeiko.jpg" time=1000]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「夢？」[p]

[主人公ポーズ指]
（お[ruby text=こと]箏のお稽古をすると、誰かとのご縁があるのかしら？[r]
[sp]けれど今、交わしているお手紙の方の事も良く知った上で[r]
[sp]その方を強く思わないといけないのね）[p]
  
[eval exp="sf.event_hujieda_6_1 = 1"]
;=============================================
[イベントシーン終了]
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

[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=650 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;[メッセージウィンドウ上ボタン表示]

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
