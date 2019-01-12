﻿﻿﻿@clearstack
;==============================
; タイトル画面
;==============================
;音設定の一部に【簡易コンフィグ画面プラグイン】by アオイサクラ様  [http://awoinekura.blog.fc2.com/]を使用させていただきました
;◆読み込み不良防止のため、タイトル画面での変数設定、表示(背景表示・主人公表示準備など)はtitle_settei_hyouji.ksとして切り出しました。

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
;既読設定をtitle_settei_hyouji.ksへ移動しました
;◆既読スキップボタン設置
;[if exp="sf.KSKIP === 'undefined'"]
;	[eval exp="sf.KSKIP=='OFF'"]
;[endif]
;[if exp="sf.KSKIP=='OFF'"]
;	[locate x=305 y=480]
;	[button name="list,button_kskip_to_on" graphic="button_kskip_off.png" target="*kskip_on"]
;[else]
;	[eval exp="sf.KSKIP='ON'"]
;	[locate x=305 y=480]
;	[button name="list,button_kskip_to_off" graphic="button_kskip_on.png" target="*kskip_off"]
;[endif]
[if exp="sf.BOOST=='ON'"]
;[boost_mode_on]
[nowait]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="f.okeiko_month = 0"]
[eval exp="sf.BOOST='ON'"]
[locate x=455 y=480]
[button name="list,button_boost_to_off" graphic="button_boost_on.png" target="*textboost_off"]
[else]
;[boost_mode_off]
[endnowait]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BOOST='OFF'"]
[locate x=455 y=480]
[button name="list,button_boost_to_on" graphic="button_boost_off.png" target="*textboost_on"]
[endif]
[if exp="sf.BGM=='OFF'"]
[locate x=585 y=480]
[button name="list,button_bgm_to_on" graphic="button_bgm_off.png" target="*bgm_on"]
[else]
[eval exp="sf.BGM='ON'"]
[locate x=585 y=480]
[button name="list,button_bgm_to_off" graphic="button_bgm_on.png" target="*bgm_off"]
[endif]
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
