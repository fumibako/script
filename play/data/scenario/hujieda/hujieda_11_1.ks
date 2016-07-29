;=============================================
;イベント１０回目【手紙を交わしていることが発覚】１１月１週、
;=============================================
;【背景】お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg"]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公：通常
「そろそろお手紙のお返事来ないかしら」[r]
[sp] （鳩が入ってこれるように[r]
[sp] 少しふすまを開けているけれども）[p]

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]

[whosay name=磯野 color="dimgray"]
「お嬢様、お茶をお持ちしました」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「ありがとう、入っていいわよ」[p]

;【SE】襖を開ける（ゆっくり）

[playse storage=fusuma-open.ogg loop=false ]
[stopbgm]
;【BGM】みやび（磯野テーマ）
[playbgm storage="isono_miyabi.ogg" loop=true]

[whosay name=磯野 color="dimgray"]
「失礼します。
[sp] 最近では教養も着きお嬢様も淑女
[sp] らしくなって感心しております」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、精進するわ」[p]

;【SE】鳩の鳴き声

[whosay name=磯野 color="dimgray"]
「鳩が……足が紙が括り付けてありますけど」[p]

＃
磯野が鳩さんに近づく

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：慌て
「あ、待って下さい！　」[p]

＃
私の言葉はむなしく、磯野は素早く
鳩さんの足に括り付けてあった手紙をほどいて開ける

;【SE】紙の音（カサッ）

＃
私は茫然と立ち尽くした。
磯野は無言で手紙に目を通し
彼の顔は次第に顔が厳しくなっていく。

[whosay name=磯野 color="dimgray"]
「お嬢様！　この手紙は一体何ですか？[r]
[sp] この藤枝肇という方はどういった身分の方なのです？　」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：落ち込み
「藤枝様はお稽古を励ましてくださった良い方です[r]
[sp] 身分も以前は華族の一員でした　」[p]

[whosay name=磯野 color="dimgray"]
「とりあえずこの事は旦那様に報告させて頂きます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：慌て
「お父様に！　それは待ってください！　[r]
[sp] 私たちは少しの間だけ手紙を交わしていたいだけです」[p]

[whosay name=磯野 color="dimgray"]
「私達ですか……随分親しくなられたようですね。[r]
[sp] 家を取り仕切る私の立場から言わせて頂きますが[r]
[sp] お嬢様に悪い噂が立ち今後の縁談に差しさわり、[r]
[sp] また家の評判を落とすことにもつながります」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：落ち込み
「それは……」[p]

[whosay name=磯野 color="dimgray"]
「賢いお嬢様ならわかっているはずです。[r]
[sp] それでこの方からのお手紙はどこにあるのですか？　」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣落ち込み
「言いたくありません！　」[p]

[whosay name=磯野 color="dimgray"]
「……お嬢様」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：悲しみ
「没収する気なのでしょう？[r]
[sp] 絶対に言いません！大切な手紙なのです[r]
[sp] そのお手紙も返してください……　」[p]

＃
磯野は批難めいた視線をむけ
私はかぶりを振り切実な視線を向けた
そして先に目を離したのは磯野だった
ため息をついて磯野はいった。

[whosay name=磯野 color="dimgray"]
「この手紙は没収しますが、わかりました[r]
[sp] 今後お嬢様がお稽古す場合でも女中を傍に控えさせ[r]
[sp] 今後手紙を出されるのは禁止させていただきます」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公：真剣落ち込み
「……　」[r]
（皆に知られたら止めらると思っていた[r]
[sp] わかっていたけれど……とてもつらいものね）[p]
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

