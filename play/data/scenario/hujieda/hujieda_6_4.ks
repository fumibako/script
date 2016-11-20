;=============================================
;イベント3回目【手紙が届くその３】６月お琴のお稽古を２回以上
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*6_4 storage="hujieda/preload_hujieda.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
;【背景】主人公邸 お稽古部屋
[chara_mod name="bg" storage="bg/bg_okeiko.jpg" time=1000]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=========================================================================

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公閉伏目パチ1回]
;【立ち絵】主人公　困り
[主人公困り]
（簡単な曲は弾けるようになったけれど[r]
お琴のお稽古のやりすぎで指の皮が切れてしまう。[r]
それに押さえの手が痛くなって腕も痛いわ[r]
やっぱり切れてしまうと集中できない）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

;【SE】落ち着いた足音（フェードイン）
[playse storage=isono_in.ogg loop=false ]

[whosay name=磯野 color="dimgray"]
「お嬢様、お茶をお持ちしました」[p]

[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「ありがとう、入っていいわよ」[p]

;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]

[whosay name=磯野 color="dimgray"]
「失礼します」 [p]

#
磯野は心配そうに尋ねた。[p]

[whosay name=磯野 color="dimgray"]
「お嬢様、流石にお琴の稽古は[r]
やり過ぎではないでしょうか？　[r]
最近は遅くまでお稽古なされてて[r]
旦那様も心配されています」 [p]

;【SE】湯のみを置く（コトリ）
[playse storage=tya_yunomi_oku.ogg loop=false ]

#
お茶の香りにほっとする。[p]

[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;【立ち絵】主人公 憂い
[主人公憂い]
「心配かけて申し訳ないと思っているわ[r]
[sp]でも嗜み程度でなく もっと上手になりたいの」[p]

[whosay name=磯野 color="dimgray"]
「私は熱心にされるのはいい事と思いますので[r]
反対しませんがほどほどにさないませんと[r]
折角の綺麗な指が傷だらけです」 [p]

;【立ち絵】主人公 憂い
[主人公憂い]
「ええ、今日はここまでで[r]
[sp]他のお稽古に取り掛かるわ[p]

[whosay name=磯野 color="dimgray"]
「ええ、それがいいと存じます[r]
では失礼します」[p]

;【SE】襖を閉める（ゆっくり）
[playse storage=fusuma-close.ogg loop=false ]

#
磯野が部屋から出ていき、[r]
私はため息をついた[p]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

;【立ち絵】主人公 驚
[主人公驚]
「鳩さん！」[p]

#
最近暑くなってきたのでお稽古部屋の[r]
障子も開けたままにしている。[r]
鳩は迷うことなくお琴の上にとまった。[p]

;【立ち絵】主人公 困り
[主人公困り]
「ありがとう。[r]
でも最近は思うような演奏が出来ていないわ」[p]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

;【立ち絵】主人公 困り
[主人公困り]
[主人公口ほほえみ]
「待ってね。」[p]

#
私は恐る恐る紙に手を伸ばした[r]
うまく弾けれないから[r]
きっと呆れているかしら？　[p]

[fadeoutbgm time=3000]

;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[手紙藤枝 fumi_number=]

琴の奏者様へ[l][r]
[r]
[sp]雨に萌ゆる緑が風情を漂わせる季節。[r]
[r]
[sp]貴方様におかれましては何かあられたのでしょうか？[r]
[sp]琴の音色がとても痛々しく[r]
いつも丁寧につま弾く響きもブレが感じられます。[r]
[r]
[sp]いえ、一生懸命に取り組まれているのは伝わって来るのです。[r]
[r]
[sp]もしかして指の皮が切れるほどに練習していらっしゃるのですか？[r]
[r]
[sp]早く上達したい時もあります。[r]
僕もある時はそうで楽器を睡眠を削り弾くこともありました。[p]
[sp]ですがあまり熱心に練習しても調子を崩す時もあります。[r]
[sp]自分を追い詰めていくことは必ずしも[r]
いい結果をうむとは限りませんノイローゼになる人も居ると聞きます。[r]
[r]
[sp]自然に触れたりして一度視点を変えて余裕を持ってください。[r]
[r]
[sp]焦らずとも貴方様は無意識で丁寧にお琴を慈しみ優しく弾けていました。[r]
[sp]必ず上達できる方だと思います。[r]
[r]
[sp]初心を忘れずゆっくり上達していきましょう。[p]

[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]

[手紙藤枝読了 fumi_number=]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]


[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
[主人公目パチ1回]
;【立ち絵】主人公　微笑み
[主人公目閉じ]
[主人公眉下げ下]
[主人公口ほほえみ]
（良かった……。[r]
音から察してくれるなんてきっと優しい方なのね）[p]

;【SE】紙を折る（丁寧）
[playse storage=paper_oru.ogg loop=false ]


;【立ち絵】主人公　ほほえみ
[主人公照れ目普通]
[主人公目伏柔]
「私もお手紙を返せるといいのだけれど」[p]
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
