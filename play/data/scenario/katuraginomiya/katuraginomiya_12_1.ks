;7.5回目イベント
[背景_庭]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ通常]
[主人公通常]
[主人公目パチ1回]
[whosay name=磯野 color="dimgray"]
「葛城宮殿下は[r]
[sp]手紙を送るといわれたのですよね？[r]
[sp]もうあれからひと月ですが」[p]

;【立ち絵】主人公 通常
「忙しくされてるのよ[r]
[sp]責任感の強いお方だから[r]
[sp]水面下で動いて安定させようとしているのだわ[r]
[sp]殿下を信じていますわ」[p]

[whosay name=磯野 color="dimgray"]
「では暫く[r]
[sp]お手紙は来ないかも[r]
[sp]知れないですね」[p]

;【立ち絵】主人公 通常
「？　[r]
[sp]それはどういう意味かしら？」[p]

[whosay name=磯野 color="dimgray"]
「これをご覧ください」
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]
[新聞]

[font color=navy size=21]
[r]
[sp]内閣不信任決議案が可決し内閣総辞職に！[r]
[r]
[sp]海軍汚職の全貌が明らかになり[r]
海軍出身の議員辞職、[r]
大幅な海軍予算の削減に行ったものの[r]
貴族院、衆議院、両院関係は不調和となっていった。[r]
[r]
[sp]国家予算案は不成立、[r]
衆議院で内閣不信任決議案が可決し[r]
内閣は総辞職に追い込まれた。[r]
 
[sp]　　　　　　　　　　　　　　　　　　　　　　　[p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【立ち絵】主人公 真剣
「殿下にお手紙を書きます[r]
[sp]さすがにこの結果は[r]
[sp]落ち込まれていると思うわ」[p]
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
