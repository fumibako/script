﻿[setreplay name="test"]
*test
;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[preload storage="data/fgimage/girl/S/base.png"]
[preload storage="data/fgimage/girl/S/base_yubi.png"]
[preload storage="data/fgimage/girl/S/base_katate.png"]
[preload storage="data/fgimage/girl/S/base_ryoute.png"]
[preload storage="data/fgimage/girl/S/mayu_yowa.png"]
[preload storage="data/fgimage/girl/S/me_fusi1.png"]
[preload storage="data/fgimage/girl/S/kuti_futuu.png"]

[call target=*start storage="hensuu.ks"]
[eval exp="tf.test_gamen=true"]
[eval exp="tf.flag_omake = false"]
;=============================================
;test
;=============================================

[cm]
;背景変更:和紙風 桜色
;テストシナリオ用背景仮表示：シナリオ中では背景をchara_new chara_showされている前提でchara_modを使用しているものが多いため、エラー防止のためここで背景仮表示を行い[bg]タグから[chara_mod]タグに切り替えます
@layopt layer=1 visible=true
[wait time=10]
[chara_new name="bg" storage="bg/plane_sakura.jpg"]
[wait time=10]
[chara_show left=1 top=0 layer=1 name="bg" time=0]
[wait time=10]
[bg storage="toumei.gif" time=0]
[wait time=10]

[glink target="test_okeiko_sijyou" text="お稽古パート(四条)" graphic="select_waku_x500.png" size=20 width="300" x=100 y=30 color=white]

[glink target="test_okeiko" text="お稽古パート(他)" graphic="select_waku_x500.png" size=20 width="300" x=450 y=30 color=white]

;[glink target="test1" text="四条テスト" graphic="select_waku_x500.png" size=20 width="500" x=100 y=100 color=white]

;[glink target="test2" text="葛城宮テスト" graphic="select_waku_x500.png" size=20 width="500" x=100 y=170 color=white]

;[glink target="test3" text="藤枝テスト" graphic="select_waku_x500.png" size=20 width="500" x=100 y=240 color=white]

;[glink target="test4" text="財前テスト" graphic="select_waku_x500.png" size=20 width="500" x=100 y=310 color=white]
;↑Web版用　↓github用=============================================

[glink target="test1" text="四条テスト" graphic="select_waku_x500.png" size=20 width="300" x=100 y=100 color=white]
[glink target="test_sijyou_hyoujou" text="四条表情テスト" graphic="select_waku_x500.png" size=20 width="200" x=450 y=100 color=blue]

[glink target="test2" text="葛城宮テスト" graphic="select_waku_x500.png" size=20 width="300" x=100 y=170 color=white]
[glink target="test_katuraginomiya_hyoujou" text="葛城宮表情テスト" graphic="select_waku_x500.png" size=20 width="200" x=450 y=170 color=blue]

[glink target="test3" text="藤枝テスト" graphic="select_waku_x500.png" size=20 width="300" x=100 y=240 color=white]
[glink target="test_hujieda_hyoujou" text="藤枝表情テスト" graphic="select_waku_x500.png" size=20 width="200" x=450 y=240 color=blue]

[glink target="test4" text="財前テスト" graphic="select_waku_x500.png" size=20 width="300" x=100 y=310 color=white]
[glink target="test_zaizen_hyoujou" text="財前表情テスト" graphic="select_waku_x500.png" size=20 width="200" x=450 y=310 color=blue]


[glink target="test5" text="表情テスト：主人公" graphic="select_waku_x500.png" size=20 width="300" x=100 y=380 color=white]

[glink target="test_kyoutuu" text="共通イベントテスト" graphic="select_waku_x500.png" size=20 width="200" x=450 y=380 color=blue]

[glink target="sansaku1" text="テスト：◆B4nFWraU42" graphic="select_waku_x500.png" size=20 width="240" x=100 y=450 color=white]

[glink target="sansaku2" text="テスト：◆I9IhvvVdPo" graphic="select_waku_x500.png" size=20 width="240" x=360 y=450 color=white]

[glink target="test6" text="テスト：◆jsYiJcqRkk" graphic="select_waku_x500.png" size=20 width="240" x=620 y=450 color=white]

;[glink target="haikei" text="背景テスト" graphic="select_waku_x500.png" size=20 width="500" x=100 y=400 color=white]

[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="760" x=100 y=520 color=white]
[s]

*test1
@jump storage="test_sijyou.ks"
[s]

*test2
@jump storage="test_katuragi.ks"
[s]

*test3
@jump storage="test_hujieda.ks"
[s]

*test4
@jump storage="test_zaizen.ks"
[s]

*test5
@jump storage="test_girl.ks"
[s]

*test_sijyou_hyoujou
[cm]
[freeimage layer = 26]
@jump storage="test_sijyou_hyoujou.ks"
[s]

*test_hujieda_hyoujou
[cm]
[freeimage layer = 26]
@jump storage="test_hujieda_hyoujou.ks"
[s]

*test_katuraginomiya_hyoujou
[cm]
[freeimage layer = 26]
@jump storage="test_katuraginomiya_hyoujou.ks"
[s]

*test_zaizen_hyoujou
[cm]
[freeimage layer = 26]
@jump storage="test_zaizen_hyoujou.ks"
[s]

*test_kyoutuu
@jump storage="02_kyoutuu_test.ks"
[s]

*haikei
@jump storage="test_haikei.ks"
[s]

*sansaku1
@jump storage="01_B4nFWraU42_test.ks"
[s]

*sansaku2
@jump storage="01_I9IhvvVdPo_test.ks"
[s]

*test6
@jump storage="01_jsYiJcqRkk_test.ks"
[s]


*fumi
@jump storage="fumi_kuroda.ks"
[s]

*test_okeiko
[cm]
[eval exp="tf.test_gamen=true"]
[eval exp="tf.test_gamen_sijyou=false"]
[freeimage layer = 26]
@jump storage="okeiko.ks"
[s]

*test_okeiko_sijyou
[cm]
[eval exp="tf.test_gamen=true"]
[eval exp="tf.test_gamen_sijyou=true"]
[freeimage layer = 26]
@jump storage="okeiko.ks"
[s]

*title
;------タイトルへ戻る
[freeimage layer=1]
;↓各変数を初期設定にリセット
[call target = *start storage = "01_sijyou_hensuu.ks"]
[call target = *start storage = "hensuu.ks"]
[eval exp = "tf.okeiko_gamen = false"]
[eval exp = "tf.test_sijyou_fumi_hensin_speed = 1"]
[eval exp = "tf.test_zaizen_fumi_hensin_speed = 1"]
[eval exp = "tf.test_katuraginomiya_fumi_hensin_speed = 1"]
[eval exp = "tf.test_hujieda_fumi_hensin_speed = 1"]

;test用変数もリセット
[eval exp = "tf.test_gamen = false"]
[eval exp = "tf.test_gamen_sijyou = false"]

;↓念のためスタックの消去(Call、マクロ呼び出し、 if 文などを通過した時に呼び出し元に帰ってくるために保持するメモリ領域)
[clearstack]
@jump storage="title.ks"
[endreplay]
[s]
