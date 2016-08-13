;=============================================
;イベント6.6回目【財前への手紙】11月４週イベント６回目翌日
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
「磯野、今日の新聞は届いているかしら？」[p]

＃磯野
「はい、もうお聞き及びと存じますが[r]
[sp] 町では多くの銀行が[r]
[sp] 倒産するという噂で持ち切りです[r]
[sp] 財前様の銀行はどうなのでしょうか？」[p]

;【立ち絵】主人公：不安
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今の所は大丈夫だそうです」[r]
（けれど何があるかわからないわ）[p]


;【SE】紙に触れる（スッ）

[新聞]
[sp]実際にはまだ倒産してなかったのに大蔵大臣の[r]
「志井銀行がとうとう倒産したという発言は波紋を呼び[r]
海軍高官の贈賄事件から持ち直しかけていた現内閣を[r]
総辞職に追い込む形になった。[r]
[r]
[sp] 町では多数の銀行が倒産するというデマが[r]
飛び交い、取り付け騒ぎに及び、混乱し営業を停止する銀行も少なくない。[r]
また暴動に発展し憲兵が動くケースもあり、[r]
ガラスを割られるなどの被害も出ている。[r]
[r]
[sp]政府もこの騒ぎを早急に処理する対策について話し合いが、[r]
行われているがこの問題は次の内閣に持ち越しになりそうな見通しだ。[r]
当面混乱することが予想される。[r]
[r]
[sp]また情報が錯乱し、当社でも先走った記事が出たことを[r]
深く謝罪致します。特に各銀行の方々には迷惑をおかけしました。[p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[背景_庭]

;【立ち絵】主人公：不安
[whosay name=&sf.girl_namae color="#cf5a7f"]
（この記事で皆落ち着けるはずない……[r]
[sp] 当分銀行は混乱するし[r]
[sp] 銀行が休めば個人も会社も支障をきたすわ）[p]

;【立ち絵】主人公：真剣
「財前様にお手紙を書きます！」[r]
（銀行のお客様の対応が大変だわ[r]
[sp] それに現内閣が暫く機能しないなら[r]
[sp] ますます状況は悪くなる）[p]

;【SE】ペンで書く
;【SE】ペンで書く

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公　通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
「この手紙を出してくれますか？」[p]

＃女中
「かしこまりました、財前様へですね」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 真剣
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、よろしくお願いしますわ」[p]

;【立ち絵】主人公：困り
（これは大きな問題だわ）[p]
;【立ち絵】主人公：真剣
「でもきっと財前様なら[r]
[sp] きっと道を切り開かれるわ」[p]


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
