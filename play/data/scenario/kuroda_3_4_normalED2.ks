﻿﻿﻿;=============================================
;◆黒田イベント【分岐：normalED】黒田ルートかつ3月4週になった時点で淑女度一定値未満、好感度一定値未満で1度だけ発生
;=============================================

*scene0
;[freeimage layer=1 time=500]
[iscript]
$('.1_fore').remove();
[endscript]
[ct]
[wait time=500]
[clearfix]
[wait time=10]
[clearstack]
[wait time=10]
;@layopt layer=1 visible=true

;◆ スチル表示:chara_modだとなぜかすぐ消えることがあるため[bg]タグに切り替えています
[bg wait=true method='crossfade' storage="../fgimage/bg/kuroda_normalED.jpg" time=500]
[wait time=30]
[eval exp="f.haikei_credit='illustration　by　かいこ'"]
[cg storage="kuroda_normalED.jpg"]
[wait time=200]
[p]
[resetfont]

*scene1
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[freeimage layer = 14]
@layopt layer=14 visible=true
[chara_new name="message_bg" storage="toumei.gif"]
[chara_show left=1 top=391 layer=14 name="message_bg" time=1]
[wait time=10]
[chara_mod name="message_bg" storage="message_bg/frame_red.png" time=1]
[wait time=10]

[メッセージウィンドウ上ボタン表示]

;メッセージレイヤを会話窓用に設定変更
[eval exp="f.kaogura='off'"]
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
[chara_config ptext="chara_name_area"]
#
そういえば、千日紅の花言葉は[r]
『変わらぬ愛』[r]
とも聞く。[p]
そう思い浮かべたところで、黒田様の声が響いた。[p]

[whosay name="黒田 将貴" color="#7a65b2"]
「散ればまた、咲かせれば良いのですよ」[p]

#
ハッと桜を見上げる。[p]

繊細な花びらを身にまとう、その幹は[r]
力強いうねりと逞しさとを備え[r]
大人でも抱えきれぬほどの厚みがあった。[p]

[whosay name="黒田 将貴" color="#7a65b2"]
「この樹は、百年以上もの間[r]
[sp]毎年うつくしい花を咲かせているのです」[p]

#
このひとは[r]
花を見るのに、時の流れまでをも[r]
感じているのか――。[p]
[eval exp="f.kaogura=''"]
;=============================================
;１１章、【後日談：normalED分岐】
;=============================================
;【SE】うぐいす（ケキョケキョ）
[playse storage=tori_uguisu_pikyo.ogg loop=false ]
[wait time=10]
;【背景他】手紙用画面
;【BGM】normal/goodED用BGM
;【背景他】手紙用画面
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
[wait time=10]
;機能ボタン消去
[clearfix]
[wait time=50]
[eval exp="sf.FButton='OFF'"]
[chara_mod name="message_bg" storage="toumei.gif"]
[wait time=10]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
[wait time=10]
[layopt layer=29 visible=true]
[wait time=10]
;背景変更:手紙
[bg wait=true method='crossfade' storage="../fgimage/toumei.gif" time=500]
[wait time=10]
[image layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_tegami_blue.jpg" time=500]
[wait time=520]
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
[wait time=10]

;主人公から兄への手紙
文矢お兄様[r]
[r]
拝啓[r]
[sp]今日は、ご報告したいことがあります。[r]
黒田様との結婚が決まりました。[r]
[r]
[sp]黒田様の研究は順調に進んでいるようで[r]
国の機関とも共同研究を始められたそうです。[p]
[r]
[sp]研究の合間に散策へ連れて行っていただいて[r]
私も植物にずいぶん詳しくなりました。[r]
[r]
[sp]次にお兄様たちが帰国された際には、色々とご案内[r]
するのが楽しみです。[r]
……[p]
[fadeoutbgm time=3000]
[wait time=10]


;【SE】パラリ(手紙)
[playse storage=paper_open.ogg loop=false ]
[freeimage layer = 29]
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_prologue.jpg" time=1000]
[wait time=500]
;テキスト全画面
[font color=white size=27]
[wait time=10]
文箱に納められた手紙の束から[r]
私はそっと視線を外した。[r]
[r]
[wait time=10]
庭からは春風に乗って、花の香りが漂ってくる。[r]
[r]
[wait time=10]
「黒田様が、幼いころからお好きだったという『すみれ』[r]
[sp]無事に咲いて、よかったわ」[p]
[r]
[wait time=10]
文箱の蓋を丁寧に閉め、ゆっくりと庭へ向かった――。[p]

[font color=white size=35]
[r]
[r]
[r]
[r]
[wait time=10]
[sp]　　　　　　　　　　完[p]
[stopbgm]
[wait time=10]
[eval exp="sf.ED_kuroda_normal=1"]
;回想記録終了
[endreplay] 
[wait time=10]

[if exp="f.flag_replay == true"]
;web版はendreplayの下にするexe版はendreplayで戻る
[イベントシーン終了]
[wait time=10]
;【背景】セピア背景
[bg wait=true method='crossfade' storage="../fgimage/bg/plane_sepia.jpg" time=1000]
[wait time=1200]
[eval exp="f.haikei_credit=''"]

@jump storage="replay2.ks"
[endif]
[イベントシーン終了]
[wait time=10]
;【背景】タイトル背景
[bg wait=true method='crossfade' storage="../fgimage/bg/title.jpg" time=1000]
[wait time=500]

;黒田ルートをクリアした
[eval exp="tf.ED_kuroda == 1"]
[if exp="f.okeiko_gamen == true"]
	[eval exp="sf.ending_Number_of_times = sf.ending_Number_of_times + 1"]
[endif]
;tweet表示
[call storage="sijyou/01_tweet.ks"]

[if exp="f.okeiko_gamen == true"]
	@jump storage="event.ks" target=*event_ED
[endif]

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


