;skip_plg
*start

;黒田チェック
[if exp="sf.ED_kuroda_bad == 1 || sf.ED_kuroda_normal == 1 || sf.ED_kuroda_good == 1"]
@jump target=skip_sentaku
[endif]
;四条チェック
[if exp="sf.ED_sijyou_bad == 1 || sf.ED_sijyou_normal == 1 || sf.ED_sijyou_good == 1"]
@jump target=skip_sentaku
[endif]
;財前チェック
[if exp="sf.ED_zaizen_bad1 == 1 || sf.ED_zaizen_bad2 == 1 || sf.ED_zaizen_normal == 1 || sf.ED_zaizen_good == 1"]
@jump target=skip_sentaku
[endif]
;葛城宮チェック
[if exp="sf.ED_katuraginomiya_good == 1 || sf.ED_katuraginomiya_normal == 1 || sf.ED_katuraginomiya_bad == 1"]
@jump target=skip_sentaku
[endif]
;藤枝チェック
[if exp="sf.ED_hujieda_good == 1 || sf.ED_hujieda_normal == 1 || sf.ED_hujieda_bad == 1"]
@jump target=skip_sentaku
[endif]
@jump storage="prologue.ks"
[s]

[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]

*skip_sentaku
;背景変更:和紙風 桜色
[chara_mod name="bg" storage="bg/plane_sakura.jpg" time=100]
;和紙風 水色
;[chara_mod name="bg" storage="bg/plane_mizuiro.jpg" time=100]
;和紙風 セピア色
;[chara_mod name="bg" storage="bg/plane_sepia.jpg" time=100]
;和紙風 若草色
;[chara_mod name="bg" storage="bg/plane_wakakusa.jpg" time=100]
;[eval exp="f.haikei_credit=''"]

;=====================================================
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=380 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
;=====================================================

[link target=*plo]プロローグから始める[endlink][r]
[r][r][r]
[link target=*op] オープニングから始める[endlink][r]
[r][r][r]
[link target=*okiko] お稽古から始める[endlink][r]
[resetfont]
[s]

*plo
@jump storage="prologue.ks"
[s]

*op
;------オープニングの最初にジャンプする
@jump storage="opening2.ks"
[s]

*okiko
;------お稽古画面からはじめる
[stopbgm]
;------シナリオの最初にジャンプする
@jump storage="okeiko.ks"
[s]


*window_close
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
@layopt layer=message0 page=fore visible=true
[freeimage layer = 27]
[wait time=10]

[return]