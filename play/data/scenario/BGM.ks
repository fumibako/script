*start
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false

[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]

;=============================================
;動作確認用：SE
;=============================================

[cm]

;背景変更:主人公邸_庭
[背景_庭]

;【BGM】フェードアウト
[fadeoutbgm time=2000]

;現在再生されている音楽からtest2.oggへ5000ミリ秒（５秒）かけてクロスフェードさせる[l][r]
;[xchgbgm storage=test2.ogg time=5000]

;【BGM】雪解け（タイトル画面等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="title_yukidoke.ogg" loop=true click=true]

;【BGM】古都に咲く花（プロローグ等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true click=true]

;【BGM】秋の夜長（オープニング等まったりシーンに）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="mattari_akinoyonaga.ogg" loop=true click=true]

;【BGM】磯野登場
[playbgm storage="isono_miyabi.ogg" loop=false]

;【BGM】夕涼み（お稽古）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="okeiko_yuusuzumi.ogg" loop=true click=true]

