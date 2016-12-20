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
[eval exp="tf.test_gamen=true"]


[cm]
[layopt layer=26 visible=true]
[wait time=10]
[ptext text="◆jsYiJcqRkk　スクリプト確認用" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold]
[ptext text="ときどきテストしたいことがあるので、ページを作成してみました" layer=26 size=17 x=100 y=45 color=darkslateblue]
;[ptext text="" layer=26 size=17 x=100 y=65 color=darkslateblue]
;[ptext text="作業中＝　" layer=26 size=17 x=100 y=65 color=darkslateblue]

[glink target="test01" text="チラシ新聞マクロテスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test02" text="財前マクロテスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test03" text="立ち絵サイズテスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test04" text="お稽古パート" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
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
テスト開始します[p]
[call target=*start storage="macro_tati_zaizen.ks"]
[財前ベーススーツ]
[財前通常]
テスト１．サイズマクロ無しに［財前ベーススーツ］［財前通常］を記述した状態です。[r]





;テスト１．［call target=*start storage="macro_tati_zaizen.ks"］だけ記述した状態です。[r]
;（立ち絵はまだ表示されません）[r]
;文字表示はいかがでしょうか？[p]

;[財前ベーススーツ]
;[財前通常]
;テスト２．サイズマクロ無しに［財前ベーススーツ］［財前通常］を記述した状態です。[r]
;（立ち絵表示あり。大きいと思います）[r]
;文字表示はいかがでしょうか？[p]

;[財前退場]
;テスト３．その後［財前退場］を記述した状態です。[r]
;（立ち絵表示なし）[r]
;文字表示が薄くなっていた場合、正常に戻りますでしょうか？[p]

;[財前サイズ通常]
;テスト４．立ち絵表示マクロ無しで［財前サイズ通常］のみ記述した状態です。[r]
;（立ち絵表示なし）[r]
;文字表示はいかがでしょうか？[p]

;[財前サイズ隣に並ぶ]
;テスト５．同様に［財前サイズ隣に並ぶ］を記述した状態です。[r]
;（立ち絵表示なし）[r]
;文字表示はいかがでしょうか？[p]

;[財前サイズ顔寄せ]
;テスト６．［財前サイズ顔寄せ］を記述した状態です。[r]
;（立ち絵は表示されません）[r]
;文字表示はいかがでしょうか？[p]

;[財前サイズ通常]
;[財前ベーススーツ]
;[財前通常]
;テスト７．［財前サイズ通常］［財前ベーススーツ］［財前通常］を記述した状態です。[r]
;（立ち絵表示あり）[r]
;文字表示はいかがでしょうか？[p]

;[財前目パチ1回]
;テスト８．立ち絵表示後に［財前目パチ1回］を記述した状態です。[r]
;（立ち絵表示あり）[r]
;文字表示はいかがでしょうか？[p]

;[財前退場]
;テスト９．その後［財前退場］を記述した状態です。[r]
;（立ち絵表示なし）[r]
;文字表示が薄くなっていた場合、正常に戻りますでしょうか？[p]

;[clearstack]
;[call target=*start storage="macro_tati_katuraginomiya.ks"]
;[葛城宮ベース軍服]
;[葛城宮通常]
;テスト１０．その後［call target=*start storage="macro_tati_katuraginomiya.ks"］［葛城宮ベース軍服］［葛城宮通常]を記述した状態です。[r]
;（立ち絵表示葛城宮）[r]
;文字表示が薄くなっていた場合、正常に戻りますでしょうか？[p]

;[葛城宮退場]
テスト終了です。ご協力ありがとうございました。[p]
[イベントシーン終了]
@jump target="test"
[s]

*test03
[cm]
[freeimage layer = 26]
[イベントシーン構築]
テスト開始します[p]
[layopt layer=12 visible=true]
[image storage="hujieda/hujieda_tatie_size_check02.png" layer=12 x=-500 y=-160]
藤枝最大サイズ(顔寄せ)[p]
[freeimage layer = 12]

[preload storage="data/fgimage/kuroda/base_haori_y1100.png"]
[preload storage="data/fgimage/kuroda/mayu_futuu_y1100.png"]
[preload storage="data/fgimage/kuroda/me_futuu_y1100.png"]
[preload storage="data/fgimage/kuroda/kuti_futuu_y1100.png"]
[wait time=10]
;黒田画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[call target=*start storage="macro_tati_kuroda.ks"]
[chara_new name="kuroda_base" storage="toumei.gif"]
[chara_show left=250 top=60 layer=8 name="kuroda_base" time=0]
[wait time=10]
[chara_new name="kuroda_kuti" storage="toumei.gif"]
[chara_show left=250 top=60 layer=9 name="kuroda_kuti" time=0]
[wait time=10]
[chara_new name="kuroda_me" storage="toumei.gif"]
[chara_show left=250 top=60 layer=10 name="kuroda_me" time=0]
[wait time=10]
[chara_new name="kuroda_mayu" storage="toumei.gif"]
[chara_show left=250 top=60 layer=11 name="kuroda_mayu" time=0]
[wait time=10]
[chara_new name="kuroda_emo" storage="toumei.gif"]
[chara_show left=250 top=60 layer=12 name="kuroda_emo" time=0]
[wait time=10]
[chara_mod name="kuroda_base" storage="kuroda/base_haori.png" time=0]
[wait time=10]
[黒田通常]
黒田通常サイズ[p]
[黒田退場]
[wait time=10]
[anim name="kuroda_base" left=210 top=30 time=0]
[anim name="kuroda_mayu" left=210 top=30 time=0]
[anim name="kuroda_me" left=210 top=30 time=0]
[anim name="kuroda_kuti" left=210 top=30 time=0]
[anim name="kuroda_emo" left=210 top=30 time=0]
[wa]
[chara_mod name="kuroda_base" storage="kuroda/base_haori_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]
黒田隣に並ぶサイズ[p]

[call target=*start storage="macro_tati_zaizen.ks"]
[財前サイズ通常]
[財前ベーススーツ]
[財前通常]
財前サイズ通常[p]

[財前サイズ隣に並ぶ]
[財前ベーススーツ]
[財前通常]
財前サイズ隣に並ぶ[p]

[財前サイズ顔寄せ]
[財前ベーススーツ]
[財前通常]
財前サイズ顔寄せ[p]

[image storage="hujieda/hujieda_tatie_size_check02.png" layer=12 x=-500 y=-160]
藤枝最大サイズ(顔寄せ)[p]
[freeimage layer = 12]

[財前退場]
テスト終了です。[p]

[イベントシーン終了]
@jump target="test"
[s]

*test04
[cm]
[freeimage layer = 26]
@jump storage="okeiko.ks"
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
