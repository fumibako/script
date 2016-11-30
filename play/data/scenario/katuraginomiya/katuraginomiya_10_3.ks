;6.5回目イベント　
;葛城宮から手紙　
;=======================お芝居の準備中です==================================
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*10_3 storage="katuraginomiya/preload_katuraginomiya.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
;【背景】主人公部屋昼
[chara_mod name="bg" storage="bg/room_niwa.jpg" time=50]
[eval exp="f.haikei_credit='photo　by　ゆうあかり　http://light77.sakura.ne.jp/'"]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
#
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
;=====================ここからお芝居の幕引きです===============================
[whosay name=磯野 color="dimgray"]
「お嬢様、[r]
[sp]葛城宮殿下からの手紙でございます」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

#
磯野は憂いた表情で私に手紙を差し出す。[r]
磯野も贈賄事件を重く受け止めている。[p]
;ようだった。地の文の変化では…暫定

[主人公ポーズ通常]
[主人公憂い]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、ありがとう」[p]
[主人公伏目パチ1回]
（多分良くないことが書かれてある)[p]
[主人公目閉]
(何が書いてあっても現実を受け入れるわ[r]
[sp]殿下をお支えしたいと思ったもの）[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[sp]　仲秋の候　[名前]殿は息災であろうか？[r]
[r]
[sp]つい先日君と一緒に三宮邸を散歩し[r]
夢を語ったのが遠い昔のようだ。[r]
[r]
[sp]君ももう海軍の汚職事件を知っているだろう？[r]
[sp]軍人が権力を持ち政治に関わるのは[r]
良くないことだ軍国主義に走る危険性がある。[r]
[sp]しかし私自身もこの時代皇族に生まれた多くが、[r]
軍人になるのもあって私も軍人でもある。[r]
[r]
[sp]私も政治に関わるべきではなく、[r]
辞職するつもりでいる。[r]
[r]
[sp]君に話しがある。[r]
[r]
[sp]近いうちにまた会おう。[r]
[sp][r]
[sp]　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[手紙葛城宮読了 fumi_number=]
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]


[主人公困り]
[主人公目パチ1回]
;【立ち絵】主人公　困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
「辞職！」[p]

（やはり落ち込んでいられるのね。[r]
[sp]こんな時こそ傍にいてお支えしたい)[p]
[主人公目閉じ]
(殿下が自信を取り戻せるように……)[p]

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
