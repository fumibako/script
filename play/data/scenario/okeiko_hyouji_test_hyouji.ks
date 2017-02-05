;=============================================
;お稽古パート:画面表示処理:テスト値表示部分
;=============================================
*start

@layopt layer=message1 page=fore visible = false
[current layer="message1"]
;メッセージレイヤサイズをテスト表示用に設定変更
[position layer=message1 left=0 width=500 height=140 top=120 page=fore color=white opacity=150]
@layopt layer=message1 page=fore visible = true
[font color=glay size=15]
葛城宮好感度=[emb exp="f.para_katuraginomiya_koukando"] 葛城宮ルート(1○,0×)=[emb exp="f.katuraginomiya_au"] 葛城宮のみ文通(1○,0×)=[emb exp="f.katuraginomiya_only"][r]
葛城宮手紙可(1○,0×)=[emb exp="f.katuraginomiya_fumi_start"][r]
藤枝好感度=[emb exp="f.para_hujieda_koukando"]　藤枝ルート(1○,0×)=[emb exp="f.hujieda_au"]　箏回数=[emb exp="f.para_shujinkou_koto_kaisuu"][r]
財前好感度=[emb exp="f.para_zaizen_koukando"] 財前ルート(1○,0×)=[emb exp="f.zaizen_au"]
;↓他ルートテスト用に準備中です
;攻略対象名テスト用：返信速度設定(0翌週、他設定通り)=[emb exp="tf.test_oaite_name_fumi_hensin_speed"],好感度[emb exp="f.para_oaite_name_koukando"][r]

;攻略対象名ルート(1○,0×)=[emb exp="f.oaite_name_au"],お見合い(1後,0未)=[emb exp="f.oaite_name_omiai"][r]

[resetfont]

@jump storage="okeiko_hyouji.ks" target=*test_hyouji_owari
