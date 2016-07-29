﻿*start
;==============================
; 全般マクロ設定
;==============================
;==============================
; 背景マクロ設定-背景画像:(layer1)
;==============================

;背景：庭
[macro name="背景_庭"]
[chara_mod name="bg" storage="bg/room_niwa.jpg"]
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
[chara_mod name="bg" storage="bg/bg_tegami_blue.jpg" time=100]

;メッセージレイヤを表示
@layopt layer=message0 page=fore visible = true
[current layer="message0"]

;メッセージレイヤサイズを手紙用に設定変更
[position width=640 height=520 top=50 left=160 page=fore margint="40" opacity=0]
[endmacro]


;[手紙四条]%fumi_title、%fumi_number指定のこと
[macro name="手紙四条"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]

[iscript]	
/*
f.fumi_all_title_new=f.okeiko_month_kansuuji+%fumi_title+"四条 華織";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+%fumi_title";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi"+%fumi_number+1);
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(%fumi_number);
f.fumi_list_kuroda_location_fumi.push(%fumi_number);
f.fumi_list_kuroda_title.push(f.fumi_sijyou_title_new);
f.fumi_list_kuroda_target.push("*sijyou_fumi%fumi_number");
f.kuroda_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[%fumi_number]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_sijyou_number=f.fumi_sijyou_number + 1;
f.hensin_list_hairetsu[2][%fumi_number]=1;
f.para_sijyou_koukando = f.para_sijyou_koukando + 4;
*/
[endscript]

;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=1 y=1 storage="bg/B4nFWraU42/bg_tegami_sijyou.jpg" time=500]
[position width=630 height=520 top=80 left=220 page=fore margint="40" opacity=0]
[resetfont]

[endmacro]

;[手紙四条読了]%fumi_number指定のこと
[macro name="手紙四条読了"]
;[eval exp="f.midoku_list_hairetsu[2][%fumi_number] = 0;"]
[freeimage layer = 29 time=500]
[if exp="sf.FButton!='OFF'"]
;機能ボタン表示
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
[endif]

;画面切り替え、手紙画面→通常会話パート
;【テキスト枠】会話パート用 下部横長
[position left=240 width=700 height=170 top=415 page=fore margint="50"]

[endmacro]

;[手紙葛城宮]%fumi_title、%fumi_number指定のこと
[macro name="手紙葛城宮"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]

[iscript]	
/*
f.fumi_all_title_new=f.okeiko_month_kansuuji+%fumi_title+"葛城宮　晴仁";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+%fumi_title";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_katuraginomiya.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi"+%fumi_number+1);
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(%fumi_number);
f.fumi_list_kuroda_location_fumi.push(%fumi_number);
f.fumi_list_kuroda_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_kuroda_target.push("*katuraginomiya_fumi%fumi_number");
f.kuroda_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[%fumi_number]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_katuraginomiya_number=f.fumi_katuraginomiya_number + 1;
f.hensin_list_hairetsu[3][%fumi_number]=1;
f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + 4;
*/
[endscript]

;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙
[image layer=29 x=1 y=1 storage="bg/I9IhvvVdPo/bg_tegami_katuragi_silver.jpg" time=500]
[position width=630 height=520 top=80 left=200 page=fore margint="40" opacity=0]
[resetfont]
[font color = navy]

[endmacro]

;[手紙葛城宮読了]%fumi_number指定のこと
[macro name="手紙葛城宮読了"]
;[eval exp="f.midoku_list_hairetsu[3][%fumi_number] = 0;"]
[freeimage layer = 29 time=500]
;機能ボタン表示
[if exp="sf.FButton!='OFF'"]
;機能ボタン表示
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
[endif]

;画面切り替え、手紙画面→通常会話パート
;【テキスト枠】会話パート用 下部横長
[position left=240 width=700 height=170 top=415 page=fore margint="50"]

[endmacro]



;[手紙藤枝]%fumi_title、%fumi_number指定のこと
[macro name="手紙藤枝"]
;【SE】パラリ(手紙を開く)
[playse storage=paper_open.ogg loop=false ]

[iscript]	
/*
f.fumi_all_title_new=f.okeiko_month_kansuuji+%fumi_title+"藤枝　肇";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+%fumi_title";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_hujieda.ks");
f.fumi_list_all_target.push("*hujieda_fumi"+%fumi_number+1);
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(%fumi_number);
f.fumi_list_kuroda_location_fumi.push(%fumi_number);
f.fumi_list_kuroda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_kuroda_target.push("*hujieda_fumi%fumi_number");
f.kuroda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[%fumi_number]=1;
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_hujieda_number=f.fumi_hujieda_number + 1;
f.hensin_list_hairetsu[4][%fumi_number]=1;
f.para_hujieda_koukando = f.para_hujieda_koukando + 4;
*/
[endscript]

;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[freeimage layer = 29]
[layopt layer=29 visible=true]
;背景変更:手紙仮画像(藤枝イメージカラーなどを相談後に作成予定です)
[image layer=29 x=1 y=1 storage="bg/bg_tegami_jiyuuwaku1.jpg" time=500]
[position width=630 height=520 top=80 left=200 page=fore margint="40" opacity=0]
[resetfont]

[endmacro]

;[手紙藤枝読了]%fumi_number指定のこと
[macro name="手紙藤枝読了"]
;[eval exp="f.midoku_list_hairetsu[4][%fumi_number] = 0;"]
[freeimage layer = 29 time=500]
;機能ボタン表示
[if exp="sf.FButton!='OFF'"]
;機能ボタン表示
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
[endif]

;画面切り替え、手紙画面→通常会話パート
;【テキスト枠】会話パート用 下部横長
[position left=240 width=700 height=170 top=415 page=fore margint="50"]

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
[anim name="message_save" opacity=0 time=1]
[anim name="message_load" opacity=0 time=1]
[anim name="message_backlog" opacity=0 time=1]
[anim name="message_skip" opacity=0 time=1]
[endmacro]

;機能ボタン表示
[macro name="機能ボタン表示"]
[anim name="message_save" opacity=255 time=1]
[anim name="message_load" opacity=255 time=1]
[anim name="message_backlog" opacity=255 time=1]
[anim name="message_skip" opacity=255 time=1]
[endmacro]

[return]
