﻿;=============================================
;お稽古パート:画面表示処理:テスト値表示部分
;=============================================
*start
@layopt layer=message1 page=fore visible = false
[current layer="message1"]
;メッセージレイヤサイズをテスト表示用に設定変更
[position layer=message1 left=0 width=600 height=140 top=120 page=fore color=white opacity=150]
@layopt layer=message1 page=fore visible = true
[font color=glay size=15]
;◆好感度に数値以外が代入された場合、赤字表記して進行ストップ
[if exp="Number.isFinite(f.para_katuraginomiya_koukando) == false"]
[resetfont]
[font color=red size=15]
葛城宮好感度=[emb exp="f.para_katuraginomiya_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="200" x=750 y=0 color=white]
[s]
[else]
葛城宮好感度=[emb exp="f.para_katuraginomiya_koukando"],
[endif]

葛城宮ルート(1○,0×)=[emb exp="f.katuraginomiya_au"],葛城宮のみ文通(1○,0×)=[emb exp="f.katuraginomiya_only"][r]
;手紙[emb exp="f.katuraginomiya_fumi_start"]EV[emb exp="f.event_katuraginomiya[1]"]・[emb exp="f.event_katuraginomiya[2]"]・[emb exp="f.event_katuraginomiya[3]"]

;◆好感度に数値以外が代入された場合、赤字表記して進行ストップ
[if exp="Number.isFinite(f.para_hujieda_koukando) == false"]
[resetfont]
[font color=red size=15]
藤枝好感度=[emb exp="f.para_hujieda_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="200" x=750 y=0 color=white]
[s]
[else]
藤枝好感度=[emb exp="f.para_hujieda_koukando"],
[endif]

藤枝ルート(1○,0×)=[emb exp="f.hujieda_au"],箏回数=[emb exp="f.para_shujinkou_koto_kaisuu"][r]

[if exp="Number.isFinite(f.para_zaizen_koukando) == false"]
[resetfont]
[font color=red size=15]
財前好感度=[emb exp="f.para_zaizen_koukando"]
好感度に数値以外が代入されています。
[resetfont]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="200" x=750 y=0 color=white]
[s]
[else]
財前好感度=[emb exp="f.para_zaizen_koukando"],
[endif]
[font color=0x664f44]
財前ルート(1○,0×)=[emb exp="f.zaizen_au"][r]
イベント(1表示,0非表示)=[emb exp="tf.event_hyouji"]

;↓他ルートテスト用に準備中です
;攻略対象名テスト用：返信速度設定(0翌週、他設定通り)=[emb exp="tf.test_oaite_name_fumi_hensin_speed"],好感度[emb exp="f.para_oaite_name_koukando"][r]

;攻略対象名ルート(1○,0×)=[emb exp="f.oaite_name_au"],お見合い(1後,0未)=[emb exp="f.oaite_name_omiai"][r]

;藤枝手紙[emb exp="f.fumi_all_title_new"][emb exp="f.fumi_hujieda_title_new"]

;お稽古パラ
;ok_rdm1_3・[emb exp="f.okeiko_para_pre_random_1_3"]＿pr_rdm_jkd・[emb exp="f.okeiko_para_pre_random_jukurendo"]
[iscript]
//Aボタンにしてありますがお好みで。
$(window).keydown(function(e){
if(e.keyCode == 65) {
TG.kag.ftag.startTag("showlog");
} });
[endscript]

[if exp="tf.mode_hensu==0"]
;フラグで表示します		
,　変数編集モードＯＮ:		
[if exp="tf.mode_hensu_yes==1"]		
利用済		
[glink storage="okeiko_hyouji_test_henkou.ks" text="数値調整する" size=19 width="150" x=750 y=470 color=pink]		
[else]		
[glink storage="okeiko_hyouji_test_henkou.ks" text="数値調整する" size=19 width="150" x=750 y=470 color=white]		
[endif]		
[endif]
[resetfont]
;操作メッセージレイヤをメインメッセージに戻す
@layopt layer=message0 page=fore visible = true
[current layer="message0"]

@jump storage="okeiko_hyouji.ks" target=*test_hyouji_owari

;◆テストメニューへ戻る
*back_test
;↓各変数を初期設定にリセット
[call target = *start storage = "01_sijyou_hensuu.ks"]
[call target = *start storage = "hensuu.ks"]
[eval exp = "tf.okeiko_gamen = false"]
[eval exp = "tf.test_sijyou_fumi_hensin_speed = 1"]
[eval exp = "tf.test_zaizen_fumi_hensin_speed = 1"]
[eval exp = "tf.test_katuraginomiya_fumi_hensin_speed = 1"]
[eval exp = "tf.test_hujieda_fumi_hensin_speed = 1"]
[eval exp = "tf.event_hyouji = 1"]
[eval exp = "tf.advice_event_hyouji = 1"]
[eval exp = "tf.mode_hensu_yes = 0"]

[ct]
[clearfix]
[clearstack]
;[skipstop]
[stopse]
@layopt layer=message0 page=fore visible = false
@layopt layer=message1 page=fore visible = false
@layopt layer=message2 page=fore visible = false

;◆全レイヤクリア
[freeimage layer = 0]
[freeimage layer = 1]
[freeimage layer = 2]
[freeimage layer = 3]
[freeimage layer = 4]
[freeimage layer = 5]
[freeimage layer = 6]
[freeimage layer = 7]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[freeimage layer = 13]
[freeimage layer = 14]
[freeimage layer = 15]
[freeimage layer = 16]
[freeimage layer = 17]
[freeimage layer = 18]
[freeimage layer = 19]
[freeimage layer = 20]
[freeimage layer = 21]
[freeimage layer = 22]
[freeimage layer = 23]
[freeimage layer = 24]
[freeimage layer = 25]
[freeimage layer = 26]
[freeimage layer = 27]
[freeimage layer = 28]
[freeimage layer = 29]
[chara_new name="bg" storage="bg/title.jpg"]
[chara_show left=1 top=1 layer=1 name="bg" time=0]
@jump storage="test.ks"
[s]

