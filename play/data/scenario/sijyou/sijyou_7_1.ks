*replay_sijyou_7_1
;==============================================================================================================
[stopbgm]
[layopt layer=29 visible=true]
[layopt layer=fix visible=false]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_kinari_sakura.jpg" time=500]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=580]
[wait time=50]
*start
;////////////表示準備/////////
;選択肢背景＿表示遅れ防止
[preload storage="data/fgimage/bg/plane_sakura.jpg"]
;//////////////////////////////
[call target=*start storage="macro_tati_sijyou.ks"]
;【背景】主人公邸 庭の見える部屋：夜
[freeimage layer = 1]
[wait time=10]
[bg storage="../fgimage/bg/room_niwa_yoru.jpg" time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[主人公目閉]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;==============================================================================================================
;七月～八月に休憩を押した場合（全員の好感度一定以下など補佐イベント）
;==============================================================================================================
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふぅ……）
;↓口：おちょぼ口 [主人公口ふぅ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
[p]
;【SE】時計（控え目カチコチ）
[if exp="sf.SE=='ON'"]
[playse storage=tokei_hikaeme.ogg loop=false ]
[endif]
[主人公目通常]
[主人公口ほほえみ]
#
書き終わった手紙に目を落とす。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お返事が楽しみだわ）
;↓目：にっこり [主人公目にこ]
[chara_mod name="girl_me" storage="girl/S/me_niko.png" time=0]
[wait time=10]
[p]

[bg storage="../fgimage/bg/sijyou_engawa2.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
#
[主人公目通常]
[if exp="f.katuraginomiya_only == 1"]
秘めた想いを胸に夜空を見上げた。[p]
[else]
顔の見えない彼の人を想い、夜空を見上げた。[p]
[endif]

[image name=star layer=1 top=10 left=400 storage="bg/B4nFWraU42/star.jpg" time=10]
[anim name="star" left=-300 top=600 opacity=0]
[er]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あ、流れ星だわ！」[p]
*select
[主人公目閉じ]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]

;[whosay name=&sf.girl_namae color="#cf5a7f"]
#
どの様なお願いをしようかしら？
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用の背景：(和紙風桜色はオープニングで使用)
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;背景変更:和紙風 桜色
[bg storage="../fgimage/bg/plane_sakura.jpg" time=100]
[eval exp="f.haikei_credit=''"]
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示選択肢用]
[wait time=10]
;【分岐】
[if exp="f.katuraginomiya_only == 1 "]
[glink target=*katuragi text="葛城宮　晴仁 殿下" size=20 width="200" x=200 y=20 graphic="select_waku_x500.png" font_color=black]
[elsif exp=" f.katuraginomiya_fumi_start == 1 && f.katuraginomiya_only != 1"]
[glink target=*katuragi text="葛城宮　晴仁 殿下" size=20 width="200" x=500 y=20 graphic="select_waku_x500.png" font_color=black]
[glink target=*sijyou text="四条 華織 様" size=20 width="200" x=200 y=20 graphic="select_waku_x500.png" font_color=black]
[glink target=*zaizen text="財前 美彬 様" size=20 width="200" x=200 y=80 graphic="select_waku_x500.png" font_color=black]
[glink target=*kuroda text="黒田 将貴 様" size=20 width="200" x=200 y=140 graphic="select_waku_x500.png" font_color=black]
[else]
[glink target=*sijyou text="四条 華織 様" size=20 width="200" x=200 y=20 graphic="select_waku_x500.png" font_color=black]
[glink target=*zaizen text="財前 美彬 様" size=20 width="200" x=200 y=80 graphic="select_waku_x500.png" font_color=black]
[glink target=*kuroda text="黒田 将貴 様" size=20 width="200" x=200 y=140 graphic="select_waku_x500.png" font_color=black]
[endif]
[glink target=*okeiko text="お稽古が上達しますように" size=20 width="400" x=200 y=200 graphic="select_waku_x500.png" font_color=black]
[glink target=*syukujyo text="淑女らしくなりたい" size=20 width="400" x=200 y=260 graphic="select_waku_x500.png" font_color=black]
[glink target=*no text="見逃してしまった" size=20 width="400" x=200 y=330 graphic="select_waku_x500.png" font_color=black]
[s]

;==============================================================================================================


;==============================================================================================================
*sijyou
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[bg storage="../fgimage/bg/sijyou_engawa2.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（華織お兄様と親しくできますように）[p]
;【SE】キラッ(短め：例：磯野説明シーン、パラup時に使用
[if exp="sf.SE=='ON'"]
[playse storage=kira.ogg loop=false ]
[endif]
[if exp="f.okeiko_gamen == true"]
[eval exp="f.para_sijyou_koukando=f.para_sijyou_koukando + 1"]
[endif]
#
私は星に願った。[p]
;[eval exp="f.sansaku_machi_seika_txt='『華織お兄様』への気持ちが１高まりました'"]
[eval exp="f.event_cmn_seika_txt='『華織お兄様』への気持ちが１高まりました'"]
;スキップフラグ
[eval exp="tf.not_wish = 0"]
[wait time=10]
@jump target=*end_Q

;==============================================================================================================
;wikiのシナリオ基準によって鍵括弧前の句点をとってあります
*zaizen
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[bg storage="../fgimage/bg/sijyou_engawa2.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（財前様と親しくできますように）[p]
;【SE】キラッ(短め：例：磯野説明シーン、パラup時に使用
[if exp="sf.SE=='ON'"]
[playse storage=kira.ogg loop=false ]
[endif]
[if exp="f.okeiko_gamen == true"]
[eval exp="f.para_sijyou_zaizen=f.para_zaizen_koukando + 1"]
[endif]
#
私は星に願った。[p]
;[eval exp="f.sansaku_machi_seika_txt='『財前様』への気持ちが１高まりました'"]
[eval exp="f.event_cmn_seika_txt='『財前様』への気持ちが１高まりました'"]
;スキップフラグ
[eval exp="tf.not_wish = 0"]
[wait time=10]
@jump target=*end_Q
;==============================================================================================================
*kuroda
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[bg storage="../fgimage/bg/sijyou_engawa2.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]
[主人公目閉じ]
（黒田様と親しくできますように）[p]
;【SE】キラッ(短め：例：磯野説明シーン、パラup時に使用
[if exp="sf.SE=='ON'"]
[playse storage=kira.ogg loop=false ]
[endif]
[if exp="f.okeiko_gamen == true"]
[eval exp="f.para_kuroda_koukando = f.para_kuroda_koukando + 1"]
[endif]
#
私は星に願った。[p]
;[eval exp="f.sansaku_machi_seika_txt='『黒田様』への気持ちが１高まりました'"]
[eval exp="f.event_cmn_seika_txt='『黒田様』への気持ちが１高まりました'"]
;スキップフラグ
[eval exp="tf.not_wish = 0"]
[wait time=10]
@jump target=*end_Q
;==============================================================================================================
*okeiko
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[bg storage="../fgimage/bg/sijyou_engawa2.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]
#
お稽古のことをお願いした。[p]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]

[if exp="f.event_hujieda[1] == 1 && f.okeiko_gamen == true"]
;藤枝イベントをみてる場合
（お箏が上手になりますように）[p]
;【SE】キラッ(短め：例：磯野説明シーン、パラup時に使用
[if exp="sf.SE=='ON'"]
[playse storage=kira.ogg loop=false ]
[endif]
[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando + 1"]
[eval exp="f.para_shujinkou_j_koto=f.para_shujinkou_j_koto + 1"]
;[eval exp="f.sansaku_machi_seika_txt='お箏が１上がりました'"]
;[eval exp="f.event_cmn_seika_txt='『鳥君』への気持ちが１高まりました'"]
[eval exp="f.event_cmn_seika_txt2='お箏が１上がりました'"]
;スキップフラグ
[eval exp="tf.not_wish = 0"]
[wait time=10]
[else]
（今、気になっているお稽古が上達しますように）[p]
;【SE】キラッ(短め：例：磯野説明シーン、パラup時に使用
[if exp="sf.SE=='ON'"]
[playse storage=kira.ogg loop=false ]
[endif]
[iscript]
tf.rand = Math.floor( Math.random() * 4) + 1
if(tf.rand == 0){
f.para_shujinkou_j_sadou = f.para_shujinkou_j_sadou + 1;
f.event_cmn_seika_txt = "茶道が１上がりました";
}else if (tf.rand == 1) {
f.para_shujinkou_j_kadou =  f.para_shujinkou_j_kadou + 1;
f.event_cmn_seika_txt = "華道が１上がりました";
}else if (tf.rand == 2) {
f.para_shujinkou_j_reihou = f.para_shujinkou_j_reihou + 1;
f.event_cmn_seika_txt = "礼法が１上がりました";
}else{
f.para_shujinkou_j_gogaku = f.para_shujinkou_j_gogaku + 1;
f.event_cmn_seika_txt = "語学が１上がりました";
}
[endscript]
[endif]
;スキップフラグ
[eval exp="tf.not_wish = 0"]
[wait time=10]
私は星に願った。[p]
@jump target=*end_Q
;==============================================================================================================
*syukujyo
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[bg storage="../fgimage/bg/sijyou_engawa2.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]
#
淑女らしくなれるようにお願いした。[p]
[if exp="f.katuraginomiya_only == 1 && f.okeiko_gamen == true"]
[eval exp="f.para_shujinkou_shukujodo=f.para_shujinkou_shukujodo + 1"] 
[else]
[eval exp="f.para_shujinkou_shukujodo=f.para_shujinkou_shukujodo + 1"] 
[eval exp="f.para_katuraginomiya_koukando=f.para_katuraginomiya_koukando + 1"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（淑女らしくなれますように……）[p]
;【SE】キラッ(短め：例：磯野説明シーン、パラup時に使用
[if exp="sf.SE=='ON'"]
[playse storage=kira.ogg loop=false ]
[endif]
#
私は星に願った。[p]
;[eval exp="f.sansaku_machi_seika_txt='淑女度が１上がりました'"]
[eval exp="f.event_cmn_seika_txt='淑女度が１上がりました'"]
;スキップフラグ
[eval exp="tf.not_wish = 0"]
[wait time=10]
@jump target=*end_Q

;==============================================================================================================
*no
[cm]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[bg storage="../fgimage/bg/sijyou_engawa2.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[機能ボタン消]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[wait time=10]
見逃してしまった。[p]
[主人公通常]
（自分の力で頑張りましょうか）[p]
;skip 念のためのエラー回避
;[eval exp="f.sansaku_machi_seika_txt=''"]
[eval exp="f.event_cmn_seika_txt=''"]
;スキップフラグ
[eval exp="tf.not_wish = 1"]
[wait time=10]
#
私は星を眺めた。[p]
@jump target=*end_Q
;==============================================================================================================
*katuragi
[cm]
;メッセージレイヤサイズを会話窓用に戻す ここはオンリーしか表示しない
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[bg storage="../fgimage/bg/sijyou_engawa2.jpg" time=1000]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（殿下と親しくできますように）[p]
;【SE】キラッ(短め：例：磯野説明シーン、パラup時に使用
[if exp="sf.SE=='ON'"]
[playse storage=kira.ogg loop=false ]
[endif]
[eval exp="f.para_katuraginomiya_koukando=f.para_katuraginomiya_koukando + 1"]
;スキップフラグ
[eval exp="tf.not_wish = 0"]
[wait time=10]
#
私は星に願った。[p]
;[eval exp="f.sansaku_machi_seika_txt='『殿下』への気持ちが１高まりました'"]
[eval exp="f.event_cmn_seika_txt='『殿下』への気持ちが１高まりました'"]
@jump target=*end_Q
;==============================================================================================================
*end_Q
[image name=star layer=1 top=10 left=400 storage="bg/B4nFWraU42/star.jpg" time=10]
[anim name="star" left=-300 top=600 opacity=0]
[er]
#
[if exp="tf.not_wish == 1"]
@jump target=*not_wish 
[endif]

[layopt layer=26 visible=true]
[wait time=10]
[image layer=26 x=250 y=40 storage="button/frame_lesson_message.png"]
[wait time=10]
;[ptext text=&f.sansaku_machi_seika_txt layer=26 size=21 x=310 y=85 color=darkslateblue bold=bold]
[ptext text=&f.event_cmn_seika_txt layer=26 size=21 x=310 y=85 color=darkslateblue bold=bold]
[p]
[freeimage layer = 26]
[wait time=10]
*not_wish
[イベントシーン終了]
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
[イベントシーン終了４]
[endif]

@jump storage="test_sijyou.ks"
[s]
