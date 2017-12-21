﻿;=============================================
;◆黒田イベント　夢　6月2週(暫定)に好感度が一定以上かつ攻略対象中で一番高い時に発生
;=============================================
*start
*replay_kuroda_6_2
[stopbgm]
[freeimage layer = 1]
[wait time=10]
;【背景】黒背景
[bg wait=true method='crossfade' storage="../fgimage/bg/anten.jpg" time=500]
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
