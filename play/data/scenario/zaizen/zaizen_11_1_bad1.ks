;財前badについては、回想時にもっと前のシーンから再生させるかどうか考え中です。今のところbad分岐以降を回想可能としています(スクリプト担
[setreplay name="replay_zaizen_11_1_bad1_scene" storage="zaizen/zaizen_11_1_bad1.ks" target="start"]
*replay_zaizen_11_1_bad1
*start
[iscript]
$('.list').remove();
[endscript]
;=======================お芝居の準備中です==========================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*11_1_bad1 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]

[if exp="f.flag_replay==true"]
@layopt layer=1 visible=true
[chara_show name="bg"]
[endif]

;【背景］パーティ会場控室
[chara_mod name="bg" storage="bg/zaizen_paty_hikae.jpg"]
[eval exp="f.haikei_credit='photo　by　◆I9IhvvVdPo'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[財前ベース燕尾服]
[財前通常]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
*seen_1
[er]
;本編ではここ↓に飛んできます。そのためのスクリプト
;============================================================

[主人公憂い]
財前様は私の手を[ruby text=ほど]解いて言った。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

;【立ち絵】財前：冷ややか
[財前冷ややか]
[whosay name="財前美彬" color="#7a65b2"]
「[名前]さん、礼を言いましょう。[r]
[sp]この件については、すっきりしました。 ですが、貴方との婚約は[r]
[sp]破棄します」[p]
;ですが
;【立ち絵】主人公：驚き
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「！　なぜですか？」[p]

;【立ち絵】財前：眉ひそめ
[whosay name="財前美彬" color="#7a65b2"]
「貴方は私の触れて欲しくない部分に容赦なく立ち入った。[r]
[sp]私の妻は、私の事に口出ししない方と決めています」[p]

;【立ち絵】主人公：落ち込み
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それは……」[p]

;【立ち絵】財前：冷ややか
[whosay name="財前美彬" color="#7a65b2"]
「もちろん体面を傷つける事無く、婚約を破棄しますので[r]
[sp]ご安心して下さい」[p]

[whosay name="財前母"]
「アルベルト、それは酷いわ」[p]

;【立ち絵】財前：通常
[whosay name="財前美彬" color="#7a65b2"]
「私の問題です」[p]

;================================================================================================
[暗転２]
[財前退場]
[暗転]
[暗転２終了]
;================================================================================================
#
私はただ茫然とし、[r]
あくまで冷静な財前様に何も言う事はできなかった。[p]

#
その夜、私は沢山泣いて実感した。[r]
――財前様に惹かれていたという事を。[p]

;==========================スクリプト・全画面表示の間に設定===============================
#
;【テキスト全画面】 裏で画面構成 ;[新聞] test_bg_sinbun.jpg bg_prologue_dark.jpg　bg_prologue.jpg
;機能ボタン消去
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風 bg_prologue.jpg
[image layer=29 x=1 y=1 storage="bg/bg_prologue_dark.jpg" time=1000 visible=true]
[wait time=10]
[主人公通常]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[chara_mod name="bg" storage="bg/zaizen_youkan.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;テキスト全画面
[font color=white size=27]
;==========================スクリプトここまで=========================================================
――三年後[p]
#
その後、財前様は私との婚約を破棄し、[r]
別の方と結婚された。[r]
;された。[r]だけど/けれど
けれど私は、まだ誰とも結婚せずにいた。[p]
[fadeoutbgm time=3000]
;==========================スクリプト・全画面表示からの復帰準備========================================
;メッセージをもどします
[resetfont]
;ｸﾘｯｸがみえる場合は追加↓
;[layopt layer=message0 visible=false]
[freeimage layer = 29 time=1000]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
;ｸﾘｯｸがみえる場合は追加↓
;[layopt layer=message0 visible=true]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
;[call target=*start storage="macro_tati_zaizen.ks"]
[cm]
;==========================スクリプト・全画面表示からの復帰準備========================================
#
;[背景洋館]
――独逸大使邸。[p]
私は、財前様のお母様と手紙のやりとりをしていて、誕生日パーティに[r]
呼ばれた。[p]
[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]
[主人公目閉]
;================================================================================================
;【背景】独逸大使館パーティ会場
[chara_mod name="bg" storage="bg/zaizen_doitutaisikan.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;================================================================================================

;【立ち絵】主人公：微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「本日は、お招き頂きありがとうございます」[p]

[whosay name="財前母"]
「お久しぶりね、[r]
[sp]そういえば[名前]さんは、まだ結婚してないのね。[r]
[sp]アルベルトの事を引きずっているの？」[p]

;【立ち絵】主人公：苦笑い
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困りほほえみ]
「さあ……ただ何となくかしら？」[p]

[whosay name="財前母"]
「アルベルトは困ったものね。[r]
[sp]自分の妻を人形だとでも思っているのかしら。[r]
[sp]あれでは[ruby text=う]上[ruby text=ま]手くいかないわ」[p]

#
財前様は、淑女と名高い御令嬢と多額の結納金を出して結婚されたという噂だ。[p]


;【立ち絵】主人公：困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公効果消]
[主人公困り]
「そうですか、今日も財前様はいらっしゃるのですか？」[p]

[whosay name="財前母"]
「いえ、忙しいと断られました」[p]

;【立ち絵】主人公：ホッとする
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公眉下げ下]
[主人公目閉]
「そうですか」[p]

[主人公目伏]
（かち合わなくて良かったわ）[p]

[whosay name="財前母"]
「[名前]さんも、殿方はアルベルトだけではないのよ。[r]
[sp]一度きりの人生ですもの。 思い切り楽しむといいわ」[p]

;【立ち絵】主人公：目伏せ微笑み
[主人公口ほほえみ]
[主人公目伏柔]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとうございます」[p]

[whosay name="財前母"]
「全くアルベルトも、本当に惜しい事をしたわ。[r]
[sp][名前]さんは、こんなに綺麗で心優しいのに」[p]

;【立ち絵】主人公：目伏せ微笑み
[主人公困り]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私の事はいいのです」[p]

[whosay name="財前母"]
「[名前]さんにもまた心惹かれる殿方が、現れるといいわね」[p]

;【立ち絵】主人公：目伏せ微笑み
[主人公眉下げ下]
[主人公目伏]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、そうですね」[p]

#
――お手紙の相手を探そうと思えば、お父様に頼んだらいい。[p]
[主人公憂い]
（まだそんな気持ちにはなれないわ。[r]
[sp]けれど、いつかは私も結婚するのかしら）[p]
;================================================================================================
;【背景】空
[chara_mod name="bg" storage="bg/bg_bluesky.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"][p]
[fadeoutbgm time=3000]
;================================================================================================

[主人公目伏柔]
[主人公眉下げ下]
#
私は空を見上げる。[r]
この広い空の下で、また恋をするのだろうか――[p]

;bad終了
;================================================================================================
[イベントシーン終了]

[if exp="f.flag_replay==true"]
;@layopt layer=29 visible=true
[iscript]
$('.1_fore').remove();
[endscript]
@layopt layer=1 visible=true
[endif]

;回想記録終了
[endreplay] 

[if exp="f.flag_replay==true"]
;web版はendreplayの下にするexe版はendreplayで戻る
@jump storage="replay2.ks"
[endif]

[財前ルート終了 end="bad2"]
@jump storage="test_zaizen.ks"
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
