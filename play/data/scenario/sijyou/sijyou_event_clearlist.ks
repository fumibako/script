*start
[cm]
[iscript]
$(".26_fore").empty();
$(".1_fore").empty();
[endscript]
;変数初期設定
[eval exp="tf.event_Number_of_times = 0"]
[if exp="sf.event_sijyou_event_6_1 == undefined"]
[eval exp="sf.event_sijyou_event_6_1 = 0"]
[endif]
[if exp="sf.event_sijyou_9_1 == undefined"]
[eval exp="sf.event_sijyou_9_1 = 0"]
[endif]
[if exp="sf.event_sijyou_9_2 == undefined"]
[eval exp="sf.event_sijyou_9_2 = 0"]
[endif]
[if exp="sf.event_sijyou_9_3 == undefined"]
[eval exp="sf.event_sijyou_9_3 = 0"]
[endif]
[if exp="sf.event_sijyou_9_4 == undefined"]
[eval exp="sf.event_sijyou_9_4 = 0"]
[endif]
[if exp="sf.event_sijyou_10_1 == undefined"]
[eval exp="sf.event_sijyou_10_1 = 0"]
[endif]
[if exp="sf.event_sijyou_10_3 == undefined"]
[eval exp="sf.event_sijyou_10_3 = 0"]
[endif]
[if exp="sf.event_sijyou_11_1 == undefined"]
[eval exp="sf.event_sijyou_11_1 = 0"]
[endif]
[if exp="sf.event_sijyou_1_1 == undefined"]
[eval exp="sf.event_sijyou_1_1 = 0"]
[endif]
[if exp="sf.event_sijyou_1_3 == undefined"]
[eval exp="sf.event_sijyou_1_3 = 0"]
[endif]
[if exp="sf.event_sijyou_1_4 == undefined"]
[eval exp="sf.event_sijyou_1_4 = 0"]
[endif]
[if exp="sf.event_sijyou_2_1 == undefined"]
[eval exp="sf.event_sijyou_2_1 = 0"]
[endif]
[if exp="sf.event_sijyou_2_2_bazar == undefined"]
[eval exp="sf.event_sijyou_2_2_bazar"]
[endif]
;sf.event_sijyou_event_6_1 sf.event_sijyou_9_2  sf.event_sijyou_9_3 sf.event_sijyou_9_4 sf.event_sijyou_9_4 sf.event_sijyou_10_1 sf.event_sijyou_10_3
;sf.event_sijyou_10_3 sf.event_sijyou_11_1 sf.event_sijyou_1_1 sf.event_sijyou_1_3 sf.event_sijyou_1_4 sf.event_sijyou_2_1 sf.event_sijyou_2_2_bazar
[eval exp="tf.event_Number_of_times = sf.event_sijyou_event_6_1 + sf.event_sijyou_9_2 + sf.event_sijyou_9_3 + sf.event_sijyou_9_4 + sf.event_sijyou_10_1 + sf.event_sijyou_10_3 + sf.event_sijyou_11_1 + sf.event_sijyou_1_1 + sf.event_sijyou_1_3 + sf.event_sijyou_1_4 + sf.event_sijyou_2_1 + sf.event_sijyou_2_2_bazar"]
;=============================================
;変数初期設定
[eval exp="tf.eventSnsaku_Number_of_times = 0"]
[if exp="sf.event_sijyou_1_1 == undefined"]
[eval exp="sf.event_sijyou_1_1 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku == undefined"]
[eval exp="sf.event_sijyou_sansaku = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_2 == undefined"]
[eval exp="sf.event_sijyou_sansaku_2 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_3 == undefined"]
[eval exp="sf.event_sijyou_sansaku_3 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku4 == undefined"]
[eval exp="sf.event_sijyou_sansaku4 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_5 == undefined"]
[eval exp="sf.event_sijyou_sansaku_5 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_6 == undefined"]
[eval exp="sf.event_sijyou_sansaku_6 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_7 == undefined"]
[eval exp="sf.event_sijyou_sansaku_7 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_9 == undefined"]
[eval exp="sf.event_sijyou_sansaku_9 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_10 == undefined"]
[eval exp="sf.event_sijyou_sansaku_10 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_11 == undefined"]
[eval exp="sf.event_sijyou_sansaku_11 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_12 == undefined"]
[eval exp="sf.event_sijyou_sansaku_12 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_13 == undefined"]
[eval exp="sf.event_sijyou_sansaku_13 = 0"]
[endif]
[eval exp="tf.eventSnsaku_Number_of_times = "sf.event_sijyou_sansaku + sf.event_sijyou_sansaku_10 + sf.event_sijyou_sansaku_11 + sf.event_sijyou_sansaku_12 + tf.eventSnsaku_Number_of_times + sf.event_sijyou_sansaku_13 + sf.event_sijyou_sansaku_2 + sf.event_sijyou_sansaku_3 + sf.event_sijyou_sansaku4 + sf.event_sijyou_sansaku_5 + sf.event_sijyou_sansaku_6 + sf.event_sijyou_sansaku_7 + sf.event_sijyou_sansaku_9"]
[eval exp="tf.ending_Number_of_times = 0"]
[eval exp="tf.ending_Number_of_times = sf.ED_kuroda_normal + sf.ED_kuroda_good + sf.ED_kuroda_bad"]
[eval exp="tf.ending_Number_of_times = tf.ending_Number_of_times + sf.ED_sijyou_normal + sf.ED_sijyou_good + sf.ED_sijyou_bad"]
[eval exp="tf.ending_Number_of_times = tf.ending_Number_of_times + sf.ED_zaizen_normal + sf.ED_zaizen_good + sf.ED_zaizen_bad2 + sf.ED_zaizen_bad1"]
[eval exp="tf.ending_Number_of_times = tf.ending_Number_of_times + sf.ED_katuraginomiya_normal + sf.ED_katuraginomiya_good + sf.ED_katuraginomiya_bad"]
[eval exp="tf.ending_Number_of_times = tf.ending_Number_of_times + sf.ED_hujieda_normal + sf.ED_hujieda_good + sf.ED_hujieda_bad + sf.ED_hujieda_bad2"]
;====================================位置指定===========================================
*set_position
;左位置
[eval exp="tf.x0 = 30"]
[eval exp="tf.x1 = 50"]
;二桁↓左位置
[eval exp="tf.x1_2 = 50"]
;左位置2
[eval exp="tf.x0_1 = 280"]
[eval exp="tf.x2 = 300"]
;左位置3
[eval exp="tf.x0_2 = 500"]
[eval exp="tf.x3 = 520"]
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
[eval exp="tf.y11 = tf.y10 + tf.y_plus_position"]
;=======================================================================================
*check_event
;名前表示
[image name="c_name1" storage="../image/name_sijyou.png" layer=26 x=250 y=30 visible=true]
[chara_mod name="bg" storage="bg/bg_fumibako.jpg"]
[bg storage="../fgimage/bg/bg_fumibako.jpg" time=0]
;四条6_1
[image name="day,day6_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y1 visible=true]
[image name="day,day6_1" storage="../image/day6_1.png" layer=26 x=&tf.x1 y=&tf.y1 visible=true]
;四条9_1
[image name="day,day9_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y2 visible=true]
[image name="day,day9_1" storage="../image/day9_1.png" layer=26 x=&tf.x1 y=&tf.y2 visible=true]
;四条9_2
[image name="day,day9_2" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y3 visible=true]
[image name="day,day9_2" storage="../image/day9_2.png" layer=26 x=&tf.x1 y=&tf.y3 visible=true]
;四条9_3
[image name="day,day9_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y4 visible=true]
[image name="day,day9_3" storage="../image/day9_3.png" layer=26 x=&tf.x1 y=&tf.y4 visible=true]
;四条9_4
[image name="day,day9_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y5 visible=true]
[image name="day,day9_4" storage="../image/day9_4.png" layer=26 x=&tf.x1 y=&tf.y5 visible=true]
;四条10_1
[image name="day,day10_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y6 visible=true]
[image name="day,day10_1" storage="../image/day10_1.png" layer=26 x=&tf.x1 y=&tf.y6 visible=true]
;四条10_3"
[image name="day,day10_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y7 visible=true]
[image name="day,day10_3" storage="../image/day10_3.png" layer=26 x=&tf.x1 y=&tf.y7 visible=true]
;四条11_1" 
[image name="day,day11_1" storage="../image/day11_1.png" layer=26 x=&tf.x1_2 y=&tf.y8 visible=true]
;四条1_1"
[image name="day,day1_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y1 visible=true]
[image name="day,day1_1" storage="../image/day1_1.png" layer=26 x=&tf.x2 y=&tf.y1 visible=true]
;四条1_3"
[image name="day,day1_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y2 visible=true]
[image name="day,day1_3" storage="../image/day1_3.png" layer=26 x=&tf.x2 y=&tf.y2 visible=true]
;四条1_4"
[image name="day,day1_4" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y3 visible=true]
[image name="day,day1_4" storage="../image/day1_4.png" layer=26 x=&tf.x2 y=&tf.y3 visible=true]
;四条2_1"
[image name="day,day2_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y4 visible=true]
[image name="day,day2_1" storage="../image/day2_1.png" layer=26 x=&tf.x2 y=&tf.y4 visible=true]
;四条2_2"
[image name="day,day2_2" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y5 visible=true]
[image name="day,day2_2" storage="../image/day2_2.png" layer=26 x=&tf.x2 y=&tf.y5 visible=true]
;===============================================================================================
;sansaku1
[image name="day,day9_1" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y1 visible=true]
[image name="day,day9_1" storage="../image/day9_1.png" layer=26 x=&tf.x3 y=&tf.y1 visible=true]
;sansaku2
[image name="day,day9_1" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y2 visible=true]
[image name="day,day9_1" storage="../image/day9_1.png" layer=26 x=&tf.x3 y=&tf.y2 visible=true]
;sansaku3
[image name="day,day9_1" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y3 visible=true]
[image name="day,day9_1" storage="../image/day9_1.png" layer=26 x=&tf.x3 y=&tf.y3 visible=true]
;sansaku4
[image name="day,day9_1" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y4 visible=true]
[image name="day,day9_1" storage="../image/day9_1.png" layer=26 x=&tf.x3 y=&tf.y4 visible=true]
;sansaku5
[image name="day,day9_1" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y5 visible=true]
[image name="day,day9_1" storage="../image/day9_1.png" layer=26 x=&tf.x3 y=&tf.y5 visible=true]


;sijyou_sansaku.ks (9月1週~9月4週)(銀座デート前まで)に1度だけ発生sijyou_sansaku.ks
;sijyou_sansaku2.ks (9/2~4)華道展ｲﾍﾞﾝﾄﾌﾗｸﾞ1 四条綾花
;sijyou_sansaku3.ks(9/4~10/1)華道展ｲﾍﾞﾝﾄﾌﾗｸﾞ2
;sijyou_sansaku5.ks(9月～９月末　銀座デート前 b）or(11事件解決後～12月 a)
;sijyou_sansaku6.ks(7~8月→8月(他攻略対象より好感度が高い)花火イベント)
;sijyou_sansaku7.ks(3月)香水
;8ない。（旧華衣おまけ）
;sijyou_sansaku9.ks(見合い前なら一回発生子供達　気力が微多めに回復)
;sijyou_sansaku10.ks(いつでも→四条ルートのみ　四条の好感度が高い攻略のヒント)
;sijyou_sansaku11.ks(四条ルートのみ、(10月~2月)九月×　三月×　
;sijyou_sansaku12.ks(10月~2月)九月×　三月×　
;sijyou_sansaku13.ks(10月~2月)九月×　三月×
;====================================================================================================
*test
[glink storage="test_sijyou.ks" target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=600 y=500 color=white]
[glink storage="test_sijyou.ks" target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=600 y=550 color=white]

*common
;一度、全ての日付の画像を暗めに表示します。プリロード幕つける
[iscript]
$(".day").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
;判定処理をまとめます
*hantei_efect
[if exp="sf.event_sijyou_event_6_1 == 1"]
[iscript]
$(".day6_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[endif]
;@jump target=next1

[if exp="sf.event_sijyou_9_1 == 1"]
[iscript]
$(".day9_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[endif]
*next1
[if exp="sf.event_sijyou_9_2 == 1"]
[iscript]
$(".day9_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[endif]

*next2
[if exp="sf.event_sijyou_9_3 == 1"]
[iscript]
$(".day9_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[endif]

[if exp="sf.event_sijyou_9_4 == 1"]
[iscript]
$(".day9_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[endif]

[if exp="sf.event_sijyou_10_1 == 1"]
[iscript]
$(".day10_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[endif]

[if exp="sf.event_sijyou_10_3 == 1"]
[iscript]
$(".day10_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[endif]

[if exp="sf.event_sijyou_11_1 == 1"]
[iscript]
$(".day11_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[endif]

[if exp="sf.event_sijyou_1_1 == 1"]
[iscript]
$(".day1_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[endif]

[if exp="sf.event_sijyou_1_3 == 1"]
[iscript]
$(".day1_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[endif]

[if exp="sf.event_sijyou_1_4 == 1"]
[iscript]
$(".day1_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[endif]

[if exp="sf.event_sijyou_2_1 == 1"]
[iscript]
$(".day2_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[endif]

[if exp="sf.event_sijyou_2_2_bazar == 1"]
[iscript]
$(".day2_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[endif]
*test_end
[s]
