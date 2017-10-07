;彷徨う若者心情 華織へのイベント
;=======================お芝居の準備中です==================================
*sansaku
[stopbgm]
[call target=*bonyou storage="sijyou/preload_sijyou.ks"]
;[call target=*start storage="macro_tati_sijyou.ks"]
[freeimage layer = 1]
[wait time=10]
[背景_町]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================;
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
男子学生が、意味深な表情をして並んでいる。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（どうされたのかしら？）[p]
[whosay name="学生・その壱"]
「ねぇ、何かを捨てて何かを得るとしたら[r]
[sp]君は何を捨てる？」
[p]
[whosay name="学生・その弐"]
「急になんだね？」[p]
[whosay name="学生・その壱"]
「ちょっと友人の為に恋人を捨てる物語を読んでさ、[r]
[sp]僕、気になってしまったのさ」
[p]
[whosay name="学生・その弐"]
「僕なら両方選ぶよ。　どうしようもない限りはね」[p]
[whosay name="学生・その壱"]
「君って欲張りだね」[p]
[whosay name="学生・その弐"]
「至極、当然の気持ちじゃないか。[r]
[sp]そうできることがあるなら、僕は全力で道を探す」[p]
[whosay name="学生・その弐"]
「それに僕は、周囲の者に期待されている分、[r]
[sp]立派な[ruby text=おとこ]漢として生きなければいけないし、[r]
[sp][ruby text=めかけ]妾の子だから、[r]
[sp]今まで、色んなものを諦めてきた」[p]
[whosay name="学生・その弐"]
「もう、諦めるのは一番最後にしておきたいのさ」[p]
[whosay name="学生・その壱"]
「そんな君の事が……って言ったらどうする？」[p]
[whosay name="学生・その弐"]
「ん？　なんだね？」[p]
[whosay name="学生・その壱"]
「なんでもないよ。[r]
[sp]最近は女学院では[ruby text=エス]Ｓっていうお遊びが流行りらしいよ」[p]
[whosay name="学生・その弐"]
「ああ、噂には聞いてるよ。　ふざけた話だな」[p]
#
学生・その壱は、空を遠い目で見つめた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目パチ1回]
（……帰りましょうか）[p]

[eval exp="sf.event_sijyou_sansaku_13 = 1"]
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
