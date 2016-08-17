;=============================================
;イベント１回目【手紙が届くその１】4月お琴のお稽古を２回以上
;=============================================

;【背景】主人公邸 お稽古部屋
 [chara_mod name="bg" storage="bg/bg_okeiko.jpg" time=1000]
 [eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]

[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
[主人公ポーズ通常]
[主人公通常]

[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 困り
[主人公困り]
（お稽古やっぱり難しいわ、
始めたばかりなのにくじけそう……）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;【SE】鳩の鳴き声

;【立ち絵】主人公 驚
[主人公驚]
「まあ！かわいい鳩ね。[r]
あ・・・お琴の上にのってはダメよ」[r]
（近づいても逃げない！）[p]

;【立ち絵】主人公　微笑み
[主人公ほほえみ]
「随分人に慣れた鳩なのね。」 [p]
[主人公目パチ1回]
「足に紙が括り付けてあるわ」[r]
（取った方がいいのかしら？）[p]

;【SE】鳩の鳴き声

;【立ち絵】主人公 伏目
[主人公伏目]
[主人公口ほほえみ]
「待ってね」[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

;【立ち絵】主人公 驚き
[主人公驚]
「これは、手紙？」[p]

;【SE】小鳥羽ばたき
[playse storage=tori_habataki_kosagi.ogg loop=false ]


;【立ち絵】主人公 困り
[主人公困り]
「あ……行ってしまったわ」[p]

[stopbgm]
;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[手紙藤枝 fumi_number=]

琴の奏者様へ[l][r]
[r]
[sp]桜の花が咲きまた散る季節[r]
[r]
[sp]たまたま貴方様の家の近くを通り[r]
貴方様の琴の音を聴き[r]
まだ拙く未熟な音ながら[r]
才能の鱗片を感じました。[r]
[r]
[sp]貴方様の音が心に響き[r]
僕はこうして手紙を書き綴りたく[r]
筆を取りました。[r]
[r]
[sp]貴方様の琴が上達し益々成長することを[r]
願っています。[r]
[r]
[sp]ちなみに毎日２～３時間ほど練習すると効果的です。[r]
[r]
[sp]僕は名乗るほどの者ではありませんので[r]
この手紙の事、僕の事はお構いなく。[p]
[手紙藤枝読了 fumi_number=]
[resetfont]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]
;【背景】主人公邸 お稽古部屋
 [chara_mod name="bg" storage="bg/bg_okeiko.jpg" time=1000]
 [eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築]
[主人公驚]
[主人公目パチ1回]
;【立ち絵】主人公　微笑み
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「こんな風に応援してくれる方もいらっしゃるのね[r]
[sp]お琴うまくなれるかしら[r]
[sp]いえ……精一杯お稽古がんばりましょう！」[p] 
[fadeoutbgm time=3000]
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
