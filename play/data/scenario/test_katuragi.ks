[setreplay name="test"]
*test
[stopbgm]
[if exp="sf.BGM=='ON'"]
;【BGM】雪解け（タイトル画面等）スマホではシナリオ読み込み最初のBGMはclick=trueを入れないと鳴らないそうです
[playbgm storage="title_yukidoke.ogg" loop=true]
[eval exp="f.bgm_storage='title_yukidoke.ogg'"]
[endif]
;葛城宮テスト
[eval exp="tf.test_katuraginomiya = true"]

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
[ptext text="葛城宮 晴仁ルート　スクリプト確認用" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold]
[ptext text="テスト用に全てのスクリプトファイルへのリンクを解放してみています。" layer=26 size=17 x=100 y=45 color=darkslateblue]
[ptext text="作業終了＝散策イベント2。スクリプト作業をありがとうございました" layer=26 size=17 x=100 y=65 color=darkslateblue]

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
*page_1
[glink target="test_event_1" text="イベント1" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test_event_2" text="イベント2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test_event_3" text="イベント3" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
;[glink target="test8_2" text="8月2週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
;イベント3↑
[glink target="test9_1" text="9月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test9_3" text="9月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="test9_4" text="9月4週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="test10_2" text="10月2週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
[glink target="test10_3" text="10月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]

[glink target="test11_1" text="11月1週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="test11_1b" text="11月1週badED" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="test11_4" text="11月4週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="test12_1" text="12月1週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="test12_1b" text="12月1週b" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]

[glink target="page_2" text="次へ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]
@jump target=common_page
[s]


*page_2
[glink target="test1_3" text="1月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test2_2" text="2月2週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test2_2b" text="2月2週b" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test3_4" text="3月4週normalED" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test_goodED" text="goodEDエピローグ" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]


[glink target="sansaku1" text="散策イベント(2月～)1" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="sansaku2" text="散策イベント(2月～)2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="bazaar" text="バザーイベント" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="test_fumi" text="手紙" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="test6_1" text="夢イベント" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]

[glink target="page_1" text="前に戻る" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=white]
@jump target=common_page
[s]

*common_page
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=450 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500 color=white]
[glink target="auto" text="オートモード" graphic="select_waku_x500.png" size=20 width="250" x=500 y=550 color=white]
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

*test6_1
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_6_1.ks"
[s]

*test8_2
;katuraginomiya_8_2.ks
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_8_2.ks"
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

*test9_4
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_9_4.ks"
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


*test11_1b
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_11_1badED.ks"
[s]

*test11_4
;katuraginomiya_11_4.ks
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_11_4.ks"
[s]

*test12_1
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_12_1.ks"
[s]


*test12_1b
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya12_1b.ks"
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

*test2_2b
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya2_2b.ks"
[s]


*test3_4
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_3_4_nomalED.ks"
[s]


*test_goodED
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_3_4epilogue_goodED.ks"
[s]

*sansaku1
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_sansaku1.ks"
[s]

*sansaku2
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_sansaku2.ks"
[s]

;katuraginomiya_bazaar.ks
*bazaar
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_bazaar.ks"
[s]

*test_fumi
[cm]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_fumi.ks"
[s]


*auto
[autostart]
@jump target=page_1
[s]

*back_test
[cm]
[freeimage layer = 26]
[eval exp="tf.test_katuraginomiya = false"]
@jump storage="test.ks"
[s]

*title
[cm]
[freeimage layer = 26]
;------タイトルへ戻る
[eval exp="tf.test_katuraginomiya = false"]
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
