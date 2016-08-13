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
f.preload_images_zaizen = ["data/fgimage/girl/S/base.png","data/fgimage/girl/S/base_yubi.png","data/fgimage/girl/S/base_katate.png","data/fgimage/girl/S/base_ryoute.png","data/fgimage/girl/S/mayu_yowa.png","data/fgimage/girl/S/mayu_futuu.png","data/fgimage/girl/S/mayu_komari.png","data/fgimage/girl/S/me_fusi1.png","data/fgimage/girl/S/me_futuu.png","data/fgimage/girl/S/kuti_futuu.png","data/fgimage/message_bg/frame_red.png","data/fgimage/bg/room_niwa.jpg","data/fgimage/bg/bg_ryoutei.jpg","data/fgimage/bg/bg_omoide.jpg"];
[endscript]
[preload storage=&f.preload_images_zaizen wait=true]

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
[ptext text="財前 美彬ルート　スクリプト確認用" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold]
[ptext text="テスト用に全てのスクリプトファイルへのリンクを解放してみています。" layer=26 size=17 x=100 y=45 color=darkslateblue]
[ptext text="作業中＝9月4週　それより後はほぼいただいたファイルそのままの状態です" layer=26 size=17 x=100 y=65 color=darkslateblue]



[glink target="test9_1" text="9月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test9_3" text="9月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test10_1" text="10月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test10_3" text="10月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test10_1" text="11月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="test11_1_bad" text="11月1週bad" graphic="select_waku_x500.png" size=20 width="250"x=100 y=350 color=white]
[glink target="test11_1_2" text="11月1週_2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400　color=white]
[glink target="test11_bad2" text="11月bad2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]
[glink target="test11_1_3" text="11月1週_3" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=white]

[glink target="test11_3" text="11月3週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="test11_4" text="11月4週"  graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="test11_4_1" text="11月4週_1" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="test11_4_2" text="11月4週_2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="test12_4" text="12月4週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]

[glink target="test1_3_1" text="1月3週_1" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]
[glink target="test1_3_2" text="1月3週_2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=white]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=450 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500 color=white]
[s]





*test9_1
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_9_1.ks"
[s]
;zaizen_9_1.ks

*test9_3
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_9_3.ks"
[s]
;zaizen_9_3.ks

*test10_1
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_10_1.ks"
[s]
;zaizen_10_1.ks


*test10_3
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_10_3.ks"
[s]
;zaizen_10_3.ks

*test11_1
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_11_1.ks"
[s]
;zaizen_11_1.ks

*test11_1_bad
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_11_1_bad.ks"
[s]
;zaizen_11_1_bad.ks

*test11_1_2
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_11_1_2.ks"
[s]
;zaizen_11_1_2.ks

*test11_bad2
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_11_bad2.ks"
[s]
;zaizen_11_bad2.ks


*test11_1_3
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_11_1_3.ks"
[s]
;zaizen_11_1_3.ks

*test11_3
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_11_3.ks"
[s]
;zaizen_11_3.ks

*test11_4
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_11_4.ks"
[s]
;zaizen_11_4.ks


*test11_4_1
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_11_4_1.ks"
[s]
;zaizen_11_4_1.ks


*test11_4_2
[cm]
[freeimage layer = 26]
@jump storage="zaizen/;zaizen_11_4_2.ks"
[s]
;zaizen_11_4_2.ks


*test12_4
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_12_4.ks"
[s]
;zaizen_12_4.ks

*test1_3_1
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_1_3_1.ks"
[s]
;zaizen_1_3_1.ks

*test1_3_2
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_1_3_2.ks"
[s]
;zaizen_1_3_2.ks


*2_1
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_2_1.ks"
[s]
;zaizen_2_1.ks

*3_4_good
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_3_4_good.ks"
[s]
;zaizen_3_4_good.ks


*3_4_nomal
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_3_4_nomal.ks"
[s]
;zaizen_3_4_nomal.ks

*test_sansaku
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_sansaku.ks"
[s]

*test_fumi
[cm]
[freeimage layer = 26]
@jump storage="sijyou/sijyou_fumi.ks"
;見当たらず未
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
