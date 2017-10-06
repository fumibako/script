*start
;==============================
; その他マクロ設定2[メッセージウィンドウ上ボタン表示],[～イベントシーン構築][イベントシーン終了][話題入手]
;==============================
;◆[メッセージウィンドウ上ボタン表示]
[macro name=メッセージウィンドウ上ボタン表示]
;セーブ等ボタン配置
[if exp="f.flag_replay == true || f.event_replay == 'sijyou' || f.event_replay == 'zaizen' || f.event_replay == 'kuroda' || f.event_replay == 'katuraginomiya' || f.event_replay == 'hujieda'"]
[iscript]
if(f.event_replay == 'sijyou'){f.clearlist_storage = 'sijyou/sijyou_event_clearlist.ks'; }
if(f.event_replay == 'zaizen'){f.clearlist_storage = 'zaizen/zaizen_event_clearlist.ks';}
if(f.event_replay == 'kuroda'){f.clearlist_storage = 'kuroda_event_clearlist.ks';}
if(f.event_replay == 'katuraginomiya'){f.clearlist_storage = 'katuraginomiya/katuraginomiya_event_clearlist.ks';}
if(f.event_replay == 'hujieda'){f.clearlist_storage = 'hujieda/hujieda_event_clearlist.ks';}
if(f.flag_replay == true){f.clearlist_storage = 'replay2.ks';}
if(typeof f.event_replay === "undefined" && f.flag_replay === "undefined"){f.clearlist_storage = 'kuroda_event_clearlist.ks';} //例外処理は黒田に仮設定しています
[endscript]
[locate x=830 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png"  storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[locate x=850 y=0]
[button name="back_clearlist" fix="true" graphic="back.png" storage=&f.clearlist_storage target="*test_end" ]
[wait time=10]

[else]
[locate x=560 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=630 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=710 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=790 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=860 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[endif]
[eval exp="sf.FButton='ON'"]
[endmacro]

;◆[四条イベントシーン構築]
[macro name="四条イベントシーン構築"]
;↓メッセージ枠名前残り消去
[whosay name=""]
[clearfix]
;主人公画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
[freeimage layer = 26]
[chara_new name="girl_base" storage="toumei.gif"]
[chara_show left=1 top=381 layer=15 name="girl_base" time=0]
[wait time=10]
[chara_new name="girl_mayu" storage="toumei.gif"]
[chara_show left=1 top=381 layer=16 name="girl_mayu" time=0]
[wait time=10]
[chara_new name="girl_me" storage="toumei.gif"]
[chara_show left=1 top=381 layer=17 name="girl_me" time=0]
[wait time=10]
[chara_new name="girl_kuti" storage="toumei.gif"]
[chara_show left=1 top=381 layer=18 name="girl_kuti" time=0]
[wait time=10]
[chara_new name="girl_emo" storage="toumei.gif"]
[chara_show left=1 top=381 layer=19 name="girl_emo" time=0]
[wait time=10]
[chara_new name="girl_te" storage="toumei.gif"]
[chara_show left=1 top=381 layer=20 name="girl_te" time=0]
[wait time=10]
;メッセージ窓画像の仮表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[freeimage layer = 14]
[chara_new name="message_bg" storage="toumei.gif"]
[chara_show left=1 top=391 layer=14 name="message_bg"]
;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[eval exp="f.message_storage='message_bg/frame_red.png'"]
[chara_mod name="message_bg" storage=&f.message_storage time=1]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=240 y=407]
[chara_config ptext="chara_name_area"]
[resetfont]
;◆テストモード時のみボタンと変数数値表示
[if exp="tf.test_gamen == true"]
@jump target=*test_hyouji_event1
[else]
@jump target=*test_hyouji_event_owari1
[endif]

*test_hyouji_event1
[locate x=750 y=100]
[button name="back_test_menu" fix="true" graphic="button_back_test.png" storage="okeiko_hyouji_test_hyouji.ks" target="back_test" ]
[locate x=550 y=0]
;[button name="back_okeiko" fix="true" graphic="button_back_okeiko.png" storage="event.ks" target="event_owari"]
@layopt layer=message2 page=fore visible = false
[current layer="message2"]
;メッセージレイヤサイズをテスト表示用に設定変更
[position layer=message2 left=0 width=200 height=385 top=0 page=fore color=white opacity=120]
@layopt layer=message2 page=fore visible = true
[font color=glay size=13]
;◆好感度に数値以外が代入された場合、赤字表記して進行ストップ
[if exp="Number.isFinite(f.para_katuraginomiya_koukando) == false"]
[resetfont]
[font color=red size=13]
葛城宮好感度=[emb exp="f.para_katuraginomiya_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[else]
葛城宮好感度=[emb exp="f.para_katuraginomiya_koukando"][r]
[endif]
 
;◆好感度に数値以外が代入された場合、赤字表記して進行ストップ
[if exp="Number.isFinite(f.para_hujieda_koukando) == false"]
[resetfont]
[font color=red size=13]
藤枝好感度=[emb exp="f.para_hujieda_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[else]
藤枝好感度=[emb exp="f.para_hujieda_koukando"][r]
[endif]

[if exp="Number.isFinite(f.para_zaizen_koukando) == false"]
[resetfont]
[font color=red size=13]
財前好感度=[emb exp="f.para_zaizen_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[else]
財前好感度=[emb exp="f.para_zaizen_koukando"][r]
[endif]

[if exp="Number.isFinite(f.para_zaizen_koukando) == false"]
[resetfont]
[font color=red size=13]
四条好感度=[emb exp="f.para_sijyou_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[else]
四条好感度=[emb exp="f.para_sijyou_koukando"][r]
[endif]

[if exp="Number.isFinite(f.para_zaizen_koukando) == false"]
[resetfont]
[font color=red size=13]
黒田好感度=[emb exp="f.para_kuroda_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[else]
黒田好感度=[emb exp="f.para_kuroda_koukando"][r]
[endif]

淑女度=[emb exp="f.para_shujinkou_shukujodo"][r]
茶道熟練度=[emb exp="f.para_shujinkou_j_sadou"][r]
華道熟練度=[emb exp="f.para_shujinkou_j_kadou"][r]
礼法熟練度=[emb exp="f.para_shujinkou_j_reihou"][r]
語学熟練度=[emb exp="f.para_shujinkou_j_gogaku"][r]
お箏熟練度=[emb exp="f.para_shujinkou_j_koto"]
[resetfont]
[current layer="message0"]
*test_hyouji_event_owari1
[endmacro]

;==================================================
;◆[四条ボタン表示]sijyou9_3
[macro name=四条ボタン表示]
;セーブ等ボタン配置
[if exp="f.flag_replay == true || f.event_replay == 'sijyou' || f.event_replay == 'zaizen' || f.event_replay == 'kuroda' || f.event_replay == 'katuraginomiya' || f.event_replay == 'hujieda'"]
[iscript]
if(f.event_replay == 'sijyou'){f.clearlist_storage = 'sijyou/sijyou_event_clearlist.ks'; }
if(f.event_replay == 'zaizen'){f.clearlist_storage = 'zaizen/zaizen_event_clearlist.ks';}
if(f.event_replay == 'kuroda'){f.clearlist_storage = 'kuroda_event_clearlist.ks';}
if(f.event_replay == 'katuraginomiya'){f.clearlist_storage = 'katuraginomiya/katuraginomiya_event_clearlist.ks';}
if(f.event_replay == 'hujieda'){f.clearlist_storage = 'hujieda/hujieda_event_clearlist.ks';}
if(f.flag_replay == true){f.clearlist_storage = 'replay2.ks';}
if(typeof f.event_replay === "undefined" && f.flag_replay === "undefined"){f.clearlist_storage = 'kuroda_event_clearlist.ks';} //例外処理は黒田に仮設定しています
[endscript]
[locate x=830 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png"  storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[locate x=850 y=0]
[button name="back_clearlist" fix="true" graphic="back.png" storage=&f.clearlist_storage target="*test_end" ]
[wait time=10]
[else]
[locate x=560 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=630 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=710 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=790 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=860 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[endif]
[eval exp="sf.FButton='ON'"]
[endmacro]

;◆[イベントシーン構築]
[macro name="イベントシーン構築"]
;↓メッセージ枠名前残り消去
[whosay name=""]
[clearfix]
;主人公画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
[freeimage layer = 26]
[chara_new name="girl_base" storage="toumei.gif"]
[chara_show left=1 top=381 layer=15 name="girl_base" time=0]
[wait time=10]
[chara_new name="girl_mayu" storage="toumei.gif"]
[chara_show left=1 top=381 layer=16 name="girl_mayu" time=0]
[wait time=10]
[chara_new name="girl_me" storage="toumei.gif"]
[chara_show left=1 top=381 layer=17 name="girl_me" time=0]
[wait time=10]
[chara_new name="girl_kuti" storage="toumei.gif"]
[chara_show left=1 top=381 layer=18 name="girl_kuti" time=0]
[wait time=10]
[chara_new name="girl_emo" storage="toumei.gif"]
[chara_show left=1 top=381 layer=19 name="girl_emo" time=0]
[wait time=10]
[chara_new name="girl_te" storage="toumei.gif"]
[chara_show left=1 top=381 layer=20 name="girl_te" time=0]
[wait time=10]

;メッセージ窓画像の仮表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[freeimage layer = 14]
[chara_new name="message_bg" storage="toumei.gif"]
[chara_show left=1 top=391 layer=14 name="message_bg"]

;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[eval exp="f.message_storage='message_bg/frame_red.png'"]
[chara_mod name="message_bg" storage=&f.message_storage time=1]

;セーブ等ボタン配置
[locate x=560 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=630 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=710 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=790 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=860 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]

;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=240 y=407]
[chara_config ptext="chara_name_area"]
[resetfont]
;◆テストモード時のみボタンと変数数値表示
[if exp="tf.test_gamen == true"]
@jump target=*test_hyouji_event3
[else]
@jump target=*test_hyouji_event_owari3
[endif]

*test_hyouji_event3
[locate x=750 y=100]
[button name="back_test_menu" fix="true" graphic="button_back_test.png" storage="okeiko_hyouji_test_hyouji.ks" target="back_test" ]
[locate x=550 y=0]
;[button name="back_okeiko" fix="true" graphic="button_back_okeiko.png" storage="event.ks" target="event_owari"]
@layopt layer=message2 page=fore visible = false
[current layer="message2"]
;メッセージレイヤサイズをテスト表示用に設定変更
[position layer=message2 left=0 width=200 height=385 top=0 page=fore color=white opacity=120]
@layopt layer=message2 page=fore visible = true
[font color=glay size=13]
;◆好感度に数値以外が代入された場合、赤字表記して進行ストップ
[if exp="Number.isFinite(f.para_katuraginomiya_koukando) == false"]
[resetfont]
[font color=red size=13]
葛城宮好感度=[emb exp="f.para_katuraginomiya_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[else]
葛城宮好感度=[emb exp="f.para_katuraginomiya_koukando"][r]
[endif]
 
;◆好感度に数値以外が代入された場合、赤字表記して進行ストップ
[if exp="Number.isFinite(f.para_hujieda_koukando) == false"]
[resetfont]
[font color=red size=13]
藤枝好感度=[emb exp="f.para_hujieda_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[else]
藤枝好感度=[emb exp="f.para_hujieda_koukando"][r]
[endif]

[if exp="Number.isFinite(f.para_zaizen_koukando) == false"]
[resetfont]
[font color=red size=13]
財前好感度=[emb exp="f.para_zaizen_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[else]
財前好感度=[emb exp="f.para_zaizen_koukando"][r]
[endif]

[if exp="Number.isFinite(f.para_zaizen_koukando) == false"]
[resetfont]
[font color=red size=13]
四条好感度=[emb exp="f.para_sijyou_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[else]
四条好感度=[emb exp="f.para_sijyou_koukando"][r]
[endif]

[if exp="Number.isFinite(f.para_zaizen_koukando) == false"]
[resetfont]
[font color=red size=13]
黒田好感度=[emb exp="f.para_kuroda_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[s]
[else]
黒田好感度=[emb exp="f.para_kuroda_koukando"][r]
[endif]

淑女度=[emb exp="f.para_shujinkou_shukujodo"][r]
茶道熟練度=[emb exp="f.para_shujinkou_j_sadou"][r]
華道熟練度=[emb exp="f.para_shujinkou_j_kadou"][r]
礼法熟練度=[emb exp="f.para_shujinkou_j_reihou"][r]
語学熟練度=[emb exp="f.para_shujinkou_j_gogaku"][r]
お箏熟練度=[emb exp="f.para_shujinkou_j_koto"]
[resetfont]
[current layer="message0"]
*test_hyouji_event_owari3

[endmacro]

;◆[イベントシーン構築枠茶色]
[macro name="イベントシーン構築枠茶色"]
;↓メッセージ枠名前残り消去
[whosay name=""]
[clearfix]
;主人公画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[eval exp="f.kaogura='off'"]
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
[freeimage layer = 26]
[chara_new name="girl_base" storage="toumei.gif"]
[chara_show left=1 top=381 layer=15 name="girl_base" time=0]
[wait time=10]
[chara_new name="girl_mayu" storage="toumei.gif"]
[chara_show left=1 top=381 layer=16 name="girl_mayu" time=0]
[wait time=10]
[chara_new name="girl_me" storage="toumei.gif"]
[chara_show left=1 top=381 layer=17 name="girl_me" time=0]
[wait time=10]
[chara_new name="girl_kuti" storage="toumei.gif"]
[chara_show left=1 top=381 layer=18 name="girl_kuti" time=0]
[wait time=10]
[chara_new name="girl_emo" storage="toumei.gif"]
[chara_show left=1 top=381 layer=19 name="girl_emo" time=0]
[wait time=10]
[chara_new name="girl_te" storage="toumei.gif"]
[chara_show left=1 top=381 layer=20 name="girl_te" time=0]
[wait time=10]

;メッセージ窓画像の仮表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[freeimage layer = 14]
[chara_new name="message_bg" storage="toumei.gif"]
[chara_show left=1 top=391 layer=14 name="message_bg"]

;メッセージエリアの表示【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[eval exp="f.message_storage='message_bg/frame_brown.png'"]
[chara_mod name="message_bg" storage=&f.message_storage time=1]

;セーブ等ボタン配置
[locate x=560 y=357]
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[locate x=630 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=710 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=790 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=860 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png" storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]

;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=240 y=407]
[chara_config ptext="chara_name_area"]
[resetfont]
[endmacro]

;◆[イベントシーン終了]
[macro name="イベントシーン終了"]
[ct]
;攻略対象立ち絵消去
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
;主人公顔グラ消去
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;休憩中画像消去
[freeimage layer = 26]
;演出用レイヤ消去
[freeimage layer = 29]

;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
@layopt layer=message1 page=fore visible=false
@layopt layer=message2 page=fore visible=false

;会話ウィンドウ消去
[freeimage layer = 14]
[wait time=10]

;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[stopbgm]
[stopse]

;◆クリアリストからシナリオリプレイ時はクリアリストへ戻す処理
;お稽古パートへ戻る判定が先に置いてあるシナリオもあるため、実装時(「情報」からジャンプ時)は個々のシナリオの終了処理の配置を確認予定([イベントシーン終了２]等にもクリアリストへ戻す処理を書けば良いかも？実装時に試行予定)
[if exp="f.event_replay == 'sijyou'"]
	@jump storage="sijyou/sijyou_event_clearlist.ks" target=*start
[endif]
[if exp="f.event_replay == 'zaizen'"]
	@jump storage="zaizen/zaizen_event_clearlist.ks" target=*start
[endif]
[if exp="f.event_replay == 'kuroda'"]
	@jump storage="kuroda_event_clearlist.ks" target=*start
[endif]
[if exp="f.event_replay == 'katuraginomiya'"]
	@jump storage="katuraginomiya/katuraginomiya_event_clearlist.ks" target=*start
[endif]
[if exp="f.event_replay == 'hujieda'"]
	@jump storage="hujieda/hujieda_event_clearlist.ks" target=*start
[endif]

[endmacro]

;◆[イベントシーン終了・ＢＧＭ有]
[macro name="イベントシーン終了・ＢＧＭ有"]
[cm]
;攻略対象立ち絵消去
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
;主人公顔グラ消去
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;休憩中画像消去
[freeimage layer = 26]
;演出用レイヤ消去
[freeimage layer = 29]

;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
@layopt layer=message1 page=fore visible=false
@layopt layer=message2 page=fore visible=false

;会話ウィンドウ消去
[freeimage layer = 14]
[wait time=10]

;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[stopse]
[endmacro]

[macro name=イベントシーン終了２]
;書き直すのが面倒なので一括処理内容
;散策
;テストモード[if exp="tf.test_sijyou==true"]@jump storage="test_sijyou.ks"[edif]
[if exp="f.okeiko_gamen == true"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika
[endif]
[endmacro]

[macro name=イベントシーン終了４]
;書き直すのが面倒なので一括処理内容
;イベント
;テストモード[if exp="tf.test_sijyou==true"]@jump storage="test_sijyou.ks"[edif]
[if exp="f.okeiko_gamen==true"]
@jump storage="event.ks" target=*event_owari
[endif]
[endmacro]

;◆ex[話題入手 wadai_txt="『読書の話題』を手に入れました"]
;配列のmp変数への入力はうまくいかなかったので、以下(話題内容と値は変更のこと)を追記する必要あり
;[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('読書の話題',0,0,0,1,2,'a','','','','')"]
[macro name="話題入手"]
[iscript]
if (typeof f.wadai_list_hairetsu == "undefined"){f.wadai_list_hairetsu = [];}
f.wadai_hairetsu_number=f.wadai_list_hairetsu.length;
f.wadai_list_hairetsu[f.wadai_hairetsu_number]=[];
[endscript]
[layopt layer=26 visible=true]
[image layer=26 x=250 y=40 storage="button/frame_lesson_message.png"]
[wait time=10]
[eval exp="f.sansaku_machi_seika_txt1= mp.wadai_txt"]
[ptext text=&f.sansaku_machi_seika_txt1 layer=26 size=21 x=275 y=75 color=darkslateblue bold=bold]
[wait time=10]
;【SE】キラキラ
[playse storage=kira.ogg loop=false ]
[p]
[freeimage layer = 26]
[endmacro]

[return]
