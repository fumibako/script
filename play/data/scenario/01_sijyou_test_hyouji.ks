﻿;=============================================
;◆四条テスト画面用　テスト設定表示
;テストしやすいように自由に変更してください
;=============================================
*start
@layopt layer=message1 page=fore visible = false
[current layer="message1"]
;メッセージレイヤサイズをテスト表示用に設定変更
[position layer=message1 left=0 width=500 height=120 top=120 page=fore color=white opacity=150]
@layopt layer=message1 page=fore visible = true
[font color=olivedrab size=15]
四条テスト用：返信速度設定(0翌週、他設定通り)=[emb exp="tf.test_sijyou_fumi_hensin_speed"],
;◆好感度に数値以外が代入された場合、赤字表記して進行ストップ
[if exp="Number.isFinite(f.para_sijyou_koukando) == false"]
[resetfont]
[font color=red size=15]
好感度[emb exp="f.para_sijyou_koukando"][r]
好感度に数値以外が代入されています。
[resetfont]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="200" x=750 y=0 color=white]
[s]
[else]
好感度[emb exp="f.para_sijyou_koukando"][r]
[endif]
四条ルート(1○,0×)=[emb exp="f.sijyou_au"],お見合い(1後,0未)=[emb exp="f.sijyou_omiai"],イベント6(1後,0未)=[emb exp="f.sijyou_event6"][r]
祖母を(true見た,false見ていない)=[emb exp="f.sijyou_sobo"]華衣について=[emb exp="f.event_sijyou_kai_jijyou"],散策4を見た=[emb exp="f.event_sijyou_4"][r]
[resetfont]
@jump storage="okeiko_hyouji.ks" target=*sijyou_test_hyouji_owari


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

[ct]
[clearfix]
[clearstack]
[skipstop]
[stopse]
@layopt layer=message0 page=fore visible = false
@layopt layer=message1 page=fore visible = false

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
