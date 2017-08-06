﻿﻿﻿[setreplay name="test"]
*test
[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】雪解け（タイトル画面等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="title_yukidoke.ogg" loop=true]
[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
[endif]
;財前テストモード
[eval exp="tf.test_zaizen = true"]

;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[iscript]
f.preload_images_zaizen = ["data/fgimage/girl/S/base.png","data/fgimage/girl/S/base_yubi.png","data/fgimage/girl/S/base_katate.png","data/fgimage/girl/S/base_ryoute.png","data/fgimage/girl/S/mayu_yowa.png","data/fgimage/girl/S/mayu_futuu.png","data/fgimage/girl/S/mayu_komari.png","data/fgimage/girl/S/me_fusi1.png","data/fgimage/girl/S/me_futuu.png","data/fgimage/girl/S/kuti_futuu.png","data/fgimage/message_bg/frame_red.png","data/fgimage/bg/room_niwa.jpg","data/fgimage/bg/bg_ryoutei.jpg","data/fgimage/bg/bg_omoide.jpg"];
[endscript]
[preload storage=&f.preload_images_zaizen wait=true]

[call target=*start storage="hensuu.ks"]

;=============================================
;test
;=============================================
[chara_mod name="bg" storage="bg/title.jpg"]
[wait time=10]
[bg storage="../fgimage/bg/title.jpg" time=0]
[wait time=10]
;test中フラグ　一時変数 利用します
[eval exp="tf.test_zaizen=true"]
*page_0
[cm]
[layopt layer=26 visible=true]
[wait time=10]
[ptext text="財前 美彬ルート　スクリプト確認用" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold]
[ptext text="スクリプト作業をありがとうございました。" layer=26 size=17 x=100 y=45 color=darkslateblue]
;[ptext text="" layer=26 size=17 x=100 y=65 color=darkslateblue]
*page1
[glink target="test5_1" text="5月(磯野に相談)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test9_1" text="9月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test9_3" text="9月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test10_1" text="10月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test10_3" text="10月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="test11_1" text="11月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="test11_1_bad" text="11月1週bad" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
[glink target="test11_1_2" text="11月1週_2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]
[glink target="test11_bad2" text="11月bad2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=white]
[glink target="test11_1_3" text="11月1週_3" graphic="select_waku_x500.png" size=20 width="250" x=100 y=550 color=white]

[glink target="test11_3" text="11月3週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="test11_4_1" text="11月4週_1" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="test11_4_2" text="11月4週_2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="test12_2" text="12月2週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="test12_2_2" text="12月2週_2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
[glink target="test12_4" text="12月4週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]


[glink target="page2" text="2ページ目" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=pink]
@jump target=*common
;１ページ目の表示を共通部分をみせて終わらせます

;２ぺージ目の表示
*page2
[glink target="test1_3_1" text="1月3週_1" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test1_3_2" text="1月3週_2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test2_1" text="2月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test3_4good" text="3月4週good" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test3_4nomal" text="3月4週nomal" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]

[glink target="zaizen_bazaar" text="財前バザー" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="zaizen_6_1" text="夢イベント" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="test_fumi" text="手紙" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]

[glink target="page_0" text="1ページ目" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=pink]
@jump target=*common
;２ページ目の表示を共通部分をみせて終わらせます

*common
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=450 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500 color=white]


*button_BGM
[if exp="sf.BGM=='OFF'"]
;ロード時点で再生していたBGMを停止します。
[stopbgm]
[locate x=800 y=480]
[button name="button_bgm_to_on" graphic="button_bgm_off.png" target="*bgm_on" ]
[else]
[eval exp="sf.BGM='ON'"]
[locate x=800 y=480]
[button name="button_bgm_to_off" graphic="button_bgm_on.png" target="*bgm_off" ]
;【BGM】雪解け（タイトル画面等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
;[playbgm storage="title_yukidoke.ogg" click=true loop=true]
;[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
[endif]

[s]


*test5_1
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_5_1.ks"
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
@jump storage="zaizen/zaizen_11_1_bad1.ks"
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
@jump storage="zaizen/zaizen_11_4_2.ks"
[s]
;zaizen_11_4_2.ks

*test12_2
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_12_2.ks"
[s]
;zaizen_12_2.ks

*test12_2_2
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_12_2_2.ks"
[s]
;zaizen_12_2_2.ks

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


*test2_1
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_2_1.ks"
[s]
;zaizen_2_1.ks

*test3_4good
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_3_4_good.ks"
[s]
;zaizen_3_4_good.ks


*test3_4nomal
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_3_4_normal.ks"
[s]
;zaizen_3_4_normal.ks

*zaizen_bazaar
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_bazaar.ks"
[s]
;zaizen/zaizen_bazaar.ks

*test_sansaku
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_sansaku.ks"
[s]

*zaizen_6_1
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_6_1.ks"
[s]


*test_fumi
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_fumi.ks"
[s]

*auto
[autostart]
@jump target=page1


*back_test
[cm]
[freeimage layer = 26]
;test中フラグ　一時変数
[eval exp="tf.test_zaizen=false"]
@jump storage="test.ks"
[s]

*title
[cm]
[freeimage layer = 26]
;test中フラグ　一時変数
[eval exp="tf.test_zaizen=false"]
;------タイトルへ戻る
@jump storage="title.ks"
[s]

;----------BGM onが選択された時
*bgm_on
;【BGM】雪解け（タイトル画面等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="title_yukidoke.ogg" loop=true]
[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BGM='ON'"]
[anim name="button_bgm_to_on" opacity=0 time=1]
[locate x=800 y=480]
[button name="button_bgm_to_off" graphic="button_bgm_on.png" target="*bgm_off" ]
[s]

;----------BGM offが選択された時
*bgm_off
[stopbgm]
[fadeoutbgm time=1000]
;変数設定。ゲーム開始時やロード時に設定引き継ぎ用
[eval exp="sf.BGM='OFF'"]
[anim name="button_bgm_to_off" opacity=0 time=1]
[locate x=800 y=480]
[button name="button_bgm_to_on" graphic="button_bgm_off.png" target="*bgm_on" ]
[s]
