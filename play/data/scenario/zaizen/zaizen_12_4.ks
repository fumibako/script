;==============================================================================
;イベント7回目【財前の交渉】１２月４週
;=======================お芝居の準備中です=======================================
*replay_zaizen_12_4
[stopbgm]
[call target=*12_4 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
[freeimage layer = 1]
[wait time=10]
;【背景】背景会議室　;変更してください
[bg wait=true method='crossfade' storage="../fgimage/bg/B4nFWraU42/test_zaizen_kaigi.jpg"]
[eval exp="f.haikei_credit='Photo by  ＠名無しさん１'"]
[イベントシーン構築ボタン無し版枠茶色]
#
;【立ち絵】財前：真剣　;変更してください
[財前ベーススーツ]
[財前通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「今更、前大蔵大臣の失言に言及する気はございません。[r]
[sp]ただ早急に対応して頂きたいと存じます！」
[autosave]
[wait time=10]
[p]

[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]

[if exp="tf.test_gamen == true"]
テストページから開始しています。シナリオ終点にjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]


*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
@jump target=*seen_end1
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[endif]

;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
[財前真剣]
「日銀が緊急に動いて貸し付けをが間に合わず、[r]
[sp]紙幣の発行も限界だと聞きました」[p]

[whosay name="新大蔵大臣"]
「だが君たちの案は書面で読んだが、少し強引すぎるのでは[r]
[sp]ないかね？」[p]

;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「国民感情をなだめるためには、大きなパフォーマンスが必要です。[r]
[sp]臨時の紙幣を発行させ、今回のような緊急時の対処の[r]
[sp]法の整備をお願いします」
[autosave]
[wait time=10]
[p]

[whosay name="新大蔵大臣"]
「君は亀蔵財閥総帥の腰巾着……いや失礼、[r]
[sp]懐刀だったな」[p]

#
亀蔵財閥総帥から気に入られ、時に相談役を請負い、[r]
それを良くも、悪くも捉える者がいて、懐刀とも腰巾着とも[r]
呼ばれるようになった。[p]

#
今回の件の発案にも関わり、私がまとめ、交渉役に選ばれた。[p]


;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「今回の件は、亀蔵財閥を含めた五大財閥総帥の同意も[r]
[sp]得ております」
[autosave]
[wait time=10]
[p]

#
新大蔵大臣は私をジロジロ見る。[r]
異国の血が入っている事で、よくこんな風に見られ、[r]
その度、母の事を恨んだものだった。[p]

#
だが今は平然と受け取ることが出来る。[r]
父譲りの交渉術と話術。[r]
必ず成功させよう[p]

;【立ち絵】財前：真剣
[財前真剣]
[whosay name="財前美彬" color="#7a65b2"]
「米騒動の時のように、国民が暴徒化するのは時間の[r]
[sp]問題でしょう。[r]
[sp]その前に手は打つべきかと存じます」
[autosave]
[wait time=10]
[p]

[whosay name="新大蔵大臣"]
「確かにあれはひどい騒ぎだったな」[p]

「書面の案では三週間の全ての銀行を休業させ、[r]
[sp]その間に臨時の紙幣を発行し、全ての銀行に行き渡るように[r]
[sp]する」[p]

;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「ええ、取り付け騒ぎの混乱を収めた後、 紙幣も回収し[r]
[sp]日銀に貸付金を返す」[p]

「倒産する会社もあるでしょうが猶予のある[r]
[sp]銀行が吸収合併し、負債も引き継ぐ形にする」[p]

[whosay name="新大蔵大臣"]
「それでは問題は起きないのか？ 三週間で、急造した紙幣が[r]
[sp]回るとは」[p]

「それに、紙幣の印刷は片面でいいとは……」[p]

;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「ええ、紙幣を発行するだけでも大変ですし、[r]
[sp]時間を抑えるための策ですので、国家の威信にも関わります」[p]

「この件が終わった後は、急造した紙幣は、すぐに回収した[r]
[sp]方がいい」[p]

;【立ち絵】財前：真剣
[whosay name="財前美彬" color="#7a65b2"]
「閣下、問題はすでに起こっています。[r]
[sp]全ては国民感情を落ち着かせる為です。[r]
[sp]この状態を金融恐慌と呼んでいますが、国民感情の方が恐慌状態[r]
[sp]です」
[autosave]
[wait time=10]
[p]

[whosay name="新大蔵大臣"]
「なるほど……そのようにしよう」[p]

;【立ち絵】財前：目閉じ
[whosay name="財前美彬" color="#7a65b2"]
[財前目閉じ]
「閣下の協力感謝いたします」[p]

#
;一礼する

[whosay name="新大蔵大臣"]
「それでは、私は失礼する」[p]

#
大蔵大臣は席をたち会議室を出ていった。
[autosave]
[wait time=10]
[p]
;【SE】ドアを閉じる音（バタン）
[playse storage=door_close_batan.ogg loop=false ]


[fadeoutbgm time=3000]

;【立ち絵】財前：ため息
[whosay name="財前美彬" color="#7a65b2"]
[財前ため息]
（さすがに疲れたか……）[p]

;四行なので区切ります。
[財前通常]
(後は、財閥出身の議員は賛同するように各財閥総帥が[r]
[sp]動いている。 それから枢密院に働きかける）[p]

;【立ち絵】財前：通常　手紙をみる
[財前目伏]
（それにしても……）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
;最大６-７行
[手紙主人公 fumi_number=]
財前美彬様へ[l][r]
[sp]　初霜のみぎり貴方様におかれましては[r]
大変忙しくされているとお察しいたしております。[r]
[r]
[sp]先日は、事情をお聞かせくださって[r]
ありがとうございました。 [r]
私もこの度の騒動は大変な事件だと実感しています。
[autosave]
[wait time=10]
[p]

[sp][r][r]
また暴動にまで発展し、私も胸が痛む想いです。[r]
[sp]この難局を乗り越えるには、人の心を[r]
落ち着かせるのが第一だと私は思います。[r]
[r]
町人たちも皆不安がっていました。[p]

[sp][r][r]
今、新聞社や政府への働きかけと対策を[r]
話し合われていると存じます。[r]
なにか大きく人の心を落ち着かせるような対策が[r]
取られ、また、一日も早く皆が安心して[r]
過ごせるように祈っています。[p]
[sp][r][r]
[sp]木枯しが吹きすさぶこの季節、[r]
忙しい中ですが財前様もどうかご自愛ください。[r]
貴方の事を心から想っています。[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　[名字][名前] [p]
[resetfont]
[手紙読了]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[whosay name="財前美彬" color="#7a65b2"]
;【立ち絵】財前：微笑み
[財前微笑み]
（この手紙一つで、心が癒されると感じている。[r]
[sp]……自分が不思議だな）[p]

[fadeoutbgm time=3000]
[暗転２]
[財前退場]
[暗転１]
;余韻のあるシーンなのですぐ消えないで。
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[暗転２終了]

*seen_end1
[eval exp="sf.event_zaizen_12_4 = 1"]
;=============================================
[イベントシーン終了]
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[endif]
@jump storage="test_zaizen.ks"
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
