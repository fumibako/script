*test_text
;test：手紙版

;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false

*start
[stopbgm ]


[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]


;=============================================
;test
;=============================================
[cm]
;背景変更:プロローグイントロ全画面
[chara_mod name="bg" storage="bg/bg_prologue.jpg" time=1]

[テキスト全画面]

;全画面版
[font color=white size=31]
一二三四五六七八九十一二三四五六七八九十一[r]
二[r]
三[r]
四[r]
五[r]
六[r]
七[r]
八[r]
九[r]
十[r]
一[r]
二[r]
三[l][r]
四[l][r]
五[l][r]
六[l][r]
七[l][r]
八[l][r]
九[l][r]
十[l][p]
[resetfont][delay speed=10]

;=============================================
;test
;=============================================

[cm]

[手紙青]
[cg storage="bg_tegami_blue.jpg" ]

[font color=navy size=21]
[delay speed=50]


一二三四五六七八九十一二三四五六七八九十一二三四五六七八[r]
二[r]
三[r]
四[r]
五[r]
六[r]
七[r]
八[r]
九[r]
十[l][r]
一[l][r]
二[l][r]
三[l][r]
四[l][r]
五[l][r]
六[l][r]
七[l][r]
八[l][r]
九[l][r]
十[p]
[resetfont]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false

;=============================================
;test
;=============================================
[cm]
;背景変更:主人公邸_庭
[背景_庭]
[hidemenubutton]

;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_new name="message_bg" storage="message_bg/frame_red.png"]
[chara_show left=1 top=391 layer=10 name="message_bg"]

;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
;[locate x=900 y=390]
;[button name="message_close" graphic="button_message_close.png" role=message ]

;主人公画像表示【初登場時のみchara_new使用。後はマクロで切り替え】
[chara_new name="girl_S" storage="girl/S/girl_S_normal.png"]
[chara_show left=1 top=381 layer=11 name="girl_S"]

;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=270 y=407]
[chara_config ptext="chara_name_area"]

#一二三四五六七
一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一[l][r]
二[l][r]
三[l][r]
四[l][r]
五[l][r]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
[枠消]
;------ジャンプする
@jump storage="title.ks"
