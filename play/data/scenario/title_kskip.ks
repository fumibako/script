﻿@clearstack

;==============================
; タイトル画面
;==============================
;音設定の一部に【簡易コンフィグ画面プラグイン】by アオイサクラ様  [http://awoinekura.blog.fc2.com/]を使用させていただきました
[resetfont]
[position layer=message0 width=960 height=500 top=640 left=960 page=fore opacity=0]
;↓既読色でもデフォルト色の濃茶色で表示
;[config_record_label color="0x664f44"]
[config_record_label color=""]

*title
[freeimage layer = 3]
[freeimage layer = 4]
[freeimage layer = 5]
[freeimage layer = 6]
[freeimage layer = 7]
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
[eval exp="tf.test_gamen_sijyou=false"]
[eval exp="tf.test_gamen=false"]
[eval exp="tf.okeiko_gamen=false"]
[eval exp="tf.advice_event_hyouji=1"]
[eval exp="tf.advice_event_hyouji=1"]
[eval exp="f.flag_replay=false"]

[hidemenubutton]

;背景（タイトル画像）表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_new name="bg" storage="bg/title.jpg"]
[chara_show left=1 top=1 layer=1 name="bg" time=0]

;タイトル各種ボタン表示
[locate x=450 y=50]
[button name="button_title_start" graphic="button_title_start.png" target="*start" time=0]

[locate x=350 y=130]
[button name="button_title_load" graphic="button_title_load.png" target="*load" time=0]

[locate x=250 y=50]
[button name="button_title_cg" graphic="button_title_cg.png" target="*cg" time=0]

[locate x=150 y=130]
;[button name="button_title_replay" graphic="button_title_replay.png" target="*replay" time=0]

[locate x=50 y=50]
[button name="button_title_credit" graphic="button_title_credit.png" target="*credit" time=0]

[locate x=0 y=540]
[button name="test_mode" graphic="toumei.gif" target="*test"  time=0 width=100 height=100]

*settei

;-----音・文表示設定タグここから-----

[if exp="sf.SE=='OFF'"]
[iscript]
/*効果音を再生しない*/
TG.stat.play_se = false;
[endscript]
[locate x=795 y=480]
[button name="button_se_to_on" graphic="button_se_off.png" target="*se_on" ]
[else]
[iscript]
/*効果音を再生する*/
TG.stat.play_se = true;
[endscript]
[locate x=795 y=480]
[button name="button_se_to_off" graphic="button_se_on.png" target="*se_off" ]
[endif]

;◆既読スキップボタン設置
[if exp="sf.KSKIP == 'ON'"]
[locate x=405 y=480]
[button name="button_kskip_to_off" graphic="button_kskip_on.png" target="*kskip_off" ]
;既読箇所は薄いセピア色の文字で表示します
[config_record_label color=0xa68f84]
[endif]
[if exp="sf.KSKIP == 'OFF'"]
[locate x=405 y=480]
[button name="button_kskip_to_on" graphic="button_kskip_off.png" target="*kskip_on" ]
;既読スキップ無し。既読でもデフォルト色(濃茶色)のままにします
[config_record_label color=""]
[endif]
[if exp="sf.KSKIP != ('OFF' || 'ON')"]
[eval exp="sf.KSKIP='ON'"]
[locate x=405 y=480]
[button name="button_kskip_to_off" graphic="button_kskip_on.png" target="*kskip_off" ]
;既読箇所は薄いセピア色の文字で表示します
[config_record_label color=0xa68f84]
[endif]

;◆未読スキップボタン設置
[if exp="sf.Midoku_SKIP == 'OK'"]
[locate x=275 y=480]
[button name="button_mskip_to_no" graphic="button_midoku_skip_ok.png" target="*mskip_no" ]
[config_record_label skip=true]
[endif]
[if exp="sf.Midoku_SKIP == 'NO'"]
[locate x=275 y=480]
[button name="button_mskip_to_ok" graphic="button_midoku_skip_no.png" target="*mskip_ok" ]
[config_record_label skip=false]
[endif]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[if exp="sf.Midoku_SKIP != ('OFF' || 'ON')"]
[eval exp="sf.Midoku_SKIP='NO'"]
[config_record_label skip=false]
[locate x=275 y=480]
[button name="button_mskip_to_ok" graphic="button_midoku_skip_no.png" target="*mskip_ok" ]
[endif]

[if exp="sf.BOOST=='ON'"]
[configdelay speed="0"]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BOOST='ON'"]
[locate x=535 y=480]
[button name="button_boost_to_off" graphic="button_boost_on.png" target="*textboost_off" ]
[else]
[configdelay speed="30"]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BOOST='OFF'"]
[locate x=535 y=480]
[button name="button_boost_to_on" graphic="button_boost_off.png" target="*textboost_on" ]
[endif]

[if exp="sf.BGM=='OFF'"]
[locate x=665 y=480]
[button name="button_bgm_to_on" graphic="button_bgm_off.png" target="*bgm_on" ]
[else]
[eval exp="sf.BGM='ON'"]
[locate x=665 y=480]
[button name="button_bgm_to_off" graphic="button_bgm_on.png" target="*bgm_off" ]
[endif]

;-----設定タグここまで-----

;背景（効果）表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_new name="bg_effect" storage="toumei.gif"]
[chara_show left=1 top=1 layer=2 name="bg_effect"]

[iscript]
    tf.flag_replay = false;
[endscript]

;主人公画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[chara_new name="girl_base" storage="toumei.gif"]
[chara_show left=1 top=381 layer=15 name="girl_base" time=0]
[wait time=10]
[chara_new name="girl_mayu" storage="toumei.gif"]
[chara_show left=1 top=381 layer=16 name="girl_mayu" time=0]
[wait time=10]
[chara_new name="girl_me" storage="toumei.gif"]
[chara_show left=1 top=381 layer=17 name="girl_me" time=0]
[wait time=10]
[chara_new name="girl_kuti" storage="toumei.gif"]
[chara_show left=1 top=381 layer=18 name="girl_kuti" time=0]
[wait time=10]
[chara_new name="girl_emo" storage="toumei.gif"]
[chara_show left=1 top=381 layer=19 name="girl_emo" time=0]
[wait time=10]
[chara_new name="girl_te" storage="toumei.gif"]
[chara_show left=1 top=381 layer=20 name="girl_te" time=0]
[wait time=10]

;メッセージ窓画像の仮表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[freeimage layer = 14]
[chara_new name="message_bg" storage="toumei.gif"]
[chara_show left=1 top=391 layer=14 name="message_bg"]

[iscript]
var mousewheelevent = 'onwheel' in document ? 'wheel' : 'onmousewheel' in document ? 'mousewheel' : 'DOMMouseScroll';    
$(document).on(mousewheelevent,function(e){
e.preventDefault();
var delta = e.originalEvent.deltaY ? -(e.originalEvent.deltaY) : e.originalEvent.wheelDelta ? e.originalEvent.wheelDelta : -(e.originalEvent.detail);
if (delta < 0){
// マウスホイールを下にスクロールしたときの処理を記載
$(".layer_event_click").trigger("click");
} else {
// マウスホイールを上にスクロールしたときの処理を記載
TG.menu.displayLog();
}
});


//"→"キーを押したときだけスキップ処理。「ティラノスクリプト 製作テクニックwiki」様記載のスクリプトを使用させていただきました
f.skip=this.kag.stat.is_skip;
$(window).keydown(function(e){
if(e.keyCode === 39 || e.keyCode === 32 && f.skip != true) {
  TG.kag.ftag.startTag("skipstart");
  f.skip=true;
} });
$(window).keyup(function(e){
if(e.keyCode === 39 || e.keyCode === 32 && f.skip == true) {
  TG.kag.ftag.startTag("cancelskip");
  f.skip=false;
} });
[endscript]


[s]

;-------ボタンが押されたときの処理

*start
;[hide_title_button]
;機能ボタン類を消去（fixレイヤー全消去）
[chara_mod name="bg" storage="toumei.gif" time=1]
[clearfix]
[cm]

;------シナリオの最初にジャンプする
@jump storage="naming.ks"

[s]

;--------ロードが押された時の処理
*load
;メッセージレイヤの定義(画面全体）
[position layer=message0 width=960 height=500 top=80 left=340 page=fore opacity=0]
[stopbgm]
;autosaveされたデータが存在する場合、sf.system.autosave に trueが入ります
[if exp="sf.system.autosave == true"]
[cm]
;標準のメッセージレイヤを表示
@layopt layer="message0" visible = true
[position width=960 height=550 top=120 left=100 page=fore opacity=0]
自動的に保存されたデータが存在します。ロードしますか？[r]
[font size=41]
[r]
[r]
[r]
[link target=*select1]　　　　　　はい[endlink][r]
[r]
[r]
[r]
[link target=*select2]　　　　　　いいえ[endlink][r]
[r]
[resetfont]
[s]

*select1
[cm]
;ロードを実行します
[autoload]
[s]

*select2
[cm]
@jump target=*noload
[endif]

*noload
[position layer=message0 width=960 height=500 top=640 left=960 page=fore opacity=0]
[showload]
;loadをキャンセル×したときのジャンプ先があるといいと思います
;ありがとうございます！ システム面まで見てくださって心強いです
@jump target=*title
[s]

;----------CGモードが選択された時
*cg
[chara_mod name="bg" storage="toumei.gif" time=1]
[wait time=10]
[clearfix]
[cm]
[jump storage="cg.ks"]
[s]

;----------回想モードが選択された時
*replay
[chara_mod name="bg" storage="toumei.gif" time=1]
[wait time=10]
[clearfix]
[cm]
[jump storage="replay.ks"]
[s]

;----------クレジットモードが選択された時
*credit
;機能ボタン類を消去（fixレイヤー全消去）
[clearfix]
[cm]
;[chara_mod name="bg" storage="toumei.gif" time=1]
[wait time=10]
[jump storage="credit.ks"]
[s]

;----------BGM onが選択された時
*bgm_on
;【BGM】雪解け（タイトル画面等）click=trueは一部ブラウザでクリック待ち的な動作をすることがあるため除いて運用中
[playbgm storage="title_yukidoke.ogg" loop=true]
[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BGM='ON'"]
[anim name="button_bgm_to_on" opacity=0 time=1]
[locate x=665 y=480]
[button name="button_bgm_to_off" graphic="button_bgm_on.png" target="*bgm_off" ]
[s]

;----------BGM offが選択された時
*bgm_off
[stopbgm]
[fadeoutbgm time=1000]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BGM='OFF'"]
[anim name="button_bgm_to_off" opacity=0 time=1]
[locate x=665 y=480]
[button name="button_bgm_to_on" graphic="button_bgm_off.png" target="*bgm_on" ]
[s]

;----------SE onが選択された時
*se_on
[iscript]
/*効果音を再生する*/
TG.stat.play_se = true;
[endscript]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.SE='ON'"]
[anim name="button_se_to_on" opacity=0 time=1]
[locate x=795 y=480]
[button name="button_se_to_off" graphic="button_se_on.png" target="*se_off" ]
[s]

;----------SE offが選択された時
*se_off
[iscript]
/*効果音を再生しない*/
TG.stat.play_se = false;
[endscript]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.SE='OFF'"]
[anim name="button_se_to_off" opacity=0 time=1]
[locate x=795 y=480]
[button name="button_se_to_on" graphic="button_se_off.png" target="*se_on" ]
[s]



;----------未読スキップ可が選択された時
*mskip_ok
[anim name="button_mskip_to_ok" opacity=0 time=1]
[locate x=275 y=480]
[button name="button_mskip_to_no" graphic="button_midoku_skip_ok.png" target="*mskip_no" ]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.Midoku_SKIP='OK'"]
;未読スキップOK。未読でも止まりません。色は既読スキップ設定に依存します。既読スキップとは分けて設定します
[config_record_label skip=true]

[s]

;----------未読スキップ不可が選択された時
*mskip_no
[anim name="button_mskip_to_no" opacity=0 time=1]
[locate x=275 y=480]
[button name="button_mskip_to_ok" graphic="button_midoku_skip_no.png" target="*mskip_ok" ]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.Midoku_SKIP='NO'"]
;未読スキップNO。未読で止まります。既読スキップとは分けて設定します
[config_record_label skip=false]
[s]

;----------既読スキップ有が選択された時。"シナリオ読み込み時にスキップスタートを入れるかどうか"と"既読色を変更するかどうか"の変数。有なら自動でスキップスタートするように処理を入れる
*kskip_on
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.KSKIP='ON'"]
;既読箇所は薄いセピア色の文字で表示します
[config_record_label color=0xa68f84]
[iscript]
	tf.text_skip = "ON";
	$(".text_skip").html("ON");
[endscript]

[anim name="button_kskip_to_on" opacity=0 time=1]
[locate x=405 y=480]
[button name="button_kskip_to_off" graphic="button_kskip_on.png" target="*kskip_off" ]
[s]

;----------既読スキップ無が選択された時
*kskip_off
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.KSKIP='OFF'"]
;既読でもデフォルト色(濃茶色)のままにします
[config_record_label color=""]

;f.skip=false; キー・スキップフラグ　設定なしでもとまるが念のため
[iscript]
	tf.text_skip = "OFF";
	$(".text_skip").html("OFF");
[endscript]
[anim name="button_kskip_to_off" opacity=0 time=1]
[locate x=405 y=480]
[button name="button_kskip_to_on" graphic="button_kskip_off.png" target="*kskip_on" ]
[s]
;----------文字　瞬速が選択された時
*textboost_on
[configdelay speed="0"]
[anim name="button_boost_to_on" opacity=0 time=1]
[locate x=535 y=480]
[button name="button_boost_to_off" graphic="button_boost_on.png" target="*textboost_off" ]
;テキストスピード表示
[position layer="message0" left=10 top=450 width=940 height=220 page=fore visible=true]
@layopt layer=message0 visible=true
テキスト速度テスト…………「速」を選択しました。
[wait time=1000]
[er]
@layopt layer=message0 visible=false
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BOOST='ON'"]
;f.skip=true;　キー・スキップフラグ　設定なしでもとまるが念のため
[s]

;----------文字　並が選択された時
*textboost_off
[configdelay speed="30"]
[anim name="button_boost_to_off" opacity=0 time=1]
[locate x=535 y=480]
[button name="button_boost_to_on" graphic="button_boost_off.png" target="*textboost_on" ]
;テキストスピード表示
[position layer="message0" left=10 top=450 width=940 height=220 page=fore visible=true]
@layopt layer=message0 visible=true
テキスト速度テスト…………「並」を選択しました。
[wait time=1000]
[er]
@layopt layer=message0 visible=false
;f.skip=true;　キー・スキップフラグ　設定なしでもとまるが念のため
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BOOST='OFF'"]
[s]

;----------test modeが選択された時
*test
[clearfix]
[cm]

[jump storage="test.ks"]
[s]



