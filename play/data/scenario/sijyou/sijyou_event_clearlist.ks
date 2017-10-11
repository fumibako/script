;====================================================================================================
;説明
;下部、判定まとめにボタンが表示されます。　先にimage画像が表示されますが見た目上の判定を行っています。
;ボタンにはexpでシナリオ名を指定してあります。 【tf.jp_sinario  初期化'none'】 
;このシナリオの戻り値は　f.event_replay = 'sijyou';　です。
;====================================================================================================
*start
@clearstack
@clearfix
[cm]
[if exp="f.okeiko_gamen != true"]
[iscript]
$(".test").empty();
$(".1_fore").empty();
[endscript]
[endif]
[iscript]
$(".day").empty();
$(".chara_name_area").empty();
[endscript]
;リプレイから帰ってきてokeikoフラグを戻す処理（仮）自動で戻るなら無しでいいです
[if exp="f.clearlist_out_storage == 'info_sijyou.ks'"]
[eval exp="f.okeiko_gamen = true"]
[endif]
;====================================================================================================
*test
;重要フラグを監視
[iscript]
if(tf.test_sijyou == true && tf.test_gamen == true && tf.kansi_kaisu == undefined){
//四条ルートf.sijyou_au
  tf_sijyou_flag_kannsi1=f.sijyou_au;
//お見合い(1後,0未)f.sijyou_omiai
  tf_sijyou_flag_kannsi2=f.sijyou_omiai;
//イベント6(1後,0未)f.sijyou_event6
  tf_sijyou_flag_kannsi3=f.sijyou_event6;
//祖母を見たf.sijyou_sobo
  tf_sijyou_flag_kannsi4=f.sijyou_sobo;
//華衣についてf.event_sijyou_kai_jijyou
  tf_sijyou_flag_kannsi5=f.event_sijyou_kai_jijyou;
//散策4を見たf.event_sijyou_4
  tf_sijyou_flag_kannsi6=f.event_sijyou_4;
//四条兄にあったf.sijyou_ani
  tf_sijyou_flag_kannsi7=f.sijyou_ani;
//監視回数1
  tf.kansi_kaisu = 1;
}
//監視フラグが変わった瞬間アラート
if(tf.test_sijyou == true && tf.test_gamen == true && tf.kansi_kaisu != undefined){
 if(tf_sijyou_flag_kannsi1 !=tf_sijyou_flag_kannsi1){alert("監視フラグ1が変更されました");}
 if(tf_sijyou_flag_kannsi2 !=tf_sijyou_flag_kannsi2){alert("監視フラグ2が変更されました");}
 if(tf_sijyou_flag_kannsi3 !=tf_sijyou_flag_kannsi3){alert("監視フラグ3が変更されました");}
 if(tf_sijyou_flag_kannsi4 !=tf_sijyou_flag_kannsi4){alert("監視フラグ4が変更されました");}
 if(tf_sijyou_flag_kannsi5 !=tf_sijyou_flag_kannsi5){alert("監視フラグ5が変更されました");}
 if(tf_sijyou_flag_kannsi6 !=tf_sijyou_flag_kannsi6){alert("監視フラグ6が変更されました");}
 if(tf_sijyou_flag_kannsi7 !=tf_sijyou_flag_kannsi7){alert("監視フラグ7が変更されました");}
}
[endscript]
;=============================================
;テスト表示
[if exp="tf.test_sijyou == true"]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=600 y=600 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=800 y=600 color=white]
[glink target="no_test" text="シナリオテストを無効にする" graphic="select_waku_x500.png" exp="tf.test_sijyou=false,tf.test_gamen=false" size=10 width="150" x=400 y=600 color=white]
*no_test
[endif]
;=============================================
;変数初期設定→scenario/eventpercent_sijyou.ksとして切り出しました。一箇所で調整できるようにまとめます
[call storage="eventpercent_sijyou.ks" target=*start]
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
;================================背景表示;================================
;「情報(お稽古画面表示の上にlayer26で幕として背景を被せた状態)」から見る際の対策として、同様に背景(layer26以上)を幕として利用する形に変更させていただきます
[image layer=26 x=0 y=0 storage="bg/bg_clearlist.jpg"]
[wait time=10]
;[chara_mod name="bg" storage="bg/bg_fumibako.jpg"]
;[bg storage="../fgimage/bg/bg_fumibako.jpg" time=0]
;================================移動ボタン=======================================================
[locate x=880 y=24]
[button name="back_clearlist" graphic="back.png" height=50 width=50 storage=&f.clearlist_out_storage target="*start" exp="f.event_replay='none'"]
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
;名前表示
[image name="c_name1" storage="../image/name_sijyou.png" layer=26 x=250 y=35 visible=true]
;達成数
;[ptext text="&tf.allEvent_Number_of_times" layer=26 size=21 x=650 y=40 color=snow]
;[ptext text="/25 =" layer=26 size=21 x=680 y=40 color=snow]
;達成率
[ptext name="pasent" text="&tf.event_pasent" layer=26 size=30 x=600 y=35 color=snow overwrite=true]
[ptext name="pasent" text="%" layer=26 size=30 x=650 y=35 color=snow overwrite=true]
;イベント数　テスト用
;[ptext text="イベント数（散策除く）" layer=26 size=21 x=&tf.x2 y=&tf.y6 color=snow]
;[ptext text="&tf.event_Number_of_times" layer=26 size=21 x="&tf.x2+100" y=&tf.y6+20 color=snow]
;[ptext text="/13" layer=26 size=21 x="&tf.x2+150" y=&tf.y6+20 color=snow]
;[ptext text="イベント数（散策のみ）" layer=26 size=21 x=&tf.x2 y=&tf.y6+50 color=snow]
;[ptext text="&tf.eventSansaku_Number_of_times" layer=26 size=21 x="&tf.x2+100" y=&tf.y6+80 color=snow]
;[ptext text="/12" layer=26 size=21 x="&tf.x2+150" y=&tf.y6+80 color=snow]

;四条6_1
[image name="day,day6_1,sijyou_6_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y1 visible=true]
[image name="day,day6_1,sijyou_6_1" storage="../image/day6_1.png" layer=26 x=&tf.x1 y=&tf.y1 visible=true]
;四条9_1
[image name="day,day9_1,sijyou_9_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y2 visible=true]
[image name="day,day9_1,sijyou_9_1" storage="../image/day9_1.png" layer=26 x=&tf.x1 y=&tf.y2 visible=true]
;四条9_2
[image name="day,day9_2,sijyou_9_2" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y3 visible=true]
[image name="day,day9_2,sijyou_9_2" storage="../image/day9_2.png" layer=26 x=&tf.x1 y=&tf.y3 visible=true]
;四条9_3
[image name="day,day9_3,sijyou_9_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y4 visible=true]
[image name="day,day9_3,sijyou_9_3" storage="../image/day9_3.png" layer=26 x=&tf.x1 y=&tf.y4 visible=true]
;四条9_4
[image name="day,day9_4,sijyou_9_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y5 visible=true]
[image name="day,day9_4,sijyou_9_4" storage="../image/day9_4.png" layer=26 x=&tf.x1 y=&tf.y5 visible=true]
;四条10_1
[image name="day,day10_1,sijyou_10_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y6 visible=true]
[image name="day,day10_1,sijyou_10_1" storage="../image/day10_1.png" layer=26 x=&tf.x1 y=&tf.y6 visible=true]
;四条10_3"
[image name="day,day10_3,sijyou_10_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y7 visible=true]
[image name="day,day10_3,sijyou_10_3" storage="../image/day10_3.png" layer=26 x=&tf.x1 y=&tf.y7 visible=true]
;四条11_1"
[image name="day,day11_1,sijyou_11_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y8 visible=true]
[image name="day,day11_1,sijyou_11_1" storage="../image/day11_1.png" layer=26 x=&tf.x1_2 y=&tf.y8 visible=true]
;四条1_1"
[image name="day,day1_1,sijyou_1_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y1 visible=true]
[image name="day,day1_1,sijyou_1_1" storage="../image/day1_1.png" layer=26 x=&tf.x2 y=&tf.y1 visible=true]
;四条1_3"
[image name="day,day1_3,sijyou_1_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y2 visible=true]
[image name="day,day1_3,sijyou_1_3" storage="../image/day1_3.png" layer=26 x=&tf.x2 y=&tf.y2 visible=true]
;四条1_4"
[image name="day,day1_4,sijyou_1_4" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y3 visible=true]
[image name="day,day1_4,sijyou_1_4" storage="../image/day1_4.png" layer=26 x=&tf.x2 y=&tf.y3 visible=true]
;四条2_1"
[image name="day,day2_1,sijyou_2_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y4 visible=true]
[image name="day,day2_1,sijyou_2_1" storage="../image/day2_1.png" layer=26 x=&tf.x2 y=&tf.y4 visible=true]
;四条2_2"
[image name="day,day2_2,sijyou_2_2" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y5 visible=true]
[image name="day,day2_2,sijyou_2_2" storage="../image/day2_2.png" layer=26 x=&tf.x2 y=&tf.y5 visible=true]

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
[eval exp="tf.jp_sinario='none'"]
[if exp="sf.event_sijyou_event_6_1 == 1"]
[iscript]
$(".day6_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_6_1" graphic="day6_1.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y1 exp="tf.jp_sinario='sijyou_6_1'"]
[image name="day,day6_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y1 visible=true]
[else]
[image name="day,day6_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_sijyou_9_1 == 1"]
[iscript]
$(".day9_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_9_1" graphic="day9_1.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y2 exp="tf.jp_sinario='sijyou_9_1'"]
[image name="day,day9_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y2 visible=true]
[else]
[image name="day,day9_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_sijyou_9_2 == 1"]
[iscript]
$(".day9_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_9_2" graphic="day9_2.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y3 exp="tf.jp_sinario='sijyou_9_2'"]
[image name="day,day9_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y3 visible=true]
[else]
[image name="day,day9_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_sijyou_9_3 == 1"]
[iscript]
$(".day9_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_9_3" graphic="day9_3.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y4 exp="tf.jp_sinario='sijyou_9_3'"]
[image name="day,day9_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y4 visible=true]
[else]
[image name="day,day9_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y4 visible=true]
[endif]

[if exp="sf.event_sijyou_9_4 == 1"]
[iscript]
$(".day9_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_9_4" graphic="day9_4.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y5 exp="tf.jp_sinario='sijyou_9_4'"]
[image name="day,day9_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y5 visible=true]
[else]
[image name="day,day9_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y5 visible=true]
[endif]

[if exp="sf.event_sijyou_10_1 == 1"]
[iscript]
$(".day10_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_10_1" graphic="day10_1.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y6 exp="tf.jp_sinario='sijyou_10_1'"]
[image name="day,day10_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y6 visible=true]
[else]
[image name="day,day10_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y6 visible=true]
[endif]

[if exp="sf.event_sijyou_10_3 == 1"]
[iscript]
$(".day10_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_10_3" graphic="day10_3.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y7 exp="tf.jp_sinario='sijyou_10_3'"]
[image name="day,day10_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y7 visible=true]
[else]
[image name="day,day10_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y7 visible=true]
[endif]

[if exp="sf.event_sijyou_11_1 == 1"]
[iscript]
$(".day11_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_11_1" graphic="day11_1.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y8 exp="tf.jp_sinario='sijyou_11_1'"]
[image name="day,day11_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y8 visible=true]
[else]
[image name="day,day11_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y8 visible=true]
[endif]

[if exp="sf.event_sijyou_1_1 == 1"]
[iscript]
$(".day1_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_1_1" graphic="day1_1.png" target="sijyou_sinario" x=&tf.x2 y=&tf.y1 exp="tf.jp_sinario='sijyou_1_1'"]
[image name="day,day1_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+155" y=&tf.y1 visible=true]
[else]
[image name="day,day1_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+155" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_sijyou_1_3 == 1"]
[iscript]
$(".day1_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_1_3" graphic="day1_3.png" target="sijyou_sinario" x=&tf.x2 y=&tf.y2 exp="tf.jp_sinario='sijyou_1_3'"]
[image name="day,day1_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+155" y=&tf.y2 visible=true]
[else]
[image name="day,day1_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+155" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_sijyou_1_4 == 1"]
[iscript]
$(".day1_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_1_4" graphic="day1_4.png" target="sijyou_sinario" x=&tf.x2 y=&tf.y3 exp="tf.jp_sinario='sijyou_1_4'"]
[image name="day,day1_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+155" y=&tf.y3 visible=true]
[else]
[image name="day,day1_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+155" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_sijyou_2_1 == 1"]
[iscript]
$(".day2_1").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_2_1" graphic="day2_1.png" target="sijyou_sinario" x=&tf.x2 y=&tf.y4 exp="tf.jp_sinario='sijyou_2_1'"]
[image name="day,day2_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+155" y=&tf.y4 visible=true]
[else]
[image name="day,day2_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+155" y=&tf.y4 visible=true]
[endif]

[if exp="sf.event_sijyou_2_2_bazar == 1"]
[iscript]
$(".day2_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_2_2" graphic="day2_2.png" target="sijyou_sinario" x=&tf.x2 y=&tf.y5 exp="tf.jp_sinario='sijyou_2_2_bazar_1'"]
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
[button name="sijyou_sansaku" graphic="day9_1.png" target="sijyou_sinario" x=&tf.x3 y=&tf.y1 exp="tf.jp_sinario='sijyou_sansaku'"]
[image name="day,sansaku_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y1 visible=true]
[else]
[image name="day,sansaku_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_2 == 1"]
[iscript]
$(".sansaku_2").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_sansaku2" graphic="day9_1.png" target="sijyou_sinario" x=&tf.x3 y=&tf.y2 exp="tf.jp_sinario='sijyou_sansaku2'"]
[image name="day,sansaku_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y2 visible=true]
[else]
[image name="day,sansaku_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_3 == 1"]
[iscript]
$(".sansaku_3").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_sansaku3" graphic="day9_1.png" target="sijyou_sinario" x=&tf.x3 y=&tf.y3 exp="tf.jp_sinario='sijyou_sansaku3'"]
[image name="day,sansaku_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y3 visible=true]
[else]
[image name="day,sansaku_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_4 == 1"]
[iscript]
$(".sansaku_4").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_sansaku4" graphic="day9_1.png" target="sijyou_sinario" x=&tf.x3 y=&tf.y4 exp="tf.jp_sinario='sijyou_sansaku4'"]
[image name="day,sansaku_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y4 visible=true]
[else]
[image name="day,sansaku_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y4 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_5 == 1"]
[iscript]
$(".sansaku_5").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_sansaku5" graphic="day9_1.png" target="sijyou_sinario" x=&tf.x3 y=&tf.y5 exp="tf.jp_sinario='sijyou_sansaku5'"]
[image name="day,sansaku_5" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y5 visible=true]
[else]
[image name="day,sansaku_5" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y5 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_6 == 1"]
[iscript]
$(".sansaku_6").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_sansaku6" graphic="day9_1.png" target="sijyou_sinario" x=&tf.x3 y=&tf.y6 exp="tf.jp_sinario='sijyou_sansaku6'"]
[image name="day,sansaku_6" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y6 visible=true]
[else]
[image name="day,sansaku_6" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y6 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_7 == 1"]
[iscript]
$(".sansaku_7").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_sansaku7" graphic="day9_1.png" target="sijyou_sinario" x=&tf.x3 y=&tf.y7 exp="tf.jp_sinario='sijyou_sansaku7'"]
[image name="day,sansaku_7" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y7 visible=true]
[else]
[image name="day,sansaku_7" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y7 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_9 == 1"]
[iscript]
$(".sansaku_9").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_sansaku9" graphic="day9_1.png" target="sijyou_sinario" x=&tf.x3 y=&tf.y8 exp="tf.jp_sinario='sijyou_sansaku9'"]
[image name="day,sansaku_9" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3+140" y=&tf.y8 visible=true]
[else]
[image name="day,sansaku_9" storage="../image/day_check_mi.png" layer=26 x="&tf.x3+140" y=&tf.y8 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_10 == 1"]
[iscript]
$(".sansaku_10").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_sansaku10" graphic="day9_1.png" target="sijyou_sinario" x=&tf.x4 y=&tf.y1 exp="tf.jp_sinario='sijyou_sansaku10'"]
[image name="day,sansaku_10" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4+130" y=&tf.y1 visible=true]
[else]
[image name="day,sansaku_10" storage="../image/day_check_mi.png" layer=26 x="&tf.x4+130" y=&tf.y1 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_11 == 1"]
[iscript]
$(".sansaku_11").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_sansaku11" graphic="day9_1.png" target="sijyou_sinario" x=&tf.x4 y=&tf.y2 exp="tf.jp_sinario='sijyou_sansaku11'"]
[image name="day,sansaku_11" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4+130" y=&tf.y2 visible=true]
[else]
[image name="day,sansaku_11" storage="../image/day_check_mi.png" layer=26 x="&tf.x4+130" y=&tf.y2 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_12 == 1"]
[iscript]
$(".sansaku_12").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_sansaku12" graphic="day9_1.png" target="sijyou_sinario" x=&tf.x4 y=&tf.y3 exp="tf.jp_sinario='sijyou_sansaku12'"]
[image name="day,sansaku_12" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4+130" y=&tf.y3 visible=true]
[else]
[image name="day,sansaku_12" storage="../image/day_check_mi.png" layer=26 x="&tf.x4+130" y=&tf.y3 visible=true]
[endif]

[if exp="sf.event_sijyou_sansaku_13 == 1"]
[iscript]
$(".sansaku_13").css({'filter': 'brightness(100%)','-webkit-filter': 'brightness(100%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(100%)'});
[endscript]
[button name="sijyou_sansaku13" graphic="day9_1.png" target="sijyou_sinario" x=&tf.x4 y=&tf.y4 exp="tf.jp_sinario='sijyou_sansaku13'"]
[image name="day,sansaku_13" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4+130" y=&tf.y4 visible=true]
[else]
[image name="day,sansaku_13" storage="../image/day_check_mi.png" layer=26 x="&tf.x4+130" y=&tf.y4 visible=true]
[endif]
[s]

*sijyou_sinario
[cm]
;tf.jp_sinarioのシナリオにジャンプ　アラートはテストのみ
[if exp="tf.test_sijyou == true"]
[iscript]
alert(tf.jp_sinario);
[endscript]
[endif]

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

;共通
[iscript]
tf.jp_sinario = 'sijyou/' + tf.jp_sinario + '.ks';
f.event_replay = 'sijyou';
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
@jump storage="sijyou/sijyou_event_clearlist.ks" target=*start
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
[eval exp="tf.jp_sinario='none'"]
;f.event_replay = 'sijyou';
[eval exp="f.event_replay = 'none'"]
[freeimage layer = 26]
@jump storage="test.ks"
[s]

*title
[cm]
[eval exp="tf.jp_sinario='none'"]
[eval exp="f.event_replay = 'none'"]
[freeimage layer = 26]
;------タイトルへ戻る
@jump storage="title.ks"
[s]
