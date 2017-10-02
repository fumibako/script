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
[if exp="sf.event_hujieda_4_4 == undefined"]
[eval exp="sf.event_hujieda_4_4 = 0"]
[endif]
[if exp="sf.event_hujieda_5_4 == undefined"]
[eval exp="sf.event_hujieda_5_4 = 0"]
[endif]
[if exp="sf.event_hujieda_6_1 == undefined"]
[eval exp="sf.event_hujieda_6_1 = 0"]
[endif]
[if exp="sf.event_hujieda_6_4 == undefined"]
[eval exp="sf.event_hujieda_6_4 = 0"]
[endif]
[if exp="sf.event_hujieda_7_4 == undefined"]
[eval exp="sf.event_hujieda_7_4 = 0"]
[endif]
[if exp="sf.event_hujieda_8_4 == undefined"]
[eval exp="sf.event_hujieda_8_4 = 0"]
[endif]
[if exp="sf.event_hujieda_9_1 == undefined"]
[eval exp="sf.event_hujieda_9_1 = 0"]
[endif]
[if exp="sf.event_hujieda_9_2 == undefined"]
[eval exp="sf.event_hujieda_9_2 = 0"]
[endif]
[if exp="sf.event_hujieda_9_4 == undefined"]
[eval exp="sf.event_hujieda_9_4 = 0"]
[endif]
[if exp="sf.event_hujieda_10_1 == undefined"]
[eval exp="sf.event_hujieda_10_1 = 0"]
[endif]
[if exp="sf.event_hujieda_10_3 == undefined"]
[eval exp="sf.event_hujieda_10_3 = 0"]
[endif]
[if exp="sf.event_hujieda_11_1 == undefined"]
[eval exp="sf.event_hujieda_11_1 = 0"]
[endif]
[if exp="sf.event_hujieda_11_3 == undefined"]
[eval exp="sf.event_hujieda_11_3 = 0"]
[endif]
[if exp="sf.event_hujieda_12_3 == undefined"]
[eval exp="sf.event_hujieda_12_3 = 0"]
[endif]
[if exp="sf.event_hujieda_1_3 == undefined"]
[eval exp="sf.event_hujieda_1_3 = 0"]
[endif]
[if exp="sf.event_hujieda_2_3 == undefined"]
[eval exp="sf.event_hujieda_2_3 = 0"]
[endif]
[if exp="sf.event_hujieda_bazaar == undefined"]
[eval exp="sf.event_hujieda_bazaar = 0"]
[endif]
[if exp="sf.event_hujieda_sansaku == undefined"]
[eval exp="sf.event_hujieda_sansaku = 0"]
[endif]
;藤枝散策イベントクリア回数
[eval exp="tf.event_sansaku_Number_of_times = sf.event_hujieda_bazaar + sf.event_hujieda_sansaku"]
;藤枝イベントクリア回数
[eval exp="tf.event_Number_of_times = sf.event_hujieda_4_4 + sf.event_hujieda_5_4 + sf.event_hujieda_6_1 + sf.event_hujieda_6_4 + sf.event_hujieda_7_4 + sf.event_hujieda_8_4 +sf.event_hujieda_9_1 + sf.event_hujieda_9_2 + sf.event_hujieda_9_4 + sf.event_hujieda_10_1 + sf.event_hujieda_10_3 + sf.event_hujieda_11_1 + sf.event_hujieda_11_3 + sf.event_hujieda_12_3 + sf.event_hujieda_1_3 + sf.event_hujieda_2_3 + tf.event_sansaku_Number_of_times"]
全てのイベント数　現時点はエンディング除く
[eval exp="tf.allEvent_Number_of_times = 0"]
[eval exp="tf.allEvent_Number_of_times = tf.event_sansaku_Number_of_times + tf.event_Number_of_times"]
;達成率
[eval exp="tf.event_pasent = tf.allEvent_Number_of_times / 15 * 100"]
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
;二桁↓左位置
[eval exp="tf.x2_2 = 275"]
;左位置3
[eval exp="tf.x0_2 = 510"]
[eval exp="tf.x3 = 540"]
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
[eval exp="tf.y10 = tf.y9 + tf.y_plus_position"]
;=======================================================================================
*check_event
[chara_mod name="bg" storage="bg/bg_fumibako.jpg"]
[bg storage="../fgimage/bg/bg_fumibako.jpg" time=0]
;名前表示
[if exp="sf.event_hujieda_8_4 == 1"]
[image name="c_name1" storage="../image/name_hujieda.png" layer=26 x=250 y=30 visible=true]
[endif]
[if exp="sf.event_hujieda_8_4 != 1"]
[image name="c_name1" storage="../image/name_hujieda0.png" layer=26 x=250 y=30 visible=true]
[endif]

;達成数
[ptext text="&tf.allEvent_Number_of_times" layer=26 size=21 x=650 y=40 color=snow]
[ptext text="/?? =" layer=26 size=21 x=680 y=40 color=snow]
;達成率
[ptext text="&tf.event_pasent" layer=26 size=31 x=750 y=30 color=snow]
[ptext text="%" layer=26 size=31 x=800 y=30 color=snow]
;イベント数　テスト用
[ptext text="イベント数（散策除く）" layer=26 size=21 x=&tf.x4 y=&tf.y6 color=snow]
[ptext text="&tf.event_Number_of_time" layer=26 size=21 x="&tf.x4+100" y=&tf.y6+20 color=snow]
[ptext text="/13" layer=26 size=21 x="&tf.x4+150" y=&tf.y6+20 color=snow]
[ptext text="イベント数（散策のみ）" layer=26 size=21 x=&tf.x4 y=&tf.y6+50 color=snow]
[ptext text="&tf.event_sansaku_Number_of_times" layer=26 size=21 x="&tf.x4+100" y=&tf.y6+80 color=snow]
[ptext text="/2" layer=26 size=21 x="&tf.x4+150" y=&tf.y6+80 color=snow]
;=======================================================================================
;sf.event_hujieda_4_4
[image name="day,hujieda_4_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y1 visible=true]
[image name="day,hujieda_4_4" storage="../image/day4_4.png"  layer=26 x=&tf.x1 y=&tf.y1 visible=true]
;sf.event_hujieda_5_4
[image name="day,hujieda_5_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y2 visible=true]
[image name="day,hujieda_5_4" storage="../image/day5_4.png"  layer=26 x=&tf.x1 y=&tf.y2 visible=true]
;sf.event_hujieda_6_1
[image name="day,hujieda_6_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y3 visible=true]
[image name="day,hujieda_6_1" storage="../image/day6_1.png"  layer=26 x=&tf.x1 y=&tf.y3 visible=true]
;sf.event_hujieda_6_4
[image name="day,hujieda_6_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y4 visible=true]
[image name="day,hujieda_6_4" storage="../image/day6_4.png"  layer=26 x=&tf.x1 y=&tf.y4 visible=true]
;sf.event_hujieda_7_4
[image name="day,hujieda_4_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y5 visible=true]
[image name="day,hujieda_4_4" storage="../image/day7_4.png"  layer=26 x=&tf.x1 y=&tf.y5 visible=true]
;sf.event_hujieda_8_4
[image name="day,hujieda_8_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y6 visible=true]
[image name="day,hujieda_8_4" storage="../image/day8_4.png"  layer=26 x=&tf.x1 y=&tf.y6 visible=true]
;sf.event_hujieda_9_1
[image name="day,hujieda_9_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y7 visible=true]
[image name="day,hujieda_9_1" storage="../image/day9_1.png"  layer=26 x=&tf.x1 y=&tf.y7 visible=true]
;sf.event_hujieda_9_2
[image name="day,hujieda_9_2" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y8 visible=true]
[image name="day,hujieda_9_2" storage="../image/day9_2.png"  layer=26 x=&tf.x1 y=&tf.y8 visible=true]
;左位置2 tf.x0_1  tf.x2 
;sf.event_hujieda_9_4
[image name="day,hujieda_9_4" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y1 visible=true]
[image name="day,hujieda_9_4" storage="../image/day9_4.png"  layer=26 x=&tf.x2 y=&tf.y1 visible=true]
;sf.event_hujieda_10_1
[image name="day,hujieda_10_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y2 visible=true]
[image name="day,hujieda_10_1" storage="../image/day10_1.png"  layer=26 x=&tf.x2 y=&tf.y2 visible=true]
;sf.event_hujieda_10_3
[image name="day,hujieda_10_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y3 visible=true]
[image name="day,hujieda_10_3" storage="../image/day10_3.png"  layer=26 x=&tf.x2 y=&tf.y3 visible=true]
;sf.event_hujieda_11_1
[image name="day,hujieda_11_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y4 visible=true]
[image name="day,hujieda_11_1" storage="../image/day11_1.png"  layer=26 x=&tf.x2_2 y=&tf.y4 visible=true]
;sf.event_hujieda_11_3
[image name="dayhujieda_11_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y5 visible=true]
[image name="day,hujieda_11_3" storage="../image/day11_3.png"  layer=26 x=&tf.x2_2 y=&tf.y5 visible=true]
;sf.event_hujieda_12_3
[image name="day,hujieda_12_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y6 visible=true]
[image name="day,hujieda_12_3" storage="../image/day12_3.png"  layer=26 x=&tf.x2_2 y=&tf.y6 visible=true]
;sf.event_hujieda_1_3
[image name="day,hujieda_1_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y7 visible=true]
[image name="day,hujieda_1_3" storage="../image/day1_3.png"  layer=26 x=&tf.x2_2 y=&tf.y7 visible=true]
;sf.event_hujieda_2_3
[image name="day,hujieda_2_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y8 visible=true]
[image name="day,hujieda_2_3" storage="../image/day2_3.png"  layer=26 x=&tf.x2 y=&tf.y8 visible=true]
;左位置3 tf.x0_2 tf.x3 
;sf.event_hujieda_bazaar
[image name="day,hujieda_bazaar" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y1 visible=true]
[image name="day,hujieda_bazaar" storage="../image/day3_2.png"  layer=26 x=&tf.x3 y=&tf.y1 visible=true]
;sf.event_hujieda_sansaku1 2/3
[image name="day,hujieda_sansaku" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y2 visible=true]
[image name="day,hujieda_sansaku" storage="../image/day2_3.png"  layer=26 x=&tf.x3 y=&tf.y2 visible=true]
;====================================================================================================
*common
;一度、全ての日付の画像を暗めに表示します。プリロード幕つける
[iscript]
$(".day").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
;====================================================================================================
;判定処理をまとめます
[if exp="sf.event_hujieda_4_4 == 1"]
[iscript]
$(".hujieda_4_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_4_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y1 visible=true]
[else]
[image name="day,hujieda_4_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_hujieda_5_4 == 1"]
[iscript]
$(".hujieda_5_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_5_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y2 visible=true]
[else]
[image name="hujieda_5_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_hujieda_6_1 == 1"]
[iscript]
$(".hujieda_6_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_6_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y3 visible=true]
[else]
[image name="day,hujieda_6_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_hujieda_6_4 == 1"]
[iscript]
$(".hujieda_6_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_6_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y4 visible=true]
[else]
[image name="day,hujieda_6_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y4 visible=true]
[endif]

[if exp="sf.event_hujieda_7_4 == 1"]
[iscript]
$(".hujieda_7_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,event_hujieda_7_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y5 visible=true]
[else]
[image name="day,event_hujieda_7_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y5 visible=true]
[endif]

[if exp="sf.event_hujieda_8_4 == 1"]
[iscript]
$(".hujieda_8_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_8_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y6 visible=true]
[else]
[image name="day,hujieda_8_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y6 visible=true]
[endif]

[if exp="sf.event_hujieda_9_1 == 1"]
[iscript]
$(".hujieda_9_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_9_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y7 visible=true]
[else]
[image name="day,hujieda_9_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y7 visible=true]
[endif]

[if exp="sf.event_hujieda_9_2 == 1"]
[iscript]
$(".hujieda_bazaar").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_9_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y8 visible=true]
[else]
[image name="day,hujieda_bazaar" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y8 visible=true]
[endif]

[if exp="sf.event_hujieda_9_4 == 1"]
[iscript]
$(".hujieda_9_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_9_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+130" y=&tf.y1 visible=true]
[else]
[image name="day,hujieda_9_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+130" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_hujieda_10_1 == 1"]
[iscript]
$(".hujieda_10_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_10_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+130" y=&tf.y2 visible=true]
[else]
[image name="day,hujieda_10_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+130" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_hujieda_10_3 == 1"]
[iscript]
$(".hujieda_bazaar").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_10_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+130" y=&tf.y3 visible=true]
[else]
[image name="day,hujieda_10_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+130" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_hujieda_11_1 == 1"]
[iscript]
$(".hujieda_11_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_11_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+130" y=&tf.y4 visible=true]
[else]
[image name="day,hujieda_11_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+130" y=&tf.y4 visible=true]
[endif]

[if exp="sf.event_hujieda_11_3 == 1"]
[iscript]
$(".hujieda_11_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_11_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+130" y=&tf.y5 visible=true]
[else]
[image name="day,hujieda_11_3r" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+130" y=&tf.y5 visible=true]
[endif]

[if exp="sf.event_hujieda_12_3 == 1"]
[iscript]
$(".hujieda_12_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_12_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+130" y=&tf.y6 visible=true]
[else]
[image name="day,hujieda_12_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+130" y=&tf.y6 visible=true]
[endif]

[if exp="sf.event_hujieda_1_3 == 1"]
[iscript]
$(".hujieda_1_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_1_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+130" y=&tf.y7 visible=true]
[else]
[image name="day,hujieda_1_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+130" y=&tf.y7 visible=true]
[endif]

[if exp="sf.event_hujieda_2_3 == 1"]
[iscript]
$(".hujieda_2_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_2_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+130" y=&tf.y8 visible=true]
[else]
[image name="day,hujieda_2_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+130" y=&tf.y8 visible=true]
[endif]
;====================================================================================================
;判定処理をまとめます 散策
[if exp="sf.event_hujieda_bazaar == 1"]
[iscript]
$(".hujieda_bazaar").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_bazaar" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4+130" y=&tf.y1 visible=true]
[else]
[image name="day,hujieda_bazaar" storage="../image/day_check_mi.png" layer=26 x="&tf.x4+130" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_hujieda_sansaku1 == 1"]
$(".hujieda_sansaku").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,hujieda_sansaku" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4+130" y=&tf.y2 visible=true]
[else]
[image name="day,hujieda_sansaku" storage="../image/day_check_mi.png" layer=26 x="&tf.x4+130" y=&tf.y2 visible=true]
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
