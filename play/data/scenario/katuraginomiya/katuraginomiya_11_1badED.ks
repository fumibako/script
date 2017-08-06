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
[freeimage layer = 1]
[wait time=10]
[if exp="f.flag_replay == true"]
;[bg storage="toumei.gif" time=1]
[endif]
[stopbgm]
[call target=*11_1badED storage="katuraginomiya/preload_katuraginomiya.ks"]

[if exp="f.flag_replay == true"]
;@layopt layer=1 visible=true
;[chara_show name="bg"]
[endif]

;【背景】薔薇園 
[bg wait=true storage="../fgimage/bg/I9IhvvVdPo/baraen.jpg" time=50]
[wait time=10]
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
[if exp="tf.test_gamen == true"]
katuraginomiya_11_1badED.ks[r]
テストページから開始しています。イベント終わりまでjumpしますか？[r]

;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font color=white size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]

*jump_ok
[current layer="message0"]
[resetfont]
「はい」[r]
jumpします。[p]
[cm]
[イベント中テスト数値表示]
@jump target=*seen_end
[s]

*jump_no
[current layer="message0"]
「いいえ」[r]
最初からはじめます。[p]
[cm]
[イベント中テスト数値表示]
[endif]

[葛城宮憂い]
[主人公ポーズ片手]
[wait time=10]
[主人公憂い]
[主人公涙]
[wait time=10]
[fadeoutbgm time=3000]
#
涙がとめどなく頬を伝い、悲しみで胸がいっぱいになった。[p]

;【立ち絵】葛城宮　通常
[葛城宮目閉じ]
[whosay name="葛城宮　晴仁" color=%mp.color]
「君は私の夢を聞いてくれた。[sp]いつまでも私の心は君のものだ」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]

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
[wait time=10]
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
[wait time=500]

#
[主人公口通常]
そして、私を一度も振り返ることなく薔薇園を後にされた。[p]
;その後は次で使われているのでつかえない

;=================================================================
;ボタン非表示
[layopt layer=fix visible=false]
;すべて消えていく暗転
[表示準備 storage="bg/anten.jpg" layer=29 time=1500]
[wait time=10]
;裏で背景変更
[bg wait=true storage="toumei.gif" time=50]
[wait time=10]
[主人公憂い]
[主人公ポーズ通常]
[主人公効果消]
[freeimage layer=29 time=500]
[wait time=500]
;ボタン表示
[layopt layer=fix visible=true]
;=================================================================
;【立ち絵】主人公 憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
#
私はいつまでも殿下の消えた背中を追うことしかできなかった。[p]　

私にもっと強さがあれば、殿下は私を受け入れてくれたのかしら？[p]　

[bg wait=true storage="../fgimage/bg/bg_bluesky.jpg" time=1000]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　Mike Linksvayer　https://www.flickr.com/photos/mlinksva/15476575104/'"]
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
*seen_end
;===============================================================
[暗転２ storage="bg/bg_prologue_dark.jpg"]
[wait time=10]
[bg wait=true storage="../fgimage/bg/bg_prologue_dark.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit=''"]
;メッセージレイヤを全画面用に設定変更 真ん中に設定する
[position name="kan" left=350 width=300 height=300 top=200 page=fore margint="50"]
;テキスト全画面　0x663300
[font color=white size=35]
[iscript]
$("kan").css('margin','auto');
[endscript]
;===============================================================
;画面中央に「完」の文字
[sp]　  完[p]
;===============================================================
[fadeoutbgm time=3000]
;bad判定用 ツイート抑止 
[eval exp="tf.ED_bad = 1"]

[イベントシーン終了]
[if exp="f.flag_replay == true"]
;@layopt layer=29 visible=true
[iscript]
$('.1_fore').remove();
[endscript]
@layopt layer=1 visible=true
[endif]

;回想記録終了 ifからだしておいてください
[endreplay] 

[if exp="f.flag_replay == true"]
;web版はendreplayの下にするexe版はendreplayで戻る
@jump storage="replay2.ks"
[endif]

[if exp="f.okeiko_gamen == true"]
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
