;sijyou_9_3b.ks
*start
;///////////////////////////////
[stopbgm]
;暗転プリロードサブルーチン
[call target=*9_3 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[layopt layer=13 visible=true]
[四条イベントシーン構築]
[主人公ポーズ通常]
[wait time=10]
[主人公通常]
;[背景_四条家庭バラ茂]
[プリロード画面消去]
;