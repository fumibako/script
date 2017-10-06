﻿;=============================================
;◆黒田イベント　夢　6月2週(暫定)に好感度が一定以上かつ攻略対象中で一番高い時に発生
;=============================================
*replay_kuroda_6_2
[stopbgm]
[freeimage layer = 1]
[wait time=10]
;【背景】黒背景
[bg wait=true method='crossfade' storage="toumei.gif" time=500]
[wait time=10]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]

#
――夢を見た。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]
暗がりのなかに、[ruby text="ほう"]芳[ruby text="じゅん"]醇な香りが漂ってくる。[r]
香りの源を探すと、銀色の[ruby text="ケ"]薬[ruby text="トル"]缶と、それを支える指先が目に入った。[r]
[ruby text="ケ"]薬[ruby text="トル"]缶から鶴のように細長く伸びた口先が、その指の繊細さを際立たせている。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（どなたでしょう……それに、ここは一体？）[p]

#
古めかしい本棚に囲まれた部屋が見えてくる。本はそこかしこに積まれ、背よりも高く積まれた山もある。[r]
不思議と圧迫感は感じない。どこか懐かしく、優しい気配が漂っている。[p]

[whosay name="？？？" color="#7a65b2"]
「おや。美しい木の葉が舞い込んだかと思ったら

[whosay name="黒田 将貴" color="#7a65b2"]


*seen_end
;黒田夢イベント終了
[eval exp="sf.event_kuroda_event_6_1 = 1"]

[if exp="tf.test_kuroda==true || f.event_replay == 'kuroda'"]
[イベントシーン終了]
[endif]

[if exp="tf.test_kuroda==true"]
@jump storage="01_jsYiJcqRkk_test.ks"
[endif]

;夢編終了
[wait time=10]
;◆「休憩中」画像消去
[freeimage layer = 26]

@jump storage="event.ks" target=*event_owari

;回想記録終了 
[endreplay] 

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
