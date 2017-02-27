;背景：薔薇園のまま　
=======================お芝居の準備中です==================================
[setreplay name="replay_katuraginomiya_11_1badED_scene" storage="katuraginomiya/katuraginomiya_11_1badED.ks" target="start"]
*replay_katuraginomiya_11_1badED_scene
*start
*replay_katuraginomiya_11_1badED
[iscript]
$('rp_bt').remove();
$('.list').remove();
[endscript]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*11_1badED storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]

[if exp="f.flag_replay==true"]
@layopt layer=1 visible=true
[chara_show name="bg"]
[endif]

;【背景】薔薇園 
[chara_mod name="bg" storage="bg / I9IhvvVdPo / baraen.jpg"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[主人公憂い]
[葛城宮ベース私服]
[葛城宮憂い]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;ここまでテスト用です
;=====================ここからお芝居の幕引きです・テスト用です===============================
*no_end
;選択肢からここに飛んできます スクリプト担当以外消さないでください
;・バットエンド（泣く）
;=================================================================
[葛城宮憂い]
[主人公ポーズ片手]
[wait time=10]
[主人公憂い]
[主人公涙]
[wait time=10]
[fadeoutbgm time=3000]
#
涙がとめどなく頬を伝い、悲しみで胸がいっぱいになった。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]

;【立ち絵】葛城宮　通常
[葛城宮目閉じ]
[whosay name="葛城宮　晴仁" color=%mp.color]
「君は私の夢を聞いてくれた。[sp]いつまでも私の心は君のものだ」[p]

「ありがとう、[r]
[sp]――そしてさよなら[名前]殿」[p]

;【立ち絵】主人公 驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「！」[p]
;【立ち絵】主人公 目閉じ
[主人公目閉じ]
[主人公涙流_目閉用]

;手の甲に接吻シーン
[暗転２ storage="bg/I9IhvvVdPo/baraen.jpg"]
[葛城宮サイズ顔アップ storage="bg/I9IhvvVdPo/baraen.jpg"]
[葛城宮ベース私服]
[葛城宮通常]
[wait time=10]
;[葛城宮目閉じ]
[chara_mod name="katuraginomiya_me" storage="katuraginomiya/me_toji.png" time=0]
[wait time=10]
[暗転２終了]

#
殿下は、私の手を取り、手の甲へ接吻を落とす。[p]

;[葛城宮眉悩み]
[chara_mod name="katuraginomiya_mayu" storage="katuraginomiya/mayu_nayami.png" time=0]
[wait time=10]

[葛城宮退場準備 storage="bg/I9IhvvVdPo/baraen.jpg" time=500]


#
[主人公口通常]
そして、私を一度も振り返ることなく薔薇園を後にされた。[p]
;その後は次で使われているのでつかえない

;=================================================================
;ボタン非表示
[layopt layer=fix visible=false]
;すべて消えていく暗転
[表示準備 storage="bg/anten.jpg" layer=29 time=1500]
;裏で背景変更
[chara_mod name="bg" storage="toumei.gif" time=50]
[主人公憂い]
[主人公ポーズ通常]
[主人公効果消]
[freeimage layer=29 time=500]
;ボタン表示
[layopt layer=fix visible=true]
;=================================================================
;【立ち絵】主人公 憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
#
私はいつまでも殿下の消えた背中を追うことしかできなかった。[p]　

私にもっと強さがあれば、殿下は私を受け入れてくれたのかしら？[p]　

[chara_mod name="bg" storage="bg/bg_bluesky.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;【立ち絵】主人公 通常
 [主人公目伏]
 [主人公眉下げ下]
その後、殿下は誰とも結婚せずに社会運動を後押しし、[r]
私も誰とも結婚せず、男女平等をうたった運動に参加する事になる。[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公 目閉じ
[主人公目閉じ]
殿下と過ごした想い出は、[r]
心の中の宝石のようにキラキラといつまでも輝き続け[r]
私を支え続けていく―― 。[p]
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
[if exp="f.flag_replay==true"]
;@layopt layer=29 visible=true
[iscript]
$('.1_fore').remove();
[endscript]
@layopt layer=1 visible=true
[endif]

;回想記録終了 ifからだしておいてください
[endreplay] 

[if exp="f.flag_replay==true"]
;web版はendreplayの下にするexe版はendreplayで戻る
@jump storage="replay2.ks"
[endif]

[if exp="tf.okeiko_gamen==true"]
[eval exp="sf.ED_katuraginomiya_bad=1"]
@jump storage="event.ks" target=*event_ED
[else]
[葛城宮ルート終了 end="bad"]
[endif]

@jump storage="test_katuragi.ks"
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
