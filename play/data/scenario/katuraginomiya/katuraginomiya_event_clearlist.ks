*start
[cm]
[iscript]
$(".26_fore").empty();
$(".1_fore").empty();
[endscript]
;====================================================================================================
*test
;終わったら消す
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=600 y=600 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=800 y=600 color=white]
;=======================================================================================
;変数初期設定　エラー回避
[if exp="sf.event_katuragi_event_1 == undefined"]
[eval exp="sf.event_katuragi_event_1 = 0"]
[endif]
;リプレイに表示されている場合は０を回避
[if exp="sf.replay_katuraginomiya == 1"]
[eval exp="sf.event_katuragi_event_1 = 1"]
[endif]
[if exp="sf.event_katuragi_event_2 == undefined"]
[eval exp="sf.event_katuragi_event_2 = 0"]
[endif]
[if exp="sf.event_katuragi_event_3 == undefined"]
[eval exp="sf.event_katuragi_event_3 = 0"]
[endif]
[if exp="sf.event_katuragi_6_1 == undefined"]
[eval exp="sf.event_katuragi_6_1 = 0"]
[endif]
[if exp="sf.event_katuragi_9_1 == undefined"]
[eval exp="sf.event_katuragi_9_1 = 0"]
[endif]
[if exp="sf.event_katuragi_9_3 == undefined"]
[eval exp="sf.event_katuragi_9_3 = 0"]
[endif]
[if exp="sf.event_katuragi_9_4 == undefined"]
[eval exp="sf.event_katuragi_9_4 = 0"]
[endif]
[if exp="sf.event_katuragi_10_2 == undefined"]
[eval exp="sf.event_katuragi_10_2 = 0"]
[endif]
[if exp="sf.event_katuragi_10_3 == undefined"]
[eval exp="sf.event_katuragi_10_3 = 0"]
[endif]
[if exp="sf.event_katuragi_11_1 == undefined"]
[eval exp="sf.event_katuragi_11_1 = 0"]
[endif]
[if exp="sf.event_katuragi_11_4 == undefined"]
[eval exp="sf.event_katuragi_11_4 = 0"]
[endif]
[if exp="sf.event_katuragi_12_1 == undefined"]
[eval exp="sf.event_katuragi_12_1 = 0"]
[endif]
[if exp="sf.event_katuragi_1_3 == undefined"]
[eval exp="sf.event_katuragi_1_3 = 0"]
[endif]
[if exp="sf.event_katuragi_2_2 == undefined"]
[eval exp="sf.event_katuragi_2_2 = 0"]
[endif]
[if exp="sf.event_katuragi_bazar == undefined"]
[eval exp="sf.event_katuragi_bazar = 0"]
[endif]
[if exp="sf.event_katuragi_sansaku1 == undefined"]
[eval exp="sf.event_katuragi_sansaku1 = 0"]
[endif]
[if exp="sf.event_katuragi_sansaku2 == undefined"]
[eval exp="sf.event_katuragi_sansaku2 = 0"]
[endif]
;==================================達成率の計算===========================================
;葛城宮散策
[eval exp="tf.event_sansaku_Number_of_times=0"]
[eval exp="tf.event_sansaku_Number_of_times = sf.event_katuragi_sansaku1 + sf.event_katuragi_sansaku2"]
;葛城宮イベント回数
[eval exp="tf.event_Number_of_times=0"]
[eval exp="tf.event_Number_of_times = sf.event_katuragi_event_1 + sf.event_katuragi_event_2"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_katuragi_event_3 + sf.event_katuragi_6_1 + sf.event_katuragi_9_1"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_katuragi_9_3 + sf.event_katuragi_9_4 + sf.event_katuragi_10_2"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_katuragi_10_3 + sf.event_katuragi_11_1 + sf.event_katuragi_11_4"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_katuragi_12_1 + sf.event_katuragi_1_3 + sf.event_katuragi_2_2"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_katuragi_bazar"]
;全てのイベント数 現時点でエンディングを除く
[eval exp="tf.allEvent_Number_of_times = 0"]
[eval exp="tf.allEvent_Number_of_times = tf.event_sansaku_Number_of_times + tf.event_Number_of_times"]
;達成率
[eval exp="tf.event_pasent=0"]
[eval exp="tf.event_pasent = tf.allEvent_Number_of_times / 17 * 100"]
[eval exp="tf.event_pasent =Math.floor(tf.event_pasent)"]
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
;================================移動ボタン=======================================================
[button name="c_name1" graphic="name_kuroda.png" y=550 x=100 storage="kuroda/event_clearlist_kuroda.ks"]
[button name="c_name1" graphic="name_sijyou.png" y=550 x=250 storage="sijyou/sijyou_event_clearlist.ks"]
[button name="c_name1" graphic="name_zaizen.png" y=550 x=400 storage="zaizen/zaizen_event_clearlist.ks"]
[button name="c_name1" graphic="name_katuragi.png" y=550 x=550 storage="katuraginomiya/katuraginomiya_event_clearlist.ks"]
[if exp="sf.event_hujieda_4_4 == 1 && sf.event_hujieda_8_4 == 1"]
[button name="c_name1" graphic="name_hujieda.png" y=550 x=700 storage="hijieda/hijieda_event_clearlist.ks"]
[elsif exp="sf.event_hujieda_4_4 == 1"]
[button name="c_name1" graphic="name_hujieda0.png" y=550 x=700 storage="hijieda/hujieda_event_clearlist.ks"]
[endif]
;=======================================================================================
*check_event
[chara_mod name="bg" storage="bg/bg_fumibako.jpg"]
[bg storage="../fgimage/bg/bg_fumibako.jpg" time=0]
;名前表示
[image name="c_name1" storage="../image/name_katuragi.png" layer=26 x=250 y=30 visible=true]
;達成数
[ptext text="&tf.allEvent_Number_of_times" layer=26 size=21 x=650 y=40 color=snow]
[ptext text="/17 =" layer=26 size=21 x=680 y=40 color=snow]
;達成率
[ptext text="&tf.event_pasent" layer=26 size=31 x=750 y=30 color=snow]
[ptext text="%" layer=26 size=31 x=800 y=30 color=snow]
;イベント数　テスト用
;[ptext text="イベント数（散策除く）" layer=26 size=21 x=&tf.x4 y=&tf.y6 color=snow]
;[ptext text="&tf.event_Number_of_times" layer=26 size=21 x="&tf.x4+100" y=&tf.y6+20 color=snow]
;[ptext text="/15" layer=26 size=21 x="&tf.x4+150" y=&tf.y6+20 color=snow]
;[ptext text="イベント数（散策のみ）" layer=26 size=21 x=&tf.x4 y=&tf.y6+50 color=snow]
;[ptext text="&tf.event_sansaku_Number_of_times" layer=26 size=21 x="&tf.x4+100" y=&tf.y6+80 color=snow]
;[ptext text="/2" layer=26 size=21 x="&tf.x4+150" y=&tf.y6+80 color=snow]
;=======================================================================================
;katuragi_event_1   !! 6/2 or 6/3 !!
[image name="day,katuragi_event_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y1 visible=true]
[image name="day,katuragi_event_1" storage="../image/day6_2.png"  layer=26 x=&tf.x1 y=&tf.y1 visible=true]
;katuragi_7_2 夢イベント
[image name="day,katuragi_7_2" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y2 visible=true]
[image name="day,katuragi_7_2" storage="../image/day7_2.png"  layer=26 x=&tf.x1 y=&tf.y2 visible=true]
;katuragi_event_2
[image name="day,katuragi_event_2" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y3 visible=true]
[image name="day,katuragi_event_2" storage="../image/day7_4.png"  layer=26 x=&tf.x1 y=&tf.y3 visible=true]
;katuragi_event_3 皇后様のお印入りのお茶事の招待状
[image name="day,katuragi_event_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y4 visible=true]
[image name="day,katuragi_event_3" storage="../image/day8_2.png"  layer=26 x=&tf.x1 y=&tf.y4 visible=true]
;katuragi_9_1
[image name="day,katuragi_9_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y5 visible=true]
[image name="day,katuragi_9_1" storage="../image/day9_1.png"  layer=26 x=&tf.x1 y=&tf.y5 visible=true]
;katuragi_9_3
[image name="day,katuragi_9_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y6 visible=true]
[image name="day,katuragi_9_3" storage="../image/day9_3.png"  layer=26 x=&tf.x1 y=&tf.y6 visible=true]
;katuragi_9_4
[image name="day,katuragi_9_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y7 visible=true]
[image name="day,katuragi_9_4" storage="../image/day9_4.png"  layer=26 x=&tf.x1 y=&tf.y7 visible=true]
;katuragi_10_2
[image name="day,katuragi_10_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y8 visible=true]
[image name="day,katuragi_10_2" storage="../image/day10_2.png"  layer=26 x=&tf.x1 y=&tf.y8 visible=true]
;左位置2tf.x0_1 tf.x2
;katuragi_10_3
[image name="day,katuragi_10_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y1 visible=true]
[image name="day,katuragi_10_3" storage="../image/day10_3.png"  layer=26 x=&tf.x2 y=&tf.y1 visible=true]
;katuragi_11_1
[image name="day,katuragi_11_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y2 visible=true]
[image name="day,katuragi_11_1" storage="../image/day11_1.png"  layer=26 x=&tf.x2_2 y=&tf.y2 visible=true]
;katuragi_11_4
[image name="day,katuragi_11_4" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y3 visible=true]
[image name="day,katuragi_11_4" storage="../image/day11_4.png"  layer=26 x=&tf.x2_2 y=&tf.y3 visible=true]
;katuragi_12_1
[image name="day,katuragi_12_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y4 visible=true]
[image name="day,katuragi_12_1" storage="../image/day12_1.png"  layer=26 x=&tf.x2_2 y=&tf.y4 visible=true]
;katuragi_1_3
[image name="day,katuragi_1_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y5 visible=true]
[image name="day,katuragi_1_3" storage="../image/day1_3.png"  layer=26 x=&tf.x2 y=&tf.y5 visible=true]
;katuragi_2_2
[image name="day,katuragi_2_2" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y6 visible=true]
[image name="day,katuragi_2_2" storage="../image/day2_2.png"  layer=26 x="&tf.x2" y=&tf.y6 visible=true]
;katuragi_bazar
[image name="day,katuragi_bazar" storage="../image/day_check.png" layer=26 x="&tf.x0_1" y=&tf.y7 visible=true]
[image name="day,katuragi_bazar" storage="../image/day2_3.png"  layer=26 x="&tf.x2+20" y=&tf.y7 visible=true]
;左位置3"tf.x0_2 tf.x3
;katuragi_sansaku1 2月2週～3月4週・散策1
[image name="day,katuragi_sansaku1" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y1 visible=true]
[image name="day,katuragi_sansaku1" storage="../image/day2_2.png"  layer=26 x=&tf.x3 y=&tf.y1 visible=true]
;katuragi_sansaku2 2月2週～3月4週・散策2
[image name="day,katuragi_sansaku2" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y2 visible=true]
[image name="day,katuragi_sansaku2" storage="../image/day2_2.png"  layer=26 x=&tf.x3 y=&tf.y2 visible=true]
;====================================================================================================
*common
;一度、全ての日付の画像を暗めに表示します。全部終わるまでプリロード幕つける
[iscript]
$(".day").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
;====================================================================================================
;判定処理をまとめます
[if exp="sf.event_katuragi_event_1 == 1"]
[iscript]
$(".katuragi_event_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_event_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y1 visible=true]
[else]
[image name="day,katuragi_event_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_katuragi_6_1 == 1"]
;katuragi_7_2 夢イベント
[iscript]
$(".katuragi_7_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_7_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y2 visible=true]
[else]
[image name="day,katuragi_7_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y2 visible=true]
[endif]

;7_4
[if exp="sf.event_katuragi_event_2 == 1"]
[iscript]
$(".katuragi_event_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_event_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y3 visible=true]
[else]
[image name="day,katuragi_event_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_katuragi_event_3 == 1"]
[iscript]
$(".katuragi_event_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_event_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y4 visible=true]
[else]
[image name="day,katuragi_event_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y4 visible=true]
[endif]

[if exp="sf.event_katuragi_9_1 == 1"]
[iscript]
$(".katuragi_9_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_9_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y5 visible=true]
[else]
[image name="day,katuragi_9_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y5 visible=true]
[endif]

[if exp="sf.event_katuragi_9_3 == 1"]
[iscript]
$(".katuragi_9_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_9_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y6 visible=true]
[else]
[image name="day,katuragi_9_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y6 visible=true]
[endif]

[if exp="sf.event_katuragi_9_4 == 1"]
[iscript]
$(".katuragi_9_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_9_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y6 visible=true]
[else]
[image name="day,katuragi_9_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y6 visible=true]
[endif]

[if exp="sf.event_katuragi_10_2 == 1"]
[iscript]
$(".katuragi_10_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_10_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y7 visible=true]
[else]
[image name="day,katuragi_10_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y7 visible=true]
[endif]

[if exp="sf.event_katuragi_10_3 == 1"]
[iscript]
$(".katuragi_10_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_10_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y1 visible=true]
[else]
[image name="day,katuragi_10_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_katuragi_11_1 == 1"]
[iscript]
$(".katuragi_11_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_11_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y2 visible=true]
[else]
[image name="day,katuragi_11_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_katuragi_11_4 == 1"]
[iscript]
$(".katuragi_11_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_11_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y3 visible=true]
[else]
[image name="day,katuragi_11_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_katuragi_12_1 == 1"]
[iscript]
$(".katuragi_12_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_12_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y4 visible=true]
[else]
[image name="day,katuragi_12_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y4 visible=true]
[endif]

[if exp="sf.event_katuragi_1_3 == 1"]
[iscript]
$(".katuragi_1_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_1_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y5 visible=true]
[else]
[image name="day,katuragi_1_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y5 visible=true]
[endif]

[if exp="sf.event_katuragi_2_2 == 1"]
[iscript]
$(".katuragi_2_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_2_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y6 visible=true]
[else]
[image name="day,katuragi_2_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y6 visible=true]
[endif]

[if exp="sf.event_katuragi_bazar == 1"]
[iscript]
$(".katuragi_bazar").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_bazar" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y7 visible=true]
[else]
[image name="day,katuragi_bazar" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y7 visible=true]
[endif]
;====================================================================================================
;判定処理をまとめます 散策
;左位置3"tf.x3
[if exp="sf.event_katuragi_sansaku1 == 1"]
[iscript]
$(".katuragi_sansaku1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_sansaku1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y1 visible=true]
[else]
[image name="day,katuragi_sansaku1" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y1 visible=true]
[endif]
[if exp="sf.event_katuragi_sansaku2 == 1"]
[iscript]
$(".katuragi_sansaku2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,katuragi_sansaku2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y2 visible=true]
[else]
[image name="day,katuragi_sansaku2" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y2 visible=true]
[endif]
[s]

*test_end
[cm]
[iscript]
$(".26_fore").empty();
$(".1_fore").empty();
[endscript]
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
