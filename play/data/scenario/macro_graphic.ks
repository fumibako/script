﻿﻿*start
;==============================
; 全般マクロ設定
;==============================
;==============================
; 背景マクロ設定-背景画像:(layer1)
;==============================

;背景：庭
[macro name="背景_庭"]
[bg storage="../fgimage/bg/room_niwa.jpg" time=0]
[wait time=10]
[endmacro]


;メッセージ枠を全画面サイズに
[macro name="テキスト全画面"]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]

;メッセージレイヤサイズを全画面用に設定変更
[position width=700 height=620 top=0 left=120 page=fore margint="40" opacity=0]

[endmacro]

;背景とメッセージ枠を手紙青仕様に
[macro name="手紙青"]
;背景変更:手紙青
[bg method='crossfade' storage="../fgimage/bg/I9IhvvVdPo/bg_tegami_blue.jpg" time=100]
[wait time=100]

;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]

;メッセージレイヤサイズを手紙用に設定変更
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[endmacro]


;[手紙主人公]
[macro name="手紙主人公"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]
;機能ボタン消去
[clearfix]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_tegami_blue.jpg" time=500]
[wait time=500]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[resetfont]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[endmacro]

;[手紙文矢]
[macro name="手紙文矢"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]
;機能ボタン消去
[clearfix]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/bg_tegami_jiyuuwaku2.jpg" time=500]
[wait time=500]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[resetfont]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[endmacro]

;[手紙飛鳥]
[macro name="手紙飛鳥"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]
;機能ボタン消去
[clearfix]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/bg_tegami_asuka.jpg" time=500]
[wait time=500]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[resetfont]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[endmacro]

;[手紙時子]
[macro name="手紙時子"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]
;機能ボタン消去
[clearfix]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/bg_tegami_tokiko.jpg" time=500]
[wait time=500]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[resetfont]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[endmacro]

;[手紙華衣婚約者]
[macro name="手紙華衣婚約者"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]
;機能ボタン消去
[clearfix]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/B4nFWraU42/bg_tegami_konyakusha.jpg" time=500]
[wait time=500]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[resetfont]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[endmacro]

;[手紙皇后さま]
[macro name="手紙皇后さま"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]
;機能ボタン消去
[clearfix]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/bg_tegami_kousitsu_akabudou.jpg" time=500]
[wait time=500]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[resetfont]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[endmacro]

;[手紙葛城宮妃殿下]
[macro name="手紙葛城宮妃殿下"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]
;機能ボタン消去
[clearfix]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/bg_tegami_kousitsu_akebono.jpg" time=500]
[wait time=500]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[resetfont]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[endmacro]

;[手紙従妹宮]
[macro name="手紙従妹宮"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]
;機能ボタン消去
[clearfix]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/bg_tegami_kousitsu_itokomiya.jpg" time=500]
[wait time=500]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[resetfont]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[endmacro]

;[手紙侍従]
[macro name="手紙侍従"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]
;機能ボタン消去
[clearfix]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/bg_tegami_kousitsu_jijyuu.jpg" time=500]
[wait time=500]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[resetfont]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[endmacro]

;[手紙読了]主人公、茶色便せん、その他共通
[macro name="手紙読了"]
[freeimage layer = 29 time=500]
[wait time=500]
[if exp="sf.FButton!='OFF'"]
;機能ボタン表示
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
[endif]

;画面切り替え、手紙画面→通常会話パート
;【テキスト枠】会話パート用 下部横長
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[resetfont]
[endmacro]

;[手紙財前]
[macro name="手紙財前"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]

;機能ボタン消去
[clearfix]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_tegami_zaizen.jpg" time=500]
[wait time=500]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[resetfont]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]

[endmacro]

;[手紙財前読了]%fumi_number指定のこと
[macro name="手紙財前読了"]
;[eval exp="f.midoku_list_hairetsu[1][%fumi_number] = 0;"]
[freeimage layer = 29 time=500]
[wait time=500]
[if exp="sf.FButton!='OFF'"]
;機能ボタン表示
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
[endif]

;画面切り替え、手紙画面→通常会話パート
;【テキスト枠】会話パート用 下部横長
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[resetfont]
[endmacro]

;[手紙四条]
[macro name="手紙四条"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]

;機能ボタン消去
[clearfix]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/B4nFWraU42/bg_tegami_sijyou.jpg" time=500]
[wait time=500]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[resetfont]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[endmacro]

;[手紙四条読了]%fumi_number指定のこと（%fumi_numberはまだ未完成のため、指定の必要はありません。将来使うかも的機能です。現在はシナリオ内での手紙到着時にマクロとは別に手紙未読→既読処理記述の必要があります。ゲーム組み込み時にこちらで担当します：◆jsYiJcqRkk）
[macro name="手紙四条読了"]
;[eval exp="f.midoku_list_hairetsu[2][%fumi_number] = 0;"]
[freeimage layer = 29 time=500]
[wait time=500]
[if exp="sf.FButton!='OFF'"]
;機能ボタン表示
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[endif]

;画面切り替え、手紙画面→通常会話パート
;【テキスト枠】会話パート用 下部横長
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[resetfont]
[endmacro]

;[手紙葛城宮]
[macro name="手紙葛城宮"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]
;機能ボタン消去
[clearfix]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_tegami_katuragi_silver.jpg" time=500]
[wait time=500]
[position width=630 height=520 top=80 left=200 page=fore margint="40" opacity=0]
[resetfont]
[font color = navy]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[endmacro]

;[手紙葛城宮読了]%fumi_number指定のこと
[macro name="手紙葛城宮読了"]
;[eval exp="f.midoku_list_hairetsu[3][%fumi_number] = 0;"]
[freeimage layer = 29 time=500]
[wait time=500]
;機能ボタン表示
[if exp="sf.FButton!='OFF'"]
;機能ボタン表示
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
[endif]

;画面切り替え、手紙画面→通常会話パート
;【テキスト枠】会話パート用 下部横長
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[resetfont]
[endmacro]



;[手紙藤枝]
[macro name="手紙藤枝"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]
;機能ボタン消去
[clearfix]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/I9IhvvVdPo/bg_tegami_hujieda.jpg" time=500]
[wait time=500]
[position width=630 height=520 top=80 left=200 page=fore margint="40" opacity=0]
[resetfont]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]
[endmacro]

;[手紙藤枝読了]%fumi_number指定のこと
[macro name="手紙藤枝読了"]
;[eval exp="f.midoku_list_hairetsu[4][%fumi_number] = 0;"]
[freeimage layer = 29 time=500]
[wait time=500]
;機能ボタン表示
[if exp="sf.FButton!='OFF'"]
;機能ボタン表示
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
[endif]

;画面切り替え、手紙画面→通常会話パート
;【テキスト枠】会話パート用 下部横長
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[resetfont]
[endmacro]

;[手紙黒田]
[macro name="手紙黒田"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]
;名前表示消去
[whosay name=""]
[cm]
;磯野メッセージや「休憩中」など念のため消去
[freeimage layer = 29]
[layopt layer=29 visible=true]
;機能ボタン消去
[clearfix]
;背景変更:手紙
[image layer=29 x=0 y=0 storage="bg/bg_tegami_kuroda.jpg" time=500]
[wait time=500]
[position width=630 height=520 top=80 left=200 page=fore margint="40" opacity=0]
[resetfont]
;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]

[endmacro]

;[手紙黒田読了]
[macro name="手紙黒田読了"]
;eval
[freeimage layer = 29 time=500]
[wait time=500]
;機能ボタン表示
[if exp="sf.FButton!='OFF'"]
;機能ボタン表示
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
[endif]
;画面切り替え、手紙画面→通常会話パート
;【テキスト枠】会話パート用 下部横長
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
[resetfont]
[endmacro]

;==============================
; メッセージ窓マクロ設定-メッセージ枠画像:(layer10)
;==============================
;メッセ枠消去（名前欄消去、メッセージ窓隠す、メッセージレイヤ隠す）
[macro name="枠消"]
#
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif"]
;機能ボタン消去
[anim name="message_save" opacity=0 time=1]
[anim name="message_load" opacity=0 time=1]
[anim name="message_backlog" opacity=0 time=1]
[anim name="message_skip" opacity=0 time=1]
[eval exp="sf.FButton='OFF'"]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
[endmacro]

;メッセージ窓（茶扇）画像表示
[macro name="枠茶"]
[hidemenubutton]
[chara_mod name="message_bg" storage="message_bg/frame_brown.png"]

;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]

;メッセージレイヤサイズを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]

;機能ボタン表示
[anim name="message_save" opacity=255 time=1]
[anim name="message_load" opacity=255 time=1]
[anim name="message_backlog" opacity=255 time=1]
[anim name="message_skip" opacity=255 time=1]
[endmacro]

;メッセージ窓（赤扇）画像表示
[macro name="枠赤"]
[hidemenubutton]
[chara_mod name="message_bg" storage="message_bg/frame_red.png"]

;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]

;メッセージレイヤサイズを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]

[endmacro]

;機能ボタン消
[macro name="機能ボタン消"]
[anim name="message_auto" opacity=0 time=1]
[anim name="message_save" opacity=0 time=1]
[anim name="message_load" opacity=0 time=1]
[anim name="message_backlog" opacity=0 time=1]
[anim name="message_skip" opacity=0 time=1]
[anim name="message_close" opacity=0 time=1]
[endmacro]

;機能ボタン表示
[macro name="機能ボタン表示"]
[anim name="message_auto" opacity=255 time=1]
[anim name="message_save" opacity=255 time=1]
[anim name="message_load" opacity=255 time=1]
[anim name="message_backlog" opacity=255 time=1]
[anim name="message_skip" opacity=255 time=1]
[anim name="message_close" opacity=255 time=1]
[endmacro]

[return]
