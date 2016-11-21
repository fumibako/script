;==========================================================================
;イベント２回目【手紙が届くその２】5月お琴のお稽古を２回以上
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*5_4 storage="hujieda/preload_hujieda.ks"]
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
;【立ち絵】主人公 照れ目普通
[主人公照れ目普通]
[主人公眉通常]
（あの手紙が嬉しくて、最近お琴を中心に練習しているけれど、[r]
[sp]また聞いてくれくれたりするのかしら？)[p]
[主人公目伏柔]
[主人公眉下げ下]
(それにしても簡単な曲だけ、でも弾けると嬉しいものね）[p]

[if exp="sf.BGM=='ON'"]
;【BGM】夕涼み（お稽古パートなど
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true]
[eval exp="f.bgm_storage='okeiko_yuusuzumi.ogg'"]
[endif]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

;【立ち絵】主人公 驚
[主人公驚]
[主人公効果消]
「もしかして！」[p]

;【SE】襖を開ける（ゆっくり）
[playse storage=fusuma-open.ogg loop=false ]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

;【立ち絵】主人公　微笑み
[主人公笑顔]
「やっぱり！あの時の鳩さんだわ」[p]

[主人公口笑顔小]
[主人公ポーズ指]
（……また琴の上にとまって、そこがお気に入りなの？）[p]

;【SE】鳩（クルルポー）
[playse storage=tori_hato.ogg loop=false ]

;【立ち絵】主人公 通常
[主人公ほほえみ]
「待ってね。」
[主人公ポーズ通常]
[p]

;【SE】衣擦れ（スッ）
[playse storage=kinuzure.ogg loop=false ]

;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]


[手紙藤枝 fumi_number=]

琴の奏者様へ[l][r]
[r]
[sp]緑照り映える時節
[r]
[sp]この手紙は貴方様に届いていますでしょうか？　[r]
[r]
[sp]また貴方様の琴の音を聞きました。[r]
少し上達されましたね心から嬉しく想います。[r]
[r]
[sp]僕の母が琴がとても上手で僕は母の琴の音色が好きでした。[r]
[sp]貴方様の音は母と違った魅力があります。[r]
[sp]母は華やかで優美な調べでした。[p]
;アイコンにかかっているので分割します
[r][sp]
[sp]貴方の音は初々しく楚々とした調べです。[r]
[sp]つま弾く音ばどの音もとても丁寧な響きを持っていて[r]
今後基礎を覚えたらどんな風に曲を奏でるのか楽しみです。
[sp][r]
[sp]極めることは貴方様の為ににもなると思います。[r]
[sp]続けることは嫌な事もありますが喜びも多くあります。[r]
[r]
[sp]また貴方様の琴の音を聴けることを願っています。[p]
[手紙藤枝読了 fumi_number=]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[主人公目パチ1回]
;【立ち絵】主人公　微笑み
[主人公ほほえみ]
「ふふ……もっとお琴を練習しましょう」[p]
[fadeoutbgm time=3000]
[主人公目パチ1回]
;【立ち絵】主人公　笑顔
[主人公笑顔]
「また上手になったらお手紙頂けるかしら？」[p]
[主人公口笑顔小]
（楽しみだわ……）[p]

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
