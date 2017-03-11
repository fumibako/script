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

*page1
[cm]
[layopt layer=26 visible=true]
[wait time=10]
[ptext text="◆jsYiJcqRkk　スクリプト確認用" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold]
[ptext text="ときどきテストしたいことがあるので、ページを作成してみました" layer=26 size=17 x=100 y=45 color=darkslateblue]
;[ptext text="" layer=26 size=17 x=100 y=65 color=darkslateblue]
;[ptext text="作業中＝　" layer=26 size=17 x=100 y=65 color=darkslateblue]

[glink target="test01" text="チラシ新聞マクロテスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
;[glink target="test02" text="財前マクロテスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
;[glink target="test03" text="立ち絵サイズテスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
;[glink target="test04" text="お稽古パート" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test05" text="共通プロローグ後半(opening2)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test06" text="磯野に相談" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test07" text="時子さん登場" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
[glink target="test08" text="新茶の話題" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]

[glink target="test9" text="さつきの話題" graphic="select_waku_x500.png" size=20 width="250" x=450 y=100 color=white]
[glink target="test10" text="sansaku_machi_kuroda_02" graphic="select_waku_x500.png" size=20 width="250" x=450 y=150 color=white]
[glink target="test11" text="sansaku_machi_kuroda_03" graphic="select_waku_x500.png" size=20 width="250" x=450 y=200 color=white]
[glink target="test12" text="sansaku_machi_kuroda_04" graphic="select_waku_x500.png" size=20 width="250" x=450 y=250 color=white]
[glink target="test13" text="sansaku_machi_kuroda_05" graphic="select_waku_x500.png" size=20 width="250" x=450 y=300 color=white]
[glink target="test14" text="sansaku_machi_kuroda_06" graphic="select_waku_x500.png" size=20 width="250" x=450 y=350 color=white]
;[glink target="test15" text="散策イベント" graphic="select_waku_x500.png" size=20 width="250" x=450 y=400 color=white]
@jump target=*cmmn

*page2
[glink target="test16" text="kuroda_5_1"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test17" text="kuroda_6_2"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test18" text="kuroda_9_1"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test16" text="kuroda_9_3"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test19" text="kuroda_9_4"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="test20" text="kuroda_10_3"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="test21" text="kuroda_10_4"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
[glink target="test22" text="kuroda_11_1"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]
[glink target="test23" text="kuroda_11_2"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=white]

[glink target="test24" text="kuroda_11_3"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=100 color=white]
[glink target="test25" text="kuroda_11_4"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=150 color=white]
[glink target="test26" text="kuroda_12_2"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=200 color=white]
[glink target="test27" text="kuroda_12_3"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=250 color=white]
[glink target="test28" text="kuroda_12_3_badED"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=300 color=white]
[glink target="test29" text="kuroda_1_1"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=350 color=white]
[glink target="test31" text="kuroda_1_4"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=400 color=white]
[glink target="test32" text="kuroda_2_2"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=450 color=white]
@jump target=*cmmn

[glink target="test33" text="kuroda_3_4_goodED"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test34" text="kuroda_3_4_normalED"  graphic="select_waku_x500.png" size=20 width="250" x=150 y=100 color=white]


*cmmn
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
[eval exp="tf.kuroda_test_idou_x='-=300'"]
[eval exp="tf.sijyou_test_idou_x='-=150'"]
[eval exp="tf.zaizen_test_idou_x=0"]
[eval exp="tf.katuraginomiya_test_idou_x='+=150'"]
[eval exp="tf.hujieda_test_idou_x='+=300'"]
[call target=*start storage="macro_tati_kuroda.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[call target=*start storage="macro_tati_zaizen.ks"]
[call target=*start storage="macro_tati_katuraginomiya.ks"]
[call target=*start storage="macro_tati_hujieda.ks"]
;◆黒田画像仮表示。なぜかマクロcallのchara_newが反映されないようなので記述
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
;◆四条立ち絵仮表示【通常サイズ】
[chara_new name="sijyou_base" storage="toumei.gif" width=&f.sijyou_tatie_tuujou_width height=&f.sijyou_tatie_tuujou_height]
[chara_show left=&f.sijyou_tatie_tuujou_left top=&f.sijyou_tatie_tuujou_top layer=8 name="sijyou_base" time=0]
[wait time=10]
[chara_new name="sijyou_kuti" storage="toumei.gif" width=&f.sijyou_tatie_tuujou_width height=&f.sijyou_tatie_tuujou_height]
[chara_show left=&f.sijyou_tatie_tuujou_left top=&f.sijyou_tatie_tuujou_top layer=9 name="sijyou_kuti" time=0]
[wait time=10]
[chara_new name="sijyou_me" storage="toumei.gif" width=&f.sijyou_tatie_tuujou_width height=&f.sijyou_tatie_tuujou_height]
[chara_show left=&f.sijyou_tatie_tuujou_left top=&f.sijyou_tatie_tuujou_top layer=10 name="sijyou_me" time=0]
[wait time=10]
[chara_new name="sijyou_mayu" storage="toumei.gif" width=&f.sijyou_tatie_tuujou_width height=&f.sijyou_tatie_tuujou_height]
[chara_show left=&f.sijyou_tatie_tuujou_left top=&f.sijyou_tatie_tuujou_top layer=11 name="sijyou_mayu" time=0]
[wait time=10]
[chara_new name="sijyou_emo" storage="toumei.gif" width=&f.sijyou_tatie_tuujou_width height=&f.sijyou_tatie_tuujou_height]
[chara_show left=&f.sijyou_tatie_tuujou_left top=&f.sijyou_tatie_tuujou_top layer=12 name="sijyou_emo" time=0]
[wait time=10]
;◆財前立ち絵仮表示
[chara_new name="zaizen_base" storage="toumei.gif" width=&f.zaizen_tuujou_width height=&f.zaizen_tuujou_height]
[chara_show left=&f.zaizen_tuujou_left top=&f.zaizen_tuujou_top layer=8 name="zaizen_base" time=0]
[wait time=10]
[chara_new name="zaizen_kuti" storage="toumei.gif" width=&f.zaizen_tuujou_width height=&f.zaizen_tuujou_height]
[chara_show left=&f.zaizen_tuujou_left top=&f.zaizen_tuujou_top layer=9 name="zaizen_kuti" time=0]
[wait time=10]
[chara_new name="zaizen_me" storage="toumei.gif" width=&f.zaizen_tuujou_width height=&f.zaizen_tuujou_height]
[chara_show left=&f.zaizen_tuujou_left top=&f.zaizen_tuujou_top layer=10 name="zaizen_me" time=0]
[wait time=10]
[chara_new name="zaizen_mayu" storage="toumei.gif" width=&f.zaizen_tuujou_width height=&f.zaizen_tuujou_height]
[chara_show left=&f.zaizen_tuujou_left top=&f.zaizen_tuujou_top layer=11 name="zaizen_mayu" time=0]
[wait time=10]
[chara_new name="zaizen_emo" storage="toumei.gif" width=&f.zaizen_tuujou_width height=&f.zaizen_tuujou_height]
[chara_show left=&f.zaizen_tuujou_left top=&f.zaizen_tuujou_top layer=12 name="zaizen_emo" time=0]
[wait time=10]

;◆葛城宮立ち絵仮表示
[chara_new name="katuraginomiya_base" storage="toumei.gif" width=&f.katuraginomiya_tuujou_width height=&f.katuraginomiya_tuujou_height]
[chara_show left=&f.katuraginomiya_tuujou_left top=&f.katuraginomiya_tuujou_top layer=8 name="katuraginomiya_base" time=0]
[wait time=10]
[chara_new name="katuraginomiya_kuti" storage="toumei.gif" width=&f.katuraginomiya_tuujou_width height=&f.katuraginomiya_tuujou_height]
[chara_show left=&f.katuraginomiya_tuujou_left top=&f.katuraginomiya_tuujou_top layer=9 name="katuraginomiya_kuti" time=0]
[wait time=10]
[chara_new name="katuraginomiya_me" storage="toumei.gif" width=&f.katuraginomiya_tuujou_width height=&f.katuraginomiya_tuujou_height]
[chara_show left=&f.katuraginomiya_tuujou_left top=&f.katuraginomiya_tuujou_top layer=10 name="katuraginomiya_me" time=0]
[wait time=10]
[chara_new name="katuraginomiya_mayu" storage="toumei.gif" width=&f.katuraginomiya_tuujou_width height=&f.katuraginomiya_tuujou_height]
[chara_show left=&f.katuraginomiya_tuujou_left top=&f.katuraginomiya_tuujou_top layer=11 name="katuraginomiya_mayu" time=0]
[wait time=10]
[chara_new name="katuraginomiya_emo" storage="toumei.gif" width=&f.katuraginomiya_tuujou_width height=&f.katuraginomiya_tuujou_height]
[chara_show left=&f.katuraginomiya_tuujou_left top=&f.katuraginomiya_tuujou_top layer=12 name="katuraginomiya_emo" time=0]
[wait time=10]
;◆藤枝立ち絵仮表示
[chara_new name="hujieda_base" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=8 name="hujieda_base" time=0]
[wait time=10]
[chara_new name="hujieda_kuti" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=9 name="hujieda_kuti" time=0]
[wait time=10]
[chara_new name="hujieda_me" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=10 name="hujieda_me" time=0]
[wait time=10]
[chara_new name="hujieda_mayu" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=11 name="hujieda_mayu" time=0]
[wait time=10]
[chara_new name="hujieda_emo" storage="toumei.gif" width=&f.hujieda_tuujou_width height=&f.hujieda_tuujou_height]
[chara_show left=&f.hujieda_tuujou_left top=&f.hujieda_tuujou_top layer=12 name="hujieda_emo" time=0]
[wait time=10]


[cm]
[freeimage layer = 26]
[イベントシーン構築]
テスト開始します[p]

[anim name="kuroda_base" left=&tf.kuroda_test_idou_x time=0]
[anim name="kuroda_mayu" left=&tf.kuroda_test_idou_x time=0]
[anim name="kuroda_me" left=&tf.kuroda_test_idou_x time=0]
[anim name="kuroda_kuti" left=&tf.kuroda_test_idou_x time=0]
[anim name="kuroda_emo" left=&tf.kuroda_test_idou_x time=0]
[wait time=10]
[黒田ベース羽織]
[黒田通常]
黒田通常サイズ[p]

[anim name="sijyou_base" left=&tf.sijyou_test_idou_x time=0]
[anim name="sijyou_mayu" left=&tf.sijyou_test_idou_x time=0]
[anim name="sijyou_me" left=&tf.sijyou_test_idou_x time=0]
[anim name="sijyou_kuti" left=&tf.sijyou_test_idou_x time=0]
[anim name="sijyou_emo" left=&tf.sijyou_test_idou_x time=0]
[wait time=10]
[四条ベース羽織]
[四条通常]
四条通常サイズ[p]

[anim name="zaizen_base" left=&tf.zaizen_test_idou_x time=0]
[anim name="zaizen_mayu" left=&tf.zaizen_test_idou_x time=0]
[anim name="zaizen_me" left=&tf.zaizen_test_idou_x time=0]
[anim name="zaizen_kuti" left=&tf.zaizen_test_idou_x time=0]
[anim name="zaizen_emo" left=&tf.zaizen_test_idou_x time=0]
[wait time=10]
[財前ベーススーツ]
[財前通常]
財前通常サイズ[p]

[anim name="katuraginomiya_base" left=&tf.katuraginomiya_test_idou_x time=0]
[anim name="katuraginomiya_mayu" left=&tf.katuraginomiya_test_idou_x time=0]
[anim name="katuraginomiya_me" left=&tf.katuraginomiya_test_idou_x time=0]
[anim name="katuraginomiya_kuti" left=&tf.katuraginomiya_test_idou_x time=0]
[anim name="katuraginomiya_emo" left=&tf.katuraginomiya_test_idou_x time=0]
[wait time=10]
[葛城宮ベース軍服]
[葛城宮通常]
葛城宮通常サイズ[p]

[anim name="hujieda_base" left=&tf.hujieda_test_idou_x time=0]
[anim name="hujieda_mayu" left=&tf.hujieda_test_idou_x time=0]
[anim name="hujieda_me" left=&tf.hujieda_test_idou_x time=0]
[anim name="hujieda_kuti" left=&tf.hujieda_test_idou_x time=0]
[anim name="hujieda_emo" left=&tf.hujieda_test_idou_x time=0]
[wait time=10]
[藤枝ベース郵便屋]
[藤枝通常]
藤枝通常サイズ[p]



[chara_mod name="kuroda_base" storage="kuroda/base_haori_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="kuroda/mayu_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/me_futuu_y1100.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/kuti_futuu_y1100.png" time=0]
[wait time=10]
黒田隣に並ぶサイズ[p]


テスト終了です。[p]
[黒田退場]
[四条退場]
[財前退場]
[葛城宮退場]
[藤枝退場]

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
@jump storage="opening2.ks"
[s]

*test06
[cm]
[freeimage layer = 26]
@jump storage="common_5_1.ks"
[s]

*test07
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku.ks" target="*sansaku_machi_common_01"
[s]

*test08
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku.ks" target="*sansaku_machi_common_02"
[s]

*test9
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku.ks" target="*sansaku_machi_kuroda_01"
[s]

*test10
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku.ks" target="*sansaku_machi_kuroda_02"
[s]

*test11
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku.ks" target="*sansaku_machi_kuroda_03"
[s]

*test12
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku.ks" target="*sansaku_machi_kuroda_04"
[s]

*test13
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku.ks" target="*sansaku_machi_kuroda_05"
[s]

*test14
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku.ks" target="*sansaku_machi_kuroda_06"
[s]

*test15
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku.ks"
[s]

*test16
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_5_1.ks"
[s]

*test17
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_6_2.ks"
[s]


*test18
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_9_1.ks"
[s]

*test19
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_9_3.ks"	
[s]

*test20
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_9_4.ks"
[s]


*test21
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_10_3.ks"	
[s]

*test22
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_10_4.ks"
[s]

*test23
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_11_1.ks"
[s]

*test24
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_11_2.ks"
[s]

*test25
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_11_3.ks"
[s]

*test26
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_11_4.ks"
[s]

*test27
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_12_2.ks"
[s]

*test28
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_12_3.ks"
[s]

*test29
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_12_3_badED.ks"
[s]

*test30
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_1_1.ks"
[s]

*test31
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_1_4.ks"
[s]

*test32
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_2_2.ks"
[s]

*test33
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_3_4_normalED.ks"
[s]

*test34
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="kuroda_3_4_goodED.ks"
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
