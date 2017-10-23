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
;葛城宮テスト
[eval exp="tf.test_katuraginomiya = true"]

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
;イベントをみたときにたまにmodエラーするので回避
[if exp="tf.bg == 1"]
[chara_mod name="bg" storage="bg/title.jpg"]
[wait time=10]
[endif]
[bg storage="../fgimage/bg/title.jpg" time=0]
[wait time=10]
[cm]
[layopt layer=26 visible=true]
[wait time=10]
[ptext name="test" text="葛城宮 晴仁ルート　スクリプト確認用" layer=26 size=21 x=100 y=20 color=darkslateblue bold=bold]
[ptext name="test" text="テスト用に全てのスクリプトファイルへのリンクを解放してみています。" layer=26 size=17 x=100 y=45 color=darkslateblue]
[ptext name="test_txt" text="作業終了＝散策イベント2。スクリプト作業をありがとうございました" layer=26 size=17 x=100 y=65 color=darkslateblue]

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
[glink target="check_event0" text="クリアリスト" graphic="select_waku_x500.png" size=20 width="250" x=100 y=500 color=blue]


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
[glink target="test_fumi_tuika" text="手紙追加分" graphic="select_waku_x500.png" size=20 width="250" x=400 y=300 color=white]
[glink target="test6_1" text="夢イベント" graphic="select_waku_x500.png" size=20 width="250" x=400 y=350 color=white]
[glink target="check_event" text="クリアチェック" graphic="select_waku_x500.png" size=20 width="250" x=100 y=400 color=white]

[glink target="page_1" text="前に戻る" graphic="select_waku_x500.png" size=20 width="250" x=400 y=400 color=white]
@jump target=common_page
[s]

*common_page
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

*test_fumi_tuika
[cm]
[if exp="tf.bg == 1"]
[chara_mod name="bg" storage="bg/bg_web_blue.jpg"]
[wait time=10]
[endif]
[bg storage="../fgimage/bg/bg_web_blue.jpg" time=0]
[wait time=10]
[freeimage layer = 26]
@jump storage="katuraginomiya/katuraginomiya_fumi.ks" target=*katuraginomiya_fumi_kaidan
[s]

*check_event0
[cm]
[freeimage layer = 26]
[eval exp="f.clearlist_out_storage = 'test_katuragi.ks'"]
@jump storage="katuraginomiya/katuraginomiya_event_clearlist.ks"
[s]

*check_event
;クリアリストのボタン等の表示が間違っていないか参照用
[iscript]
$(".test_txt").remove();
[endscript]
[call storage="eventpercent_katuraginomiya.ks" target=*start][if exp="tf.bg == 1"]
[chara_mod name="bg" storage="bg/bg_web_blue.jpg"]
[wait time=10]
[endif]
[bg storage="../fgimage/bg/bg_web_blue.jpg" time=0]
[wait time=10]
[ptext name="num_times" text="クリア回数＝" layer=26 size=17 x=100 y=65 color=darkslateblue]
[ptext name="num_time" text=&sf.ending_Number_of_times layer=26 size=17 x=200 y=65 color=darkslateblue overwrite=true]
[ptext name="num_times" text="葛城宮ルート既プレイ数＝" layer=26 size=17 x=100 y=85 color=darkslateblue]
[ptext name="num_time1" text=&tf.event_Number_of_times layer=26 size=17 x=380 y=85 color=darkslateblue overwrite=true]
[ptext text="/17" layer=26 size=17 x=400 y=85 color=darkslateblue]
[if exp="tf.event_Number_of_times >= 17"]
[ptext text="コンプリート！　プレイありがとうございます。" layer=26 size=17 x=500 y=85 color=darkslateblue]
[else]
[ptext text="システムフラグを閉鎖する場合は四条テストの『システムフラグ閉鎖する』ボタンを使用後、ブラウザをリロードしてください。" layer=26 size=15 x=100 y=105 color=darkslateblue]
[endif]
[ptext text="6月3週(or 6月3週)・Ev1" layer=26 size=17 x=100 y=140 color=darkslateblue visible=true]
[ptext text=&sf.event_katuragi_event_2 layer=26 size=17 x=400 y=140 color=darkslateblue visible=true]
[ptext text="7月2週・夢Ev" layer=26 size=17 x=100 y=160 color=darkslateblue visible=true]
[ptext text=&sf.event_katuragi_6_1 layer=26 size=17 x=400 y=160 color=darkslateblue visible=true]
[ptext text="7月4週・Ev2" layer=26 size=17 x=100 y=180 color=darkslateblue visible=true]
[ptext text=&sf.event_katuragi_event_2 layer=26 size=17 x=400 y=180 color=darkslateblue visible=true]
[ptext text="8月2週・Ev3" layer=26 size=17 x=100 y=200 color=darkslateblue visible=true]
[ptext text=&sf.event_katuragi_event_3 layer=26 size=17 x=400 y=200 color=darkslateblue visible=true]
[ptext text="9月1週" layer=26 size=17 x=100 y=220 color=darkslateblue visible=true]
[ptext text="&sf.event_katuragi_9_1" layer=26 size=17 x=400 y=220 color=darkslateblue visible=true]
[ptext text="9月3週" layer=26 size=17 x=100 y=240 color=darkslateblue visible=true]
[ptext text="&sf.event_katuragi_9_3" layer=26 size=17 x=400 y=240 color=darkslateblue visible=true]
[ptext text="9月4週" layer=26 size=17 x=100 y=260 color=darkslateblue visible=true]
[ptext text="&sf.event_katuragi_9_4" layer=26 size=17 x=400 y=260 color=darkslateblue visible=true]
[ptext text="10月2週" layer=26 size=17 x=100 y=280 color=darkslateblue visible=true]
[ptext text="&sf.event_katuragi_10_2" layer=26 size=17 x=400 y=280 color=darkslateblue visible=true]
[ptext text="10月3週" layer=26 size=17 x=100 y=300 color=darkslateblue visible=true]
[ptext text="&sf.event_katuragi_10_3" layer=26 size=17 x=400 y=300 color=darkslateblue visible=true]
[ptext text="11月1週" layer=26 size=17 x=100 y=320 color=darkslateblue visible=true]
[ptext text="&sf.event_katuragi_11_1" layer=26 size=17 x=400 y=320 color=darkslateblue visible=true]
[ptext text="11月4週" layer=26 size=17 x=100 y=340 color=darkslateblue visible=true]
[ptext text="&sf.event_katuragi_11_4" layer=26 size=17 x=400 y=340 color=darkslateblue visible=true]
[ptext text="12月1週" layer=26 size=17 x=100 y=360 color=darkslateblue visible=true]
[ptext text="&sf.event_katuragi_12_1" layer=26 size=17 x=400 y=360 color=darkslateblue visible=true]
[ptext text="1月3週" layer=26 size=17 x=100 y=380 color=darkslateblue visible=true]
[ptext text="&sf.event_katuragi_1_3" layer=26 size=17 x=400 y=380 color=darkslateblue visible=true]
[ptext text="2月2週" layer=26 size=17 x=100 y=400 color=darkslateblue visible=true]
[ptext text="&sf.event_katuragi_2_2" layer=26 size=17 x=400 y=400 color=darkslateblue visible=true]
[ptext text="2月3週～3月4週バザー" layer=26 size=17 x=100 y=420 color=darkslateblue visible=true]
[ptext text="&sf.event_katuragi_bazar" layer=26 size=17 x=400 y=420 color=darkslateblue visible=true]
[ptext text="2月2週～3月4週・散策1" layer=26 size=17 x=100 y=440 color=darkslateblue visible=true]
[ptext text="&sf.event_katuragi_sansaku1" layer=26 size=17 x=400 y=440 color=darkslateblue visible=true]
[ptext text="2月2週～3月4週・散策2" layer=26 size=17 x=100 y=460 color=darkslateblue visible=true]
[ptext text="&sf.event_katuragi_sansaku2" layer=26 size=17 x=400 y=460 color=darkslateblue visible=true]

;katuraginomiya_event_1 sf.event_katuragi_event_1
;katuraginomiya_event_2 sf.event_katuragi_event_2
;katuraginomiya_event_3 sf.event_katuragi_event_3
;katuraginomiya_6_1 sf.event_katuragi_6_1
;katuraginomiya_9_1	sf.event_katuragi_9_1
;katuraginomiya_9_3	sf.event_katuragi_9_3
;katuraginomiya_9_4 sf.event_katuragi_9_4
;katuraginomiya_10_2	sf.event_katuragi_10_2
;katuraginomiya_10_3	sf.event_katuragi_10_3
;katuraginomiya_11_1	sf.event_katuragi_11_1
;katuraginomiya_11_4	sf.event_katuragi_11_4
;katuraginomiya12_1 sf.event_katuragi_12_1
;katuraginomiya_1_3 sf.event_katuragi_1_3
;katuraginomiya_2_2 sf.event_katuragi_2_2
;katuraginomiya_bazaar		sf.event_katuragi_bazar
;katuraginomiya_sansaku1	sf.event_katuragi_sansaku1
;katuraginomiya_sansaku2 sf.event_katuragi_sansaku2
[glink target="end_check_event" text="戻る" graphic="select_waku_x500.png" size=20 width="250" x=400 y=500 color=white]
[s]
*end_check_event
[cm]
[freeimage layer = 26]
@jump target=test

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
