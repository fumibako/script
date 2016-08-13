;=============================================
;イベント８回目【新聞に投稿】１月３週
;=============================================
;【背景】[背景_庭]
;[chara_mod name="bg" storage="bg/room_niwa.jpg"]
;[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
;[主人公ポーズ通常]


;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
「磯野、今日も新聞を[r]
[sp] 読みたいのだけれどいいかしら？」[p]

＃磯野
「はい、お嬢様、[r]
[sp] ……銀行も大変なようです」[p]

;【立ち絵】主人公：憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、そうね」[p]

;【SE】紙に触れる（パラリ）

[新聞]
[sp]現在取り付け騒ぎは全国に広まり、[r]
また銀行の遅れた体質を浮き彫りにした。[r]
[sp] 好景気により資産が豊富になった銀行は[r]
企業と癒着し、業績が、悪化した企業へも貸し付けを続け、[r]
また放漫に投資し、不良債権を抱えた。[r]
[sp]さらに富を築き上げた志賀商店が倒産し、大きな騒ぎとなり [r]
中小銀行にとどまらず大銀行も取り付け騒ぎとなっている。[r]
[r]
[sp]政府が緊急に勅令を公布、一斉に全国の銀行を休業させ、[r]
３週間の猶予期間を設け、またその他細々とした[r]
勅令を出し銀行の信頼回復に着手している[p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[背景_庭]
;【立ち絵】主人公：不安
[whosay name=&sf.girl_namae color="#cf5a7f"]
（……これで落ち着くといいのだけど）[p]

＃細々とした勅令をみても適格なものだ[p]

;【立ち絵】主人公：不安
[whosay name=&sf.girl_namae color="#cf5a7f"]
（財前様はどうしていらっしゃるかしら？[r]
[sp] 多分すごく疲れていらっしゃらないかしら）[p]

;【立ち絵】主人公：目閉じ
（今すぐ会いたい）[p]

;【立ち絵】主人公：真剣
（財前様の銀行も対応に追われている[r]
[sp] 私に出来ることはないのかしら？[r]
[sp] 新聞の文章からも事態を重く見て[r]
[sp] 事態にを収拾しようと書かれている）[p]

;【立ち絵】主人公：ハッとする
（採用されるかわらないけれど[r]
[sp] 私からも読者欄に[r]
[sp] 投稿してみましょう！）[p]

;【立ち絵】主人公：真剣
「磯野、出来るだけ沢山の新聞社の[r]
[sp] 新聞を集めてもらえるかしら？」[r]
（一社だけではなく沢山の新聞に出して[r]
[sp] 国民に落ち着くように訴えてるわ！）[p]

＃磯野
「どうされるのですか？」[p]

;【立ち絵】主人公：真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
「採用されるかはわかりませんが[r]
[sp] 読者欄に投稿します」[p]

＃磯野
「新聞社へのお手紙は旦那様と[r]
[sp] よくご相談の上にになさってください」[p]

;【立ち絵】主人公：目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ」[p]


;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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
