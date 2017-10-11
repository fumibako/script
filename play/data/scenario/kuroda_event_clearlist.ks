;====================================================================================================
;説明
;下部、判定まとめにボタンが表示されます。　先にimage画像が表示されますが見た目上の判定を行っています。
;ボタンにはexpでシナリオ名を指定してあります。 【tf.jp_sinario  初期化'none'】 
;このシナリオの戻り値は　f.event_replay = 'kuroda';　です。
;====================================================================================================
*start
;画面初期化
@clearstack
@clearfix
[cm]
[iscript]
$(".pasent").remove();
$(".pasent1").remove();
$(".chara_name_area").empty();
[endscript]
;リプレイから帰ってきてokeikoフラグを戻す処理
;[if exp="f.clearlist_out_storage == 'info_kuroda.ks'"]
;[eval exp="f.okeiko_gamen = true"]
;[endif]
;====================================================================================================
*test
[if exp="f.okeiko_gamen != true"]
[iscript]
$(".1_fore").empty();
[endscript]
[endif]
[if exp="tf.test_kuroda == true"]
[iscript]
$(".test").remove();
[endscript]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=600 y=600 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=800 y=600 color=white]
[glink target="no_test" text="シナリオテストを無効にする" graphic="select_waku_x500.png" exp="tf.test_kuroda=false,tf.test_gamen=false" size=10 width="150" x=400 y=600 color=white]
*no_test
[endif]
;=====================================================================================================
;エラー回避変数初期設定→scenario/eventpercent_kuroda.ksとして切り出しました。一箇所で調整できるようにまとめます
[call storage="eventpercent_kuroda.ks" target=*start]
;====================================位置指定===========================================
*set_position
;左位置
[eval exp="tf.x0 = 20"]
[eval exp="tf.x1 = 50"]
;二桁↓左位置
[eval exp="tf.x1_2 = 50"]
;左位置2
[eval exp="tf.x0_1 = 250"]
[eval exp="tf.x2 = 290"]
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
;================================背景表示;================================
;「情報(お稽古画面表示の上にlayer26で幕として背景を被せた状態)」から見る際の対策として、同様に背景(layer26以上)を幕として利用する形に変更させていただきます
[image layer=26 x=0 y=0 storage="bg/bg_clearlist.jpg"]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_clearlist.jpg"]
;[bg storage="../fgimage/bg/bg_clearlist" time=0]
;================================移動ボタン=======================================================
[locate x=880 y=24]
[button name="back_clearlist" graphic="back.png" height=50 width=50 storage=&f.clearlist_out_storage exp="f.event_replay='none'" target="*start"]
[wait time=10]
[button name="c_name1" graphic="name_kuroda.png" y=550 x=100 storage="kuroda_event_clearlist.ks"]
[button name="c_name1" graphic="name_sijyou.png" y=550 x=250 storage="sijyou/sijyou_event_clearlist.ks"]
[button name="c_name1" graphic="name_zaizen.png" y=550 x=400 storage="zaizen/zaizen_event_clearlist.ks"]
[if exp="sf.event_katuragi_event_1 == 1"]
[button name="c_name1" graphic="name_katuragi.png" y=550 x=550 storage="katuraginomiya/katuraginomiya_event_clearlist.ks"]
[endif]
[if exp="sf.event_hujieda_4_4 == 1 && sf.event_hujieda_8_4 == 1"]
[button name="c_name1" graphic="name_hujieda.png" y=550 x=700 storage="hujieda/hujieda_event_clearlist.ks"]
[elsif exp="sf.event_hujieda_4_4 == 1"]
[button name="c_name1" graphic="name_hujieda0.png" y=550 x=700 storage="hujieda/hujieda_event_clearlist.ks"]
[endif]
;=======================================================================================
*check_event
;「情報(お稽古画面表示の上にlayer26で幕として背景を被せた状態)」から見る際の対策として、同様に背景(layer26以上)を幕として利用する形に変更させていただきます
[image layer=26 x=0 y=0 storage="bg/bg_clearlist.jpg"]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_fumibako.jpg"]
;[bg storage="../fgimage/bg/bg_fumibako.jpg" time=0]
;名前表示
[image name="c_name1" storage="../image/name_kuroda.png" layer=26 x=250 y=35 visible=true]
;達成数 コメント化
;[ptext text="&tf.allEvent_Number_of_times" layer=26 size=21 x=650 y=40 color=snow]
;[ptext text="/18　=" layer=26 size=21 x=680 y=40 color=snow]
;達成率
[ptext name="pasent" text="&tf.event_pasent" layer=26 size=30 x=600 y=35 color=snow]
[ptext name="pasent1" text="%" layer=26 size=30 x=650 y=35 color=snow]
;=====================================================================================================
;クリアリストの表示
;左位置 tf.x0 tf.x1
;6月1週 sf.event_kuroda_event_6_1
[image name="day,kuroda_6_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y1 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_6_1" storage="../image/day6_1.png"  layer=26 x=&tf.x1 y=&tf.y1 visible=true wait=true]
[wait time=10]
;9月1週 sf.event_kuroda_9_1
[image name="day,kuroda_9_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y2 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_9_1" storage="../image/day9_1.png"  layer=26 x=&tf.x1 y=&tf.y2 visible=true wait=true]
[wait time=10]
;9月3週 sf.event_kuroda_9_3
[image name="day,kuroda_9_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y3 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_9_3" storage="../image/day9_3.png"  layer=26 x=&tf.x1 y=&tf.y3 visible=true wait=true]
[wait time=10]
;9月4週 sf.event_kuroda_9_4
[image name="day,kuroda_9_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y4 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_9_4" storage="../image/day9_4.png"  layer=26 x=&tf.x1 y=&tf.y4 visible=true wait=true]
[wait time=10]
;10月3週 sf.event_kuroda_10_3
[image name="day,kuroda_10_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y5 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_10_3" storage="../image/day10_3.png"  layer=26 x=&tf.x1 y=&tf.y5 visible=true wait=true]
[wait time=10]
;10月4週 sf.event_kuroda_10_4
[image name="day,kuroda_10_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y6 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_10_4" storage="../image/day10_4.png"  layer=26 x=&tf.x1 y=&tf.y6 visible=true wait=true]
[wait time=10]
;11月1週 sf.event_kuroda_11_1
[image name="day,kuroda_11_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y7 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_11_1" storage="../image/day11_1.png"  layer=26 x=&tf.x1 y=&tf.y7 visible=true wait=true]
[wait time=10]
;11月2週 sf.event_kuroda_11_2
[image name="day,kuroda_11_2" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y8 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_11_2" storage="../image/day11_2.png"  layer=26 x=&tf.x1 y=&tf.y8 visible=true wait=true]
[wait time=10]
;左位置2 tf.x0_1 tf.x2;二桁 tf.x2_2
;11月3週 sf.event_kuroda_11_3 
[image name="day,kuroda_11_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y1 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_11_3" storage="../image/day11_3.png"  layer=26 x=&tf.x2 y=&tf.y1 visible=true wait=true]
[wait time=10]
;11月4週 sf.event_kuroda_11_4
[image name="day,kuroda_11_4" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y2 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_11_4" storage="../image/day11_4.png"  layer=26 x=&tf.x2 y=&tf.y2 visible=true wait=true]
[wait time=10]
;12月2週 sf.event_kuroda_12_2
[image name="day,kuroda_12_2" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y3 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_12_2" storage="../image/day12_2.png"  layer=26 x=&tf.x2 y=&tf.y3 visible=true wait=true]
[wait time=10]
;12月3週 sf.event_kuroda_12_3
[image name="day,kuroda_12_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y4 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_12_3" storage="../image/day12_3.png"  layer=26 x=&tf.x2 y=&tf.y4 visible=true wait=true]
[wait time=10]
;1月1週 sf.event_kuroda_1_1
[image name="day,kuroda_1_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y5 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_1_1" storage="../image/day1_1.png"  layer=26 x=&tf.x2 y=&tf.y5 visible=true wait=true]
[wait time=10]
;1月4週 sf.event_kuroda_1_4
[image name="day,kuroda_1_4" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y6 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_1_4" storage="../image/day1_4.png"  layer=26 x=&tf.x2 y=&tf.y6 visible=true wait=true]
[wait time=10]
;2月2週 sf.event_kuroda_2_2
[image name="day,kuroda_2_2" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y7 visible=true wait=true]
[wait time=10]
[image name="day,kuroda_2_2" storage="../image/day2_2.png"  layer=26 x=&tf.x2 y=&tf.y7 visible=true wait=true]
[wait time=10]
;====================================================================================================
*common
;一度、全ての日付の画像を暗めに表示します。プリロード幕つける
[iscript]
$(".day").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
;====================================================================================================
;判定処理をまとめます
[eval exp="tf.jp_sinario='none'"]
[if exp="sf.event_kuroda_event_6_1 == 1"]
[iscript]
$(".kuroda_6_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="kuroda_6_1" graphic="day6_1.png" target="kuroda_sinario" x=&tf.x1 y=&tf.y1 exp="tf.jp_sinario='kuroda_6_2'"]
[image name="day,kuroda_6_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y1 visible=true]
[else]
[image name="day,kuroda_6_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_kuroda_9_1 == 1"]
[iscript]
$(".kuroda_9_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="kuroda_9_1" graphic="day9_1.png" target="kuroda_sinario" x=&tf.x1 y=&tf.y2 exp="tf.jp_sinario='kuroda_9_1'"]
[image name="day,kuroda_9_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y2 visible=true]
[else]
[image name="day,kuroda_9_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_kuroda_9_3 == 1"]
[iscript]
$(".kuroda_9_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="kuroda_9_3" graphic="day9_3.png" target="kuroda_sinario" x=&tf.x1 y=&tf.y3 exp="tf.jp_sinario='kuroda_9_3'"]
[image name="day,kuroda_9_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y3 visible=true]
[else]
[image name="day,kuroda_9_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_kuroda_9_4 == 1"]
[iscript]
$(".kuroda_9_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="kuroda_9_4" graphic="day9_4.png" target="kuroda_sinario" x=&tf.x1 y=&tf.y4 exp="tf.jp_sinario='kuroda_9_4'"]
[image name="day,kuroda_9_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y4 visible=true]
[else]
[image name="day,kuroda_9_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y4 visible=true]
[endif]

[if exp="sf.event_kuroda_10_3 == 1"]
[iscript]
$(".kuroda_10_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="kuroda_10_3" graphic="day10_3.png" target="kuroda_sinario" x=&tf.x1 y=&tf.y5 exp="tf.jp_sinario='kuroda_10_3'"]
[image name="day,kuroda_10_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y5 visible=true]
[else]
[image name="day,kuroda_10_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y5 visible=true]
[endif]

[if exp="sf.event_kuroda_10_4 == 1"]
[iscript]
$(".kuroda_10_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="kuroda_10_4" graphic="day10_4.png" target="kuroda_sinario" x=&tf.x1 y=&tf.y6 exp="tf.jp_sinario='kuroda_10_4'"]
[image name="day,kuroda_10_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y6 visible=true]
[else]
[image name="day,kuroda_10_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y6 visible=true]
[endif]

[if exp="sf.event_kuroda_11_1 == 1"]
[iscript]
$(".kuroda_11_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="kuroda_11_1" graphic="day11_1.png" target="kuroda_sinario" x=&tf.x1 y=&tf.y7 exp="tf.jp_sinario='kuroda_11_1'"]
[image name="day,kuroda_11_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y7 visible=true]
[else]
[image name="day,kuroda_11_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y7 visible=true]
[endif]

[if exp="sf.event_kuroda_11_2 == 1"]
[iscript]
$(".kuroda_11_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="kuroda_11_2" graphic="day11_2.png" target="kuroda_sinario" x=&tf.x1 y=&tf.y8 exp="tf.jp_sinario='kuroda_11_2'"]
[image name="day,kuroda_11_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+130" y=&tf.y8 visible=true]
[else]
[image name="day,kuroda_11_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+130" y=&tf.y8 visible=true]
[endif]

[if exp="sf.event_kuroda_11_3 == 1"]
[iscript]
$(".kuroda_11_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="kuroda_11_3" graphic="day11_3.png" target="kuroda_sinario" x=&tf.x2 y=&tf.y1 exp="tf.jp_sinario='kuroda_11_3'"]
[image name="day,kuroda_11_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y1 visible=true]
[else]
[image name="day,kuroda_11_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y1 visible=true]
[endif]

[if exp=" sf.event_kuroda_11_4 == 1"]
[iscript]
$(".kuroda_11_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="kuroda_11_4" graphic="day11_4.png" target="kuroda_sinario" x=&tf.x2 y=&tf.y2 exp="tf.jp_sinario='kuroda_11_4'"]
[image name="day,kuroda_11_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y2 visible=true]
[else]
[image name="day,kuroda_11_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_kuroda_12_2 == 1"]
[iscript]
$(".kuroda_12_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="kuroda_12_2" graphic="day12_2.png" target="kuroda_sinario" x=&tf.x2 y=&tf.y3 exp="tf.jp_sinario='kuroda_12_2'"]
[image name="day,kuroda_12_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y3 visible=true]
[else]
[image name="day,kuroda_12_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_kuroda_12_3 == 1"]
[iscript]
$(".kuroda_12_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="kuroda_12_3" graphic="day12_3.png" target="kuroda_sinario" x=&tf.x2 y=&tf.y4 exp="tf.jp_sinario='kuroda_12_3'"]
[image name="day,kuroda_12_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y4 visible=true]
[else]
[image name="day,kuroda_12_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y4 visible=true]
[endif]

[if exp="sf.event_kuroda_1_1 == 1"]
[iscript]
$(".kuroda_1_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="kuroda_1_1" graphic="day1_1.png" target="kuroda_sinario" x=&tf.x2 y=&tf.y5 exp="tf.jp_sinario='kuroda_1_1'"]
[image name="day,kuroda_1_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y5 visible=true]
[else]
[image name="day,kuroda_1_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y5 visible=true]
[endif]

[if exp="sf.event_kuroda_1_4 == 1"]
[button name="kuroda_1_4" graphic="day1_4.png" target="kuroda_sinario" x=&tf.x2 y=&tf.y6 exp="tf.jp_sinario='kuroda_1_4'"]
[iscript]
$(".kuroda_1_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[image name="day,kuroda_1_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y6 visible=true]
[else]
[image name="day,kuroda_1_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y6 visible=true]
[endif]

[if exp="sf.event_kuroda_2_2 == 1"]
[iscript]
$(".kuroda_2_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="kuroda_2_2" graphic="day2_2.png" target="kuroda_sinario" x=&tf.x2 y=&tf.y7 exp="tf.jp_sinario='kuroda_2_2'"]
[image name="day,kuroda_2_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+130" y=&tf.y7 visible=true]
[else]
[image name="day,kuroda_2_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+130" y=&tf.y7 visible=true]
[endif]
[s]
;==================================================================================================================-
*kuroda_sinario
[cm]
;お稽古モード表示 リセットあるものだけ反応でエラー回避　最後にlayer26をリセット
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

;tf.jp_sinarioのシナリオにジャンプ　アラートはテストのみ
[iscript]
tf.jp_sinario = tf.jp_sinario + '.ks';
f.event_replay = 'kuroda';
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
@jump storage="kuroda_event_clearlist.ks" target=*start
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
