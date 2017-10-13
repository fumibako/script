;====================================================================================================
;説明
;下部、判定まとめにボタンが表示されます。　先にimage画像が表示されますが見た目上の判定を行っています。
;ボタンにはexpでシナリオ名を指定してあります。 【tf.jp_sinario  初期化'none'】 
;このシナリオの戻り値は　f.event_replay = 'katuraginomiya';　です。
;====================================================================================================
*start
@clearfix
@clearstack
[cm]
[iscript]
$(".pasent").remove();
$(".pasent1").remove();
$(".chara_name_area").empty();
[endscript]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_clearlist.jpg" time=500 visible=true]
[image name="loding_pic2" layer=29 storage="../image/name_katuragi.png" x=245 y=35 visible=true]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=580 visible=true]
[wait time=50]
;リプレイから帰ってきてokeikoフラグを戻す処理
;[if exp="f.clearlist_out_storage == 'katuraginomiya'"]
;[eval exp="f.okeiko_gamen = true"]
;[endif]
;====================================================================================================
*test
[if exp="f.okeiko_gamen != true"]
[iscript]
$(".1_fore").empty();
[endscript]
[endif]
[if exp="tf.test_katuraginomiya == true]
[iscript]
$(".test").empty();
[endscript]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=600 y=600 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=800 y=600 color=white]
[glink target="no_test" text="シナリオテストを無効にする" graphic="select_waku_x500.png" exp="tf.test_katuraginomiya=false,tf.test_gamen=false" size=10 width="150" x=400 y=600 color=white]
*no_test
[endif]
;=======================================================================================
;変数初期設定　エラー回避→scenario/eventpercent_katuraginomiya.ksとして切り出しました。一箇所で調整できるようにまとめます
[call storage="eventpercent_katuraginomiya.ks" target=*start]
;====================================位置指定===========================================
*set_position
;左位置
[eval exp="tf.x0 = 20"]
[eval exp="tf.x1 = 50"]
;二桁↓左位置
[eval exp="tf.x1_2 = 50"]
;左位置2
[eval exp="tf.x0_1 = 250"]
[eval exp="tf.x2 = 280"]
;二桁↓左位置2
[eval exp="tf.x2_2 = 270]
;左位置3
[eval exp="tf.x0_2 = 510"]
[eval exp="tf.x3 = 530"]
;左位置4
[eval exp="tf.x0_3 = 730"]
[eval exp="tf.x4 = 760"]
;下に連なる行
[eval exp="tf.y_plus_position =50"]
[eval exp="tf.y1 = 130"]
[eval exp="tf.y2 = tf.y1 + tf.y_plus_position"]
[eval exp="tf.y3 = tf.y2 + tf.y_plus_position"]
[eval exp="tf.y4 = tf.y3 + tf.y_plus_position"]
[eval exp="tf.y5 = tf.y4 + tf.y_plus_position"]
[eval exp="tf.y6 = tf.y5 + tf.y_plus_position"]
[eval exp="tf.y7 = tf.y6 + tf.y_plus_position"]
[eval exp="tf.y8 = tf.y7 + tf.y_plus_position"]
[eval exp="tf.y9 = tf.y8 + tf.y_plus_position"]
;================================背景表示;================================
;「情報(お稽古画面表示の上にlayer26で幕として背景を被せた状態)」から見る際の対策として、同様に背景(layer26以上)を幕として利用する形に変更させていただきます
[image layer=26 x=0 y=0 storage="bg/bg_clearlist.jpg"]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_clearlist.jpg"]
;[bg storage="../fgimage/bg/bg_clearlist.jpg" time=0]
;================================移動ボタン=======================================================
[iscript]
$(".layer_free").css("opacity",0);
[endscript]
[locate x=880 y=24]
[button name="back_clearlist" graphic="back.png" height=50 width=50 storage=&f.clearlist_out_storage exp="f.event_replay='none'" target="*start"]
[wait time=10]
[button name="c_name1" graphic="name_kuroda.png" y=550 x=100 storage="kuroda_event_clearlist.ks"]
[button name="c_name1" graphic="name_sijyou.png" y=550 x=250 storage="sijyou/sijyou_event_clearlist.ks"]
[button name="c_name1" graphic="name_zaizen.png" y=550 x=400 storage="zaizen/zaizen_event_clearlist.ks"]
[button name="c_name1" graphic="name_katuragi.png" y=550 x=550 storage="katuraginomiya/katuraginomiya_event_clearlist.ks"]
[if exp="sf.event_hujieda_4_4 == 1 && sf.event_hujieda_8_4 == 1"]
[button name="c_name1" graphic="name_hujieda.png" y=550 x=700 storage="hujieda/hujieda_event_clearlist.ks"]
[elsif exp="sf.event_hujieda_7_4 == 1 && sf.event_hujieda_8_4 != 1"]
[button name="c_name1" graphic="name_hujieda0.png" y=550 x=700 storage="hujieda/hujieda_event_clearlist.ks"]
[elsif exp="sf.event_hujieda_4_4 == 1 && sf.event_hujieda_7_4 != 1"]
[button name="c_name1" graphic="name_hatena.png" y=550 x=700 storage="hujieda/hujieda_event_clearlist.ks"]
[endif]
;=======================================================================================
*check_event
;名前表示
[image name="c_name1" storage="../image/name_katuragi.png" layer=26 x=245 y=35 visible=true]
;達成率
[ptext name="pasent" text="&tf.event_pasent" layer=26 size=30 x=600 y=31 color=snow]
[ptext name="pasent1" text="%" layer=26 size=30 x=650 y=31 color=snow]
;=======================================================================================
;katuragi_event_1   !! 6/2 or 6/3 !!
[image name="day,katuragi_event_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y1 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_event_1" storage="../image/day6_2.png"  layer=26 x=&tf.x1 y=&tf.y1 visible=true wait=true]
[wait time=10]
;katuragi_7_2 夢イベント
[image name="day,katuragi_7_2" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y2 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_7_2" storage="../image/day7_2.png"  layer=26 x=&tf.x1 y=&tf.y2 visible=true wait=true]
[wait time=10]
;katuragi_event_2
[image name="day,katuragi_event_2" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y3 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_event_2" storage="../image/day7_4.png"  layer=26 x=&tf.x1 y=&tf.y3 visible=true wait=true]
[wait time=10]
;katuragi_event_3 皇后様のお印入りのお茶事の招待状
[image name="day,katuragi_event_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y4 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_event_3" storage="../image/day8_2.png"  layer=26 x=&tf.x1 y=&tf.y4 visible=true wait=true]
[wait time=10]
;katuragi_9_1
[image name="day,katuragi_9_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y5 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_9_1" storage="../image/day9_1.png"  layer=26 x=&tf.x1 y=&tf.y5 visible=true wait=true]
[wait time=10]
;katuragi_9_3
[image name="day,katuragi_9_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y6 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_9_3" storage="../image/day9_3.png"  layer=26 x=&tf.x1 y=&tf.y6 visible=true wait=true]
[wait time=10]
;katuragi_9_4
[image name="day,katuragi_9_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y7 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_9_4" storage="../image/day9_4.png"  layer=26 x=&tf.x1 y=&tf.y7 visible=true wait=true]
[wait time=10]
;katuragi_10_2
[image name="day,katuragi_10_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y8 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_10_2" storage="../image/day10_2.png"  layer=26 x=&tf.x1 y=&tf.y8 visible=true wait=true]
[wait time=10]
;左位置2tf.x0_1 tf.x2
;katuragi_10_3
[image name="day,katuragi_10_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y1 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_10_3" storage="../image/day10_3.png"  layer=26 x=&tf.x2 y=&tf.y1 visible=true wait=true]
[wait time=10]
;katuragi_11_1
[image name="day,katuragi_11_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y2 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_11_1" storage="../image/day11_1.png"  layer=26 x=&tf.x2_2 y=&tf.y2 visible=true wait=true]
[wait time=10]
;katuragi_11_4
[image name="day,katuragi_11_4" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y3 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_11_4" storage="../image/day11_4.png"  layer=26 x=&tf.x2_2 y=&tf.y3 visible=true wait=true]
[wait time=10]
;katuragi_12_1
[image name="day,katuragi_12_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y4 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_12_1" storage="../image/day12_1.png"  layer=26 x=&tf.x2_2 y=&tf.y4 visible=true wait=true]
[wait time=10]
;katuragi_1_3
[image name="day,katuragi_1_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y5 visible=true wait=true]
[image name="day,katuragi_1_3" storage="../image/day1_3.png"  layer=26 x=&tf.x2 y=&tf.y5 visible=true wait=true]
;katuragi_2_2
[image name="day,katuragi_2_2" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y6 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_2_2" storage="../image/day2_2.png"  layer=26 x="&tf.x2" y=&tf.y6 visible=true wait=true]
[wait time=10]
;katuragi_bazar
[image name="day,katuragi_bazar" storage="../image/day_check.png" layer=26 x="&tf.x0_1" y=&tf.y7 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_bazar" storage="../image/day2_3.png"  layer=26 x="&tf.x2" y=&tf.y7 visible=true wait=true]
[wait time=10]
;左位置3"tf.x0_2 tf.x3
;katuragi_sansaku1 2月2週～3月4週・散策1
[image name="day,katuragi_sansaku1" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y1 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_sansaku1" storage="../image/day2_2.png"  layer=26 x=&tf.x3 y=&tf.y1 visible=true wait=true]
[wait time=10]
;katuragi_sansaku2 2月2週～3月4週・散策2
[image name="day,katuragi_sansaku2" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y2 visible=true wait=true]
[wait time=10]
[image name="day,katuragi_sansaku2" storage="../image/day2_2.png"  layer=26 x=&tf.x3 y=&tf.y2 visible=true wait=true]
[wait time=10]
;====================================================================================================
*common
;一度、全ての日付の画像を暗めに表示します。全部終わるまでプリロード幕つける
[iscript]
$(".day").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
;====================================================================================================
;判定処理をまとめます
[eval exp="tf.jp_sinario='none'"]
;katuragi_event_1   !! 6/2 or 6/3 !!
[if exp="sf.event_katuragi_event_1 == 1"]
[iscript]
$(".katuragi_event_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_event_1" graphic="day6_2.png" target="katuragi_sinario" x=&tf.x1 y=&tf.y1 exp="tf.jp_sinario='katuraginomiya_event_1'"]
[image name="day,katuragi_event_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y1 visible=true wait=true]
[else]
[image name="day,katuragi_event_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y1 visible=true wait=true]
[endif]
[if exp="sf.event_katuragi_6_1 == 1"]
;katuragi_7_2 夢イベント
[iscript]
$(".katuragi_7_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_7_2" graphic="day7_2.png" target="katuragi_sinario" x=&tf.x1 y=&tf.y2 exp="tf.jp_sinario='katuraginomiya_6_1'"]
[image name="day,katuragi_7_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y2 visible=true wait=true]
[else]
[image name="day,katuragi_7_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y2 visible=true wait=true]
[endif]
;7_4
[if exp="sf.event_katuragi_event_2 == 1"]
[iscript]
$(".katuragi_event_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_event_2" graphic="day7_4.png" target="katuragi_sinario" x=&tf.x1 y=&tf.y3 exp="tf.jp_sinario='katuraginomiya_event_2'"]
[image name="day,katuragi_event_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y3 visible=true wait=true]
[else]
[image name="day,katuragi_event_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y3 visible=true wait=true]
[endif]
;8_2
[if exp="sf.event_katuragi_event_3 == 1"]
[iscript]
$(".katuragi_event_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_event_3" graphic="day8_2.png" target="katuragi_sinario" x=&tf.x1 y=&tf.y4 exp="tf.jp_sinario='katuraginomiya_event_3'"]
[image name="day,katuragi_event_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y4 visible=true wait=true]
[else]
[image name="day,katuragi_event_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y4 visible=true wait=true]
[endif]
[if exp="sf.event_katuragi_9_1 == 1"]
[iscript]
$(".katuragi_9_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_9_1" graphic="day9_1.png" target="katuragi_sinario" x=&tf.x1 y=&tf.y5 exp="tf.jp_sinario='katuraginomiya_9_1'"]
[image name="day,katuragi_9_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y5 visible=true wait=true]
[else]
[image name="day,katuragi_9_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y5 visible=true wait=true]
[endif]
[if exp="sf.event_katuragi_9_3 == 1"]
[iscript]
$(".katuragi_9_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_9_3" graphic="day9_3.png" target="katuragi_sinario" x=&tf.x1 y=&tf.y6 exp="tf.jp_sinario='katuraginomiya_9_3'"]
[image name="day,katuragi_9_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y6 visible=true wait=true]
[else]
[image name="day,katuragi_9_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y6 visible=true wait=true]
[endif]
[if exp="sf.event_katuragi_9_4 == 1"]
[iscript]
$(".katuragi_9_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_9_4" graphic="day9_4.png" target="katuragi_sinario" x=&tf.x1 y=&tf.y7 exp="tf.jp_sinario='katuraginomiya_9_4'"]
[image name="day,katuragi_9_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y7 visible=true wait=true]
[else]
[image name="day,katuragi_9_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y7 visible=true wait=true]
[endif]
[if exp="sf.event_katuragi_10_2 == 1"]
[iscript]
$(".katuragi_10_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_10_2" graphic="day10_2.png" target="katuragi_sinario" x=&tf.x1 y=&tf.y8 exp="tf.jp_sinario='katuraginomiya_10_2'"]
[image name="day,katuragi_10_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y8 visible=true wait=true]
[else]
[image name="day,katuragi_10_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y8 visible=true wait=true]
[endif]
[if exp="sf.event_katuragi_10_3 == 1"]
[iscript]
$(".katuragi_10_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_10_3" graphic="day10_3.png" target="katuragi_sinario" x=&tf.x2 y=&tf.y1 exp="tf.jp_sinario='katuraginomiya_10_3'"]
[image name="day,katuragi_10_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y1 visible=true wait=true]
[else]
[image name="day,katuragi_10_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y1 visible=true wait=true]
[endif]
[if exp="sf.event_katuragi_11_1 == 1"]
[iscript]
$(".katuragi_11_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_11_1" graphic="day11_1.png" target="katuragi_sinario" x=&tf.x2_2 y=&tf.y2 exp="tf.jp_sinario='katuraginomiya_11_1'"]
[image name="day,katuragi_11_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y2 visible=true wait=true]
[else]
[image name="day,katuragi_11_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y2 visible=true wait=true]
[endif]
[if exp="sf.event_katuragi_11_4 == 1"]
[iscript]
$(".katuragi_11_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_11_4" graphic="day11_4.png" target="katuragi_sinario" x=&tf.x2_2 y=&tf.y3 exp="tf.jp_sinario='katuraginomiya_11_4'"]
[image name="day,katuragi_11_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y3 visible=true wait=true]
[else]
[image name="day,katuragi_11_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y3 visible=true wait=true]
[endif]
[if exp="sf.event_katuragi_12_1 == 1"]
[iscript]
$(".katuragi_12_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_12_1" graphic="day12_1.png" target="katuragi_sinario" x=&tf.x2_2 y=&tf.y4 exp="tf.jp_sinario='katuraginomiya_12_1'"]
[image name="day,katuragi_12_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y4 visible=true wait=true]
[else]
[image name="day,katuragi_12_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y4 visible=true wait=true]
[endif]
[if exp="sf.event_katuragi_1_3 == 1"]
[iscript]
$(".katuragi_1_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_1_3" graphic="day1_3.png" target="katuragi_sinario" x=&tf.x2 y=&tf.y5 exp="tf.jp_sinario='katuraginomiya_1_3'"]
[image name="day,katuragi_1_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y5 visible=true wait=true]
[else]
[image name="day,katuragi_1_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y5 visible=true wait=true]
[endif]

[if exp="sf.event_katuragi_2_2 == 1"]
[iscript]
$(".katuragi_2_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_2_2" graphic="day2_2.png" target="katuragi_sinario" x=&tf.x2 y=&tf.y6 exp="tf.jp_sinario='katuraginomiya_2_2'"]
[image name="day,katuragi_2_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y6 visible=true wait=true
[else]
[image name="day,katuragi_2_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y6 visible=true wait=true]
[endif]
;2月3週
[if exp="sf.event_katuragi_bazar == 1"]
[iscript]
$(".katuragi_bazar").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_bazar" graphic="day2_3.png" target="katuragi_sinario" x=&tf.x2 y=&tf.y7 exp="tf.jp_sinario='katuraginomiya_bazaar'"]
[image name="day,katuragi_bazar" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y7 visible=true wait=true]
[else]
[image name="day,katuragi_bazar" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y7 visible=true wait=true]
[endif]
;====================================================================================================
;判定処理をまとめます 散策
;左位置3"tf.x3
;katuragi_sansaku1 2月2週～3月4週・散策1
[if exp="sf.event_katuragi_sansaku1 == 1"]
[iscript]
$(".katuragi_sansaku1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_sansaku1" graphic="day2_2.png" target="katuragi_sinario" x=&tf.x3 y=&tf.y1 exp="tf.jp_sinario='katuraginomiya_sansaku1'"]
[image name="day,katuragi_sansaku1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y1 visible=true wait=true]
[else]
[image name="day,katuragi_sansaku1" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y1 visible=true wait=true]
[endif]
;katuragi_sansaku2 2月2週～3月4週・散策2
[if exp="sf.event_katuragi_sansaku2 == 1"]
[iscript]
$(".katuragi_sansaku2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[wait time=10]
[button name="katuragi_sansaku2" graphic="day2_2.png" target="katuragi_sinario" x=&tf.x3 y=&tf.y2 exp="tf.jp_sinario='katuraginomiya_sansaku2'"]
[image name="day,katuragi_sansaku2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y2 visible=true wait=true]
[else]
[image name="day,katuragi_sansaku2" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y2 visible=true wait=true]
[endif]
[iscript]
$(".loding_pic").remove();
$(".loding_pic1").remove();
$(".loding_pic2").remove();
$(".layer_free").css("opacity",1);
[endscript]
[s]

*katuragi_sinario
[cm]
;お稽古モード表示 リセットあるものだけ反応でエラー回避　最後にlayer26をリセット
;一瞬、お稽古画面がみえるのを何とかしたい
[if exp="f.okeiko_gamen == true"]
[chara_mod name="A_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="A_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="A_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="A_kuti" storage="toumei.gif" time=0]
[wait time=10]
[iscript]
$(".21_fore").empty();
$(".22_fore").empty();
$(".23_fore").empty();
$(".24_fore").empty();
$(".29_fore").empty();
$(".1_fore").empty();
[endscript]
[暗転]
[iscript]
$(".26_fore").empty();
[endscript]
;お稽古モードオフ
[eval exp="f.okeiko_gamen = false"]
[else]
[iscript]
$(".26_fore").empty();
$(".1_fore").empty();
[endscript]
[endif]

[iscript]
tf.jp_sinario = 'katuraginomiya/' + tf.jp_sinario + '.ks';
f.event_replay = 'katuraginomiya';
[endscript]
@clearstack
@jump storage="&tf.jp_sinario"
[s]

*test_end
[cm]
[iscript]
$(".26_fore").empty();
$(".1_fore").empty();
[endscript]
[イベントシーン終了]
@jump storage="katuraginomiya/katuraginomiya_event_clearlist.ks" target=*start
[s]

*back_okeiko
[eval exp="f.okeiko_gamen = true"]
[eval exp="tf.jp_sinario='none'"]
[eval exp="f.event_replay = 'none'"]
[freeimage layer = 26]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]

*back_test
[cm]
[freeimage layer = 26]
[eval exp="tf.jp_sinario='none'"]
[eval exp="f.event_replay = 'none'"]
@jump storage="test.ks"
[s]

*title
[cm]
[freeimage layer = 26]
;------タイトルへ戻る
[eval exp="tf.jp_sinario='none'"]
[eval exp="f.event_replay = 'none'"]
@jump storage="title.ks"
[s]
