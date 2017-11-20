[setreplay name="test"]
@clearfix
*test
*start
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
[cm]
[iscript]
$(".tips_btn").remove();
$(".26_fore").empty();
$(".27_fore").empty();
[endscript]
;=============================================
;test
;=============================================
[iscript]
$(function(){
    if($('.bg').length){
        tf.bg = 1;
    }
});
[endscript]
;イベントをみたときにたまにエラー
[if exp="tf.bg == 1"]
[chara_mod name="bg" storage="bg/title.jpg"]
[wait time=10]
[endif]

[bg storage="../fgimage/bg/title.jpg" time=0]
[wait time=10]
;test中フラグ　一時変数 利用します
[eval exp="tf.test_zaizen=true"]
*page_0
[cm]
[layopt layer=26 visible=true]
[wait time=10]
[ptext name="test" text="財前 美彬ルート　スクリプト確認用" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold]
[ptext name="test" text="スクリプト作業をありがとうございました。" layer=26 size=17 x=100 y=45 color=darkslateblue]
;[ptext text="" layer=26 size=17 x=100 y=65 color=darkslateblue]
*page1
[glink target="test5_1" text="5月(磯野に相談)" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 graphic="select_waku_x500.png" font_color=black]
[glink target="test9_1" text="9月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 graphic="select_waku_x500.png" font_color=black]
[glink target="test9_3" text="9月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 graphic="select_waku_x500.png" font_color=black]
[glink target="test10_1" text="10月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 graphic="select_waku_x500.png" font_color=black]
[glink target="test10_3" text="10月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 graphic="select_waku_x500.png" font_color=black]
[glink target="test11_1" text="11月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 graphic="select_waku_x500.png" font_color=black]
[glink target="test11_1_bad" text="11月1週bad" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 graphic="select_waku_x500.png" font_color=black]
[glink target="test11_1_2" text="11月1週_2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 graphic="select_waku_x500.png" font_color=black]
[glink target="test11_bad2" text="11月bad2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 graphic="select_waku_x500.png" font_color=black]
[glink target="test11_1_3" text="11月1週_3" graphic="select_waku_x500.png" size=20 width="250" x=100 y=550 graphic="select_waku_x500.png" font_color=black]

[glink target="test11_3" text="11月3週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 graphic="select_waku_x500.png" font_color=black]
[glink target="test11_4_1" text="11月4週_1" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 graphic="select_waku_x500.png" font_color=black]
[glink target="test11_4_2" text="11月4週_2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 graphic="select_waku_x500.png" font_color=black]
[glink target="test12_2" text="12月2週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 graphic="select_waku_x500.png" font_color=black]
[glink target="test12_2_2" text="12月2週_2" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 graphic="select_waku_x500.png" font_color=black]
[glink target="test12_4" text="12月4週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 graphic="select_waku_x500.png" font_color=black]


[glink target="page2" text="2ページ目" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 graphic="select_waku_x500.png" font_color=palevioletred]
@jump target=*common
;１ページ目の表示を共通部分をみせて終わらせます

;２ぺージ目の表示
*page2
[glink target="test1_3_1" text="1月3週_1" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 graphic="select_waku_x500.png" font_color=black]
[glink target="test1_3_2" text="1月3週_2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 graphic="select_waku_x500.png" font_color=black]
[glink target="test2_1" text="2月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 graphic="select_waku_x500.png" font_color=black]
[glink target="test3_4good" text="3月4週good" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 graphic="select_waku_x500.png" font_color=black]
[glink target="test3_4nomal" text="3月4週nomal" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 graphic="select_waku_x500.png" font_color=black]

[glink target="zaizen_bazaar" text="財前バザー" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 graphic="select_waku_x500.png" font_color=black]
[glink target="zaizen_6_1" text="夢イベント" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 graphic="select_waku_x500.png" font_color=black]
[glink target="test_fumi" text="手紙" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 graphic="select_waku_x500.png" font_color=black]
[glink target="test_fumi_tuika" text="手紙追加分" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 graphic="select_waku_x500.png" font_color=black]
[glink target="check_event" text="クリアチェック" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 graphic="select_waku_x500.png" font_color=black]
[glink target="check_event0" text="クリアリスト" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 graphic="select_waku_x500.png" font_color=black]

[glink target="page_0" text="1ページ目" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 graphic="select_waku_x500.png" font_color=palevioletred]
@jump target=*common
;２ページ目の表示を共通部分をみせて終わらせます

*common
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=450 graphic="select_waku_x500.png" font_color=black]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500 graphic="select_waku_x500.png" font_color=black]


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

*test_fumi_tuika
[cm]
[freeimage layer = 26]
@jump storage="zaizen/zaizen_fumi.ks" target="zaizen_fumi_kaidan"
[s]

*check_event0
[cm]
[freeimage layer = 26]
[eval exp="f.clearlist_out_storage = 'test_zaizen.ks'"]
@jump storage="zaizen/zaizen_event_clearlist.ks"
[s]

*check_event
[call storage="eventpercent_zaizen.ks" target=*start]
[if exp="tf.bg == 1"]
[chara_mod name="bg" storage="bg/bg_web_blue.jpg"]
[wait time=10]
[endif]

[bg storage="../fgimage/bg/bg_web_blue.jpg" time=0]
[ptext name="num_times" text="クリア回数＝" layer=26 size=17 x=100 y=65 color=darkslateblue]
[ptext name="num_time" text=&sf.ending_Number_of_times layer=26 size=17 x=210 y=65 color=darkslateblue overwrite=true]
[ptext name="num_times" text="財前ルート既プレイ数＝" layer=26 size=17 x=100 y=85 color=darkslateblue]
[ptext name="num_time1" text=&tf.event_Number_of_times layer=26 size=17 x=295 y=85 color=darkslateblue overwrite=true]
[ptext text="/13" layer=26 size=17 x=310 y=85 color=darkslateblue]
[if exp="tf.event_Number_of_times >= 13"]
[ptext text="コンプリート！　プレイありがとうございます。" layer=26 size=17 x=500 y=85 color=darkslateblue]
[else]
[ptext text="『システムフラグ閉鎖する』場合は四条テストの同じ名前のテストボタンを使用後ブラウザをリロードしてください。" layer=26 size=15 x=100 y=105 color=darkslateblue]
[endif]
[ptext text="6月1週" layer=26 size=17 x=100 y=140 color=darkslateblue visible=true]
[ptext text=&sf.event_zaizen_event_6_1 layer=26 size=17 x=400 y=140 color=darkslateblue visible=true]
[ptext text="9月1週" layer=26 size=17 x=100 y=160 color=darkslateblue visible=true]
[ptext text="&sf.event_zaizen_9_1" layer=26 size=17 x=400 y=160 color=darkslateblue visible=true]
[ptext text="9月3週" layer=26 size=17 x=100 y=180 color=darkslateblue visible=true]
[ptext text="&sf.event_zaizen_9_3" layer=26 size=17 x=400 y=180 color=darkslateblue visible=true]
[ptext text="10月1週" layer=26 size=17 x=100 y=200 color=darkslateblue visible=true]
[ptext text="&sf.event_zaizen_10_1" layer=26 size=17 x=400 y=200 color=darkslateblue visible=true]
[ptext text="10月3週" layer=26 size=17 x=100 y=220 color=darkslateblue visible=true]
[ptext text="&sf.event_zaizen_10_3" layer=26 size=17 x=400 y=220 color=darkslateblue visible=true]
[ptext text="11月1週_3" layer=26 size=17 x=100 y=240 color=darkslateblue visible=true]
[ptext text="&sf.event_zaizen_11_1" layer=26 size=17 x=400 y=240 color=darkslateblue visible=true]
[ptext text="11月3週" layer=26 size=17 x=100 y=260 color=darkslateblue visible=true]
[ptext text="&sf.event_zaizen_11_3" layer=26 size=17 x=400 y=260 color=darkslateblue visible=true]
[ptext text="11月4週" layer=26 size=17 x=100 y=280 color=darkslateblue visible=true]
[ptext text="&sf.event_zaizen_11_4" layer=26 size=17 x=400 y=280 color=darkslateblue visible=true]
[ptext text="12月2週_2" layer=26 size=17 x=100 y=300 color=darkslateblue visible=true]
[ptext text="&sf.event_zaizen_12_2" layer=26 size=17 x=400 y=300 color=darkslateblue visible=true]
[ptext text="12月4週" layer=26 size=17 x=100 y=320 color=darkslateblue visible=true]
[ptext text="&sf.event_zaizen_12_4" layer=26 size=17 x=400 y=320 color=darkslateblue visible=true]
[ptext text="1月3週2" layer=26 size=17 x=100 y=340 color=darkslateblue visible=true]
[ptext text="&sf.event_zaizen_1_3" layer=26 size=17 x=400 y=340 color=darkslateblue visible=true]
[ptext text="2月1週・散策" layer=26 size=17 x=100 y=360 color=darkslateblue visible=true]
[ptext text="&sf.event_zaizen_sansaku_2_1" layer=26 size=17 x=400 y=360 color=darkslateblue visible=true]
[ptext text="2月1週~3月3週・散策・バザー" layer=26 size=17 x=100 y=380 color=darkslateblue visible=true]
[ptext text="&sf.event_zaizen_sansaku_bazar" layer=26 size=17 x=400 y=380 color=darkslateblue visible=true]
;6_1 sf.event_zaizen_event_6_1
;9_1 sf.event_zaizen_9_1
;9_3 sf.event_zaizen_9_3
;10_1 sf.event_zaizen_10_1
;10_3 sf.event_zaizen_10_3
;11_1_3 sf.event_zaizen_11_1
;11_3 sf.event_zaizen_11_3
;11_4 sf.event_zaizen_11_4
;12_2 sf.event_zaizen_12_2
;12_4 sf.event_zaizen_12_4
;1_3_2 sf.event_zaizen_1_3
;2_1 sf.event_zaizen_sansaku_2_1
;bazaar sf.event_zaizen_sansaku_bazar
[glink target="end_check_event" text="戻る" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 graphic="select_waku_x500.png" font_color=black]
[s]
[cm]
*end_check_event
[freeimage layer = 26]
@jump target=test
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
