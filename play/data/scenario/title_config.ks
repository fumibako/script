﻿﻿﻿@clearstack
;==============================
; タイトル画面:config
;==============================
;音設定の一部に【簡易コンフィグ画面プラグイン】by アオイサクラ様  [http://awoinekura.blog.fc2.com/]を使用させていただきました
*vol_bgm_down
[iscript]
$('.button_bgm').remove();
[endscript]
[eval exp="tf.config='vol_only'"]
[iscript]
if(tf.current_bgm_vol != 0){
	tf.current_bgm_vol -= 10;	
}
[endscript]

[if exp="tf.current_bgm_vol != 0"]
 	[image name="button_bgm" layer=28 left=585 top=480 folder="image" storage="button_bgm_bg.png"]
[endif]

[if exp="tf.current_bgm_vol == 0"]
 	[image name="button_bgm" layer=28 left=585 top=480 folder="image" storage="button_bgm_off.png"]
	;変数設定。ゲーム開始時、ゲーム中やロード時に設定引き継ぎ用
	[eval exp="sf.BGM='OFF'"]
[endif]

[bgmopt volume="&tf.current_bgm_vol"]
@jump target=*kansuuji_show
[return]

*vol_bgm_up
[if exp="tf.current_bgm_vol == 0"]
;【BGM】雪解け（タイトル画面等）click=trueは一部ブラウザでクリック待ち的な動作をすることがあるため除いて運用中
[playbgm storage="title_yukidoke.ogg" loop=true]
[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
[endif]
[iscript]
$('.button_bgm').remove();
[endscript]
[eval exp="tf.config='vol_only'"]
[iscript]
if(tf.current_bgm_vol != 100){
	tf.current_bgm_vol += 10;	
}
[endscript]
[if exp="tf.current_bgm_vol != 0"]
 	[image name="button_bgm" layer=28 left=585 top=480 folder="image" storage="button_bgm_bg.png"]
	;変数設定。ゲーム開始時、ゲーム中やロード時に設定引き継ぎ用
	[eval exp="sf.BGM='ON'"]
[endif]
[bgmopt volume="&tf.current_bgm_vol"]
@jump target=*kansuuji_show
[return]

*vol_se_down
[iscript]
$('.button_se').remove();
[endscript]
[eval exp="tf.config='se_only'"]
[iscript]
if(tf.current_se_vol != 0){
	tf.current_se_vol -= 10;	
}
[endscript]
[if exp="tf.current_se_vol != 0"]
 	[image name="button_se" layer=28 left=715 top=480 folder="image" storage="button_se_bg.png"]
[endif]

[if exp="tf.current_se_vol == 0"]
 	[image name="button_se" layer=28 left=715 top=480 folder="image" storage="button_se_off.png"]
	;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
	[eval exp="sf.SE='OFF'"]
[endif]

[seopt volume="&tf.current_se_vol"]
@jump target=*kansuuji_show
[return]

*vol_se_up
[iscript]
$('.button_se').remove();
[endscript]
[eval exp="tf.config='se_only'"]
[iscript]
if(tf.current_se_vol != 100){
	tf.current_se_vol += 10;	
}
[endscript]
[if exp="tf.current_se_vol != 0"]
 	[image name="button_se" layer=28 left=715 top=480 folder="image" storage="button_se_bg.png"]
[endif]
[seopt volume="&tf.current_se_vol"]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.SE='ON'"]
@jump target=*kansuuji_show

*kansuuji_show
[if exp="(tf.config=='vol_only')||(tf.config=='vol')"]
  [eval exp="tf.kansuuji_bgm_x='600'"]
  [eval exp="tf.kansuuji_bgm_y='520'"]
[endif]
[if exp="(tf.config=='se_only')||(tf.config=='se')"]
  [eval exp="tf.kansuuji_se_x='725'"]
  [eval exp="tf.kansuuji_se_y='520'"]
[endif]
[if exp="(tf.config=='se_only')"]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
[endif]
[if exp="(tf.current_bgm_vol==10)"]
 	[image name="button_bgm" layer=28 left=&tf.kansuuji_bgm_x top=&tf.kansuuji_bgm_y folder="fgimage" storage="\button\kanji_b_1.png"]
[endif]
[if exp="(tf.current_se_vol==10)"]
 	[image name="button_se" layer=28 left=&tf.kansuuji_se_x top=&tf.kansuuji_se_y folder="fgimage" storage="\button\kanji_b_1.png"]
[endif]
[if exp="(tf.current_bgm_vol==20)"]
 	[image name="button_bgm" layer=28 left=&tf.kansuuji_bgm_x top=&tf.kansuuji_bgm_y folder="fgimage" storage="\button\kanji_b_2.png"]
[endif]
[if exp="(tf.current_se_vol==20)"]
 	[image name="button_se" layer=28 left=&tf.kansuuji_se_x top=&tf.kansuuji_se_y folder="fgimage" storage="\button\kanji_b_2.png"]
[endif]
[if exp="(tf.current_bgm_vol==30)"]
 	[image name="button_bgm" layer=28 left=&tf.kansuuji_bgm_x top=&tf.kansuuji_bgm_y folder="fgimage" storage="\button\kanji_b_3.png"]
[endif]
[if exp="(tf.current_se_vol==30)"]
 	[image name="button_se" layer=28 left=&tf.kansuuji_se_x top=&tf.kansuuji_se_y folder="fgimage" storage="\button\kanji_b_3.png"]
[endif]
[if exp="(tf.current_bgm_vol==40)"]
 	[image name="button_bgm" layer=28 left=&tf.kansuuji_bgm_x top=&tf.kansuuji_bgm_y folder="fgimage" storage="\button\kanji_b_4.png"]
[endif]
[if exp="(tf.current_se_vol==40)"]
 	[image name="button_se" layer=28 left=&tf.kansuuji_se_x top=&tf.kansuuji_se_y folder="fgimage" storage="\button\kanji_b_4.png"]
[endif]
[if exp="(tf.current_bgm_vol==50)"]
 	[image name="button_bgm" layer=28 left=&tf.kansuuji_bgm_x top=&tf.kansuuji_bgm_y folder="fgimage" storage="\button\kanji_b_5.png"]
[endif]
[if exp="(tf.current_se_vol==50)"]
 	[image name="button_se" layer=28 left=&tf.kansuuji_se_x top=&tf.kansuuji_se_y folder="fgimage" storage="\button\kanji_b_5.png"]
[endif]
[if exp="(tf.current_bgm_vol==60)"]
 	[image name="button_bgm" layer=28 left=&tf.kansuuji_bgm_x top=&tf.kansuuji_bgm_y folder="fgimage" storage="\button\kanji_b_6.png"]
[endif]
[if exp="(tf.current_se_vol==60)"]
 	[image name="button_se" layer=28 left=&tf.kansuuji_se_x top=&tf.kansuuji_se_y folder="fgimage" storage="\button\kanji_b_6.png"]
[endif]
[if exp="(tf.current_bgm_vol==70)"]
 	[image name="button_bgm" layer=28 left=&tf.kansuuji_bgm_x top=&tf.kansuuji_bgm_y folder="fgimage" storage="\button\kanji_b_7.png"]
[endif]
[if exp="(tf.current_se_vol==70)"]
 	[image name="button_se" layer=28 left=&tf.kansuuji_se_x top=&tf.kansuuji_se_y folder="fgimage" storage="\button\kanji_b_7.png"]
[endif]
[if exp="(tf.current_bgm_vol==80)"]
 	[image name="button_bgm" layer=28 left=&tf.kansuuji_bgm_x top=&tf.kansuuji_bgm_y folder="fgimage" storage="\button\kanji_b_8.png"]
[endif]
[if exp="(tf.current_se_vol==80)"]
 	[image name="button_se" layer=28 left=&tf.kansuuji_se_x top=&tf.kansuuji_se_y folder="fgimage" storage="\button\kanji_b_8.png"]
[endif]
[if exp="(tf.current_bgm_vol==90)"]
 	[image name="button_bgm" layer=28 left=&tf.kansuuji_bgm_x top=&tf.kansuuji_bgm_y folder="fgimage" storage="\button\kanji_b_9.png"]
[endif]
[if exp="(tf.current_se_vol==90)"]
 	[image name="button_se" layer=28 left=&tf.kansuuji_se_x top=&tf.kansuuji_se_y folder="fgimage" storage="\button\kanji_b_9.png"]
[endif]
[if exp="(tf.current_bgm_vol==100)"]
 	[image name="button_bgm" layer=28 left=&tf.kansuuji_bgm_x top=&tf.kansuuji_bgm_y folder="fgimage" storage="\button\kanji_b_10.png"]
[endif]
[if exp="(tf.current_se_vol==100)"]
 	[image name="button_se" layer=28 left=&tf.kansuuji_se_x top=&tf.kansuuji_se_y folder="fgimage" storage="\button\kanji_b_10.png"]
[endif]

[if exp="tf.config=='vol'"]
[eval exp="tf.config=''"]
@jump storage="title.ks" target="*bgm_end"
[endif]
[if exp="tf.config=='se'"]
[eval exp="tf.config=''"]
@jump storage="title.ks" target="*se_end"
[endif]
[if exp="(tf.config=='vol_only')||(tf.config=='se_only')"]
[eval exp="tf.config=''"]
@jump storage="title.ks" target="*title_end"
[endif]


;----------BGM onが選択された時
*bgm_on
;BMG音量は今後調整する可能性があります。100設定でこれまでの音量(設定前)と変わらないことを確認済(といっても、耳での体感なので若干怪しいですが)
[bgmopt volume=100]
;【BGM】雪解け（タイトル画面等）click=trueは一部ブラウザでクリック待ち的な動作をすることがあるため除いて運用中
[playbgm storage="title_yukidoke.ogg" loop=true]
[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BGM='ON'"]
[anim name="button_bgm_to_on" opacity=0 time=1]
[locate x=585 y=480]
[button name="button_bgm_to_off" graphic="button_bgm_on.png" target="*bgm_off" ]
[s]

;----------BGM offが選択された時
*bgm_off
[stopbgm]
[fadeoutbgm time=1000]
;BGMOFF
[bgmopt volume=0]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BGM='OFF'"]
[anim name="button_bgm_to_off" opacity=0 time=1]
[locate x=585 y=480]
[button name="button_bgm_to_on" graphic="button_bgm_off.png" target="*bgm_on" ]
[s]

;----------SE onが選択された時
*se_on
[iscript]
/*効果音を再生する*/
TG.stat.play_se = true;
[endscript]
;↓SEON(音量は今後調整する可能性があります。以前SE音量を抑えて欲しい、というメッセージをいただいたため、これまでより控えめに設定。BGMは元々50%に抑えているのでSEも合わせてみた感じです)
[seopt volume=50]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.SE='ON'"]
[anim name="button_se_to_on" opacity=0 time=1]
[locate x=715 y=480]
[button name="button_se_to_off" graphic="button_se_on.png" target="*se_off" ]
[s]

;----------SE offが選択された時
*se_off
[iscript]
/*効果音を再生しない*/
TG.stat.play_se = false;
[endscript]
;↓SEOFF
[seopt volume=0]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.SE='OFF'"]
[anim name="button_se_to_off" opacity=0 time=1]
[locate x=715 y=480]
[button name="button_se_to_on" graphic="button_se_off.png" target="*se_on" ]
[s]

;◆「効果音」等ボタン設定と表示
*button_hyouji
*settei
;-----音・文表示設定タグここから-----
[if exp="sf.SE=='OFF'"]
[iscript]
/*効果音を再生しない*/
TG.stat.play_se = false;
[endscript]
[locate x=715 y=480]
[button name="list,button_se_to_on" graphic="button_se_off.png" target="*se_on"]
[else]
[iscript]
/*効果音を再生する*/
TG.stat.play_se = true;
[endscript]
[locate x=715 y=480]
[button name="list,button_se_to_off" graphic="button_se_on.png" target="*se_off"]
[endif]
[if exp="sf.BOOST=='ON'"]
[nowait]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="f.okeiko_month = 0"]
[eval exp="sf.BOOST='ON'"]
[locate x=455 y=480]
[button name="list,button_boost_to_off" graphic="button_boost_on.png" target="*textboost_off"]
[else]
[endnowait]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BOOST='OFF'"]
[locate x=455 y=480]
[button name="list,button_boost_to_on" graphic="button_boost_off.png" target="*textboost_on"]
[endif]

;BGM音量 ティラノスクリプト本体付属configのスクリプトを一部利用させていただきました。◆jsYiJcqRkk
;[ptext layer=1 page=fore text="BGM 音量：" x=40 y=145 size=26 color=black visible=true]
[ptext name="text_bgm_vol" layer=1 page=fore text="&tf.current_bgm_vol" x=585 y=480 size=26 color=black visible=true]
[button fix="true" target="*vol_bgm_up" graphic=config/button_up.png width=25 height=20 x=640 y=480]
[button fix="true" target="*vol_bgm_down" graphic=config/button_down.png width=25 height=20 x=640 y=600]
[iscript]
$('.button_bgm').remove();
[endscript]
[if exp="tf.current_bgm_vol == 0"]
	@layopt layer=28 visible = true
 	[image name="button_bgm" layer=28 left=585 top=480 folder="image" storage="button_bgm_off.png"]
[endif]
[if exp="tf.current_bgm_vol != 0"]
	@layopt layer=28 visible = true
 	[image name="button_bgm" layer=28 left=585 top=480 folder="image" storage="button_bgm_on.png"]
[endif]

;[if exp="sf.BGM=='OFF'"]
;[locate x=585 y=480]
;[button name="list,button_bgm_to_on" graphic="button_bgm_off.png" target="*bgm_on"]
;[else]
;[eval exp="sf.BGM='ON'"]
;[locate x=585 y=480]
;[button name="list,button_bgm_to_off" graphic="button_bgm_on.png" target="*bgm_off"]
;[endif]
;"？"…helpボタンを設置し、Ｑ＆Ａコーナー表示機能やセーブデータ一括消去機能を追加することにしました
[locate x=870 y=540]
[button name="list" graphic="button_help.png" target="*help" time=0 height=30 width=30]
;-----設定タグここまで-----

;◆全イベント達成時飾り
[if exp="sf.badge_comp == 1"]
	@layopt layer=28 visible = true
	[freeimage layer = 28]
	[image name="complete" layer=28 folder="image" storage="complete.png" left=0 top=0] 
[endif]
;↓おまけ上のnext_pageアニメアイコン。githubでは結び文、正式版では鶴。
[if exp="tf.omake_mark == 1"]
	[image name="omake_mark" layer=28 storage="../../tyrano/images/kag/nextpage.gif" left=46 top=320] 
[endif]

;タイトル各種ボタン表示
[eval exp="tf.title_y_plus = 30"]
[locate x=460 y=50 + tf.title_y_plus]
[button name="list" graphic="button_title_start.png" storage="title.ks" target="*start" time=0]

[locate x=370 y=120 + tf.title_y_plus]
[button name="list" exp="f.load_mae_storage='title.ks'; f.load_mae_target='*title'" graphic="button_title_load.png" storage="sys_load.ks" target="*load" time=0]

[locate x=280 y=50 + tf.title_y_plus]
[button name="list" graphic="button_title_cg.png" target="*cg" time=0]

[locate x=190 y=120 + tf.title_y_plus]
[button name="list" graphic="button_title_replay.png" target="*replay" time=0]

[locate x=100 y=50 + tf.title_y_plus]
[button name="list" graphic="button_title_credit.png" target="*credit" time=0]

;「おまけ」を常に表示し、その中で非表示メニュー(説明有り)を作ることにしました
[locate x=10 y=130]
[button name="list" graphic="button_title_omake.png" target="*omake" time=0]

[locate x=0 y=540]
[button name="test_mode" graphic="toumei.gif" target="*test"  time=0 width=100 height=100]

*complete_contents
;隠し解除
;[一斉表示]
[iscript]
$('.loding_pic1').remove();
[endscript]
[s]
