;=============================================
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

四条テスト用：返信速度設定(0翌週、他設定通り)=[emb exp="tf.test_sijyou_fumi_hensin_speed"],好感度[emb exp="f.para_sijyou_koukando"][r]
四条ルート(1○,0×)=[emb exp="f.sijyou_au"],お見合い(1後,0未)=[emb exp="f.sijyou_omiai"],イベント6(1後,0未)=[emb exp="f.sijyou_event6"][r]
祖母を(true見た,false見ていない)=[emb exp="f.sijyou_sobo"][r]

[resetfont]
@jump storage="okeiko_hyouji.ks" target=*sijyou_test_hyouji_owari
