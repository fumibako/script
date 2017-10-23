;====================================================================================================
;説明
;下部、判定まとめにボタンが表示されます。　先にimage画像が表示されますが見た目上の判定を行っています。
;ボタンにはexpでシナリオ名を指定してあります。 【tf.jp_sinario  初期化'none'】 
;このシナリオの戻り値は　f.event_replay = 'hujieda';　です。
;ヒントの表示フラグは適当な場所でオフに等にしてください。
[eval exp="f.get_tips = 0"]
;====================================================================================================
*start
@clearfix
@clearstack
[cm]
[eval exp="tf.jp_sinario='none'"]
[iscript]
$(".pasent").remove();
$(".pasent1").remove();
$(".tips").remove();
$(".chara_name_area").empty();
[endscript]
;========================================被せ背景===========================================================
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_clearlist.jpg" time=500 visible=true]
;========================================被せ名前表示===========================================================
[if exp="sf.event_hujieda_8_4 == 1"]
[image name="loding_pic2" layer=29 storage="../image/name_hujieda.png" x=250 y=35 visible=true]
[elsif exp="sf.event_hujieda_7_4 == 1 && sf.event_hujieda_8_4 != 1"]
[image name="loding_pic2" layer=29 storage="../image/name_hujieda0.png" x=250 y=35 visible=true]
[elsif exp="sf.event_hujieda_4_4 == 1 && sf.event_hujieda_7_4 != 1"]
[image name="loding_pic2" layer=29 storage="../image/name_hatena.png" x=250 y=35 visible=true]
[endif]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=580 visible=true]
[wait time=50]
;====================================================================================================
;リプレイから帰ってきてokeikoフラグを戻す処理
;[if exp="f.clearlist_out_storage == 'info_hujieda.ks'"]
;[eval exp="f.okeiko_gamen = true"]
;[endif]
;======================================テスト表示======================================================
*test
[if exp="f.okeiko_gamen != true"]
[iscript]
$(".1_fore").empty();
[endscript]
[endif]
[if exp="tf.test_hujieda == true"]
[iscript]
$(".test").empty();
[endscript]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=600 y=530 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=800 y=530 color=white]
[glink target="no_test" text="シナリオテストを無効にする" graphic="select_waku_x500.png" exp="tf.test_hujieda=false,tf.test_gamen=false" size=10 width="150" x=400 y=530 color=white]
*no_test
[endif]
;=======================================================================================
;変数初期設定　エラー回避→scenario/eventpercent_hujieda.ksとして切り出しました。一箇所で調整できるようにまとめます
[call storage="eventpercent_hujieda.ks" target=*start]
;====================================位置指定===========================================
*set_position
;左位置
[eval exp="tf.x0 = 20"]
[eval exp="tf.x1 = 50"]
;二桁↓左位置
[eval exp="tf.x1_2 = 50"]
;左位置2◆
[eval exp="tf.x0_1 = 240"]
[eval exp="tf.x2 = 270"]
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
;================================背景表示;=======================================================
;「情報(お稽古画面表示の上にlayer26で幕として背景を被せた状態)」から見る際の対策として、同様に背景(layer26以上)を幕として利用する形に変更させていただきます
[image layer=26 x=0 y=0 storage="bg/bg_clearlist.jpg"]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_fumibako.jpg"]
;[bg storage="../fgimage/bg/bg_fumibako.jpg" time=0]
;================================ボタン隠し=======================================================
@layopt layer="fix" visible=true
[iscript]
$(".layer_free").css("opacity",0);
$(".fixlayer").css("opacity",0);
[endscript]
;================================移動ボタン=======================================================
[locate x=880 y=24]
[button name="back_clearlist" graphic="back.png" height=50 width=50 storage=&f.clearlist_out_storage target="*start" exp="f.event_replay='none'"]
[wait time=10]
;================================オンオフ=======================================================
;[eval exp="f.get_tips = 0"]
[if exp="f.get_tips == 1"]
[button name="hint_off" graphic="button_hinto_on.png" height=100 width=100 y=540 x=850 target="get_tips_label" exp="f.get_tips=0"]
[wait time=10]
[else]
[button name="hint_on" graphic="button_hinto_off.png" height=100 width=100 y=540 x=850 target="get_tips_label" exp="f.get_tips=1"]
[wait time=10]
[endif]
;================================ヒントの表示=======================================================
[if exp="f.get_tips == 1"]
[ptext name="tips" text="現在、ヒントの表示はオンです" layer=26 size=22 x=100 y=550 color=snow]
[wait time=50]
;※waitしないと書き換えられません！
[else]
[ptext name="tips" text="現在、ヒントの表示はオフです" layer=26 size=22 x=100 y=550 color=snow]
[wait time=50]
[endif]
;=============================キャラクター指定移動ボタン===========================================================
[button name="c_name1" graphic="name_kuroda.png" y=590 x=100 storage="kuroda_event_clearlist.ks"]
[button name="c_name1" graphic="name_sijyou.png" y=590 x=250 storage="sijyou/sijyou_event_clearlist.ks"]
[button name="c_name1" graphic="name_zaizen.png" y=590 x=400 storage="zaizen/zaizen_event_clearlist.ks"]
[if exp="sf.event_katuragi_event_1 == 1"]
[button name="c_name1" graphic="name_katuragi.png" y=590 x=550 storage="katuraginomiya/katuraginomiya_event_clearlist.ks"]
[endif]
[if exp="sf.event_hujieda_4_4 == 1 && sf.event_hujieda_8_4 == 1"]
[button name="c_name1" graphic="name_hujieda.png" y=590 x=700 storage="hujieda/hujieda_event_clearlist.ks"]
[elsif exp="sf.event_hujieda_7_4 == 1 && sf.event_hujieda_8_4 != 1"]
[button name="c_name1" graphic="name_hujieda0.png" y=590 x=700 storage="hujieda/hujieda_event_clearlist.ks"]
[elsif exp="sf.event_hujieda_4_4 == 1 && sf.event_hujieda_7_4 != 1"]
[button name="c_name1" graphic="name_hatena.png" y=590 x=700 storage="hujieda/hujieda_event_clearlist.ks"]
[endif]
;=========================================================================================================
*check_event
;名前表示
[if exp="sf.event_hujieda_8_4 == 1"]
[image name="c_name1" storage="../image/name_hujieda.png" layer=26 x=250 y=35 visible=true]
[elsif exp="sf.event_hujieda_7_4 == 1 && sf.event_hujieda_8_4 != 1"]
[image name="c_name1" storage="../image/name_hujieda0.png" layer=26 x=250 y=35 visible=true]
[elsif exp="sf.event_hujieda_4_4 == 1 && sf.event_hujieda_7_4 != 1"]
[image name="c_name1" storage="../image/name_hatena.png" layer=26 x=250 y=35 visible=true]
[endif]
;達成数 コメント化
;[ptext text="&tf.allEvent_Number_of_times" layer=26 size=21 x=650 y=40 color=snow]
;[ptext text="/18　=" layer=26 size=21 x=680 y=40 color=snow]
;達成率
[ptext name="pasent" text="&tf.event_pasent" layer=26 size=25 x=600 y=34 color=snow]
[ptext name="pasent1" text="%" layer=26 size=25 x=650 y=34 color=snow]
;通常イベント数
[ptext name="pasent" text="&tf.event_Number_of_times" layer=26 size=25 x=280 y=75 color="khaki"]
[ptext name="pasent1" text="/16" layer=26 size=20 x=310 y=80 color="khaki"]
;散策イベント数
[ptext name="pasent" text="&tf.event_sansaku_Number_of_times" layer=26 size=25 x=755 y=75 color="khaki"]
[ptext name="pasent1" text="/2" layer=26 size=20 x=785 y=80 color="khaki"]
;=======================================================================================
*common
;判定処理をまとめます
;◆sf.event_hujieda_4_4
[image name="day,hujieda_4_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y1 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_4_4 == 1"]
[button name="hujieda_4_4" graphic="day4_4.png" target="hujieda_sinario" x=&tf.x1 y=&tf.y1 exp="tf.jp_sinario='hujieda_4_4'"]
[image name="day,hujieda_4_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y1 visible=true wait=true]
[endif]

;◆sf.event_hujieda_5_4
[image name="day,hujieda_5_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y2 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_5_4 == 1"]
[button name="hujieda_5_4" graphic="day5_4.png" target="hujieda_sinario" x=&tf.x1 y=&tf.y2 exp="tf.jp_sinario='hujieda_5_4'"]
[image name="day,hujieda_5_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y2 visible=true wait=true]
[endif]

;◆sf.event_hujieda_6_1
[image name="day,hujieda_6_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y3 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_6_1 == 1"]
[button name="hujieda_6_1" graphic="day6_1.png" target="hujieda_sinario" x=&tf.x1 y=&tf.y3 exp="tf.jp_sinario='hujieda_6_1'"]
[image name="day,hujieda_6_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y3 visible=true wait=true]
[endif]

;◆sf.event_hujieda_6_4
[image name="day,hujieda_6_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y4 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_6_4 == 1"]
[button name="hujieda_6_4" graphic="day6_4.png" target="hujieda_sinario" x=&tf.x1 y=&tf.y4 exp="tf.jp_sinario='hujieda_6_4'"]
[image name="day,hujieda_6_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y4 visible=true wait=true]
[endif]

;◆sf.event_hujieda_7_4
[image name="day,hujieda_7_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y5 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_7_4 == 1"]
[button name="hujieda_7_4" graphic="day7_4.png" target="hujieda_sinario" x=&tf.x1 y=&tf.y5 exp="tf.jp_sinario='hujieda_7_4'"]
[image name="day,event_hujieda_7_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y5 visible=true wait=true]
[endif]

;◆sf.event_hujieda_8_4
[image name="day,hujieda_8_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y6 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_8_4 == 1"]
[button name="hujieda_8_4" graphic="day8_4.png" target="hujieda_sinario" x=&tf.x1 y=&tf.y6 exp="tf.jp_sinario='hujieda_8_4'"]
[image name="day,hujieda_8_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y6 visible=true wait=true]
[endif]

;◆sf.event_hujieda_9_1
[image name="day,hujieda_9_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y7 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_9_1 == 1"]
[button name="hujieda_9_1" graphic="day9_1.png" target="hujieda_sinario" x=&tf.x1 y=&tf.y7 exp="tf.jp_sinario='hujieda_9_1'"]
[image name="day,hujieda_9_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y7 visible=true wait=true]
[endif]

;◆sf.event_hujieda_9_2
[image name="day,hujieda_9_2" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y8 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_9_2 == 1"]
[button name="hujieda_9_2" graphic="day9_2.png" target="hujieda_sinario" x=&tf.x1 y=&tf.y8 exp="tf.jp_sinario='hujieda_9_2'"]
[image name="day,hujieda_9_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y8 visible=true wait=true]
[endif]

;左位置2 tf.x0_1  tf.x2 
;◆sf.event_hujieda_9_4
[image name="day,hujieda_9_4" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y1 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_9_4 == 1"]
[button name="hujieda_9_4" graphic="day9_4.png" target="hujieda_sinario" x=&tf.x2 y=&tf.y1 exp="tf.jp_sinario='hujieda_9_4'"]
[image name="day,hujieda_9_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+150" y=&tf.y1 visible=true wait=true]
[endif]

;◆sf.event_hujieda_10_1
[image name="day,hujieda_10_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y2 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_10_1 == 1"]
[button name="hujieda_10_1" graphic="day10_1.png" target="hujieda_sinario" x=&tf.x2 y=&tf.y2 exp="tf.jp_sinario='hujieda_10_1'"]
[image name="day,hujieda_10_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+150" y=&tf.y2 visible=true wait=true]
[endif]

;◆sf.event_hujieda_10_3
[image name="day,hujieda_10_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y3 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_10_3 == 1"]
[button name="hujieda_10_3" graphic="day10_3.png" target="hujieda_sinario" x=&tf.x2 y=&tf.y3 exp="tf.jp_sinario='hujieda_10_3'"]
[image name="day,hujieda_10_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+150" y=&tf.y3 visible=true wait=true]
[endif]

;◆sf.event_hujieda_11_1
[image name="day,hujieda_11_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y4 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_11_1 == 1"]
[button name="hujieda_11_1" graphic="day11_1.png" target="hujieda_sinario" x=&tf.x2 y=&tf.y4 exp="tf.jp_sinario='hujieda_11_1'"]
[image name="day,hujieda_11_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+150" y=&tf.y4 visible=true wait=true]
[endif]

;◆sf.event_hujieda_11_3
[image name="day,hujieda_11_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y5 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_11_3 == 1"]
[button name="hujieda_11_3" graphic="day11_3.png" target="hujieda_sinario" x=&tf.x2 y=&tf.y5 exp="tf.jp_sinario='hujieda_11_3'"]
[image name="day,hujieda_11_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+150" y=&tf.y5 visible=true wait=true]
[endif]

;◆sf.event_hujieda_12_3
[image name="day,hujieda_12_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y6 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_12_3 == 1"]
[button name="hujieda_12_3" graphic="day12_3.png" target="hujieda_sinario" x=&tf.x2 y=&tf.y6 exp="tf.jp_sinario='hujieda_12_3'"]
[image name="day,hujieda_12_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+150" y=&tf.y6 visible=true wait=true]
[endif]

;◆sf.event_hujieda_1_3
[image name="day,hujieda_1_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y7 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_1_3 == 1"]
[button name="hujieda_1_3" graphic="day1_3.png" target="hujieda_sinario" x=&tf.x2 y=&tf.y7 exp="tf.jp_sinario='hujieda_1_3'"]
[image name="day,hujieda_1_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+150" y=&tf.y7 visible=true wait=true]
[endif]

;◆sf.event_hujieda_2_3
[image name="day,hujieda_2_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y8 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_2_3 == 1"]
[button name="hujieda_2_3" graphic="day2_3.png" target="hujieda_sinario" x=&tf.x2 y=&tf.y8 exp="tf.jp_sinario='hujieda_2_3'"]
[image name="day,hujieda_2_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+150" y=&tf.y8 visible=true wait=true]
[endif]

;====================================================================================================
;判定処理をまとめます 散策
;左位置3 tf.x0_2 tf.x3 
;2_3
;sf.event_hujieda_sansaku1 2/3
[image name="day,hujieda_sansaku" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y1 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_sansaku == 1"]
[button name="hujieda_sansaku" graphic="day2_3.png" target="hujieda_sinario" x=&tf.x3 y=&tf.y1 exp="tf.jp_sinario='hujieda_sansaku1'"]
[image name="day,hujieda_sansaku" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+130" y=&tf.y1 visible=true wait=true]
[endif]

;3_2
;sf.event_hujieda_bazaar
[image name="day,hujieda_bazaar" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y2 visible=true wait=true]
[wait time=10]
[if exp="sf.event_hujieda_bazaar == 1"]
[button name="hujieda_bazaar" graphic="day3_2.png" target="hujieda_sinario" x=&tf.x3 y=&tf.y2 exp="tf.jp_sinario='hujieda_bazaar_1'"]
[image name="day,hujieda_bazaar" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+130" y=&tf.y2 visible=true wait=true]
[endif]
;=============================================エンディングタイトル=========================================================
;enndingボタン位置
[eval exp="tf.x5 = 580"]
[eval exp="tf.x6 = tf.x5 + 200"]
[eval exp="tf.x7 = tf.x5 + 140"]
[eval exp="tf.x8 = tf.x6 + 130"]
[eval exp="tf.end1_y = tf.y7 + 30"]
[eval exp="tf.end2_y = tf.y8 + 10"]
[if exp="sf.ED_hujieda_normal == 1 || sf.ED_hujieda_good == 1 || sf.ED_hujieda_bad == 1 || sf.ED_hujieda_bad2 == 1"]
[image name="endtitle" storage="../image/day_end.png" layer=26 x="&tf.x5+140" y="&tf.y7" visible=true wait=true]
[else]
[image name="day,endtitle" storage="../image/day_end.png" layer=26 x="&tf.x5+140" y="&tf.y7" visible=true wait=true]
[iscript]
$(".endtitle").css({'filter': 'brightness(60%)','-webkit-filter': 'brightness(60%)','-moz-filter': 'brightness(60%)','-o-filter': 'brightness(60%)','-ms-filter': 'brightness(60%)'});
[endscript]
[wait time=10]
[endif]
;========================================エンディング============================================================
[if exp="sf.ED_hujieda_bad == 1"]
[button name="ending1" graphic="day_bad1.png" y="&tf.end1_y" x="&tf.x5" size=15 target="hujieda_sinario" exp="tf.jp_sinario='hujieda_8_4_bad'"]
[image name="ending1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x7" y="&tf.end1_y" visible=true wait=true]
[endif]
[if exp="sf.ED_hujieda_bad != 1"]
;[button name="day,ending1,tips_btn" graphic="day_bad1.png" y="&tf.end1_y" x="&tf.x5" size=15 target="tips_label" exp="tf.tips=tf.hint_bad"]
[image name="day,ending1" storage="../image/day_bad1.png" layer=26 x="&tf.x5" y="&tf.end1_y" visible=true wait=true]
[wait time=10]
[iscript]
$(".ending1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="ending1" storage="../image/day_check_mi.png" layer=26 x="&tf.x7" y="&tf.end1_y" visible=true wait=true]
[wait time=10]
[endif]

[if exp="sf.ED_hujieda_bad2 == 1"]
[button name="ending2" graphic="day_bad2.png" y="&tf.end1_y" x="&tf.x6" size=15 target="hujieda_sinario" exp="tf.jp_sinario='hujieda_12_3_badED'"]
[image name="ending2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x8" y="&tf.end1_y" visible=true wait=true]
[endif]
[if exp="sf.ED_hujieda_bad2 != 1"]
;[button fix=true name="day,ending2,tips_btn" graphic="day_bad2.png" y="&tf.end1_y" x="&tf.x6" size=15 target="tips_label" exp="tf.tips=tf.hint_bad2"]
[image name="day,ending2" storage="../image/day_bad2.png" layer=26 x="&tf.x6" y="&tf.end1_y" visible=true wait=true]
[wait time=10]
[iscript]
$(".ending2").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="ending2" storage="../image/day_check_mi.png" layer=26 x="&tf.x8" y="&tf.end1_y" visible=true wait=true]
[wait time=10]
[endif]

[if exp="sf.ED_hujieda_normal == 1"]
[button name="ending3" graphic="day_nomal.png" y="&tf.end2_y" x="&tf.x5" size=15 target="hujieda_sinario" exp="tf.jp_sinario='hujieda_3_4_normalED'"]
[image name="ending3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x7" y="&tf.end2_y" visible=true wait=true]
[wait time=10]
[endif]
[if exp="sf.ED_hujieda_normal != 1"]
;[button fix=true name="ending3,tips_btn" graphic="day_nomal.png" y="&tf.end2_y" x="&tf.x5" size=15 target="tips_label" exp="tf.tips=tf.hint_normal"]
[image name="day,ending3" storage="../image/day_nomal.png" layer=26 x="&tf.x5" y="&tf.end2_y" visible=true wait=true]
[wait time=10]
[iscript]
$(".ending3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="ending3" storage="../image/day_check_mi.png" layer=26 x="&tf.x7" y="&tf.end2_y" visible=true wait=true]
[wait time=10]
[endif]

[if exp="sf.ED_hujieda_good == 1"]
[button name="ending4" graphic="day_good.png" y="&tf.end2_y" x="&tf.x6" text="good" size=15 target="hujieda_sinario" exp="tf.jp_sinario='hujieda_3_4_goodED'"]
[image name="ending4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x8" y="&tf.end2_y" visible=true wait=true]
[wait time=10]
[endif]
[if exp="sf.ED_hujieda_good != 1"]
;[button fix=true name="day,ending4,tips_btn" graphic="day_good.png" y="&tf.end2_y" x="&tf.x6" text="good" size=15 target="tips_label" exp="tf.tips=tf.hint_normal"]
[image name="day,ending4" storage="../image/day_good.png" layer=26 x="&tf.x6" y="&tf.end2_y" visible=true wait=true]
[wait time=10]
[iscript]
$(".ending4").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="ending4" storage="../image/day_check_mi.png" layer=26 x="&tf.x8" y="&tf.end2_y" visible=true wait=true]
[wait time=10]
[endif]
;=============================================未判定======================================================
[if exp="sf.event_hujieda_4_4 != 1"]
[button fix=true name="day,hujieda_4_4,h_4_4,tips_btn" graphic="day4_4.png" target="tips_label" x=&tf.x1 y=&tf.y1 exp="tf.tips=tf.hint1"]
;[image name="day,hujieda_4_4,h_4_4" storage="../image/day4_4.png"  layer=26 x=&tf.x1 y=&tf.y1 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_4_4").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_4_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y1 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_5_4 != 1"]
[button fix=true name="day,hujieda_5_4,h_5_4,tips_btn" graphic="day5_4.png" target="tips_label" x=&tf.x1 y=&tf.y2 exp="tf.tips=tf.hint2"]
;[image name="day,hujieda_5_4,h_5_4" storage="../image/day5_4.png"  layer=26 x=&tf.x1 y=&tf.y2 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_5_4").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="hujieda_5_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y2 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_6_1 != 1"]
[button fix=true name="day,hujieda_6_1,h_6_1,tips_btn" graphic="day6_1.png" target="tips_label" x=&tf.x1 y=&tf.y3 exp="tf.tips=tf.hint3"]
;[image name="day,hujieda_6_1,h_6_1" storage="../image/day6_1.png"  layer=26 x=&tf.x1 y=&tf.y3 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_6_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_6_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y3 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_6_4 != 1"]
[button fix=true name="day,hujieda_6_4,h_6_4,tips_btn" graphic="day6_4.png" target="tips_label" x=&tf.x1 y=&tf.y4 exp="tf.tips=tf.hint4"]
;[image name="day,hujieda_6_4,h_6_4" storage="../image/day6_4.png"  layer=26 x=&tf.x1 y=&tf.y4 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_6_4").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_6_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y4 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_7_4 != 1"]
[button fix=true name="day,hujieda_7_4,h_7_4,tips_btn" graphic="day7_4.png" target="tips_label" x=&tf.x1 y=&tf.y5 exp="tf.tips=tf.hint5"]
;[image name="day,hujieda_7_4,h_7_4" storage="../image/day7_4.png"  layer=26 x=&tf.x1 y=&tf.y5 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_7_4").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,event_hujieda_7_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y5 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_8_4 != 1"]
[button fix=true name="day,hujieda_8_4,h_8_4,tips_btn" graphic="day8_4.png" target="tips_label" x=&tf.x1 y=&tf.y6 exp="tf.tips=tf.hint6"]
;[image name="day,hujieda_8_4,h_8_4" storage="../image/day8_4.png"  layer=26 x=&tf.x1 y=&tf.y6 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_8_4").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_8_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y6 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_9_1 != 1"]
[button fix=true name="day,hujieda_9_1,h_9_1,tips_btn" graphic="day9_1.png" target="tips_label" x=&tf.x1 y=&tf.y7 exp="tf.tips=tf.hint7"]
;[image name="day,hujieda_9_1,h_9_1" storage="../image/day9_1.png"  layer=26 x=&tf.x1 y=&tf.y7 visible=true wait=true]
[iscript]
$(".hujieda_9_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_9_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y7 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_9_2 != 1"]
[button fix=true name="day,hujieda_9_2,h_9_2,tips_btn" graphic="day9_2.png" target="tips_label" x=&tf.x1 y=&tf.y8 exp="tf.tips=tf.hint8"]
;[image name="day,hujieda_9_2,h_9_2" storage="../image/day9_2.png"  layer=26 x=&tf.x1 y=&tf.y8 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_9_2").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_9_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y8 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_9_4 != 1"]
[button fix=true name="day,hujieda_9_4,h_9_4,tips_btn" graphic="day9_4.png" target="tips_label" x=&tf.x2 y=&tf.y1 exp="tf.tips=tf.hint9"]
;[image name="day,hujieda_9_4,h_9_4" storage="../image/day9_4.png"  layer=26 x=&tf.x2 y=&tf.y1 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_9_4").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_9_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+150" y=&tf.y1 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_10_1 != 1"]
[button fix=true name="day,hujieda_10_1,h_10_1,tips_btn" graphic="day10_1.png" target="tips_label" x=&tf.x2 y=&tf.y2 exp="tf.tips=tf.hint10"]
;[image name="day,hujieda_10_1,h_10_1" storage="../image/day10_1.png"  layer=26 x=&tf.x2 y=&tf.y2 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_10_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_10_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+150" y=&tf.y2 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_10_3 != 1"]
[button fix=true name="day,hujieda_10_3,h_10_3,tips_btn" graphic="day10_3.png" target="tips_label" x=&tf.x2 y=&tf.y3 exp="tf.tips=tf.hint11"]
;[image name="day,hujieda_10_3,h_10_3" storage="../image/day10_3.png"  layer=26 x=&tf.x2 y=&tf.y3 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_10_3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_10_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+150" y=&tf.y3 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_11_1 != 1"]
[button fix=true name="day,hujieda_11_1,h_11_1,tips_btn" graphic="day11_1.png" target="tips_label" x=&tf.x2 y=&tf.y4 exp="tf.tips=tf.hint12"]
;[image name="day,hujieda_11_1,h_11_1" storage="../image/day11_1.png"  layer=26 x=&tf.x2 y=&tf.y4 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_11_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_11_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+150" y=&tf.y4 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_11_3 != 1"]
[button fix=true name="day,hujieda_11_3,h_11_3,tips_btn" graphic="day11_3.png" target="tips_label" x=&tf.x2 y=&tf.y5 exp="tf.tips=tf.hint13"]
[image name="day,hujieda_11_3,h_11_3" storage="../image/day11_3.png"  layer=26 x=&tf.x2 y=&tf.y5 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_11_3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_11_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+150" y=&tf.y5 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_12_3 != 1"]
[button fix=true name="day,hujieda_12_3,h_12_3,tips_btn" graphic="day12_3.png" target="tips_label" x=&tf.x2 y=&tf.y6 exp="tf.tips=tf.hint14"]
;[image name="day,hujieda_12_3,h_12_3" storage="../image/day12_3.png"  layer=26 x=&tf.x2 y=&tf.y6 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_12_3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_12_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+150" y=&tf.y6 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_1_3 != 1"]
[button fix=true name="day,hujieda_1_3,h_1_3,tips_btn" graphic="day1_3.png" target="tips_label" x=&tf.x2 y=&tf.y7 exp="tf.tips=tf.hint15"]
;[image name="day,hujieda_1_3,h_1_3" storage="../image/day1_3.png"  layer=26 x=&tf.x2 y=&tf.y7 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_1_3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_1_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+150" y=&tf.y7 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_2_3 != 1"]
[button fix=true name="day,hujieda_2_3,h_2_3,tips_btn" graphic="day2_3.png" target="tips_label" x=&tf.x2 y=&tf.y8 exp="tf.tips=tf.hint16"]
;[image name="day,hujieda_2_3,h_2_3" storage="../image/day2_3.png"  layer=26 x=&tf.x2 y=&tf.y8 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_2_3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_2_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+150" y=&tf.y8 visible=true wait=true]
[endif]
;=========================================散策未判定===========================================================
[if exp="sf.event_hujieda_sansaku != 1"]
[button fix=true name="day,hujieda_sansaku,h_s1,tips_btn" graphic="day2_3.png" target="tips_label" x=&tf.x3 y=&tf.y1 exp="tf.tips=tf.hint17"]
;[image name="day,hujieda_sansaku,h_s1" storage="../image/day2_3.png"  layer=26 x=&tf.x3 y=&tf.y1 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_sansaku").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_sansaku" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+130" y=&tf.y1 visible=true wait=true]
[endif]

[if exp="sf.event_hujieda_bazaar != 1"]
[button fix=true name="day,hujieda_bazaar,h_bz,tips_btn" graphic="day3_2.png" target="tips_label" x=&tf.x3 y=&tf.y2 exp="tf.tips=tf.hint18"]
;[image name="day,hujieda_bazaar,h_bz" storage="../image/day3_2.png"  layer=26 x=&tf.x3 y=&tf.y2 visible=true wait=true]
[wait time=10]
[iscript]
$(".hujieda_bazaar").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,hujieda_bazaar" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+130" y=&tf.y2 visible=true wait=true]
[endif]
;====================================================================================================
[iscript]
$(".loding_pic").remove();
$(".loding_pic1").remove();
$(".loding_pic2").remove();
$(".layer_free").css("opacity",1);
[endscript]
*stop
[s]

*hujieda_sinario
[cm]
@clearfix
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

;tf.jp_sinarioのシナリオにジャンプ
[iscript]
tf.jp_sinario = 'hujieda/' + tf.jp_sinario + '.ks';
f.event_replay = 'hujieda';
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
@jump storage="hujieda/hujieda_event_clearlist.ks" target=*start
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
[eval exp="tf.jp_sinario='none'"]
[eval exp="f.event_replay = 'none'"]
;------タイトルへ戻る
@jump storage="title.ks"
[s]

*tips_onoff
;f.event_replay = ;
[eval exp="f.event_replay = ''sijyou''"]
[eval exp="f.get_tips = 1 "]
;また判定に飛ぶと待ち時間が発生するので適度な場所で　仮にstop
@jump target="stop"
[s]

*tips_label
;テキストの書き換えを行うか判定し、trueであればテキストを書き換えます
[if exp="f.get_tips == 1"]
[iscript]
$("p.tips").text(tf.tips);
[endscript]
[endif]
;fixなのでreturnする
[return]
[s]

*get_tips_label
;onoffのフラグはボタンで行う
;最低限の書き替え
[if exp="f.get_tips == 1"]
[iscript]
f.get_tips=1;
$(".hint_on").remove();
$("p.tips").text("現在、ヒントはオンです");
[endscript]
;タイトル画面にて、ONの時はONの表示にしているため、合わせる方がプレイヤーさんに分かりやすいかと思いますので、変更させていただきます◆jsYiJcqRkk(元：オンのときはオフを表示)
[button name="hint_off" graphic="button_hinto_on.png" height=100 width=100 y=540 x=850 target="get_tips_label" exp="f.get_tips=0"]
[wait time=10]
;@jump target="tips_btn"
@jump target="stop"
[else]
[iscript]
f.get_tips=0;
$(".hint_off").remove();
$("p.tips").text("現在、ヒントはオフです");
[endscript]
;オフの時はオフを表示(元：オフのときはオンを表示)
[button name="hint_on" graphic="button_hinto_off.png" height=100 width=100 y=540 x=850 target="get_tips_label" exp="f.get_tips=1"]
[wait time=10]
[endif]
@jump target="stop"
[s]
