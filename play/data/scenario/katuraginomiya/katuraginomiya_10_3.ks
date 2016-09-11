;6.5回目イベント　
;葛城宮から手紙
[背景_庭]
[stopbgm]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]

[whosay name=磯野 color="dimgray"]
「お嬢様、[r]
[sp]葛城宮殿下からの手紙でございます」[p]

[if exp="sf.BGM=='ON'"]
;【BGM】雪消水（哀しげな曲（主人公側…に限らず使っていただいて大丈夫です
[playbgm storage="kanasige_yukigemizu.ogg" loop=true]
[eval exp="f.bgm_storage='kanasige_yukigemizu.ogg'"]
[endif]

#
磯野は憂いた表情で私に手紙を差し出す[r]
磯野も贈賄事件を重く受け止めている[p]

[主人公ポーズ通常]
[主人公憂い]
[主人公口ほほえみ]
[主人公伏目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、ありがとう」[r]
（多分良くないことが書かれてある[r]
何が書いてあっても現実を受け入れるわ[r]
殿下をお支えしたいと思ったもの）[p]

;【SE】紙に触れる（スッ）
[playse storage=paper_su.ogg loop=false ]

[手紙葛城宮 fumi_number=]
[font color=navy size=21]
[名字]　[名前]殿へ[l][r]
[r]
[sp]謹呈　仲秋の候　
[名前]殿は息災であろうか？[r]
[r]
[sp]つい先日君と一緒に三宮邸を散歩し[r]
夢を語ったのが遠い昔のようだ。[r]
[r]
[sp]君ももう海軍の汚職事件を知っているだろう？[r]
あの事件を受けて内閣総辞職を避ける為、[r]
首相以外の海軍出身者の与党の党員は全員[r]
議員を辞職することが党内で決められた。[p]
[r]
[sp]私も例外ではない。[r]
[sp]この時代皇族に生まれた多くが、[r]
軍人になり私も軍人でもある。[r]
[r]
[sp]己の無力さが不甲斐ない。[r]
[sp]あれほど君に夢を語っておきながら[r]
実際は私は無力なものだ。[r]
[r]
[sp]君に話しがある。[r]
[r]
[sp]近いうちにまた会おう。[r]
[sp][r]
[r]
[sp]　　　　　　　　　　　　　　　　　　　　　　　　　敬白[r]
[sp]　　　　　　　　　　　　　　　　　　　　葛城宮　晴仁[p]
[手紙葛城宮読了 fumi_number=]
 
[resetfont]
;【SE】紙に触れる（パラリ）
[playse storage=paper_open.ogg loop=false ]

[背景_庭]
[主人公ポーズ通常]
[主人公困り]
[主人公目パチ1回]
;【立ち絵】主人公　困り
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公困り]
「議員辞職！」[r]
（やはり落ち込んでいられるのね[r]
[主人公目伏]
[主人公眉下げ下]
[sp]こんな時こそ傍にいてお支えしたい[r]
[sp]殿下が自信を取り戻せるように……」[p]
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
