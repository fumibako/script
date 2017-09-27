;=========================================================================
;イベント１０回目【手紙を交わしていることが発覚】１１月１週、
;=======================お芝居の準備中です==================================
*replay_hujieda_11_1
[stopbgm]
[call target=*11_1 storage="hujieda/preload_hujieda.ks]
[freeimage layer = 1]
[wait time=10]
;【背景】主人公邸 お稽古部屋
[bg wait=true method='crossfade' storage="../fgimage/bg/bg_okeiko.jpg" time=50]
[wait time=10]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[主人公伏目]
[主人公眉下げ下]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：伏目
「そろそろお手紙のお返事が来ないかしら」
[主人公目パチ1回][p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;------------------------------------------------------
[if exp="tf.test_gamen == true"]
テストページからプレイしています。イベント終わりまで移動しますか？[r]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]

[link target=*jump_ok]は　　　い[endlink][r]
[r][r][r]
[link target=*jump_no]い　い　え[endlink][r]
[resetfont]
[s]
*jump_ok
[er]

[current layer="message0"]
[resetfont]
[er]
「はい」[r]
移動します。[p]
[cm]
@jump target=*seen_end
[s]

*jump_no
[er]
[current layer="message0"]
[resetfont]
「いいえ」[r]
そのまま続きの場面に移動します。[p]
[cm]

[endif]
;------------------------------------------------------


（鳩が入ってこれるように、少し障子を開けているけれども）[p]

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]

[whosay name=磯野 color="dimgray"]
「お嬢様、お茶をお持ちしました」[p]

;【立ち絵】主人公：通常
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「ありがとう、入っていいわよ」[p]

;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]

[whosay name=磯野 color="dimgray"]
「失礼します。[r]
[sp]最近では教養も身に付けられて、お嬢様も淑女らしくなられた[r]
[sp]と感心しております」[p]

;【立ち絵】主人公：目閉じ
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「ええ、精進するわ」[p]

[fadeoutbgm time=3000]
#
私はお稽古の手を止めて、お茶に手を伸ばしたときだった。[p]
;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

[主人公困り]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（鳩さん！！）[p]

#
障子を振り返ると、いつものように鳩は部屋に入って、[r]
お[ruby text=こと]箏にとまった。[p]

[whosay name=磯野 color="dimgray"]
「鳩が……」[p]
;大事な場面ですので、状況を細かく追った方が良いかと思いましたので改頁させていただきました(◆jsYiJcqRkk
「足に紙が[ruby text=くく]括り付けてございますね」[p]

#
磯野が鳩に近づく。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：慌て
[主人公困り]
[主人公口開]
[主人公汗]
「あ、待って下さい！」[p]

#
私の言葉はむなしく、磯野は素早く鳩さんの足に括り付けてあった、[r]
手紙をほどいて開ける。[p]

;【SE】紙に触れる（早・軽）
[playse storage=paper_open_fast.ogg loop=false ]
#
私は茫然と立ち尽くした。[r]
[主人公効果消]
磯野は無言で手紙に目を通し、彼の顔は次第に厳しくなっていく。[p]


[whosay name=磯野 color="dimgray"]
「お嬢様！　このお手紙は一体何ですか？[r]
[sp]この藤枝肇という方は、どういった身分の方なのです？」[p]


[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：落ち込み
[主人公目閉じ]
「藤枝様はお稽古を励ましてくださった良い方です。[r]
[sp]身分も以前は華族の一員でした」[p]

[whosay name=磯野 color="dimgray"]
「とりあえずこの事は旦那様に報告させて頂きます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：慌て
[主人公困り]
[主人公口開]
「お父様に！　それは待ってください！[r]
[sp]私たちは少しの間だけ、お手紙を交わしていたいだけです」[p]

[whosay name=磯野 color="dimgray"]
「私達ですか……随分親しくなられたようですね」
[主人公目大][p]
[whosay name=磯野 color="dimgray"]
[主人公目伏]
;「家を取り仕切る私の立場から言わせて頂きますが、[r]
;↑こちらは除いた方が控え目かつお嬢様を思いやる磯野の印象になると思います(◆jsYiJcqRkk
「お嬢様に悪い噂が立つと、今後の縁談に差しさわり、[r]
[sp]当家の評判を落とすことにもつながります」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：落ち込み
[主人公困り]
[主人公口通常]
「それは……」[p]

[whosay name=磯野 color="dimgray"]
「賢いお嬢様ならわかっていらっしゃるはずです。[r]
[sp]それで、この方からのお手紙は、どこにあるのですか？」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣落ち込み
[主人公目閉じ]
[主人公口開]
「言いたくありません！」[p]

[whosay name=磯野 color="dimgray"]
「……お嬢様」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：悲しみ
[主人公困り]
[主人公口開]
「没収する気なのでしょう？[r]
[sp]絶対に言いません！ 大切な手紙なのです。[r]
[sp]そのお手紙も返してください……」[p]

#
磯野は批難めいた視線をむけ、私はかぶりを振り、切実な視線を向けた。[p]
#
そして、先に目を離したのは磯野だった。[p]
ため息をついて磯野は言った。[p]

[whosay name=磯野 color="dimgray"]
「この手紙は没収しますが、わかりました。[r]
[sp]今後はお嬢様がお稽古中の場合でも女中を傍に控えさせ[r]
[sp]お手紙を出されるのは禁止させていただきます」[p]
[fadeoutbgm time=3000]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣落ち込み
[主人公目閉じ]
[主人公口通常]
「……」[p]

（皆に知られたら止められると思っていた。[r]
[sp]わかっていたけれど……とてもつらいものね）[p]

*seen_end
#
;次のイベントにでてしまう名前残りを消去

[eval exp="sf.event_hujieda_11_1 = 1"]
[イベントシーン終了]
[イベントシーン終了４]
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

