[chara_mod name="bg" storage="toumei.gif" time=1000]
;////////////表示準備/////////
;選択肢背景＿表示遅れ防止
[preload storage="data/fgimage/bg/plane_sakura.jpg"]
;//////////////////////////////
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
；==============================================================================================================
;七月一週に休憩を押した場合
；==============================================================================================================
[イベントシーン構築]
#
;【背景】ヒロインの部屋　夜
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公ポーズ通常]
[主人公通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふぅ……）
[主人公ふぅ閉]
[p]
;【SE】時計（控え目カチコチ）
[playse storage=tokei_hikaeme.ogg loop=false ]
[主人公目伏]
[主人公口通常]
書き終わった手紙に目を落とす。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お返事が楽しみだわ)[p]
#
顔の見えない彼の人を想い、空を見上げた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あ、流れ星だわ！」[p]


*select
[主人公目閉じ]
[主人公ポーズ通常]
;[whosay name=&sf.girl_namae color="#cf5a7f"]
#
どなたについてお願いしようかしら？
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用の背景：(和紙風桜色はオープニングで使用)
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;背景変更:和紙風 桜色
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;[link]タグでの選択肢例
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
;【分岐】
[glink target=*sijyou text="四条 華織" fontcolor=gray size=23 width="200" x=200 y=100 color=white]
[glink target=*zaizen text="財前 美彬" fontcolor=gray size=23 width="200" x=200 y=150 color=white]
[glink target=*kuroda text="黒田 将貴" fontcolor=gray size=23 width="200" x=200 y=200 color=white]
[glink target=*okeiko text="それよりお稽古のこと" fontcolor=gray size=22 width="400" x=200 y=250 color=white]
[glink target=*syukujyo text="それより淑女らしく" fontcolor=gray size=22 width="400" x=200 y=300 color=white]
[glink target=*no text="見逃してしまった" fontcolor=gray size=22 width="400" x=200 y=350 color=white]
[s]

==============================================================================================================


==============================================================================================================
*sijyou
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;【背景】主人公邸 庭の見える部屋：夜
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（華織お兄様と親しくできますように）[p]


@jump target=*end_Q

；==============================================================================================================
;wikiのシナリオ基準によって鍵括弧前の句点をとってあります
*zaizen
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;【背景】主人公邸 庭の見える部屋：夜
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（財前様と親しくできますように）[p]

@jump target=*end_Q
；==============================================================================================================
*kuroda
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;【背景】主人公邸 庭の見える部屋：夜
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[主人公目閉じ]
（黒田様と親しくできますように）[p]


@jump target=*end_Q
；==============================================================================================================
*okeiko
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
#
それよりお稽古のことをお願いした。[p]
#
[主人公目閉じ]
（今、気になるお稽古が上手になりますように）[p]


@jump target=*end_Q
；==============================================================================================================
*syukujy
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;【背景】主人公邸 庭の見える部屋：夜
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
#
それより淑女らしくなれるようにお願いした。[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（淑女らしくなれますように……）[p]
@jump target=*end_Q

；==============================================================================================================
*no
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;【背景】主人公邸 庭の見える部屋：夜
[chara_mod name="bg" storage="bg/room_niwa_yoru.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
#
見逃してしまった。[p]
[主人公通常]
（自分の力で頑張りましょうか）[p
@jump target=*end_Q


；==============================================================================================================
*end_Q
#
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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
