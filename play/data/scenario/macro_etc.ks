﻿*start
;==============================
; その他マクロ設定[一斉表示準備][一斉表示][お稽古ボタン表示][変数ログ表示][暗転～][暗転２終了][表示開始][プリロード画面消去][華衣][表示準備][各キャラ退場準備][イベント中テスト数値表示][イベントシーン構築～]
;==============================
;◆[一斉表示準備]
[macro name="一斉表示準備"]
;◆並んでいるところをみせない : script by ＠名無しさん１
[iscript]
$(".layer_free").css("opacity",0); //ボタンとlistをすべて非表示に
$(".list").css("opacity",0); 
$(".28_fore").css("opacity",0); //layer28を非表示に
$(".layer_free").css("pointer-events","none");//glinkをクリック禁止に
$(".list").hide();
[endscript]
[endmacro]

;◆[一斉表示]
[macro name="一斉表示"]
;◆並んでいるところをみせない→表示が終わったら見せる : script by ＠名無しさん１
[iscript]
$(".layer_free").css("opacity",1); //すべての表示を復帰
$(".list").css("opacity",1); //表示を復帰
$(".28_fore").css("opacity",1); //layer28を表示
$(".layer_free").css("pointer-events","auto");//glinkをクリック可能に
$(".list").show();
[endscript]
[endmacro]

;◆[お稽古ボタン表示]
[macro name="お稽古ボタン表示"]
;◆並んでいるところをみせない→表示が終わったら見せる : script by ＠名無しさん１
[iscript]
$(".para").css("opacity",1); //パラメータ表示を復帰
[endscript]
;【機能ボタン表示】
[locate x=250 y=17]
[button name="message_save,button_okeiko" graphic="button_message_save.png" role=save]
[wait time=10]
[locate x=350 y=17]
[button name="message_load,button_okeiko" graphic="button_message_load.png" role=load]
[wait time=10]
[locate x=450 y=17]
;[button name="button_info,button_okeiko" fix=true graphic="button_info.png" storage=info.ks target=*info_oaite ]
[wait time=10]
[button name="button_info,button_okeiko" fix=true graphic="button_info.png" storage=info_oaite_fumi.ks target=*info_oaite ]
[locate x=550 y=17]
[button name="button_sansaku,button_okeiko" fix=true graphic="button_sansaku.png" storage=sansaku.ks target=*sansaku ]
[wait time=10]
[locate x=650 y=17]
[button name="button_fumibako,button_okeiko" fix=true graphic="button_fumi.png" storage=info_oaite_fumi.ks target=*fumibako ]
[wait time=10]
;【お稽古ボタン表示】
[locate x=330 y=549]
[button name="okeiko_sadou,button_okeiko" fix=true graphic="button_okeiko_sadou.png" storage="okeiko_okeiko_shori.ks" target=*okeiko_sadou ]
[wait time=10]
[locate x=430 y=549]
[button name="okeiko_kadou,button_okeiko" fix=true graphic="button_okeiko_kadou.png" storage="okeiko_okeiko_shori.ks" target=*okeiko_kadou ]
[wait time=10]
[locate x=530 y=549]
[button name="okeiko_reihou,button_okeiko" fix=true graphic="button_okeiko_reihou.png" storage="okeiko_okeiko_shori.ks" target=*okeiko_reihou ]
[wait time=10]
[locate x=630 y=549]
[button name="okeiko_gogaku,button_okeiko" fix=true graphic="button_okeiko_gogaku.png" storage="okeiko_okeiko_shori.ks" target=*okeiko_gogaku ]
[wait time=10]
[locate x=730 y=549]
[button name="okeiko_koto,button_okeiko" fix=true graphic="button_okeiko_koto.png" storage="okeiko_okeiko_shori.ks" target=*okeiko_koto ]
[wait time=10]
[locate x=852 y=533]
[button name="okeiko_qk,button_okeiko" fix=true graphic="button_okeiko_qk.png" storage="okeiko.ks" target=*okeiko_qk ]
[wait time=10]
[endmacro]

;◆[変数ログ表示]
[macro name="変数ログ表示"]
[iscript]
console.info("f.hantei_event_storage=", this.kag.stat.f.hantei_event_storage);
console.info("f.katuraginomiya_fumi_inou=", this.kag.stat.f.katuraginomiya_fumi_inou);
[endscript]
[endmacro]

[macro name="暗転１"]
[bg storage="../fgimage/bg/anten.jpg" time=100 method=%method | &f.bg_method wait=true]
[eval exp="f.haikei_credit=''"]
[endmacro]
;======
;◆【[暗転２ clegit=true]】
[macro name=暗転２]
;名前欄消去
[whosay name=""]
[layopt layer=fix visible=false]
[eval exp="sf.FButton='OFF'"]
[image layer=29 x=0 y=0 storage=%storage|bg/anten.jpg time=%time|1300 visible=true]
[wait time=%time|1300]
[if exp=mp.clegit==true]
[mtext text=&f.haikei_credit layer=29 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[endif]
[endmacro]

[macro name=暗転２終了]
[freeimage layer = 29 time=%time|1300]
;↓[暗転２終了]後のautosaveで暗転のまま再現されるケースが多いこと、そしてマウススクロール速読時[暗転２終了]後に透明度が半端なまま進行する不具合が複数回発生したため、それらの防止用にwaitを入れます◆jsYiJcqRkk
[wait time=%time|1300]
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
;名前欄消去
[whosay name=""]
	[bg storage="../fgimage/bg/toumei.gif" time=%time|600 wait=true]
[endmacro]

;◆[華衣]
[macro name=華衣]
[ruby text="か"]華[ruby text="い"]衣
[endmacro]

;◆[表示準備 storage="bg/bg_machi.jpg"]　デフォルトは町画像。主人公部屋には攻略対象こないので
[macro name=表示準備]
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=0 top=0 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=%time|50]
[endmacro]

;◆[四条退場準備 storage="bg/bg_machi.jpg"]　デフォルトは町画像。
[macro name=四条退場準備]
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=0 top=0 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[四条退場]
[freeimage layer=13 time=50]
[wait time=50]
[endmacro]

;◆[藤枝退場準備 storage="bg/bg_machi.jpg"]　デフォルトは町画像。
[macro name=藤枝退場準備]
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=0 top=0 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[藤枝退場]
[freeimage layer=13 time=50]
[wait time=50]
[endmacro]

;◆[葛城宮退場準備 storage="bg/bg_machi.jpg"]　デフォルトは町画像。
[macro name=葛城宮退場準備]
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=0 top=0 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[葛城宮退場]
[freeimage layer=13 time=50]
[wait time=50]
[endmacro]

;◆[財前退場準備 storage="bg/bg_machi.jpg"]　デフォルトは町画像。
[macro name=財前退場準備]
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=0 top=0 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[財前退場]
[freeimage layer=13 time=50]
[wait time=50]
[endmacro]

[macro name="淑女称号表示"]
[emb exp="f.shougou"]
[endmacro]

;◆[イベント中テスト数値表示]
[macro name="イベント中テスト数値表示"]
;◆テストモード時のみボタンと変数数値表示
[if exp="tf.test_gamen == true"]
@jump target=*test_hyouji_event_owari4
[else]
@jump target=*test_hyouji_event_owari4
[endif]

*test_hyouji_event4
[locate x=750 y=0]
[button name="back_test_menu" fix="true" graphic="button_back_test.png" storage="okeiko_hyouji_test_hyouji.ks" target="back_test" ]
[locate x=550 y=0]
;[button name="back_okeiko" fix="true" graphic="button_back_okeiko.png" storage="event.ks" target="event_owari"]
@layopt layer=message2 page=fore visible = false
[current layer="message2"]
;メッセージレイヤサイズをテスト表示用に設定変更
[position layer=message2 left=0 width=200 height=385 top=0 page=fore color=white opacity=120]
;@layopt layer=message2 page=fore visible = true
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
*test_hyouji_event_owari4
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
;◆テストモード時のみボタンと変数数値表示
[if exp="tf.test_gamen == true"]
@jump target=*test_hyouji_event2
[else]
@jump target=*test_hyouji_event_owari2
[endif]

*test_hyouji_event2
[locate x=750 y=0]
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
*test_hyouji_event_owari2

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
;◆テストモード時のみボタンと変数数値表示
[if exp="tf.test_gamen == true"]
;@jump target=*test_hyouji_event
@jump target=*test_hyouji_event_owari
[else]
@jump target=*test_hyouji_event_owari
[endif]

*test_hyouji_event
[locate x=750 y=0]
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
*test_hyouji_event_owari
[endmacro]

;==================================================
[return]
