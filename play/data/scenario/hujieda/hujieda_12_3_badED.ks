;========================================================================
;イベント１２回目【時子さん訪問】１２月3週、
;=======================お芝居の準備中です==================================
[setreplay name="replay_hujieda_badED_scene" storage="hujieda/hujieda_12_3_badED.ks" target="start"]
*replay_hujieda_badED_scene
[iscript]
$('rp_bt').remove();
$('.list').remove();
[endscript]
[freeimage layer = 1]
[if exp="f.flag_replay == true"]
[cm]
;暗転とは違う
;[bg wait=true storage="toumei.gif" time=1]
[endif]
*start
[stopbgm]
[call target=*12_3_bad storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_tati_hujieda.ks"]
[if exp="f.flag_replay == true"]
;@layopt layer=1 visible=true
;[chara_show name="bg"]
[endif]

;【背景】主人公邸 庭の見える部屋：昼←テストメニューからプレイ時画面構築用です
[bg wait=true storage="../fgimage/bg/room_niwa.jpg" time=50]
[wait time=10]
;[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=========================================================================
*no_seen
;選択肢からジャンプしてくるラベルです。スクリプト担当以外は消さないでください。
;=========================================================================
;メッセージレイヤサイズを会話窓用に戻す
[cm]
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
;【背景】ヒロインの部屋　(jump時は選択肢用背景から)背景をもどします
[bg wait=true method='crossfade' storage="../fgimage/bg/room_niwa.jpg" time=600]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

;[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
[主人公目パチ1回]
;bad
[暗転１]
#
それでも私は時子さんにも何も言えなかった。[p]
;前シーンでの音楽を消します
[fadeoutbgm time=3000]
その後、藤枝様は独逸に留学し、[r]
さらには渡米し、作曲家、ピアニストとして名を馳せられた。[p]

この国へ戻ってこられたのは、十年後だった。[p]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[image layer=29 x=0 y=0 storage="bg/bg_prologue.jpg" time=1000 visible=true]
[主人公退場]
@layopt layer=message2 page=fore visible = false
[bg wait=true storage="../fgimage/bg/bg_prologue.jpg" time=1000]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=1000]
[テキスト全画面白文字無背景]
;メッセージレイヤを全画面用に設定変更[position left=200 width=700 height=530 top=110 page=fore margint="50"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================

――十五年後。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】「いにしえより続く街、太宰府」
[playbgm storage="dazaifu.ogg" loop=true]
[eval exp="f.bgm_storage='dazaifu.ogg'"]
[endif]

;=========================================================================
;【背景】洋館内装　スマホでみたときの改行修正済　pcからだと間があるかもしれません（scpt担2
[image layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/youkannaisou.jpg" time=1000 visible=true]
[iscript]
$(".bg").attr({ src: "./data/fgimage/bg/I9IhvvVdPo/youkannaisou.jpg"});
[endscript]
;[chara_mod name="bg" storage="bg/I9IhvvVdPo/youkannaisou.jpg" time=1000]
;=========================================================================
[wait time=10]
;#
;お[ruby text=こと]箏
たまたま付けたラヂオから、ピアノとお[ruby text=こと]箏の合奏曲が[r]
聴こえた。[p]
[wait time=10]
とても綺麗で切ない曲で、[r]
"ピアノとお[ruby text=こと]箏の合奏曲なんて珍しい"と思いながら[r]
聞いていると、彼の声が聞こえた。[p]
[wait time=10]
;=======================
[freeimage layer=29]
[wait time=10]
;=======================
【藤枝 肇】[r]
「これは、日本に戻って初めに作曲した、初恋の人を[r]
[sp]想って作った曲です。[r]
[sp]どうか今、彼女が幸せでありますようにと……」[p]

;=========================================================================
;【背景】　ラジオ　
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]
[image name="radio" layer=29 x=0 y=0 storage="bg/B4nFWraU42/hujieda_rajio.jpg" time=1200 visible=true]
[wait time=10]
;[chara_mod name="bg" storage="bg/B4nFWraU42/hujieda_rajio.jpg" time=1000]
;[wait time=10]
;=========================================================================
[wait time=10]
【藤枝 肇】[r]
「彼女と会ったことは、数えるほどでしたが、[r]
[r]
[sp]夢のような恋でした」[p]
[wait time=10]

――懐かしくも愛おしい気持ちが、[r]
[r]
[r]
[sp]こみ上げて私は涙がこぼれた。[r]
[r]
[r]
[r]
[sp]思い出を汚さないためにも、もう会おうと思わない。[p]

;=========================================================================
[font color=white size=27]
;【背景】洋館内装
[freeimage layer=29]
;既に下にある
;[chara_mod name="bg" storage="bg/I9IhvvVdPo/youkannaisou.jpg" time=1000]
[image name="radio" layer=29 x=1 y=0 storage="bg/I9IhvvVdPo/youkannaisou.jpg" time=1000]
[wait time=10]
;=========================================================================
#
藤枝さまの中では、ずっと綺麗なままの私でいたい[r]から。[p]
――私はもう戻れない過去。　叶わない恋をした。[r]
[r]
……ただそれだけ。[p]

;===============================================================
[暗転２ storage="bg/bg_prologue_dark.jpg"]
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position name="kan" left=350 width=300 height=300 top=200 page=fore margint="50"]
;テキスト全画面　0x663300
[font color=white size=35]
[iscript]
$("kan").css('margin','auto');
[endscript]
[bg wait=true storage="toumei.gif" time=0]
[wait time=10]
;===============================================================
;画面中央に「完」の文字
[sp]　  完[p]
;===============================================================
[fadeoutbgm time=3000]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[iscript]
$(".bg").attr({ src: "./data/bgimage/toumei.gif"});
[endscript]
[freeimage layer=29 time=2000]
[fadeoutbgm time=3000]
[wait time=500]
;スマホで音楽がぶちときれるのはどうしようもない 
;===============================================================
;bad判定用 ツイート抑止 
[eval exp="tf.ED_bad = 1"]
[イベントシーン終了]

[if exp="f.flag_replay == true"]
;@layopt layer=29 visible=true
[iscript]
$('.1_fore').remove();
[endscript]
;@layopt layer=1 visible=true
[endif]

;◆回想記録
[endreplay]

[if exp="f.flag_replay == true"]
;web版はendreplayの下にするexe版はendreplayで戻る
[bg wait=true storage="../fgimage/bg/plane_sepia.jpg" time=100]
[wait time=10]
@jump storage="replay2.ks"
[endif]

[if exp="f.okeiko_gamen == true"]
[藤枝ルート終了 end="bad"]
[endif]

@jump storage="test_hujieda.ks"
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

[locate x=580 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=650 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[wait time=10]
[locate x=730 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[wait time=10]
[locate x=810 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[wait time=10]
[locate x=880 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[wait time=10]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]
;[メッセージウィンドウ上ボタン表示]

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
