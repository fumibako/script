;=============================================
;イベント5.5回目【財前からの手紙】11月３週、
;=======================お芝居の準備中です==========================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*11_3 storage="zaizen/preload_zaizen.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
;【背景】[背景_庭]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
#
[主人公ポーズ通常]
[主人公通常]
[主人公目伏柔]
[主人公眉下げ下]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

;【立ち絵】主人公：微笑み
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（なんだか最近財前様のお手紙の感じが変わったわ）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
;【SE】紙に触れる（スッ）
;[playse storage=paper_su.ogg loop=false ]
[手紙財前 fumi_number=]
[名字]　[名前]様へ[l][r]
[sp]　初霜の候、貴方にはいよいよご清栄の由と存じます。[r]
[r]
[sp] 先日のパーティは思いがけず、醜態をさらし[r]
己の未熟さを覚えました。[r]
[r]
[sp] 私は感情的になる事は好みませんが、[r]
たまに吐き出すとすっきりするものですね。[r]
[r]
[sp]母を許そうと思う日が来るとは思っても[r]
みませんでした。[p]
[sp]貴方のお節介な部分が私に移ったのでしょうか。[r]
だとしても、自分でも悪くない変化だと思います[r]
なにか胸の内のもやもやした黒いものが霧散し[r]
自分の外見も悪いものだと感じなくなりました。[r]
[r]
[sp]貴方に礼を言っておきましょう。
[r]
[sp] それでは取り急ぎ失礼します[r]
[r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　 財前　美彬[p]
[sp][r][r]追伸　これから仕事が忙しくなりそうなので[r]
お手紙のお返事は暫く返せなくなるかもしれません[p]
[resetfont]
[手紙財前読了 fumi_number=]
;名前と追伸が近くアイコンにかかるため改ページ
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

;【立ち絵】主人公：眉ひそめ
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（忙しくなる……なんだか胸騒ぎがするわ[r]
[sp]良くないことが起こっているのかしら？）[p]
[fadeoutbgm time=3000]
;【立ち絵】主人公：不安
（景気が悪くなりつつあるというだけではないの？）[p]

;=====================================================
;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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
