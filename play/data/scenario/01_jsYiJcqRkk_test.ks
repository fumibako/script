﻿*test
;顔グラフィック等プリロード
[iscript]
f.preload_images_test = ["data/fgimage/girl/S/base.png","data/fgimage/girl/S/base_yubi.png","data/fgimage/girl/S/base_katate.png","data/fgimage/girl/S/base_ryoute.png","data/fgimage/girl/S/mayu_yowa.png","data/fgimage/girl/S/mayu_futuu.png","data/fgimage/girl/S/mayu_komari.png","data/fgimage/girl/S/me_fusi1.png","data/fgimage/girl/S/me_futuu.png","data/fgimage/girl/S/kuti_futuu.png","data/fgimage/message_bg/frame_red.png","data/fgimage/bg/room_niwa.jpg"];
[endscript]
[preload storage=&f.preload_images_test wait=true]

;=============================================
;test
;=============================================
[chara_mod name="bg" storage="bg/title.jpg"]

[cm]
[layopt layer=26 visible=true]
[wait time=10]
[ptext text="◆jsYiJcqRkk　スクリプト確認用" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold]
[ptext text="ときどきテストしたいことがあるので、ページを作成してみました" layer=26 size=17 x=100 y=45 color=darkslateblue]
;[ptext text="" layer=26 size=17 x=100 y=65 color=darkslateblue]
;[ptext text="作業中＝　" layer=26 size=17 x=100 y=65 color=darkslateblue]

[glink target="test01" text="チラシ新聞マクロテスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test02" text="財前マクロテスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
;[glink target="test03" text="共通散策イベント3" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
;[glink target="test04" text="共通散策イベント4" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
;[glink target="test05" text="共通散策イベント5" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
;[glink target="test06" text="共通散策イベント6" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
;[glink target="test07" text="共通散策イベント7" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
;[glink target="test08" text="共通散策イベント8" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]
;[glink target="test09" text="共通散策イベント9" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=white]

[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=550 color=white]

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

*test01
[cm]
[freeimage layer = 26]
[イベントシーン構築]
はじまりはじまり。[p]
[新聞]
新聞テストです。[p]
[resetfont]
[チラシ]
チラシテストです。[p]
[イベントシーン終了]
@jump target="test"
[s]

*test02
[cm]
[freeimage layer = 26]
[イベントシーン構築]
[call target=*start storage="macro_tati_zaizen.ks"]
[財前サイズ顔寄せ]
[財前ベーススーツ]
[財前通常]
アップからスタートの試み[p]
[財前目パチ1回]
目パチ[p]
[財前サイズ隣に並ぶ]
隣に並ぶ[p]
[財前サイズ通常]
通常サイズに[p]
[財前退場]
退場[p]
[財前サイズ隣に並ぶ]
[財前ベース燕尾服]
[財前通常]
隣に並ぶサイズ[r]
燕尾服[p]
[財前目閉じ]
目閉じ[p]
[財前サイズ通常]
閉じたままサイズ変更[p]
[財前目を開く]
目を開く[p]
[財前退場]
退場[r]
テスト終了[p]
[イベントシーン終了]
@jump target="test"
[s]

*test03
[cm]
[freeimage layer = 26]
@jump storage="" target=""
[s]

*test04
[cm]
[freeimage layer = 26]
@jump storage="" target=""
[s]

*test05
[cm]
[freeimage layer = 26]
@jump storage="" target=""
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
