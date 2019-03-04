﻿﻿﻿@clearstack
;==============================
; タイトル画面
;==============================
;音設定の一部に【簡易コンフィグ画面プラグイン】by アオイサクラ様  [http://awoinekura.blog.fc2.com/]を使用させていただきました
;◆読み込み不良防止のため、タイトル画面での変数設定、表示(背景表示・主人公表示準備など)はtitle_settei_hyouji.ksとして切り出しました。
;◆読み込み不良防止のため、config(音量調節機能)はtitle_config.ksとして切り出しました。
@layopt layer=28 visible = true

;音量設定準備(ティラノスクリプト付属configのスクリプトを使用させていただきました。◆jsYiJcqRkk
[iscript]
	tf.current_bgm_vol = parseInt(TG.config.defaultBgmVolume);
	tf.current_se_vol = parseInt(TG.config.defaultSeVolume);
	
	tf.current_ch_speed = parseInt(TG.config.chSpeed);
	tf.current_auto_speed = parseInt(TG.config.autoSpeed);
[endscript]

@jump target=*title
;◆↓読み込み不良防止のため、先にボタンのjump先ラベルを読み込ませます。実行ラベルは*titleからのためjumpします↑
;-------ボタンが押されたときの処理
*start
;[hide_title_button]
;機能ボタン類を消去（fixレイヤー全消去）
[bg storage="toumei.gif" time=0]
[wait time=10]
[clearfix]
[cm]
[freeimage layer = 28]
;------シナリオの最初にジャンプする
@jump storage="naming.ks"
[s]

;--------ロードが押された時の処理
*load
@jump storage="sys_load.ks"
[s]

;----------CGモードが選択された時
*cg
[clearfix]
[cm]
[wait time=10]
[freeimage layer = 28]
[jump storage="cg.ks"]
[s]

;----------回想モードが選択された時
*replay
[clearfix]
[cm]
[wait time=10]
[freeimage layer = 28]
[jump storage="replay2.ks"]
[s]

;----------クレジットモードが選択された時
*credit
;機能ボタン類を消去（fixレイヤー全消去）
[clearfix]
[cm]
[wait time=10]
[freeimage layer = 28]
[jump storage="credit.ks"]
[s]

;----------おまけが選択された時
*omake
;機能ボタン類を消去（fixレイヤー全消去）
[clearfix]
[cm]
[wait time=10]
[freeimage layer = 28]
[jump storage="omake.ks"]
[s]

;----------既読スキップ有が選択された時
*kskip_on
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.KSKIP='ON'"]
[iscript]
	tf.text_skip = "ON";
	$(".text_skip").html("ON");
	//$('.button_kskip_to_on').remove();
[endscript]
[eval exp="TG.config.unReadTextSkip = true"]
[config_record_label skip=false]
;[config_record_label skip=false]…未読時に止まる(既読のみスキップ可)
[anim name="button_kskip_to_on" opacity=0 time=1]
[locate x=305 y=480]
[button name="button_kskip_to_off" graphic="button_kskip_on.png" target="*kskip_off" ]
[return]
[s]

;----------既読スキップ無が選択された時
*kskip_off
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.KSKIP='OFF'"]
;f.skip=false; キー・スキップフラグ　設定なしでもとまるが念のため
[iscript]
	tf.text_skip = "OFF";
	$(".text_skip").html("OFF");
[endscript]
[eval exp="TG.config.unReadTextSkip = false"]
;[config_record_label skip=true]
;[config_record_label skip=true]…未読/既読に関わらずスキップ可
[anim name="button_kskip_to_off" opacity=0 time=1]
[locate x=305 y=480]
[button name="button_kskip_to_on" graphic="button_kskip_off.png" target="*kskip_on" ]
[s]
;----------文字　瞬速が選択された時
*textboost_on
;[boost_mode_on]
[nowait]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BOOST='ON'"]
;f.skip=true;　キー・スキップフラグ　設定なしでもとまるが念のため
[anim name="button_boost_to_on" opacity=0 time=1]
[locate x=455 y=480]
[button name="button_boost_to_off" graphic="button_boost_on.png" target="*textboost_off" ]
[s]

;----------文字　並が選択された時
*textboost_off
;[boost_mode_off]
[endnowait]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BOOST='OFF'"]
[anim name="button_boost_to_off" opacity=0 time=1]
[locate x=455 y=480]
[button name="button_boost_to_on" graphic="button_boost_off.png" target="*textboost_on" ]
[s]

;----------test modeが選択された時
*test
[clearfix]
[cm]
[freeimage layer = 28]
@jump storage="test.ks"
[s]

;----------"？"helpボタンが選択された時
*help
[clearfix]
[cm]
[freeimage layer = 28]
@jump storage="help.ks"
[s]

*title
;◆読み込み不良防止のため、タイトル画面での変数設定、表示(背景表示・主人公表示準備など)はtitle_settei_hyouji.ksとして切り出しました。
@jump storage="title_settei_hyouji.ks"
;title_settei_hyouji.ks→*button_hyoujiへ戻ってきます。

;◆「効果音」等ボタン設定と表示
*button_hyouji
*settei
;-----音・文表示設定タグここから-----
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

@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[position width=960 height=250 top=450 left=0 page=fore opacity=0]
[font color=black]
;◆BGM音量 ティラノスクリプト本体付属configのスクリプトを一部利用させていただきました。◆jsYiJcqRkk
[button fix="true" storage="title_config.ks" target="*vol_bgm_up" graphic=config/button_up.png width=25 height=20 x=622 y=480]
[button fix="true" storage="title_config.ks" target="*vol_bgm_down" graphic=config/button_down.png width=25 height=20 x=622 y=600]
[iscript]
$('.button_bgm').remove();
[endscript]
[wait time=50]
[if exp="sf.BGM===undefined"]
	;【BGM】雪解け（タイトル画面等）click=trueは一部ブラウザでクリック待ち的な動作をすることがあるため除いて運用中
	[playbgm storage="title_yukidoke.ogg" loop=true]
	[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
[endif]

[if exp="tf.current_bgm_vol == 0"]
 	[image name="button_bgm" layer=28 left=585 top=480 folder="image" storage="button_bgm_off.png"]
[endif]
[if exp="tf.current_bgm_vol != 0"]
 	[image name="button_bgm" layer=28 left=585 top=480 folder="image" storage="button_bgm_bg.png"]
[endif]
[eval exp="tf.config='vol'"]
@jump storage="title_config.ks" target="*kansuuji_show"
*bgm_end

*se_config
[button fix="true" storage="title_config.ks" target="*vol_se_up" graphic=config/button_up.png width=25 height=20 x=750 y=480]
[button fix="true" storage="title_config.ks" target="*vol_se_down" graphic=config/button_down.png width=25 height=20 x=750 y=600]
[iscript]
$('.button_se').remove();
[endscript]
[if exp="tf.current_se_vol == 0"]
 	[image name="button_se" layer=28 left=715 top=480 folder="image" storage="button_se_off.png"]
[endif]
[if exp="tf.current_se_vol != 0"]
 	[image name="button_se" layer=28 left=715 top=480 folder="image" storage="button_se_bg.png"]
[endif]
[eval exp="tf.config='se'"]
@jump storage="title_config.ks" target="*kansuuji_show"
*se_end

;"？"…helpボタンを設置し、Ｑ＆Ａコーナー表示機能やセーブデータ一括消去機能を追加することにしました
[locate x=870 y=540]
[button name="list" graphic="button_help.png" target="*help" time=0 height=30 width=30]
;-----設定タグここまで-----
;◆全イベント達成時飾り
[if exp="sf.badge_comp == 1"]
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

*title_end
[clearstack]
[s]
