;====================================================================================================
;説明
;下部、判定まとめにボタンが表示されます。　先にimage画像が表示されますが見た目上の判定を行っています。
;ボタンにはexpでシナリオ名を指定してあります。 【tf.jp_sinario  初期化'none'】 
;このシナリオの戻り値は　f.event_replay = 'zaizen';　です。
;ヒントの表示フラグは適当な場所でオフに等にしてください。[eval exp="f.get_tips = 0"]
;====================================================================================================
*start
;画面初期化
@clearfix
@clearstack
[eval exp="tf.jp_sinario='none'"]
[cm]
[iscript]
$(".pasent").remove();
$(".pasent1").remove();
$(".tips").remove();
$(".chara_name_area").empty();
[endscript]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_clearlist.jpg" time=500 visible=true]
[image name="loding_pic2" layer=29 storage="../image/name_zaizen.png" x=255 y=35 visible=true]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=580 visible=true]
[wait time=50]
;リプレイから帰ってきてokeikoフラグを戻す処理
[if exp="f.clearlist_out_storage == 'info_sijyou.ks'"]
[eval exp="f.okeiko_gamen = true"]
[endif]
;====================================================================================================
*test
[if exp="f.okeiko_gamen != true"]
[iscript]
$(".1_fore").empty();
[endscript]
[endif]
[if exp="tf.test_zaizen == true"]
[iscript]
$(".test").remove();
[endscript]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=600 y=530 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=800 y=530 color=white]
[glink target="no_test" text="シナリオテストを無効にする" graphic="select_waku_x500.png" exp="tf.test_zaizen=false,tf.test_gamen=false" size=10 width="150" x=400 y=530 color=white]
*no_test
[endif]
;=======================================================================================
[call storage="eventpercent_zaizen.ks" target=*start]
;変数初期設定　エラー回避→scenario/eventpercent_zaizen.ksとして切り出しました。一箇所で調整できるようにまとめます
;====================================位置指定===========================================
*set_position
;左位置
[eval exp="tf.x0 = 20"]
[eval exp="tf.x1 = 45"]
;二桁↓左位置
[eval exp="tf.x1_2 = 50"]
;左位置2
;左位置2◆
[eval exp="tf.x0_1 = 240"]
[eval exp="tf.x2 = 280"]
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
;================================背景表示;================================
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
;オフの時はオフ表示(元：オフのときはオンを表示)
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
;=============================キャラクター指定移動ボタン==========================================================
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
;=======================================================================================
*check_event
;名前表示
[image name="c_name1" storage="../image/name_zaizen.png" layer=26 x=255 y=35 visible=true]
;達成率
[ptext name="pasent" text="&tf.event_pasent" layer=26 size=25 x=600 y=34 color=snow]
[ptext name="pasent1" text="%" layer=26 size=25 x=650 y=34 color=snow]
;通常イベント数
[ptext name="pasent" text="&tf.event_Number_of_times" layer=26 size=25 x=280 y=75 color="khaki"]
[ptext name="pasent1" text="/11" layer=26 size=20 x=310 y=80 color="khaki"]
;散策イベント数
[ptext name="pasent" text="&tf.event_sansaku_Number_of_times" layer=26 size=25 x=755 y=75 color="khaki"]
[ptext name="pasent1" text="/2" layer=26 size=20 x=785 y=80 color="khaki"]
;=======================================================================================
;判定処理をまとめます
;sf.event_zaizen_event_6_1
[image name="day,zaizen_event_6_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y1 visible=true wait=true]
[wait time=10]
[if exp="sf.event_zaizen_event_6_1 == 1"]
[button name="zaizen_6_1" graphic="day6_1.png" target="zaizen_sinario" x=&tf.x1 y=&tf.y1 exp="tf.jp_sinario='zaizen_6_1'"]
[image name="day,zaizen_event_6_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y1 visible=true]
[endif]

;sf.event_zaizen_9_1
[image name="day,zaizen_event_9_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y2 visible=true wait=true]
[wait time=10]
[if exp="sf.event_zaizen_9_1 == 1"]
[button name="zaizen_9_1" graphic="day9_1.png" target="zaizen_sinario" x=&tf.x1 y=&tf.y2 exp="tf.jp_sinario='zaizen_9_1'"]
[image name="day,zaizen_event_9_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y2 visible=true]
[endif]

;sf.event_zaizen_9_3
[image name="day,zaizen_event_9_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y3 visible=true wait=true]
[wait time=10]
[if exp="sf.event_zaizen_9_3 == 1"]
[button name="zaizen_9_3" graphic="day9_3.png" target="zaizen_sinario" x=&tf.x1 y=&tf.y3 exp="tf.jp_sinario='zaizen_9_3'"]
[image name="day,zaizen_event_9_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y3 visible=true]
[endif]

;sf.event_zaizen_10_1
[image name="day,zaizen_event_10_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y4 visible=true wait=true]
[wait time=10]
[if exp="sf.event_zaizen_10_1 == 1"]
[button name="zaizen_10_1" graphic="day10_1.png" target="zaizen_sinario" x=&tf.x1 y=&tf.y4 exp="tf.jp_sinario='zaizen_10_1'"]
[image name="day,zaizen_event_10_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y4 visible=true]
[endif]

;sf.event_zaizen_10_3
[image name="day,zaizen_event_10_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y5 visible=true wait=true]
[wait time=10]
[if exp="sf.event_zaizen_10_3 == 1"]
[button name="zaizen_10_3" graphic="day10_3.png" target="zaizen_sinario" x=&tf.x1 y=&tf.y5 exp="tf.jp_sinario='zaizen_10_3'"]
[image name="day,zaizen_event_10_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y5 visible=true]
[endif]

;sf.event_zaizen_11_1
[image name="day,zaizen_event_11_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y6 visible=true wait=true]
[wait time=10]
[if exp="sf.event_zaizen_11_1 == 1"]
[button name="zaizen_11_1" graphic="day11_1.png" target="zaizen_sinario" x=&tf.x1 y=&tf.y6 exp="tf.jp_sinario='zaizen_11_1'"]
[image name="day,zaizen_event_11_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y6 visible=true]
[endif]

;sf.event_zaizen_11_3
[image name="day,zaizen_event_11_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y7 visible=true wait=true]
[wait time=10]
[if exp="sf.event_zaizen_11_3 == 1"]
[button name="zaizen_11_3" graphic="day11_3.png" target="zaizen_sinario" x=&tf.x1 y=&tf.y7 exp="tf.jp_sinario='zaizen_11_3'"]
[image name="day,zaizen_event_11_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y7 visible=true]
[endif]

;sf.event_zaizen_11_4
[image name="day,zaizen_event_11_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y8 visible=true wait=true]
[wait time=10]
[if exp="sf.event_zaizen_11_4 == 1"]
[button name="zaizen_11_4" graphic="day11_4.png" target="zaizen_sinario" x=&tf.x1 y=&tf.y8 exp="tf.jp_sinario='zaizen_11_4_1'"]
[image name="day,zaizen_event_11_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y8 visible=true]
[endif]

;左位置2　tf.x0_1 tf.x2 
;sf.event_zaizen_12_2
[image name="day,zaizen_event_12_2" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y1 visible=true wait=true]
[wait time=10]
[if exp="sf.event_zaizen_12_2 == 1"]
[button name="zaizen_12_2" graphic="day12_2.png" target="zaizen_sinario" x=&tf.x2 y=&tf.y1 exp="tf.jp_sinario='zaizen_12_2'"]
[image name="day,zaizen_event_12_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+150" y=&tf.y1 visible=true]
[endif]

;sf.event_zaizen_12_4
[image name="day,zaizen_event_12_4" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y2 visible=true wait=true]
[wait time=10]
[if exp="sf.event_zaizen_12_4 == 1"]
[button name="zaizen_12_4" graphic="day12_4.png" target="zaizen_sinario" x=&tf.x2 y=&tf.y2 exp="tf.jp_sinario='zaizen_12_4'"]
[image name="day,zaizen_event_12_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+150" y=&tf.y2 visible=true]
[endif]

;sf.event_zaizen_1_3
[image name="day,zaizen_event_1_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y3 visible=true wait=true]
[wait time=10]
[if exp="sf.event_zaizen_1_3 == 1"]
[button name="zaizen_1_3" graphic="day1_3.png" target="zaizen_sinario" x=&tf.x2 y=&tf.y3 exp="tf.jp_sinario='zaizen_1_3_1'"]
[image name="day,zaizen_event_1_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+150" y=&tf.y3 visible=true]
[endif]

;==================================================================================
;左位置3 tf.x0_2 tf.x3
;sf.event_zaizen_sansaku_2_1
[image name="day,zaizen_sansaku_2_1" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y1 visible=true wait=true]
[wait time=10]
[if exp="sf.event_zaizen_sansaku_2_1 == 1"]
[button name="zaizen_sansaku_2_1" graphic="day2_1.png" target="zaizen_sinario" x=&tf.x3 y=&tf.y1 exp="tf.jp_sinario='zaizen_2_1'"]
[image name="day,zaizen_sansaku_2_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+150" y=&tf.y1 visible=true]
[endif]

;sf.event_zaizen_sansaku_bazar 2月1週~3月3週・散策・バザー
[image name="day,zaizen_sansaku_bazar" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y2 visible=true wait=true]
[wait time=10]
[if exp="sf.event_zaizen_sansaku_bazar == 1"]
[button name="zaizen_sansaku_bazar" graphic="day2_1.png" target="zaizen_sinario" x=&tf.x3 y=&tf.y2 exp="tf.jp_sinario='zaizen_bazaar'"]
[image name="day,zaizen_sansaku_bazar" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+150" y=&tf.y2 visible=true]
[endif]
;========================================エンディング============================================================
;enndingボタン位置
[eval exp="tf.x5 = 580"]
[eval exp="tf.x6 = tf.x5 + 200"]
[eval exp="tf.x7 = tf.x5 + 140"]
[eval exp="tf.x8 = tf.x6 + 130"]
[eval exp="tf.end1_y = tf.y7 + 30"]
[eval exp="tf.end2_y = tf.y8 + 10"]
;=============================================エンディングタイトル=========================================================
[if exp="sf.ED_hujieda_normal == 1 || sf.ED_hujieda_good == 1 || sf.ED_hujieda_bad == 1 || sf.ED_hujieda_bad2 == 1]
[image name="endtitle" storage="../image/day_end.png" layer=26 x="&tf.x5+140" y="&tf.y7" visible=true wait=true]
[else]
[image name="day,endtitle" storage="../image/day_end.png" layer=26 x="&tf.x5+140" y="&tf.y7" visible=true wait=true]
[iscript]
$(".endtitle").css({'filter': 'brightness(60%)','-webkit-filter': 'brightness(60%)','-moz-filter': 'brightness(60%)','-o-filter': 'brightness(60%)','-ms-filter': 'brightness(60%)'});
[endscript]
[wait time=10]
[endif]
;========================================エンディング============================================================
[if exp="sf.ED_zaizen_bad2 == 1"]
[button name="ending1" graphic="day_bad1.png" y="&tf.end1_y" x="&tf.x5" size=15 target="zaizen_sinario" exp="tf.jp_sinario='zaizen_11_1_bad'"]
[image name="ending1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x7" y="&tf.end1_y" visible=true wait=true]
[endif]
[if exp="sf.ED_zaizen_bad2 != 1"]
;[button fix=true name="day,ending1,tips_btn" graphic="day_bad1.png" y="&tf.end1_y" x="&tf.x5" size=15 target="tips_label" x=&tf.x1 y=&tf.y1 exp="tf.tips=tf.hint_bad"]
[image name="day,ending1" storage="../image/day_bad1.png" layer=26 x="&tf.x5" y="&tf.end1_y" visible=true wait=true]
[wait time=10]
[iscript]
$(".ending1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[image name="ending1" storage="../image/day_check_mi.png" layer=26 x="&tf.x7" y="&tf.end1_y" visible=true wait=true]
[wait time=10]
[endif]

[if exp="sf.ED_zaizen_bad1 == 1"]
[button name="ending2" graphic="day_bad2.png" y="&tf.end1_y" x="&tf.x6" size=15 target="zaizen_sinario" exp="tf.jp_sinario='zaizen_11_bad2'"]
[image name="ending2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x8" y="&tf.end1_y" visible=true wait=true]
[endif]
[if exp="sf.ED_zaizen_bad1 != 1"]
;[button fix=true name="day,ending2,tips_btn" graphic="day_bad2.png" y="&tf.end1_y" x="&tf.x6" size=15 target="tips_label" x=&tf.x1 y=&tf.y1 exp="tf.tips=tf.hint_bad2"]
[image name="day,ending2" storage="../image/day_bad2.png" layer=26 x="&tf.x6" y="&tf.end1_y" visible=true wait=true]
[wait time=10]
[iscript]
$(".ending2").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[image name="ending2" storage="../image/day_check_mi.png" layer=26 x="&tf.x8" y="&tf.end1_y" visible=true wait=true]
[wait time=10]
[endif]

[if exp="sf.ED_zaizen_normal == 1"]
[button name="ending3" graphic="day_nomal.png" y="&tf.end2_y" x="&tf.x5" size=15 target="zaizen_sinario" exp="tf.jp_sinario='zaizen_3_4_normal'"]
[image name="ending3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x7" y="&tf.end2_y" visible=true wait=true]
[wait time=10]
[endif]
[if exp="sf.ED_zaizen_normal != 1"]
;[button fix=true name="day,ending3,tips_btn" graphic="day_nomal.png" y="&tf.end2_y" x="&tf.x5" size=15 target="tips_label" x=&tf.x1 y=&tf.y1 exp="tf.tips=tf.hint_normal"]
[image name="day,ending3" storage="../image/day_nomal.png" layer=26 x="&tf.x5" y="&tf.end2_y" visible=true wait=true]
[wait time=10]
[iscript]
$(".ending3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[image name="ending3" storage="../image/day_check_mi.png" layer=26 x="&tf.x7" y="&tf.end2_y" visible=true wait=true]
[wait time=10]
[endif]

[if exp="sf.ED_zaizen_good == 1"]
[button name="ending4" graphic="day_good.png" y="&tf.end2_y" x="&tf.x6" size=15 target="zaizen_sinario" exp="tf.jp_sinario='zaizen_3_4_good'"]
[image name="ending4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x8" y="&tf.end2_y" visible=true wait=true]
[wait time=10]
[endif]
[if exp="sf.ED_zaizen_good != 1"]
;[button fix=true name="day,ending4,tips_btn" graphic="day_good.png" y="&tf.end2_y" x="&tf.x6" size=15 target="tips_label" x=&tf.x1 y=&tf.y1 exp="tf.tips=tf.hint_good"]
[image name="day,ending4" storage="../image/day_good.png" layer=26 x="&tf.x6" y="&tf.end2_y" visible=true wait=true]
[wait time=10]
[iscript]
$(".ending4").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[image name="ending4" storage="../image/day_check_mi.png" layer=26 x="&tf.x8" y="&tf.end2_y" visible=true wait=true]
[wait time=10]
[endif]
;=============================================未判定==========================================================
*mihantei
[if exp="sf.event_zaizen_event_6_1 != 1"]
[button fix=true name="day,zaizen_event_6_1,day_z_6_1,tips_btn" graphic="day6_1.png" target="tips_label" x=&tf.x1 y=&tf.y1 exp="tf.tips=tf.hint1"]
;[image name="day,zaizen_event_6_1,day_z_6_1" storage="../image/day6_1.png"  layer=26 x=&tf.x1 y=&tf.y1 visible=true wait=true]
[wait time=10]
[iscript]
$(".zaizen_event_6_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,zaizen_event_6_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_zaizen_9_1 != 1"]
[button fix=true name="day,zaizen_event_9_1,day_z_9_1,tips_btn" graphic="day9_1.png" target="tips_label" x=&tf.x1 y=&tf.y2 exp="tf.tips=tf.hint2"]
;[image name="day,zaizen_event_9_1,day_z_9_1" storage="../image/day9_1.png"  layer=26 x=&tf.x1 y=&tf.y2 visible=true wait=true]
[wait time=10]
[iscript]
$(".zaizen_event_9_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,zaizen_event_9_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_zaizen_9_3 != 1"]
[button fix=true name="day,zaizen_event_9_3,day_z_9_3,tips_btn" graphic="day9_3.png" target="tips_label" x=&tf.x1 y=&tf.y3 exp="tf.tips=tf.hint3"]
;[image name="day,zaizen_event_9_3,day_z_9_3" storage="../image/day9_3.png"  layer=26 x=&tf.x1 y=&tf.y3 visible=true wait=true]
[wait time=10]
[iscript]
$(".zaizen_event_9_3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,zaizen_event_9_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_zaizen_10_1 != 1"]
[button fix=true name="day,zaizen_event_10_1,day_z_10_1,tips_btn" graphic="day10_1.png" target="tips_label" x=&tf.x1 y=&tf.y4 exp="tf.tips=tf.hint4"]
;[image name="day,zaizen_event_10_1,day_z_10_1" storage="../image/day10_1.png"  layer=26 x=&tf.x1 y=&tf.y4 visible=true wait=true]
[wait time=10]
[iscript]
$(".zaizen_event_10_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,zaizen_event_10_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y4 visible=true]
[endif]

[if exp="sf.event_zaizen_10_3 != 1"]
[button fix=true name="day,zaizen_event_10_3,day_z_10_,tips_btn" graphic="day10_3.png" target="tips_label" x=&tf.x1 y=&tf.y5 exp="tf.tips=tf.hint5"]
;[image name="day,zaizen_event_10_3,day_z_10_3" storage="../image/day10_3.png"  layer=26 x=&tf.x1 y=&tf.y5 visible=true wait=true]
[wait time=10]
[iscript]
$(".zaizen_event_10_3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,zaizen_event_10_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y5 visible=true]
[endif]

[if exp="sf.event_zaizen_11_1 != 1"]
[button fix=true name="day,zaizen_event_11_1,day_z_11_1,tips_btn" graphic="day11_1.png" target="tips_label" x=&tf.x1 y=&tf.y6 exp="tf.tips=tf.hint6"]
;[image name="day,zaizen_event_11_1,day_z_11_1" storage="../image/day11_1.png"  layer=26 x=&tf.x1 y=&tf.y6 visible=true wait=true]
[wait time=10]
[iscript]
$(".zaizen_event_11_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,zaizen_event_11_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y6 visible=true]
[endif]

[if exp="sf.event_zaizen_11_3 != 1"]
[button fix=true name="day,zaizen_event_11_3,day_z_11_3,tips_btn" graphic="day11_3.png" target="tips_label" x=&tf.x1 y=&tf.y7 exp="tf.tips=tf.hint7"]
;[image name="day,zaizen_event_11_3,day_z_11_3" storage="../image/day11_3.png"  layer=26 x=&tf.x1 y=&tf.y7 visible=true wait=true]
[wait time=10]
[iscript]
$(".zaizen_event_11_3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,zaizen_event_11_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y7 visible=true]
[endif]

[if exp="sf.event_zaizen_11_4 != 1"]
[button fix=true name="day,zaizen_event_11_4,day_z_11_4,tips_btn" graphic="day11_4.png" target="tips_label" x=&tf.x1 y=&tf.y8 exp="tf.tips=tf.hint8"]
;[image name="day,zaizen_event_11_4,day_z_11_4" storage="../image/day11_4.png"  layer=26 x=&tf.x1 y=&tf.y8 visible=true wait=true]
[wait time=10]
[iscript]
$(".zaizen_event_11_4").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,zaizen_event_11_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y8 visible=true]
[endif]

[if exp="sf.event_zaizen_12_2 != 1"]
[button fix=true name="day,zaizen_event_12_2,day_z_12_2,tips_btn" graphic="day12_2.png" target="tips_label" x=&tf.x2 y=&tf.y1 exp="tf.tips=tf.hint9"]
;[image name="day,zaizen_event_12_2,day_z_12_2" storage="../image/day12_2.png"  layer=26 x=&tf.x2 y=&tf.y1 visible=true wait=true]
[wait time=10]
[iscript]
$(".zaizen_event_12_2").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,zaizen_event_12_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+150" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_zaizen_12_4 != 1"]
[button fix=true name="day,zaizen_event_12_4,day_z_12_4,tips_btn" graphic="day12_4.png" target="tips_label" x=&tf.x2 y=&tf.y2 exp="tf.tips=tf.hint10"]
;[image name="day,zaizen_event_12_4,day_z_12_4" storage="../image/day12_4.png"  layer=26 x=&tf.x2 y=&tf.y2 visible=true wait=true]
[wait time=10]
[iscript]
$(".zaizen_event_12_4").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,zaizen_event_12_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+150" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_zaizen_1_3 != 1"]
[button fix=true name="day,zaizen_event_1_3,day_z_1_3,tips_btn" graphic="day1_3.png" target="tips_label" x=&tf.x2 y=&tf.y3 exp="tf.tips=tf.hint11"]
;[image name="day,zaizen_event_1_3,day_z_1_3" storage="../image/day1_3.png"  layer=26 x=&tf.x2 y=&tf.y3 visible=true wait=true]
[wait time=10]
[iscript]
$(".zaizen_event_1_3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,zaizen_event_1_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+150" y=&tf.y3 visible=true]
[endif]
;=============================================散策未判定======================================================
[if exp="sf.event_zaizen_sansaku_2_1 != 1"]
[button fix=true name="day,zaizen_sansaku_2_1,day_z_2_1,tips_btn" graphic="day2_1.png" target="tips_label" x=&tf.x3 y=&tf.y1 exp="tf.tips=tf.hint12"]
;[image name="day,zaizen_sansaku_2_1,day_z_2_1" storage="../image/day2_1.png"  layer=26 x=&tf.x3 y=&tf.y1 visible=true wait=true]
[wait time=10]
[iscript]
$(".zaizen_sansaku_2_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,zaizen_sansaku_2_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+150" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_zaizen_sansaku_bazar != 1"]
[button fix=true name="day,zaizen_sansaku_bazar,day_z_3_3,tips_btn" graphic="day2_1.png" target="tips_label" x=&tf.x3 y=&tf.y2 exp="tf.tips=tf.hint13"]
;[image name="day,zaizen_sansaku_bazar,day_z_3_3" storage="../image/day2_1.png"  layer=26 x=&tf.x3 y=&tf.y2 visible=true wait=true]
[wait time=10]
[iscript]
$(".zaizen_sansaku_bazar").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,zaizen_sansaku_bazar" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+150" y=&tf.y2 visible=true]
[endif]
;==================================================================================-
[iscript]
$(".loding_pic").remove();
$(".loding_pic1").remove();
$(".loding_pic2").remove();
$(".layer_free").css("opacity",1);
[endscript]
*stop
[s]
;==================================================================================-
*zaizen_sinario
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

;シナリオジャンプ
[iscript]
tf.jp_sinario = 'zaizen/' + tf.jp_sinario + '.ks';
f.event_replay = 'zaizen';
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
@jump storage="zaizen/zaizen_event_clearlist.ks" target=*start
[s]

*back_okeiko
[eval exp="f.okeiko_gamen = true"]
[eval exp="tf.jp_sinario='none'"]
;f.event_replay = 'sijyou';
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
