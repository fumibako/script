[setreplay name="test"]
*test
[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】雪解け（タイトル画面等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="title_yukidoke.ogg" loop=true]
[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
[endif]

;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[iscript]
f.preload_images_sijyou = ["data/fgimage/girl/S/base.png","data/fgimage/girl/S/base_yubi.png","data/fgimage/girl/S/base_katate.png","data/fgimage/girl/S/base_ryoute.png","data/fgimage/girl/S/mayu_yowa.png","data/fgimage/girl/S/mayu_futuu.png","data/fgimage/girl/S/mayu_komari.png","data/fgimage/girl/S/me_fusi1.png","data/fgimage/girl/S/me_futuu.png","data/fgimage/girl/S/kuti_futuu.png","data/fgimage/message_bg/frame_red.png","data/fgimage/bg/room_niwa.jpg","data/fgimage/bg/bg_ryoutei.jpg","data/fgimage/bg/bg_omoide.jpg"];
[endscript]
[preload storage=&f.preload_images_sijyou wait=true]

[call target=*start storage="hensuu.ks"]
[call target=*start storage="tyrano.ks"]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]

;=============================================
;test
;=============================================
[chara_mod name="bg" storage="bg/title.jpg"]

[cm]
[layopt layer=26 visible=true]
[wait time=10]
[ptext text="四条 華織ルート　スクリプト確認用" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold]
[ptext text="テスト用に全てのスクリプトファイルへのリンクを解放してみています。" layer=26 size=17 x=100 y=45 color=darkslateblue]
[ptext text="作業中＝9月4週　それより後はほぼいただいたファイルそのままの状態です" layer=26 size=17 x=100 y=65 color=darkslateblue]


[glink target="test9_1" text="9月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test9_2" text="9月2週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test9_3" text="9月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test9_4" text="9月4週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test10_1" text="10月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="test10_3" text="10月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="test10_3b" text="10月3週badED" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]

[glink target="test11_1" text="11月1～3週:1" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="test11_1b" text="11月1～3週:2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="test1_1" text="1月1週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="test1_3" text="1月3週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="test3_4" text="3月4週normalEND" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
[glink target="test_goodED" text="goodENDエピローグ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]
[glink target="test_sansaku" text="散策" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=white]
[glink target="test_sansaku2" text="散策2" graphic="select_waku_x500.png" size=20 width="250" x=450 y=400 color=white]
[glink target="test_fumi" text="手紙" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=white]

[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=550 color=white]
[s]


*test9_1
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_9_1.ks"
[s]


*test9_2
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_9_2.ks"
[s]


*test9_3
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_9_3.ks"
[s]


*test9_4
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_9_4.ks"
[s]


*test10_1
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_10_1.ks"
[s]


*test10_3
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_10_3.ks"
[s]


*test10_3b
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_10_3_badED.ks"
[s]


*test11_1
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_11_1.ks"
[s]

*test11_1b
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_11_1b.ks"
[s]

*test1_1
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_1_1.ks"
[s]


*test1_3
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_1_3_normalED.ks"
[s]

*test3_4
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_3_4_goodED.ks"
[s]

*test_goodED
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_3_4_epilogue_goodED.ks"
[s]

*test_sansaku
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku.ks"
[s]

*test_sansaku2
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku2.ks"
[s]

*test_fumi
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_fumi.ks"
[s]



*back_test
[cm]
[freeimage layer = 26]
@jump storage="test.ks"
[s]

*title
[cm]
[freeimage layer = 26]
;------タイトルへ戻る
@jump storage="title.ks"
[s]
