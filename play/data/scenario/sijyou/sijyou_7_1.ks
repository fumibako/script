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
[playse storage=tokei_hikaeme.ogg loop=false ]
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

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;[link]タグでの選択肢例
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝－
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
;【分岐】
[if exp="f.katuraginomiya_only == 1 || f.katuraginomiya_fumi_start == 1"]
[glink target=*katuragi text="葛城宮　晴仁" fontcolor=gray size=23 width="200" x=200 y=80 color=white]
[else]
[glink target=*sijyou text="四条 華織" fontcolor=gray size=23 width="200" x=200 y=80 color=white]
[glink target=*zaizen text="財前 美彬" fontcolor=gray size=23 width="200" x=200 y=130 color=white]
[glink target=*kuroda text="黒田 将貴" fontcolor=gray size=23 width="200" x=200 y=180 color=white]
[endif]
[glink target=*okeiko text="お稽古が上達しますように" fontcolor=gray size=22 width="400" x=200 y=230 color=white]
[glink target=*syukujyo text="淑女らしくなりたい" fontcolor=gray size=22 width="400" x=200 y=280 color=white]
[glink target=*no text="見逃してしまった" fontcolor=gray size=22 width="400" x=200 y=330 color=white]
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
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（華織お兄様と親しくできますように）[p]
;【SE】キラッ(短め：例：磯野説明シーン、パラup時に使用
[playse storage=kira.ogg loop=false ]
[if exp="f.okeiko_gamen == true"]
[eval exp="f.para_sijyou_koukando=f.para_sijyou_koukando + 1"]
[endif]
#
私は星に願った。[p]
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
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（財前様と親しくできますように）[p]
;【SE】キラッ(短め：例：磯野説明シーン、パラup時に使用
[playse storage=kira.ogg loop=false ]
[if exp="f.okeiko_gamen == true"]
[eval exp="f.para_sijyou_zaizen=f.para_zaizen_koukando + 1"]
[endif]
#
私は星に願った。[p]
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
[主人公目閉じ]
（黒田様と親しくできますように）[p]
;【SE】キラッ(短め：例：磯野説明シーン、パラup時に使用
[playse storage=kira.ogg loop=false ]
[if exp="f.okeiko_gamen == true"]
[eval exp="f.para_kuroda_koukando = f.para_kuroda_koukando + 1"]
[endif]
#
私は星に願った。[p]

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
#
お稽古のことをお願いした。[p]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]

[if exp="f.event_hujieda[1] == 1 && f.okeiko_gamen == true"]
;藤枝イベントをみてる場合
（お箏が上手になりますように）[p]
;【SE】キラッ(短め：例：磯野説明シーン、パラup時に使用
[playse storage=kira.ogg loop=false ]
[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando + 5"]
[eval exp="f.para_shujinkou_j_koto=f.para_shujinkou_j_koto + 1"]
[else]
（今、気になっているお稽古が上達しますように）[p]
;【SE】キラッ(短め：例：磯野説明シーン、パラup時に使用
[playse storage=kira.ogg loop=false ]
[iscript]
tf.rand = Math.floor( Math.random() * 4) + 1
if(tf.rand == 0){
f.para_shujinkou_j_sadou = f.para_shujinkou_j_sadou + 1;
}else if (tf.rand == 1) {
f.para_shujinkou_j_kadou =  f.para_shujinkou_j_kadou + 1;
}else if (tf.rand == 2) {
f.para_shujinkou_j_reihou = f.para_shujinkou_j_reihou + 1;
}else{
f.para_shujinkou_j_gogaku = f.para_shujinkou_j_gogaku + 1;
}
[endscript]

[endif]

#
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
#
淑女らしくなれるようにお願いした。[p]
[if exp="f.katuraginomiya_only == 1 && f.okeiko_gamen == true"]
[eval exp="f.para_shujinkou_shukujodo=f.para_shujinkou_shukujodo + 1"] 
[else]
[eval exp="f.para_shujinkou_shukujodo=f.para_shujinkou_shukujodo + 1"] 
[eval exp="f.para_katuraginomiya_koukando=f.para_katuraginomiya_koukando + 10"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
（淑女らしくなれますように……）[p]
;【SE】キラッ(短め：例：磯野説明シーン、パラup時に使用
[playse storage=kira.ogg loop=false ]
#
私は星に願った。[p]
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
見逃してしまった。[p]
[主人公通常]
（自分の力で頑張りましょうか）[p]
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
[playse storage=kira.ogg loop=false ]
[eval exp="f.para_katuraginomiya_koukando=f.para_katuraginomiya_koukando + 1"]
#
私は星に願った。[p]

@jump target=*end_Q
;==============================================================================================================
*end_Q
[image name=star layer=1 top=10 left=400 storage="bg/B4nFWraU42/star.jpg" time=10]
[anim name="star" left=-300 top=600 opacity=0]
[er]
#
[イベントシーン終了]
[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
[イベントシーン終了４]
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
