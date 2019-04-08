*test
*start
[cm]
[iscript]
$(".tips_btn").remove();
$(".27_fore").empty();
$(".26_fore").empty();
[endscript]
;顔グラフィック等プリロード
[iscript]
f.preload_images_test = ["data/fgimage/girl/S/base.png","data/fgimage/girl/S/base_yubi.png","data/fgimage/girl/S/base_katate.png","data/fgimage/girl/S/base_ryoute.png","data/fgimage/girl/S/mayu_yowa.png","data/fgimage/girl/S/mayu_futuu.png","data/fgimage/girl/S/mayu_komari.png","data/fgimage/girl/S/me_fusi1.png","data/fgimage/girl/S/me_futuu.png","data/fgimage/girl/S/kuti_futuu.png","data/fgimage/message_bg/frame_red.png","data/fgimage/bg/room_niwa.jpg"];
[endscript]
[preload storage=&f.preload_images_test wait=true]

;=============================================
;test

;=============================================
[chara_mod name="bg" storage="toumei.gif" time=0]
[wait time=10]

[イベントシーン終了]
[bg storage="../fgimage/bg/title.jpg" time=0]
[wait time=10]
[eval exp="tf.test_gamen=true"]
[eval exp="tf.test_kuroda=true"]

*page1
[cm]
[layopt layer=26 visible=true]
[wait time=10]
[ptext name="test" text="◆jsYiJcqRkk　スクリプト確認用" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold]
[ptext name="test" text="ときどきテストしたいことがあるので、ページを作成してみました" layer=26 size=17 x=100 y=45 color=darkslateblue]
;[ptext text="" layer=26 size=17 x=100 y=65 color=darkslateblue]
;[ptext text="作業中＝　" layer=26 size=17 x=100 y=65 color=darkslateblue]

[glink target="test01" text="チラシ新聞マクロテスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100  font_color=black]
;[glink target="test02" text="財前マクロテスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150  font_color=black]
;[glink target="test03" text="立ち絵サイズテスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200  font_color=black]
;[glink target="test04" text="お稽古パート" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250  font_color=black]
[glink target="test36" text="プロローグ手紙(opening1)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150  font_color=black]
[glink target="test05" text="プロローグ後半(opening2)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200  font_color=black]
[glink target="test06" text="磯野に相談" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250  font_color=black]
[glink target="test35" text=".hide等表示テスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300  font_color=black]
[glink target="test07" text="時子さん登場" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400  font_color=black]
[glink target="test08" text="新茶の話題" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450  font_color=black]

[glink target="test9" text="さつきの話題" graphic="select_waku_x500.png" size=20 width="250" x=450 y=100  font_color=black]
[glink target="test10" text="黒田6_4麦イベント" graphic="select_waku_x500.png" size=20 width="250" x=450 y=150  font_color=black]
[glink target="test11" text="sansaku_machi_kuroda_03" graphic="select_waku_x500.png" size=20 width="250" x=450 y=200  font_color=black]
[glink target="test12" text="sansaku_machi_kuroda_04" graphic="select_waku_x500.png" size=20 width="250" x=450 y=250  font_color=black]
[glink target="test13" text="sansaku_machi_kuroda_05" graphic="select_waku_x500.png" size=20 width="250" x=450 y=300  font_color=black]
[glink target="test14" text="sansaku_machi_kuroda_06" graphic="select_waku_x500.png" size=20 width="250" x=450 y=350  font_color=black]
[glink target="*page2" text="次へ" graphic="select_waku_x500.png" size=20 width="250" x=450 y=400  font_color=black]
@jump target=*cmmn

*page2
[glink target="test16" text="kuroda_5_1"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=100  font_color=black]
[glink target="test17" text="kuroda_6_2"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=150  font_color=black]
[glink target="test18" text="kuroda_9_1"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=200  font_color=black]
[glink target="test19" text="kuroda_9_3"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=250  font_color=black]
[glink target="test20" text="kuroda_9_4"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=300  font_color=black]
[glink target="test21" text="kuroda_10_3"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=350  font_color=black]
[glink target="test22" text="kuroda_10_4"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=400  font_color=black]
[glink target="test23" text="kuroda_11_1"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=450  font_color=black]
[glink target="test24" text="kuroda_11_2"  graphic="select_waku_x500.png" size=20 width="250" x=100 y=500  font_color=black]

[glink target="test25" text="kuroda_11_3"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=100  font_color=black]
[glink target="test26" text="kuroda_11_4"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=150  font_color=black]
[glink target="test27" text="kuroda_12_2"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=200  font_color=black]
[glink target="test28" text="kuroda_12_3"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=250  font_color=black]
[glink target="test29" text="kuroda_12_3_badED"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=300  font_color=black]
[glink target="test30" text="kuroda_1_1"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=350  font_color=black]
[glink target="test31" text="kuroda_1_4"  graphic="select_waku_x500.png" size=20 width="250" x=450 y=400  font_color=black]
[glink target="*page3" text="次へ" graphic="select_waku_x500.png" size=20 width="250" x=450 y=450  font_color=black]

@jump target=*cmmn

*page3
[glink target="test32" text="kuroda_2_2" graphic="select_waku_x500.png" size=20 width="250" x=10 y=100  font_color=black]
[glink target="test33" text="kuroda_3_4_normalED"  graphic="select_waku_x500.png" size=20 width="250" x=10 y=150  font_color=black]
[glink target="test34" text="kuroda_3_4_goodED"  graphic="select_waku_x500.png" size=20 width="250" x=10 y=200  font_color=black]
[glink target="common_9_1" text="common_9_1"  graphic="select_waku_x500.png" size=20 width="250" x=10 y=250  font_color=black]
[glink target="*check_event0" text="クリアリスト"  graphic="select_waku_x500.png" size=20 width="250" x=10 y=300  font_color=black]
[glink target="*check_event" text="クリアチェック"  graphic="select_waku_x500.png" size=20 width="250" x=10 y=350  font_color=black]
[glink target="*comp_end" text="バッジコンプ(END)"  graphic="select_waku_x500.png" size=20 width="250" x=10 y=400  font_color=black]
[glink target="*comp_event" text="バッジコンプ(イベント)"  graphic="select_waku_x500.png" size=20 width="250" x=10 y=450  font_color=black]
[glink target="*8week_asuka_kidoku" text="葉月（既読）"  graphic="select_waku_x500.png" size=20 width="250" x=10 y=500  font_color=black]

[glink target="*kuroda_fumi18" text="黒田手紙：詩について"  graphic="select_waku_x500.png" size=18 width="250" x=350 y=100  font_color=black]
[glink target="*kuroda_fumi19" text="黒田手紙：一日のはじまり"  graphic="select_waku_x500.png" size=18 width="250" x=350 y=150  font_color=black]
[glink target="*kuroda_fumi20" text="黒田手紙：猫"  graphic="select_waku_x500.png" size=18 width="250" x=350 y=200  font_color=black]
[glink target="*kuroda_fumi21" text="黒田手紙：緑の石"  graphic="select_waku_x500.png" size=18 width="250" x=350 y=250  font_color=black]
[glink target="*kuroda_fumi22" text="黒田手紙：お気に入りの曲"  graphic="select_waku_x500.png" size=18 width="250" x=350 y=300  font_color=black]
[glink target="*kuroda_fumi23" text="黒田手紙：写真"  graphic="select_waku_x500.png" size=18 width="250" x=350 y=350  font_color=black]
[glink target="*kuroda_fumi24" text="黒田手紙：変化と永遠"  graphic="select_waku_x500.png" size=18 width="250" x=350 y=400  font_color=black]
[glink target="*kuroda_fumi25" text="黒田手紙：あぶりだし"  graphic="select_waku_x500.png" size=18 width="250" x=350 y=450  font_color=black]

[glink target="*page2" text="page2"  graphic="select_waku_x500.png" size=20 width="250" x=620 y=400  font_color=black]
[glink target="*page1" text="page1"  graphic="select_waku_x500.png" size=20 width="250" x=620 y=450  font_color=black]

*cmmn
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500  font_color=black]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=550  font_color=black]

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

*kuroda_fumi18
[cm]
[freeimage layer = 26]
@jump storage="fumi_kuroda.ks" target="*kuroda_fumi18"
[s]

*kuroda_fumi19
[cm]
[freeimage layer = 26]
@jump storage="fumi_kuroda.ks" target="*kuroda_fumi19"
[s]

*kuroda_fumi20
[cm]
[freeimage layer = 26]
@jump storage="fumi_kuroda.ks" target="*kuroda_fumi20"
[s]

*kuroda_fumi21
[cm]
[freeimage layer = 26]
@jump storage="fumi_kuroda.ks" target="*kuroda_fumi21"
[s]

*kuroda_fumi22
[cm]
[freeimage layer = 26]
@jump storage="fumi_kuroda.ks" target="*kuroda_fumi22"
[s]

*kuroda_fumi23
[cm]
[freeimage layer = 26]
@jump storage="fumi_kuroda.ks" target="*kuroda_fumi23"
[s]

*kuroda_fumi24
[cm]
[freeimage layer = 26]
@jump storage="fumi_kuroda.ks" target="*kuroda_fumi24"
[s]

*kuroda_fumi25
[cm]
[freeimage layer = 26]
@jump storage="fumi_kuroda.ks" target="*kuroda_fumi25"
[s]

*test04
[cm]
[freeimage layer = 26]
@jump storage="okeiko.ks"
[s]

*test05
[cm]
[freeimage layer = 26]
[freeimage layer = 1]
[bg storage="../fgimage/bg/room_niwa.jpg" time=100]
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
@jump storage="sansaku_common_tea.ks" target="*sansaku_machi_common_02"
[s]

*test9
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku_kuroda.ks" target="*sansaku_machi_kuroda_01"
[s]

*test10
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku_kuroda.ks" target="*sansaku_machi_kuroda_02"
[s]

*test11
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku_kuroda.ks" target="*sansaku_machi_kuroda_03"
[s]

*test12
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku_kuroda.ks" target="*sansaku_machi_kuroda_04"
[s]

*test13
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku_kuroda.ks" target="*sansaku_machi_kuroda_05"
[s]

*test14
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="sansaku_kuroda.ks" target="*sansaku_machi_kuroda_06"
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

*test35
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
[イベントシーン構築]
.hide等の表示をテストします。[l][r]
[iscript]
$(".list").hide();
[endscript]
[locate x=450 y=50]
[button name="list" graphic="button_title_start.png" target="*test" time=0]
.hideの後、.hideしたnameの［button］タグを使用しました。[r]
まだ.showはしていませんが、表示されてしまいませんか？[r]
(fixではないボタン表示中のためマウススクロールなどで進行してください)[p]

[glink name="list" target="*test" text="テスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300  font_color=black]
同様に［glink］タグを使用しました。[r]
まだ.showはしていませんが、表示されてしまいませんか？[p]
[layopt layer=26 visible=true]
[image name="list" layer=26 x=334 y=1 storage="button/qk_anim01.png"]
次に［image］タグを使用しました。[r]
やはり(私の環境下では)表示されてしまいます。[p]
[iscript]
$(".list").hide();
[endscript]
再度.hideしました。.hideはもしかして、それまでに表示されているname要素にのみ効果があるのでしょうか？[r]
javascriptのリファレンスを見ましたが、すぐには.hideを置いた後のname要素にまで効果が及ぶかどうかはわかりませんでした……が、挙動としては.hideの後に表示させるname要素には効かない感じがします。[p]
[iscript]
$(".list").remove(); //一度除きます
[endscript]
ちなみにopacityもローカルでは同様に"それまでに表示されているname要素にのみ効果がある"挙動でした。[p]
[button name="list" visible=false graphic="button_title_start.png" target="*test" time=0]
[iscript]
$(".list").hide();
[endscript]
［button name="list" visible=false］として非表示後に.hideしました。[p]

[button name="list" visible=true graphic="button_title_start.png"]
［button name="list" visible=true］しました。.showしていないのに(私の環境では)見えてしまいました。
◆B4nFWraU42さんの環境ではいかがでしょうか？[p]
[iscript]
$(".list").remove(); //除きます
[endscript]
"構築中の表示を隠し、構築後に一斉表示"という目的の為には、［暗転２]でもボタン類は見えてしまいますので、表示を隠すのはなかなか難しいですね……。ひとまず変数の計算や画面操作系の読み込みを終えてからボタン表示タグを置く、という対策を気付いた範囲で取ってみますが、他に良い方法がありましたらお知らせください。[p]

[イベントシーン終了]
@jump target="test"

[s]

*test36
[chara_mod name="bg" storage="toumei.gif" time=100]
[cm]
[freeimage layer = 26]
[call target=*start storage="macro_graphic.ks"]
[call target=*start storage="macro_etc.ks"]
[call target=*start storage="macro_tati_girl.ks"]
@jump storage="opening1.ks"
[s]


*common_9_1
[glink target=y text="お見合い候補の好感度を全て１００にします" graphic="select_waku_x500.png" size=10 width="250" x=100 y=100  font_color=black]
[glink target=page1 text="もどる" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150  font_color=black]
[s]
*y
[iscript]
f.para_kuroda_koukando=100;
f.para_sijyou_koukando=100;
f.para_zaizen_koukando=100;
f.para_shujinkou_shukujodo=200;
[endscript]
@jump storage=common_9_1.ks target="*replay_common_9_1"
[s]

*check_event0
[eval exp="f.clearlist_out_storage = '01_jsYiJcqRkk_test.ks'"]
@jump storage=kuroda_event_clearlist.ks
[s]

*check_event
[call storage="eventpercent_kuroda.ks" target=*start]

[bg storage="../fgimage/bg/bg_web_blue.jpg" time=0]
[ptext name="num_times" text="クリア回数＝" layer=26 size=17 x=100 y=65 color=darkslateblue]
[ptext name="num_time" text=&tf.ending_Number_of_times layer=26 size=17 x=210 y=65 color=darkslateblue overwrite=true]
[ptext name="num_times" text="黒田ルート既プレイ数＝" layer=26 size=17 x=100 y=85 color=darkslateblue]
[ptext name="num_time1" text=&tf.event_Number_of_times layer=26 size=17 x=295 y=85 color=darkslateblue overwrite=true]
[ptext text="/15" layer=26 size=17 x=310 y=85 color=darkslateblue]
[if exp="tf.event_Number_of_times >= 15"]
[ptext text="コンプリート！　プレイありがとうございます。" layer=26 size=17 x=500 y=85 color=darkslateblue]
[else]
[ptext text="『システムフラグ閉鎖する』場合は四条テストの同じ名前のテストボタンを使用後ブラウザをリロードしてください。" layer=26 size=15 x=100 y=105 color=darkslateblue]
[endif]
[ptext text="6月1週" layer=26 size=17 x=100 y=140 color=darkslateblue visible=true]
[ptext text=&sf.event_kuroda_event_6_1 layer=26 size=17 x=400 y=140 color=darkslateblue visible=true]
[ptext text="9月1週" layer=26 size=17 x=100 y=160 color=darkslateblue visible=true]
;
[if exp="sf.trail_kuroda_9_1_seen_owari >= 1 || sf.record.trail_kuroda_9_1_seen_owari >= 1"]
[eval exp="sf.event_kuroda_9_1 = 1"]
[endif]
[ptext text="&sf.event_kuroda_9_1" layer=26 size=17 x=400 y=160 color=darkslateblue visible=true]
[ptext text="9月3週" layer=26 size=17 x=100 y=180 color=darkslateblue visible=true]
[ptext text="&sf.event_kuroda_9_3" layer=26 size=17 x=400 y=180 color=darkslateblue visible=true]
[ptext text="9月4週" layer=26 size=17 x=100 y=200 color=darkslateblue visible=true]
[ptext text="&sf.event_kuroda_9_4" layer=26 size=17 x=400 y=200 color=darkslateblue visible=true]
[ptext text="10月3週" layer=26 size=17 x=100 y=220 color=darkslateblue visible=true]
[ptext text="&sf.event_kuroda_10_3" layer=26 size=17 x=400 y=220 color=darkslateblue visible=true]
[ptext text="10月4週" layer=26 size=17 x=100 y=240 color=darkslateblue visible=true]
[ptext text="&sf.event_kuroda_10_4" layer=26 size=17 x=400 y=240 color=darkslateblue visible=true]
[ptext text="11月1週" layer=26 size=17 x=100 y=260 color=darkslateblue visible=true]
[ptext text="&sf.event_kuroda_11_1" layer=26 size=17 x=400 y=260 color=darkslateblue visible=true]
[ptext text="11月2週" layer=26 size=17 x=100 y=280 color=darkslateblue visible=true]
[ptext text="&sf.event_kuroda_11_2" layer=26 size=17 x=400 y=280 color=darkslateblue visible=true]
[ptext text="11月3週" layer=26 size=17 x=100 y=300 color=darkslateblue visible=true]
[ptext text="&sf.event_kuroda_11_3" layer=26 size=17 x=400 y=300 color=darkslateblue visible=true]
[ptext text="11月4週" layer=26 size=17 x=100 y=320 color=darkslateblue visible=true]
[ptext text="&sf.event_kuroda_11_4" layer=26 size=17 x=400 y=320 color=darkslateblue visible=true]
[ptext text="12月2週" layer=26 size=17 x=100 y=340 color=darkslateblue visible=true]
[ptext text="&sf.event_kuroda_12_2" layer=26 size=17 x=400 y=340 color=darkslateblue visible=true]
[ptext text="12月3週" layer=26 size=17 x=100 y=360 color=darkslateblue visible=true]
[ptext text="&sf.event_kuroda_12_3" layer=26 size=17 x=400 y=360 color=darkslateblue visible=true]
[ptext text="1月1週" layer=26 size=17 x=100 y=380 color=darkslateblue visible=true]
[ptext text="&sf.event_kuroda_1_1" layer=26 size=17 x=400 y=380 color=darkslateblue visible=true]
[ptext text="1月4週" layer=26 size=17 x=100 y=400 color=darkslateblue visible=true]
[ptext text="&sf.event_kuroda_1_4" layer=26 size=17 x=400 y=400 color=darkslateblue visible=true]
[ptext text="2月2週" layer=26 size=17 x=100 y=420 color=darkslateblue visible=true]
[ptext text="&sf.event_kuroda_2_2" layer=26 size=17 x=400 y=420 color=darkslateblue visible=true]
[glink target="end_check_event" text="戻る" graphic="select_waku_x500.png" size=20 width="250" x=400 y=460  font_color=black]
[s]
[cm]
*end_check_event
[freeimage layer = 26]
@jump target=test
[s]
;sf.event_kuroda_6_1  sf.event_kuroda_9_1  sf.event_kuroda_9_3  sf.event_kuroda_9_4
;sf.event_kuroda_10_3 sf.event_kuroda_10_4 sf.event_kuroda_11_1 sf.event_kuroda_11_2 
;sf.event_kuroda_11_3 sf.event_kuroda_11_4 sf.event_kuroda_12_2 sf.event_kuroda_12_3 
;sf.event_kuroda_1_1 sf.event_kuroda_1_4 kuroda_2_2

*comp_end
[cm]
[freeimage layer = 26]
@jump storage=common_badge.ks target="*comp_end"

*comp_event
[cm]
[freeimage layer = 26]
[eval exp="f.badge_from = 'event'"]
;↓「ゲームに戻る」選択肢用です。仮に4月1週目(の休憩中)にセットしていますが、細かい設定はできていないのでエラーが起きやすい状態です。
[call target=*start storage="hensuu.ks"]
;ゲーム変数値数値を代入（月, 週, 月始め切り替え背景など。テスト画面経由時以外に実行
[eval exp="f.okeiko_month = 4"]
[eval exp="f.okeiko_week = 1"]
;週始めを示す変数に1を代入(0=週始め以外を示す)
[eval exp="f.okeikopart_shuuhajime=1"]
;手紙処理に使用する変数を初期化
[eval exp="f.list_count=0"]
[eval exp="f.binsen_number=0"]
[iscript]
$.get("./data/scenario/fumi_wadai.csv", function(data){
//読み込まれたファイル

	f.wadai_list_moto = data;
	f.wadai_list_shurui = [];
	f.wadai_list_shurui = data.split("\n");
	//ラベルの位置までジャンプ
	TG.kag.stat.is_stop = false;
	TG.kag.ftag.startTag("jump",{target:"*complete_load_wadai_list_shurui"}); 
});
[endscript]
[s]
*complete_load_wadai_list_shurui
[iscript]
	f.wadai_list_hairetsu = [];
for( var i = 0 , l = f.wadai_list_shurui.length ; i < l ; i++ ){
	f.wadai_list_hairetsu[i] = f.wadai_list_shurui[i].split(",");
	for( var j = 0 , m = f.wadai_list_hairetsu[i].length ; j < m ; j++ ){//trimも同時に行っておく
		f.wadai_list_hairetsu[i][j] = f.wadai_list_hairetsu[i][j].replace( /(^\s+)|(\s+$)/g , ""  );
	}
}
[endscript]
*complete_load_wadai_list_hairetsu
;手紙の未読/既読リストを読込んで配列f.midoku_list_hairetsu[i][j]に格納。
;[i]部分が攻略キャラ(0=黒田、1=財前、2=華織、3=葛城宮 晴仁、4=藤枝　肇)
;[j]部分が各キャラの手紙が1=未読か0=既読かを示す。(1=返信済、0=未返信）初期csvは全部midokuは1、hensinは0に設定しているので、opening2シナリオで既読の際は0に設定し直す
[iscript]
$.get("./data/scenario/fumi_midoku.csv", function(data){
//読み込まれたファイル

	f.midoku_list_moto = data;
	f.midoku_list_kouryakutaishou = [];
	f.midoku_list_kouryakutaishou = data.split("\n");
	//ラベルの位置までジャンプ
	TG.kag.stat.is_stop = false;
	TG.kag.ftag.startTag("jump",{target:"*complete_load_midoku_list_kouryakutaishou"}); 
});
[endscript]
[s]
*complete_load_midoku_list_kouryakutaishou

[iscript]
	f.midoku_list_hairetsu = [];
for( var i = 0 , l = f.midoku_list_kouryakutaishou.length ; i < l ; i++ ){
	f.midoku_list_hairetsu[i] = f.midoku_list_kouryakutaishou[i].split(",");
	for( var j = 0 , m = f.midoku_list_hairetsu[i].length ; j < m ; j++ ){//trimも同時に行っておく
		f.midoku_list_hairetsu[i][j] = f.midoku_list_hairetsu[i][j].replace( /(^\s+)|(\s+$)/g , ""  );
	}
}
	//ラベルの位置までジャンプ
	TG.kag.stat.is_stop = false;
	TG.kag.ftag.startTag("jump",{target:"*complete_load_midoku_list_hairetsu"}); 

[endscript]
[s]
*complete_load_midoku_list_hairetsu

;手紙の未返信/返信済リストを読込んで配列f.hensin_list_hairetsu[i][j]に格納。
[iscript]
$.get("./data/scenario/fumi_hensin.csv", function(data){
//読み込まれたファイル

	f.hensin_list_moto = data;
	f.hensin_list_kouryakutaishou = [];
	f.hensin_list_kouryakutaishou = data.split("\n");
	//ラベルの位置までジャンプ
	TG.kag.stat.is_stop = false;
	TG.kag.ftag.startTag("jump",{target:"*complete_load_hensin_list_kouryakutaishou"}); 
});
[endscript]
[s]
*complete_load_hensin_list_kouryakutaishou

[iscript]
	f.hensin_list_hairetsu = [];
for( var i = 0 , l = f.hensin_list_kouryakutaishou.length ; i < l ; i++ ){
	f.hensin_list_hairetsu[i] = f.hensin_list_kouryakutaishou[i].split(",");
	for( var j = 0 , m = f.hensin_list_hairetsu[i].length ; j < m ; j++ ){//trimも同時に行っておく
		f.hensin_list_hairetsu[i][j] = f.hensin_list_hairetsu[i][j].replace( /(^\s+)|(\s+$)/g , ""  );
	}
}
	//ラベルの位置までジャンプ
	TG.kag.stat.is_stop = false;
	TG.kag.ftag.startTag("jump",{target:"*complete_load_hensin_list_hairetsu"}); 

[endscript]
[s]
*complete_load_hensin_list_hairetsu
;手紙到着フラグON
[iscript]	
f.fumi_list_all_title = [];
f.fumi_list_all_title[0] = "三月　「最初の手紙」　黒田 将貴";
f.fumi_list_all_storage = [];
f.fumi_list_all_storage[0] = "fumi_kuroda.ks";
f.fumi_list_all_target = [];
f.fumi_list_all_target[0] = "*kuroda_fumi1";
f.fumi_list_all_location_taishou = [];
f.fumi_list_all_location_taishou[0] = 0;
f.fumi_list_all_location_fumi = [];
f.fumi_list_all_location_fumi[0] = 0;
f.fumi_list_kuroda_location_fumi = [];
f.fumi_list_kuroda_location_fumi[0] = 0;
f.fumi_list_kuroda_title = [];
f.fumi_list_kuroda_title[0] = "三月　「最初の手紙」";
f.fumi_list_kuroda_target = [];
f.fumi_list_kuroda_target[0] = "*kuroda_fumi1";
f.fumi_kuroda_number = f.fumi_list_kuroda_title.length;
if (f.kuroda_fumi1_midoku == 0){
f.midoku_list_hairetsu[0][0] = 0;
}

f.fumi_list_all_title.push("三月　「最初の手紙」　財前 美彬");
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi1");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(0);
f.fumi_list_zaizen_location_fumi = [];
f.fumi_list_zaizen_location_fumi[0] = 0;
f.fumi_list_zaizen_title = [];
f.fumi_list_zaizen_title[0] = "三月　「最初の手紙」";
f.fumi_list_zaizen_target = [];
f.fumi_list_zaizen_target[0] = "*zaizen_fumi1";
f.fumi_zaizen_number = f.fumi_list_zaizen_title.length;
if (f.zaizen_fumi1_midoku == 0){
f.midoku_list_hairetsu[1][0] = 0;
}

f.fumi_list_all_title.push("三月　「最初の手紙」　四条 華織");
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_sijyou_storage=[];
f.fumi_list_sijyou_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi1");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(0);
f.fumi_list_sijyou_location_fumi = [];
f.fumi_list_sijyou_location_fumi[0] = 0;
f.fumi_list_sijyou_title = [];
f.fumi_list_sijyou_title[0] = "三月　「最初の手紙」";
f.fumi_list_sijyou_target = [];
f.fumi_list_sijyou_target[0] = "*sijyou_fumi1";
f.fumi_sijyou_number = f.fumi_list_sijyou_title.length;
if (f.sijyou_fumi1_midoku == 0){
f.midoku_list_hairetsu[2][0] = 0;
}

//◆手紙（全員）総数計算
f.fumi_all_number = f.fumi_list_all_title.length;
[endscript]
;◆月始め「○月」の全画面画像表示
[eval exp="f.okeiko_bg_tukihajime = '../fgimage/bg/bg_' + f.okeiko_month + 'gatsu.jpg'"]
[eval exp="f.sysgra_okeiko_month = 'button/kanji_' + f.okeiko_month + '.png'"]
[eval exp="f.sysgra_okeiko_week = 'button/kanji_' + f.okeiko_week + '.png'"]
[eval exp="f.fumi_kakunin=0"]
;主人公L画像表示【登場時にchara_new使用。後はマクロで切り替え】
[chara_new name="A_base" storage="toumei.gif"]
[chara_show left=50 top=220 layer=3 name="A_base" time=0]
[wait time=10]
[chara_new name="A_mayu" storage="toumei.gif"]
[chara_show left=50 top=220 layer=4 name="A_mayu" time=0]
[wait time=10]
[chara_new name="A_me" storage="toumei.gif"]
[chara_show left=50 top=220 layer=5 name="A_me" time=0]
[wait time=10]
[chara_new name="A_kuti" storage="toumei.gif"]
[chara_show left=50 top=220 layer=6 name="A_kuti" time=0]
[wait time=10]
[chara_new name="A_emo" storage="toumei.gif"]
[chara_show left=50 top=220 layer=7 name="A_emo" time=0]
[wait time=10]

;◆背景切り替え中に色々読込
;【システム表示】フキダシ枠【動作軽量化の為、最初のみchara_new使用。後はchara_modで切り替え】
[chara_new name="sys_fukidasi" storage="toumei.gif"]
[wait time=10]
[chara_show left=300 top=220 layer=23 name="sys_fukidasi" time=0]
[wait time=10]
@jump storage=common_badge.ks target="*comp_end"

*8week_asuka_kidoku
[eval exp="sf.event_8_week_asuka=1"]
[eval exp="tf.test_sijyou = true"]
@jump storage="sijyou/event_8_week_asuka.ks"
[s]

*back_test
[cm]
[freeimage layer = 26]
[eval exp="tf.test_kuroda=false"]
@jump storage="test.ks"
[s]

*title
[cm]
[freeimage layer = 26]
[bg storage="../fgimage/bg/title.jpg" time=0]
[eval exp="tf.test_kuroda=false"]
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
