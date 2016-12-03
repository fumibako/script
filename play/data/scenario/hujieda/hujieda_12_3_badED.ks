;========================================================================
;イベント１２回目【時子さん訪問】１２月3週、
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*12_3_bad storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_hujieda.ks"]
;【背景】主人公邸 庭の見える部屋：昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
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

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公憂い]
[主人公目パチ1回]
;bad
[暗転]
#
それでも私は時子さんにも何も言えなかった。[p]
;前シーンでの音楽を消します
[fadeoutbgm time=3000]
その後、藤枝様は独逸に留学し、[r]
さらには渡米し、作曲家、ピアニストとして名を馳せる。[p]
;られた?

この国へ戻ってきたのは、十年後だった。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】「いにしえより続く街、太宰府」
[playbgm storage="dazaifu.ogg" loop=true]
[eval exp="f.bgm_storage='dazaifu.ogg'"]
[endif]


;【テキスト全画面】黒茶・和紙風背景(暗)に白文字
 [テキスト全画面白文字暗]
ー１５年後[p]
[イベントシーン構築]
;背景洋館内装
[chara_mod name="bg" storage="bg/I9IhvvVdPo/youkannaisou.jpg" time=1000]
#
たまたま付けたラヂオから、ピアノと琴の合奏曲が聴こえた。[p]
とても綺麗で切ない曲で、[r]
ピアノと[ruby text=こと]箏の合奏曲なんて珍しい、 と[r]
思いながら聞いていると、彼の声が聞こえた。[p]

[whosay name="藤枝 肇" color=%mp.color] 
「これは、日本に戻って初めに作曲した、初恋の人を想って[r]
[sp]作った曲です。[r]
[sp]どうか今彼女が幸せでありますようにと……」[p]

「彼女と会ったことは、数えるほどでしたが、夢のような恋でした」[p]
;ラジオの画像？
#
―― 懐かしくも愛おしい気持ちが、こみ上げて私は涙がこぼれた。[r]
[sp]思い出を汚さないためにも、もう会おうと思わない。[p]

#
藤枝さまの中では、ずっと綺麗なままの私でいたいから。[p]
―― 私はもう戻れない過去叶わない恋をした。[r]
[sp]……ただそれだけ[p]

[fadeoutbgm time=3000]

[wait time=100]

;@jump storage="event.ks" target=*event_owari

[イベントシーン終了]
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
