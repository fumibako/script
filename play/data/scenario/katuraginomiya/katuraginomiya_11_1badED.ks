;背景：薔薇園のまま
[chara_mod name="bg" storage="bg / I9IhvvVdPo / baraen.jpg"]

[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[主人公ポーズ片手]
[wait time=10]
[主人公憂い]
[主人公涙]
[wait time=10]

;・バットエンド（泣く）

#
涙がとめどなく頬を伝い、[r]
悲しみで胸がいっぱいにった[p]

[if exp="sf.BGM=='ON'"]
;【BGM】海風と沈む太陽（しっとりと想うシーン、回想シーンなどに
[playbgm storage="sittori_umikaze.ogg" loop=true]
[eval exp="f.bgm_storage='sittori_umikaze.ogg'"]
[endif]

;【立ち絵】葛城宮　通常
[whosay name="葛城宮　晴仁" color=%mp.color]
「君は私の夢を聞いてくれた[r]
[sp]いつまでも私の心は君のものだ[r]
[sp]ありがとう、[r]
[sp]――そしてさよなら[名前]殿」[p]

;【立ち絵】主人公 驚き
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「！」[p]

;【立ち絵】主人公 目閉じ
[主人公目閉じ]
[主人公涙流_目閉用]
私の手を取り手の甲へ接吻を落とし、[r]
殿下は私を一度も振り返ることなく[r]
薔薇園を後にしました。[p]

[chara_mod name="bg" storage="toumei.gif" time=1500]

[イベントシーン構築]
[主人公ポーズ通常]
;【立ち絵】主人公 憂い
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
私はいつまでも殿下の消えた背中を[r]
追うことしかできませんでした[r]
私にもっと強さがあれば[r]
殿下は私を受け入れてくれたのでしょうか？[p]　

[chara_mod name="bg" storage="bg/bg_bluesky.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
;【立ち絵】主人公 通常
 [主人公目伏]
 [主人公眉下げ下]
その後殿下は誰とも結婚せずに夢を現実にし、[r]
私もその後誰とも結婚せず[r]
男女平等をうたった運動に[r]
参加するようになりました。[p]

[fadeoutbgm time=3000]

;【立ち絵】主人公 目閉じ
[主人公目閉じ]
殿下と過ごした想い出は[r]
心の中の宝石のように[r]
キラキラといつまでも輝き続け[r]
私を支えてくれています[p]
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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
