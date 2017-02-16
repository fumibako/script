﻿﻿﻿
*start

;==============================
; その他マクロ設定
;==============================
;◆【[暗転２ clegit=true]】
[macro name=暗転２]
#
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
[image layer=29 x=1 y=1 storage=%storage|bg/anten.jpg time=%time|1300 visible=true]
[wait time=10]
[if exp=mp.clegit==true]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[endif]
[endmacro]

[macro name=暗転２終了]
[freeimage layer = 29 time=%time|1300]
;機能ボタン表示
[layopt layer=fix visible=true]
[eval exp="sf.FButton='ON'"]
[endmacro]

;◆[表示開始]
[macro name="表示開始"]
[freeimage layer=%layer|13 time=%time|50]
[endmacro]

;◆[プリロード画面消去]
[macro name="プリロード画面消去"]
[iscript]
$('.loding_pic').remove();
$('.loding_pic1').remove();
[endscript]
[layopt layer=fix visible=true]
[endmacro]

;◆[暗転]
[macro name="暗転"]
#
[chara_mod name="bg" storage="toumei.gif"]
[endmacro]

;◆[華衣]
[macro name=華衣]
[ruby text="か"]華[ruby text="い"]衣
[endmacro]



;◆[表示準備 storage="bg/bg_machi.jpg"]　デフォルトは町画像。主人公部屋には攻略対象こないので
[macro name=表示準備]
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=1 top=1 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[endmacro]

;◆[四条退場準備 storage="bg/bg_machi.jpg"]　デフォルトは町画像。
[macro name=四条退場準備]
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=1 top=1 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[四条退場]
[freeimage layer=13 time=50]
[wait time=50]
[endmacro]

;◆[藤枝退場準備 storage="bg/bg_machi.jpg"]　デフォルトは町画像。
[macro name=藤枝退場準備]
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=1 top=1 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[藤枝退場]
[freeimage layer=13 time=50]
[wait time=50]
[endmacro]

;◆[葛城宮退場準備 storage="bg/bg_machi.jpg"]　デフォルトは町画像。
[macro name=葛城宮退場準備]
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=1 top=1 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[葛城宮退場]
[freeimage layer=13 time=50]
[wait time=50]
[endmacro]

;◆[財前退場準備 storage="bg/bg_machi.jpg"]　デフォルトは町画像。
[macro name=財前退場準備]
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=1 top=1 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[財前退場]
[freeimage layer=13 time=50]
[wait time=50]
[endmacro]

[macro name="淑女称号表示"]
[emb exp="f.shougou"]
[endmacro]

;◆[イベントシーン構築ボタン無し版枠茶色]
[macro name="イベントシーン構築ボタン無し版枠茶色"]
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
[eval exp="f.message_storage='message_bg/frame_brown.png'"]
[chara_mod name="message_bg" storage=&f.message_storage time=1]
;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=240 y=407]
[chara_config ptext="chara_name_area"]
[resetfont]
[endmacro]

;==================================================
;◆[イベントシーン構築ボタン無し版]
[macro name="イベントシーン構築ボタン無し版"]
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
[endmacro]

;==================================================
;◆[メッセージウィンドウ上ボタン表示]
[macro name=メッセージウィンドウ上ボタン表示]
;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png"  storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
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
[endmacro]

;==================================================
;◆[四条ボタン表示]
[macro name=四条ボタン表示]
;セーブ等ボタン配置
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png"  storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
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
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png"  storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]

;メッセージレイヤを会話窓用に設定変更
[position left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 page=fore visible=true
[ptext name="chara_name_area" layer="message0" face="ＭＳ Ｐ明朝,MS PMincho,ヒラギノ明朝 Pro,Hiragino Mincho Pro,明朝" size=26 x=240 y=407]
[chara_config ptext="chara_name_area"]
[resetfont]
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
[locate x=530 y=357]
[button name="message_save" graphic="button_message_save.png" role=save ]
[locate x=630 y=357]
[button name="message_load" graphic="button_message_load.png" role=load ]
[locate x=730 y=357]
[button name="message_backlog" graphic="button_message_log.png" role=backlog ]
[locate x=830 y=357]
[button name="message_skip" graphic="button_message_skip.png" role=skip ]
[locate x=910 y=390]
[button name="message_close" fix="true" graphic="x_50x50.png"  storage="macro_etc.ks" target="*window_close" ]
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
;演出用レイヤ消去
[freeimage layer = 29]

;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false

;会話ウィンドウ消去
[freeimage layer = 14]
[wait time=10]

;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
[stopbgm]
[stopse]
[endmacro]

[macro name=イベントシーン終了２]
;書き直すのが面倒なので一括処理内容
;散策
;テストモード[if exp="tf.test_sijyou==true"]@jump storage="test_sijyou.ks"[edif]
[if exp="tf.okeiko_gamen==true"]
@jump storage="sansaku.ks" target=*sansaku_machi_seika
[endif]
[endmacro]

[macro name=イベントシーン終了４]
;書き直すのが面倒なので一括処理内容
;イベント
;テストモード[if exp="tf.test_sijyou==true"]@jump storage="test_sijyou.ks"[edif]
[if exp="tf.okeiko_gamen==true"]
@jump storage="event.ks" target=*event_owari
[endif]
[endmacro]

;◆ex[話題入手 wadai_txt="『読書の話題』を手に入れました"]
;配列のmp変数への入力はうまくいかなかったので、以下(話題内容と値は変更のこと)を追記する必要あり
;[eval exp="f.wadai_list_hairetsu[f.wadai_hairetsu_number].push('読書の話題',0,0,0,1,2,'a','','','','')"]
[macro name="話題入手"]
[iscript]
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

;◆[チラシ]
[macro name="チラシ"]
;名前欄消去
[whosay name=""]
[cm]
;主人公顔グラ消去
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;攻略対象立ち絵消去
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;背景変更:チラシ
[chara_mod name="bg" storage="bg/bg_tirasi.jpg"]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;テキスト全画面
[font size=27]
;#

[endmacro]

;◆[四条ルート終了 end=good][四条ルート終了 end=normal][四条ルート終了 end=bad]
;↓マクロ作成途中で移動してしまったようなので、動作部分を変更・追記してみました。ローカルにてテスト画面からの動作でエラーが出ないことを部分的に確認済ですが、お稽古パート経由の動作は組み込みながらでないと確認ができないため、未確認です
;うまく動作しないようでしたらこちらで修正します。その際はお知らせください(スクリプト担
[macro name=四条ルート終了]
;書き直すのが面倒なので一括処理内容
;ending
[if exp="mp.end='good'"]
;goodエンディング時
	[eval exp="sf.ED_sijyou_good=1"]
;回想記録終了
	[endreplay] 
[elsif exp="mp.end='normal'"]
	[eval exp="sf.ED_sijyou_normal=1"]
	[endreplay] 
[elsif exp="mp.end='bad'"]
	[eval exp="sf.ED_sijyou_bad=1"]
	[endreplay] 
[endif]
[if exp="tf.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_ED
[endif]
[endmacro]

;◆[財前ルート終了 end="good"][財前ルート終了 end="normal"][財前ルート終了 end="bad1"][財前ルート終了 end="bad2"]
[macro name=財前ルート終了]
[if exp="mp.end='good'"]
	[eval exp="sf.ED_zaizen_good=1"]
	[endreplay] 
[elsif exp="mp.end='nomal'"]
	[eval exp="sf.ED_zaizen_normal=1"]
	[endreplay] 
[elsif exp="mp.end='bad1'"]
	[eval exp="sf.ED_zaizen_bad1=1"]
	[endreplay] 
[elsif exp="mp.end='bad2'"]
	[eval exp="sf.ED_zaizen_bad2=1"]
	[endreplay] 
[endif]
[if exp="tf.okeiko_gamen==true"]
@jump storage="event.ks" target=*event_ED
[endif]
[endmacro]

;◆[葛城宮ルート終了 end="good"][葛城宮ルート終了 end="normal"][葛城宮ルート終了 end="bad"]
[macro name=葛城宮ルート終了]
[if exp="mp.end='good'"]
	[eval exp="sf.ED_katuraginomiya_good=1"]
	[endreplay] 
[elsif exp="mp.end='nomal'"]
	[eval exp="sf.ED_katuraginomiya_normal=1"]
	[endreplay] 
[elsif exp="mp.end='bad'"]
	[eval exp="sf.ED_katuraginomiya_bad=1"]
	[endreplay] 
[endif]
[if exp="tf.okeiko_gamen==true"]
@jump storage="event.ks" target=*event_ED
[endif]
[endmacro]

;◆[藤枝ルート終了 end="good"][藤枝ルート終了 end="normal"][藤枝ルート終了 end="bad"]
[macro name=藤枝ルート終了]
[if exp="mp.end='good'"]
	[eval exp="sf.ED_hujieda_good=1"]
	[endreplay] 
[elsif exp="mp.end='nomal'"]
	[eval exp="sf.ED_hujieda_normal=1"]
	[endreplay] 
[elsif exp="mp.end='bad'"]
	[eval exp="sf.ED_hujieda_bad=1"]
	[endreplay] 
[endif]
[if exp="tf.okeiko_gamen==true"]
@jump storage="event.ks" target=*event_ED
[endif]
[endmacro]

;◆[新聞]
[macro name="新聞"]
;名前欄消去
[whosay name=""]
[cm]
;主人公顔グラ消去
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;攻略対象立ち絵消去
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;背景変更:新聞
[chara_mod name="bg" storage="bg/test_bg_sinbun.jpg"]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=150 width=720 height=600 top=30 page=fore margint="0"]

;テキスト全画面
[font color=white size=26]
;#

[endmacro]

;◆[テキスト全画面白文字無背景]
[macro name="テキスト全画面白文字無背景"]
;名前欄消去
[whosay name=""]
[cm]
;主人公顔グラ消去
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;攻略対象立ち絵消去
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;テキスト全画面
[font color=white size=27]
;#

[endmacro]

;◆[テキスト全画面白文字]
[macro name="テキスト全画面白文字"]
;名前欄消去
[whosay name=""]
[cm]
;主人公顔グラ消去
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;攻略対象立ち絵消去
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風
[chara_mod name="bg" storage="bg/bg_prologue.jpg"]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;テキスト全画面
[font color=white size=27]
;#

[endmacro]

;◆[テキスト全画面白文字暗]
[macro name="テキスト全画面白文字暗"]
;名前欄消去
[whosay name=""]
[cm]
;主人公顔グラ消去
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
;攻略対象立ち絵消去
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
;会話ウィンドウ消去
[freeimage layer = 14]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;背景変更:黒茶・和紙風(暗)
[chara_mod name="bg" storage="bg/bg_prologue_dark.jpg"]
[wait time=10]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]

;テキスト全画面
[font color=white size=27]
;#

[endmacro]

;◆文頭スペース
[macro name="sp"]
[eval exp="sf.space='　'"]
[emb exp="sf.space"]
[endmacro]


;◆主人公名表示◆

;文中の表示
[macro name="名字"]
[emb exp="sf.girl_myouji"]
[endmacro]

;文中の表示
[macro name="名前"]
[emb exp="sf.girl_namae"]
[endmacro]

;名前欄に表示
[macro name="名前欄"]
[iscript]
mp.color="red";
$(".chara_name_area").text(sf.girl_namae);
[endscript]
[endmacro]

;名前欄に表示
;[macro name="名字欄"]
;[iscript]
;$(".chara_name_area").text(sf.girl_myouji);
;[endscript]
;[endmacro]

;◆その他人物名表示◆

[macro name="文矢"]
[iscript]
$(".chara_name_area").text("<span style='color:#656B2F;'>文矢</span>");
[endscript]
[endmacro]
[return]

◆メッセージ窓閉じとクレジット表示
*window_close
[cm]
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]

;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false

;会話ウィンドウ消去
[freeimage layer = 14]
[wait time=10]

;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]

[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[l]

;会話ウィンドウ表示
[chara_new name="message_bg" storage="toumei.gif"]
[chara_show left=1 top=391 layer=14 name="message_bg"]
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
[button name="message_close" fix="true" graphic="x_50x50.png"  storage="macro_etc.ks" target="*window_close" ]
[wait time=10]
[eval exp="sf.FButton='ON'"]

;主人公画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
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

;主人公画像を表示する場面なら表示
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
