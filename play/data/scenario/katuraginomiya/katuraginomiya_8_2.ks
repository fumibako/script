;イベント3回目
;一定の淑女度、葛城宮一定の好感度
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
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

#
皇后様のお印入りの[r]
簡単な挨拶と日時の書いてある[r]
お茶事の招待状と[r]
葛城宮殿下の手紙に目を通す[p]

[手紙]

[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
拝呈　ときにもう皇后陛下からのお茶事の招待状は[r]
もう届いたであろうか？　[r]
[r]
[sp]残暑厳しき折、今上、皇后両陛下に[r]
君を婚約者候補として認めてもらうように交渉を行った。[r]
[r]
[sp] その結果皇后陛下自ら君を未来の親王妃として[r]
ふさわしいか確かめると言われ、
直接会われるという 運びとなった。[r]
[r]
[sp]少々大事になってしまったと反省している。[r]
[sp]だが皇后陛下は誰にでも分け隔てなく接する方で[r]
純粋に君に興味を持たれたようだ。[r]
 [r]
[sp]もし君が私との結婚を考えられないなら断って構わない[r]
[sp]だがただ私の婚約者候補と挙げられるのが嫌でなければ[r]
受けて欲しい[r]
[r]
[sp] ……いや心から君が受けてくれるのを望んでいるのだ[r]
[r]
謹言
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「……」
[主人公閉伏目パチ1回]

[whosay name=磯野 color="dimgray"]
「お嬢さまどうされますか？」[p]

#心配そうに磯野が問い掛けている[p]

;【立ち絵】主人公困り目閉じ
「招待を受けますわ。」[p]

;【立ち絵】主人公 真剣
「殿下がどんなに苦労して私を[r]
[sp] 婚約者候補の中に入れようと[r]
[sp] して下さっている事がにわかります[r]
[sp] 殿下の期待を裏切るつもりはありません」[p]

[whosay name=磯野 color="dimgray"]
「お嬢様なら大丈夫ですお稽古でのお茶立てもお作法も[r]
[sp] 身についておられますから」[p]
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
