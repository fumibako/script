*start
[cm]
[iscript]
$(".26_fore").empty();
$(".1_fore").empty();
[endscript]
;====================================================================================================
*test
;終わったら消す
[glink storage="test_sijyou.ks" target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=600 y=600 color=white]
[glink storage="test_sijyou.ks" target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=800 y=600 color=white]
;=============================================
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
;sf.event_sijyou_event_6_1 sf.event_sijyou_9_1 sf.event_sijyou_9_2  sf.event_sijyou_9_3 sf.event_sijyou_9_4 
;sf.event_sijyou_10_1 sf.event_sijyou_10_3
;sf.event_sijyou_11_1 sf.event_sijyou_1_1 sf.event_sijyou_1_3 sf.event_sijyou_1_4 sf.event_sijyou_2_1 sf.event_sijyou_2_2_bazar
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
[if exp="sf.event_sijyou_sansaku_4 == undefined"]
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
;==================================================================
;散策数
[eval exp="tf.eventSansaku_Number_of_times = 0"]
[eval exp="tf.eventSansaku_Number_of_times = sf.event_sijyou_sansaku + sf.event_sijyou_sansaku_2 + sf.event_sijyou_sansaku_3"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_4 + sf.event_sijyou_sansaku_5"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_6 + sf.event_sijyou_sansaku_7"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_9 + sf.event_sijyou_sansaku_10"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_11 + sf.event_sijyou_sansaku_12"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_13"]
;イベント数
[eval exp="tf.event_Number_of_times = 0"]
[eval exp="tf.event_Number_of_times = sf.event_sijyou_event_6_1 + sf.event_sijyou_9_1 + sf.event_sijyou_9_2 + sf.event_sijyou_9_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_sijyou_9_4 + sf.event_sijyou_10_1 + sf.event_sijyou_10_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_sijyou_11_1 + sf.event_sijyou_1_1 + sf.event_sijyou_1_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_sijyou_1_4 + sf.event_sijyou_2_1 + sf.event_sijyou_2_2_bazar"]
;達成イベント数
[eval exp="tf.allEvent_Number_of_times = tf.eventSansaku_Number_of_times + tf.event_Number_of_times"]
;達成率
[eval exp="tf.event_pasent = tf.allEvent_Number_of_times / 25 * 100"]
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
[eval exp="tf.x2 = 265"]
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
[image name="c_name1" storage="../image/name_sijyou.png" layer=26 x=250 y=30 visible=true]
;達成数
[ptext text="&tf.allEvent_Number_of_times" layer=26 size=21 x=650 y=40 color=snow]
[ptext text="/25 =" layer=26 size=21 x=680 y=40 color=snow]
;達成率
[ptext text="&tf.event_pasent" layer=26 size=31 x=750 y=30 color=snow]
[ptext text="%" layer=26 size=31 x=800 y=30 color=snow]
;イベント数　テスト用
[ptext text="イベント数（散策除く）" layer=26 size=21 x=&tf.x2 y=&tf.y6 color=snow]
[ptext text="&tf.event_Number_of_times" layer=26 size=21 x="&tf.x2+100" y=&tf.y6+20 color=snow]
[ptext text="/13" layer=26 size=21 x="&tf.x2+150" y=&tf.y6+20 color=snow]
[ptext text="イベント数（散策のみ）" layer=26 size=21 x=&tf.x2 y=&tf.y6+50 color=snow]
[ptext text="&tf.eventSansaku_Number_of_times" layer=26 size=21 x="&tf.x2+100" y=&tf.y6+80 color=snow]
[ptext text="/12" layer=26 size=21 x="&tf.x2+150" y=&tf.y6+80 color=snow]

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
[image name="day,day11_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y8 visible=true]
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
[image name="day,sansaku_1" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y1 visible=true]
[image name="day,sansaku_1" storage="../image/day9_1.png" layer=26 x=&tf.x3 y=&tf.y1 visible=true]
;sansaku2
[image name="day,sansaku_2" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y2 visible=true]
[image name="day,sansaku_2" storage="../image/day9_1.png" layer=26 x=&tf.x3 y=&tf.y2 visible=true]
;sansaku3
[image name="day,sansaku_3" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y3 visible=true]
[image name="day,sansaku_3" storage="../image/day9_1.png" layer=26 x=&tf.x3 y=&tf.y3 visible=true]
;sansaku4
[image name="day,sansaku_4" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y4 visible=true]
[image name="day,sansaku_4" storage="../image/day9_1.png" layer=26 x=&tf.x3 y=&tf.y4 visible=true]
;sansaku5
[image name="day,sansaku_5" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y5 visible=true]
[image name="day,sansaku_5" storage="../image/day9_1.png" layer=26 x=&tf.x3 y=&tf.y5 visible=true]
;sansaku6
[image name="day,sansaku_6" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y6 visible=true]
[image name="day,sansaku_6" storage="../image/day9_1.png" layer=26 x=&tf.x3 y=&tf.y6 visible=true]
;sansaku7
[image name="day,sansaku_7" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y7 visible=true]
[image name="day,sansaku_7" storage="../image/day9_1.png" layer=26 x=&tf.x3 y=&tf.y7 visible=true]
;sansaku9
[image name="day,sansaku_9" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y8 visible=true]
[image name="day,sansaku_9" storage="../image/day9_1.png" layer=26 x=&tf.x3 y=&tf.y8 visible=true]
;sansaku10
[image name="day,sansaku_10" storage="../image/day_check.png" layer=26 x=&tf.x0_3 y=&tf.y1 visible=true]
[image name="day,sansaku_10" storage="../image/day9_1.png" layer=26 x=&tf.x4 y=&tf.y1 visible=true]
;sansaku11
[image name="day,sansaku_11" storage="../image/day_check.png" layer=26 x=&tf.x0_3 y=&tf.y2 visible=true]
[image name="day,sansaku_11" storage="../image/day9_1.png" layer=26 x=&tf.x4 y=&tf.y2 visible=true]
;sansaku12
[image name="day,sansaku_12" storage="../image/day_check.png" layer=26 x=&tf.x0_3 y=&tf.y3 visible=true]
[image name="day,sansaku_12" storage="../image/day9_1.png" layer=26 x=&tf.x4 y=&tf.y3 visible=true]
;sansaku13
[image name="day,sansaku_13" storage="../image/day_check.png" layer=26 x=&tf.x0_3 y=&tf.y4 visible=true]
[image name="day,sansaku_13" storage="../image/day9_1.png" layer=26 x=&tf.x4 y=&tf.y4 visible=true]
;====================================================================================================
;sijyou_sansaku.ks (9月1週~9月4週)(銀座デート前まで)に1度だけ発生
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
*common
;一度、全ての日付の画像を暗めに表示します。プリロード幕つける
[iscript]
$(".day").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
;====================================================================================================
;判定処理をまとめます
*hantei_efect
[if exp="sf.event_sijyou_event_6_1 == 1"]
[iscript]
$(".day6_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,day6_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y1 visible=true]
[else]
[image name="day,day6_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_sijyou_9_1 == 1"]
[iscript]
$(".day9_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,day9_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y2 visible=true]
[else]
[image name="day,day9_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_sijyou_9_2 == 1"]
[iscript]
$(".day9_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,day9_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y3 visible=true]
[else]
[image name="day,day9_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_sijyou_9_3 == 1"]
[iscript]
$(".day9_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,day9_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y4 visible=true]
[else]
[image name="day,day9_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y4 visible=true]
[endif]

[if exp="sf.event_sijyou_9_4 == 1"]
[iscript]
$(".day9_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,day9_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y5 visible=true]
[else]
[image name="day,day9_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y5 visible=true]
[endif]

[if exp="sf.event_sijyou_10_1 == 1"]
[iscript]
$(".day10_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,day10_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y6 visible=true]
[else]
[image name="day,day10_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y6 visible=true]
[endif]

[if exp="sf.event_sijyou_10_3 == 1"]
[iscript]
$(".day10_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,day10_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y7 visible=true]
[else]
[image name="day,day10_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y7 visible=true]
[endif]

[if exp="sf.event_sijyou_11_1 == 1"]
[iscript]
$(".day11_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,day11_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y8 visible=true]
[else]
[image name="day,day11_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y8 visible=true]
[endif]

[if exp="sf.event_sijyou_1_1 == 1"]
[iscript]
$(".day1_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,day1_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+155" y=&tf.y1 visible=true]
[else]
[image name="day,day1_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+155" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_sijyou_1_3 == 1"]
[iscript]
$(".day1_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,day1_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+155" y=&tf.y2 visible=true]
[else]
[image name="day,day1_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+155" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_sijyou_1_4 == 1"]
[iscript]
$(".day1_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,day1_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+155" y=&tf.y3 visible=true]
[else]
[image name="day,day1_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+155" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_sijyou_2_1 == 1"]
[iscript]
$(".day2_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,day2_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+155" y=&tf.y4 visible=true]
[else]
[image name="day,day2_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+155" y=&tf.y4 visible=true]
[endif]

[if exp="sf.event_sijyou_2_2_bazar == 1"]
[iscript]
$(".day2_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,day2_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+155" y=&tf.y5 visible=true]
[else]
[image name="day,day2_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+155" y=&tf.y5 visible=true]
[endif]
;====================================================================================================
;判定処理をまとめます 散策
[if exp="sf.event_sijyou_sansaku == 1"]
[iscript]
$(".sansaku_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,sansaku_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y1 visible=true]
[else]
[image name="day,sansaku_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_2 == 1"]
[iscript]
$(".sansaku_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,sansaku_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y2 visible=true]
[else]
[image name="day,sansaku_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_3 == 1"]
[iscript]
$(".sansaku_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,sansaku_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y3 visible=true]
[else]
[image name="day,sansaku_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_4 == 1"]
[iscript]
$(".sansaku_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,sansaku_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y4 visible=true]
[else]
[image name="day,sansaku_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y4 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_5 == 1"]
[iscript]
$(".sansaku_5").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,sansaku_5" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y5 visible=true]
[else]
[image name="day,sansaku_5" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y5 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_6 == 1"]
[iscript]
$(".sansaku_6").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,sansaku_6" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y6 visible=true]
[else]
[image name="day,sansaku_6" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y6 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_7 == 1"]
[iscript]
$(".sansaku_7").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,sansaku_7" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y7 visible=true]
[else]
[image name="day,sansaku_7" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y7 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_9 == 1"]
[iscript]
$(".sansaku_9").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,sansaku_9" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y8 visible=true]
[else]
[image name="day,sansaku_9" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y8 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_10 == 1"]
[iscript]
$(".sansaku_10").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,sansaku_10" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4+130" y=&tf.y1 visible=true]
[else]
[image name="day,sansaku_10" storage="../image/day_check_mi.png" layer=26 x="&tf.x4+130" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_11 == 1"]
[iscript]
$(".sansaku_11").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,sansaku_11" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4+130" y=&tf.y2 visible=true]
[else]
[image name="day,sansaku_11" storage="../image/day_check_mi.png" layer=26 x="&tf.x4+130" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_12 == 1"]
[iscript]
$(".sansaku_12").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,sansaku_12" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4+130" y=&tf.y3 visible=true]
[else]
[image name="day,sansaku_12" storage="../image/day_check_mi.png" layer=26 x="&tf.x4+130" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_13 == 1"]
[iscript]
$(".sansaku_13").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,sansaku_13" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4+130" y=&tf.y4 visible=true]
[else]
[image name="day,sansaku_13" storage="../image/day_check_mi.png" layer=26 x="&tf.x4+130" y=&tf.y4 visible=true]
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
