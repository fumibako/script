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
f.preload_images_katuraginomiya = ["data/fgimage/girl/S/base.png","data/fgimage/girl/S/base_yubi.png","data/fgimage/girl/S/base_katate.png","data/fgimage/girl/S/base_ryoute.png","data/fgimage/girl/S/mayu_yowa.png","data/fgimage/girl/S/mayu_futuu.png","data/fgimage/girl/S/mayu_komari.png","data/fgimage/girl/S/me_fusi1.png","data/fgimage/girl/S/me_futuu.png","data/fgimage/girl/S/kuti_futuu.png","data/fgimage/message_bg/frame_red.png","data/fgimage/bg/room_niwa.jpg"];
[endscript]
[preload storage=&f.preload_images_katuraginomiya wait=true]

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
[ptext text="葛城宮 晴仁ルート　スクリプト確認用" layer=26 size=21 x=100 y=50 color=darkslateblue bold=bold]


[glink target="test_event_1" text="散策イベント1" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
;[glink target="test_event_2" text="散策イベント2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
;[glink target="test_event_3" text="イベント3" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
;[glink target="test9_1" text="9月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
;[glink target="test9_3" text="9月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
;[glink target="test10_2" text="10月2週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
;[glink target="test10_3" text="10月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
;[glink target="test11_1" text="11月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
;[glink target="test11_1b" text="11月1週badED" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]

;[glink target="test12_1" text="12月1週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
;[glink target="test1_3" text="1月3週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
;[glink target="test2_2" text="2月2週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
;[glink target="test3_4" text="3月4週normalED" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
;[glink target="test_goodED" text="goodED" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
;[glink target="test_fumi" text="手紙" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]

[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=450 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500 color=white]
[s]


*test_event_1
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_event_1.ks"
[s]


*test_event_2
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_event_2.ks"
[s]


*test_event_3
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_event_3.ks"
[s]


*test9_1
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_9_1.ks"
[s]

*test9_3
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_9_3.ks"
[s]


*test10_2
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_10_2.ks"
[s]


*test10_3
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_10_3.ks"
[s]


*test11_1
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_11_1.ks"
[s]


*test12_1
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_12_1.ks"
[s]


*test1_3
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_1_3.ks"
[s]


*test2_2
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_2_2.ks"
[s]


*test3_4normalED
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_3_4normalED.ks"
[s]


*test_goodED
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_goodED.ks"
[s]


*test_badED
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_badED.ks"
[s]

*test_fumi
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_fumi.ks"
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
