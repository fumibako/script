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
[if exp="sf.SE=='ON'"]
[playse storage=tori_hato.ogg loop=false ]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
（あの時の鳩さんだわ）
[autosave改]
[p]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_kinari_sakura.jpg" time=1000]
[wait time=10]
[eval exp="f.haikei_credit=''"]
#
私が近づこうとした途端、鳩は飛立つ。[p]
;【SE】鳩の羽ばたき（バサバサッ）
[if exp="sf.SE=='ON'"]
[playse storage=tori_habataki_hato.ogg loop=false ]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
「あ！　待って！」[p]

#
私は鳩を追いかけた。[r]
白い霧が立ち込め、視界が白く染まる。[p]

お[ruby text=こと]箏の爪びく音がした。[p]
;箏SE
;【SE】お箏（短くド・レ…）
[if exp="sf.SE=='ON'"]
[playse storage=koto_dore.ogg loop=false ]
[endif]
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
[if exp="sf.SE=='ON'"]
[playse storage=kotopoi_kira.ogg loop=false ]
[endif]

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
