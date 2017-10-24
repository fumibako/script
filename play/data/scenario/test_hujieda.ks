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
;藤枝テストモード
[eval exp="tf.test_hujieda = true"]

;画像ファイルはフルパス（プロジェクトファイル以下）で指定してください
[iscript]
f.preload_images_katuraginomiya = ["data/fgimage/girl/S/base.png","data/fgimage/girl/S/base_yubi.png","data/fgimage/girl/S/base_katate.png","data/fgimage/girl/S/base_ryoute.png","data/fgimage/girl/S/mayu_yowa.png","data/fgimage/girl/S/mayu_futuu.png","data/fgimage/girl/S/mayu_komari.png","data/fgimage/girl/S/me_fusi1.png","data/fgimage/girl/S/me_futuu.png","data/fgimage/girl/S/kuti_futuu.png","data/fgimage/message_bg/frame_red.png","data/fgimage/bg/room_niwa.jpg"];
[endscript]
[preload storage=&f.preload_images_katuraginomiya wait=true]

[call target=*start storage="hensuu.ks"]
[cm]
[iscript]
$(".tips_btn").remove();
$(".26_fore").empty();
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
;イベントをみたときにたまにmodエラー
[if exp="tf.bg == 1"]
[chara_mod name="bg" storage="bg/title.jpg"]
[wait time=10]
[endif]
[bg storage="../fgimage/bg/title.jpg" time=0]
[wait time=10]
[cm]
[layopt layer=26 visible=true]
[wait time=10]
[ptext  name="test" text="藤枝　肇ルート　スクリプト確認用" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold]
[ptext  name="test" text="テスト用に全てのスクリプトファイルへのリンクを解放してみています。" layer=26 size=17 x=100 y=45 color=darkslateblue]
[ptext name="test,test_txt" text="四条、葛城宮ルートスクリプト化完了後に作業予定です。スクリプト作業をありがとうございました" layer=26 size=17 x=100 y=65 color=darkslateblue]
;[ptext text="作業中＝　" layer=26 size=17 x=100 y=65 color=darkslateblue]

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
[glink target="test4_4" text="4月4週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test5_4" text="5月4週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test6_4" text="6月4週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test7_4" text="7月4週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="test8_4" text="8月4週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="test8_4bad" text="8月4週bad" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]
[glink target="test9_1" text="9月1週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]
[glink target="test9_2" text="9月2週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=450 color=white]
[glink target="test9_4" text="9月4週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=white]
[glink target="check_event0" text="クリアリスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=550 color=blue]

[glink target="test10_1" text="10月1週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="test10_3" text="10月3週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="test11_1" text="11月1週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="test11_3" text="11月3週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="test11_3bad" text="11月3週badED" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
[glink target="test12_3" text="12月3週" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]
[glink target="test12_3b" text="12月3週badED" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=white]

[glink target="page_2" text="次へ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=450 color=white]
;ページをとめます
@jump target=common_page
[s]

*page_2

[glink target="test1_3" text="1月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=100 color=white]
[glink target="test2_3" text="2月3週" graphic="select_waku_x500.png" size=20 width="250" x=100 y=150 color=white]
[glink target="test3_4" text="3月4週normalED" graphic="select_waku_x500.png" size=20 width="250" x=100 y=200 color=white]
[glink target="test_goodED" text="goodEDエピローグ" graphic="select_waku_x500.png" size=20 width="250" x=100 y=250 color=white]
[glink target="hujieda_bazaar_1" text="藤枝・バザーイベント1" graphic="select_waku_x500.png" size=20 width="250" x=100 y=300 color=white]
[glink target="hujieda_bazaar_2" text="藤枝・バザーイベント2" graphic="select_waku_x500.png" size=20 width="250" x=100 y=350 color=white]

[glink target="sansaku1" text="散策イベント1" graphic="select_waku_x500.png" size=20 width="250" x=400 y=100 color=white]
[glink target="test_fumi" text="手紙" graphic="select_waku_x500.png" size=20 width="250" x=400 y=150 color=white]
[glink target="test_fumi2" text="手紙追加分" graphic="select_waku_x500.png" size=20 width="250" x=400 y=200 color=white]
[glink target="hujieda_6_1" text="夢イベント" graphic="select_waku_x500.png" size=20 width="250" x=400 y=250 color=white]
[glink target="check_event" text="クリアチェック" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]

[glink target="page_1" text="前にもどる" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=white]
;[glink target="page_2" text="次へ" graphic="select_waku_x500.png" size=20 width="250" x=400 y=450 color=white]
;ページをとめます
;@jump target=common_page
;[s]

*common_page
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=500 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=20 width="250" x=500 y=550 color=white]

[s]


*test4_4
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_4_4.ks"
[s]


*test5_4
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_5_4.ks"
[s]


*test6_4
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_6_4.ks"
[s]

*test7_4
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_7_4.ks"
[s]

*test8_4
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_8_4.ks"
[s]

*test8_4bad
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_8_4_bad.ks"
[s]

*test9_1
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_9_1.ks"
[s]


*test9_2
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_9_2.ks"
[s]


*test9_4
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_9_4.ks"
[s]

*test10_1
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_10_1.ks"
[s]

*test10_3
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_10_3.ks"
[s]


*test11_1
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_11_1.ks"
[s]


*test11_3
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_11_3.ks"
[s]

*test11_3bad
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_11_3bad.ks"
[s]

*test12_3
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_12_3.ks"
[s]


*test12_3b
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_12_3_badED.ks"
[s]


*test1_3
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_1_3.ks"
[s]

*test2_3
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_2_3.ks"
[s]

*test3_4
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_3_4_normalED.ks"
[s]


*test_goodED
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_3_4_goodED.ks"
[s]

*sansaku1
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_sansaku1.ks"
[s]

*test_fumi
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_fumi.ks"
[s]

*test_fumi2
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_fumi.ks" target="hujieda_fumi_kaidan"
[s]

*hujieda_bazaar_1
[cm]
[freeimage layer = 26]
@jump storage="hujieda/hujieda_bazaar_1.ks"
[s]

*hujieda_bazaar_2
[freeimage layer = 26]
[cm]
@jump storage="hujieda/hujieda_bazaar_2.ks"
[s]

*hujieda_6_1
[freeimage layer = 26]
[cm]
@jump storage="hujieda/hujieda_6_1.ks"
[s]

*check_event0
[freeimage layer = 26]
[cm]
[eval exp="f.clearlist_out_storage ='test_hujieda.ks'"]
@jump storage="hujieda/hujieda_event_clearlist.ks"
[s]

*check_event
[call storage="eventpercent_hujieda.ks" target=*start]
[iscript]
$(".test_txt").remove();
[endscript]
[if exp="tf.bg == 1"]
[chara_mod name="bg" storage="bg/bg_web_blue.jpg"]
[wait time=10]
[endif]
[bg storage="../fgimage/bg/bg_web_blue.jpg" time=0]
[ptext name="num_times" text="クリア回数＝" layer=26 size=17 x=100 y=65 color=darkslateblue]
[ptext name="num_time" text=&sf.ending_Number_of_times layer=26 size=17 x=210 y=65 color=darkslateblue overwrite=true]
[ptext name="num_times" text="藤枝ルート既プレイ数＝" layer=26 size=17 x=100 y=85 color=darkslateblue]
[ptext name="num_time1" text=&tf.event_Number_of_times layer=26 size=17 x=295 y=85 color=darkslateblue overwrite=true]
[ptext text="/13" layer=26 size=17 x=310 y=85 color=darkslateblue]
[if exp="tf.event_Number_of_times >= 13"]
[ptext text="コンプリート！　プレイありがとうございます。" layer=26 size=17 x=500 y=85 color=darkslateblue]
[else]
[ptext text="『システムフラグ閉鎖する』場合は四条テストの同じ名前のテストボタンを使用後ブラウザをリロードしてください。" layer=26 size=15 x=100 y=105 color=darkslateblue]
[endif]
[ptext text="4月4週" layer=26 size=17 x=100 y=140 color=darkslateblue visible=true]
[ptext text=&sf.event_hujieda_4_4 layer=26 size=17 x=400 y=140 color=darkslateblue visible=true]
[ptext text="5月4週" layer=26 size=17 x=100 y=160 color=darkslateblue visible=true]
[ptext text="&sf.event_hujieda_5_4" layer=26 size=17 x=400 y=160 color=darkslateblue visible=true]
[ptext text="6月1週" layer=26 size=17 x=100 y=180 color=darkslateblue visible=true]
[ptext text="&sf.event_hujieda_6_1" layer=26 size=17 x=400 y=180 color=darkslateblue visible=true]
[ptext text="6月4週" layer=26 size=17 x=100 y=200 color=darkslateblue visible=true]
[ptext text="&sf.event_hujieda_6_4" layer=26 size=17 x=400 y=200 color=darkslateblue visible=true]
[ptext text="10月1週" layer=26 size=17 x=100 y=220 color=darkslateblue visible=true]
[ptext text="&sf.event_hujieda_10_1" layer=26 size=17 x=400 y=220 color=darkslateblue visible=true]
[ptext text="10月3週" layer=26 size=17 x=100 y=240 color=darkslateblue visible=true]
[ptext text="&sf.event_hujieda_10_3" layer=26 size=17 x=400 y=240 color=darkslateblue visible=true]
[ptext text="11月1週" layer=26 size=17 x=100 y=260 color=darkslateblue visible=true]
[ptext text="&sf.event_hujieda_11_1" layer=26 size=17 x=400 y=260 color=darkslateblue visible=true]
[ptext text="11月3週" layer=26 size=17 x=100 y=280 color=darkslateblue visible=true]
[ptext text="&sf.event_hujieda_11_3" layer=26 size=17 x=400 y=280 color=darkslateblue visible=true]
[ptext text="12月3週" layer=26 size=17 x=100 y=300 color=darkslateblue visible=true]
[ptext text="&sf.event_hujieda_12_3" layer=26 size=17 x=400 y=300 color=darkslateblue visible=true]
[ptext text="1月3週" layer=26 size=17 x=100 y=320 color=darkslateblue visible=true]
[ptext text="&sf.event_hujieda_1_3" layer=26 size=17 x=400 y=320 color=darkslateblue visible=true]
[ptext text="2月3週" layer=26 size=17 x=100 y=340 color=darkslateblue visible=true]
[ptext text="&sf.event_hujieda_2_3" layer=26 size=17 x=400 y=340 color=darkslateblue visible=true]
[ptext text="3月2週～3月3週・バザー" layer=26 size=17 x=100 y=360 color=darkslateblue visible=true]
[ptext text="&sf.event_hujieda_bazaar" layer=26 size=17 x=400 y=360 color=darkslateblue visible=true]
[ptext text="2月3週～2月4週・散策" layer=26 size=17 x=100 y=380 color=darkslateblue visible=true]
[ptext text="&sf.event_hujieda_sansaku" layer=26 size=17 x=400 y=380 color=darkslateblue visible=true]
;sf.event_hujieda_4_4
;sf.event_hujieda_5_4
;sf.event_hujieda_6_1
;sf.event_hujieda_6_4
;sf.event_hujieda_7_4
;sf.event_hujieda_8_4
;sf.event_hujieda_9_1
;sf.event_hujieda_9_2
;sf.event_hujieda_9_4
;sf.event_hujieda_10_1
;sf.event_hujieda_10_3
;sf.event_hujieda_11_1
;sf.event_hujieda_11_3
;sf.event_hujieda_12_3
;sf.event_hujieda_1_3
;sf.event_hujieda_2_3
;sf.event_hujieda_bazaar
;sf.event_hujieda_sansaku1
[glink target="end_check_event" text="戻る" graphic="select_waku_x500.png" size=20 width="250" x=400 y=450 color=white]
[s]
[cm]
*end_check_event
[freeimage layer = 26]
@jump target=test
[s]



*auto
[autostart]
@jump target=page_1
[s]

*back_test
[cm]
[freeimage layer = 26]
[eval exp="tf.test_hujieda = false"]
@jump storage="test.ks"
[s]

*title
[cm]
[freeimage layer = 26]
;------タイトルへ戻る
[eval exp="tf.test_hujieda = false"]
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
