;==================================散策イベント=====================================
;△お見合い後、で散策にいったら見知らぬ人(華衣)から四条とのお見合いは止めた方がいい、
;四条は遊び人だ、と言われる(無くてもいいイベント)一回きり
;=======================お芝居の準備中です===========================================
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
[wait time=10]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです==================================================================
#
町に出た。[r]
街道の絵画店には、様々な花の絵が飾られている。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】筍の訪れ（町散策時に
[playbgm storage="machi_takenoko.ogg" loop=true]
[eval exp="f.bgm_storage='machi_takenoko.ogg'"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
（私も、絵画に励んでみようかしら）[p]
;【SE】ザッ(衣擦れ)
[playse storage=za_kinuzure.ogg loop=false ]
[主人公驚]
[quake count=1 time=100 hmax=1 vmax=1]
[whosay name="？？？" color=%mp.color]
「！」[p]
#
美しい絵画に夢中になっていると、前から歩いてきた少年とぶつかってしまった。[p]
;手に持っていた絵画教本が地面に落ち、栞が飛び出す。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
「！　ごめんなさい」[p]
#
慌てて謝るが、ぶつかった相手は、睨み顔で思わぬことを言い出した。[p]
[whosay name="？？？" color=%mp.color]
「四条家の華織は遊び人だ、お見合いはやめておくんだな」[p]
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えっ？」[p]
;【SE】走り去る(屋外)
[playse storage=run_soto.ogg loop=false ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(行ってしまわれました)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(なんだったのでしょうか……)[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
(でも、後ろ姿が昔の華織お兄様に似てたような……[r]
[sp]いえ、きっと気のせいですね)[p]
[eval exp="sf.event_sijyou_sansaku = 1"]
[イベントシーン終了]

[if exp="f.okeiko_gamen == true"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika
[else]
[イベントシーン終了２]
[endif]

@jump storage="test_sijyou.ks"
[s]
