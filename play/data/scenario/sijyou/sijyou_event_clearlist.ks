;====================================================================================================
;説明
;下部、判定まとめにボタンが表示されます。　先にimage画像が表示されますが見た目上の判定を行っています。
;ボタンにはexpでシナリオ名を指定してあります。 【tf.jp_sinario  初期化'none'】 
;このシナリオの戻り値は　f.event_replay = 'sijyou';　です。
;ヒントの表示フラグは適当な場所でオフに等にしてください。
[eval exp="f.get_tips = 0"]
;====================================================================================================
*start
@clearstack
@clearfix
[cm]
[eval exp="tf.jp_sinario='none'"]
;tipsで書き換えするため別途必要
[iscript]
$(".pasent").remove();
$(".pasent1").remove();
$(".tips").remove();
$(".chara_name_area").empty();
[endscript]
;リプレイから帰ってきてokeikoフラグを戻す処理（仮）自動で戻るなら無しでいいです
[if exp="f.clearlist_out_storage == 'info_sijyou.ks'"]
[eval exp="f.okeiko_gamen = true"]
[endif]
[image name="loding_pic" layer=29 x=0 y=0 storage="bg/bg_clearlist.jpg" time=500 visible=true]
[image name="loding_pic2" layer=29 storage="../image/name_sijyou.png" x=250 y=35 visible=true]
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu2.gif" left=740 top=580 visible=true]
[wait time=50]
;===================================================================================================
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
[if exp="f.okeiko_gamen != true"]
[iscript]
$(".1_fore").empty();
[endscript]
[endif]
[if exp="tf.test_sijyou == true"]
[iscript]
$(".test").remove();
[endscript]
[glink target="back_test" text="テストメニューへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=600 y=530 color=white]
[glink target="title" text="タイトルへ戻る" graphic="select_waku_x500.png" size=10 width="150" x=800 y=530 color=white]
[glink target="no_test" text="シナリオテストを無効にする" graphic="select_waku_x500.png" exp="tf.test_sijyou=false,tf.test_gamen=false" size=10 width="150" x=400 y=530 color=white]
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
[eval exp="tf.x0_2 = 490"]
[eval exp="tf.x3 = 505"]
[eval exp="tf.x3_sumi = tf.x3 + 175"]
;左位置4
[eval exp="tf.x0_3 = 725"]
[eval exp="tf.x4 = 745"]
[eval exp="tf.x4_sumi = tf.x4 + 170"]
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
[image layer=26 x=0 y=0 storage="bg/bg_clearlist.jpg" visible=true]
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
;共通の処理なので実際の表示とtargetは別のシナリオを読み込み判定しその中で飛ぶ[eval exp="f.get_tips = 0"]
[if exp="f.get_tips == 1"]
;オンの時はオン表示に統一します◆jsYiJcqRkk(元：オンのときはオフを表示)
[button name="hint_off" graphic="button_hinto_on.png" height=100 width=100 y=540 x=850 target="get_tips_label" exp="f.get_tips=0"]
[wait time=10]
[else]
;オフの時はオフ表示(元：オフのときはオンを表示)
[button name="hint_on" graphic="button_hinto_off.png" height=100 width=100 y=540 x=850 target="get_tips_label" exp="f.get_tips=1"]
[wait time=10]
[endif]
;================================ヒントの表示　現在は試運転中=======================================================
[if exp="f.get_tips == 1"]
[ptext name="tips" text="現在、ヒントの表示はオンです" layer=26 size=22 x=100 y=550 color=snow]
[wait time=50]
;※waitしないと書き換えられません！
[else]
[ptext name="tips" text="現在、ヒントの表示はオフです" layer=26 size=22 x=100 y=550 color=snow]
[wait time=50]
[endif]
;=============================キャラクター指定移動ボタン==========================================================
;y=550
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
[image name="c_name1" storage="../image/name_sijyou.png" layer=26 x=250 y=35 visible=true]
;達成率
[ptext name="pasent" text="&tf.event_pasent" layer=26 size=30 x=600 y=34 color=snow]
[ptext name="pasent1" text="%" layer=26 size=25 x=650 y=35 color=snow]
;通常イベント
[ptext name="pasent" text="&tf.event_Number_of_times" layer=26 size=25 x=280 y=75 color="khaki"]
[ptext name="pasent1" text="/13" layer=26 size=20 x=310 y=80 color="khaki"]
;散策数
[ptext name="pasent" text="&tf.eventSansaku_Number_of_times" layer=26 size=25 x=755 y=75 color="khaki"]
[ptext name="pasent1" text="/12" layer=26 size=20 x=785 y=80 color="khaki"]
;====================================================================================================
;nameについて説明 日付画像sijyou_6_1  他画像day6_1  全体にわりふられたname…day
;====================================================================================================
*common
;====================================================================================================
;判定処理をまとめます
*hantei_efect
;◆四条6_1
[image name="day,day6_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y1 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_event_6_1 == 1"]
[button name="sijyou_6_1" graphic="day6_1.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y1 exp="tf.jp_sinario='sijyou_6_1'"]
[image name="day,day6_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y1 visible=true]
[endif]

;◆四条9_1
[image name="day,day9_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y2 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_9_1 == 1"]
[button name="sijyou_9_1" graphic="day9_1.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y2 exp="tf.jp_sinario='sijyou_9_1'"]
[image name="day,day9_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y2 visible=true]
[endif]

;◆四条9_2 
[image name="day,day9_2" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y3 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_9_2 == 1"]
[button name="sijyou_9_2" graphic="day9_2.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y3 exp="tf.jp_sinario='sijyou_9_2'"]
[image name="day,day9_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y3 visible=true]
[endif]

;◆四条9_3
[image name="day,day9_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y4 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_9_3 == 1"]
[button name="sijyou_9_3" graphic="day9_3.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y4 exp="tf.jp_sinario='sijyou_9_3'"]
[image name="day,day9_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y4 visible=true]
[endif]

;◆四条9_4
[image name="day,day9_4" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y5 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_9_4 == 1"]
[wait time=10]
[button name="sijyou_9_4" graphic="day9_4.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y5 exp="tf.jp_sinario='sijyou_9_4'"]
[image name="day,day9_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y5 visible=true]
[endif]

;◆四条10_1
[image name="day,day10_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y6 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_10_1 == 1"]
[button name="sijyou_10_1" graphic="day10_1.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y6 exp="tf.jp_sinario='sijyou_10_1'"]
[image name="day,day10_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y6 visible=true]
[endif]

;◆四条10_3"
[image name="day,day10_3" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y7 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_10_3 == 1"]
[button name="sijyou_10_3" graphic="day10_3.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y7 exp="tf.jp_sinario='sijyou_10_3'"]
[image name="day,day10_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y7 visible=true]
[endif]

;◆四条11_1"
[image name="day,day11_1" storage="../image/day_check.png" layer=26 x=&tf.x0 y=&tf.y8 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_11_1 == 1"]
[button name="sijyou_11_1" graphic="day11_1.png" target="sijyou_sinario" x=&tf.x1 y=&tf.y8 exp="tf.jp_sinario='sijyou_11_1'"]
[image name="day,day11_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x1+140" y=&tf.y8 visible=true]
[endif]

;◆四条1_1"
[image name="day,day1_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y1 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_1_1 == 1"]
[button name="sijyou_1_1" graphic="day1_1.png" target="sijyou_sinario" x=&tf.x2 y=&tf.y1 exp="tf.jp_sinario='sijyou_1_1'"]
[image name="day,day1_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+155" y=&tf.y1 visible=true]
[endif]

;◆四条1_3
[image name="day,day1_3" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y2 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_1_3 == 1"]
[button name="sijyou_1_3" graphic="day1_3.png" target="sijyou_sinario" x=&tf.x2 y=&tf.y2 exp="tf.jp_sinario='sijyou_1_3'"]
[image name="day,day1_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+155" y=&tf.y2 visible=true]
[endif]

;◆四条1_4"
[image name="day,day1_4" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y3 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_1_4 == 1"]
[button name="sijyou_1_4" graphic="day1_4.png" target="sijyou_sinario" x=&tf.x2 y=&tf.y3 exp="tf.jp_sinario='sijyou_1_4'"]
[image name="day,day1_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+155" y=&tf.y3 visible=true]
[endif]

;◆四条2_1
[image name="day,day2_1" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y4 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_2_1 == 1"]
[button name="sijyou_2_1" graphic="day2_1.png" target="sijyou_sinario" x=&tf.x2 y=&tf.y4 exp="tf.jp_sinario='sijyou_2_1'"]
[image name="day,day2_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+155" y=&tf.y4 visible=true]
[endif]

;◆四条2_2"
[image name="day,day2_2" storage="../image/day_check.png" layer=26 x=&tf.x0_1 y=&tf.y5 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_2_2_bazar == 1"]
[button name="sijyou_2_2" graphic="day2_2.png" target="sijyou_sinario" x=&tf.x2 y=&tf.y5 exp="tf.jp_sinario='sijyou_2_2_bazar_1'"]
[image name="day,day2_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x2+155" y=&tf.y5 visible=true]
[endif]
;====================================================================================================
;sijyou_sansaku.ks (9月1週~9月4週)(銀座デート前まで)に1度だけ発生
;sijyou_sansaku2.ks (9/2~4)華道展ｲﾍﾞﾝﾄﾌﾗｸﾞ1 四条綾花
;sijyou_sansaku3.ks(9/4~10/1)華道展ｲﾍﾞﾝﾄﾌﾗｸﾞ2
;sijyou_sansaku4.ks(11月3週→12～1月末)　事件解決後の華衣のイベント
;sijyou_sansaku5.ks(9月～９月末　銀座デート前 b）or(11事件解決後～12月 a)
;sijyou_sansaku6.ks(7~8月→8月(他攻略対象より好感度が高い)花火イベント)
;sijyou_sansaku7.ks(3月)香水
;8ない。（旧華衣おまけ）
;sijyou_sansaku9.ks(見合い前なら一回発生子供達　気力が微多めに回復)
;sijyou_sansaku10.ks(四条ルートのみ　四条の好感度が高い攻略のヒント)
;sijyou_sansaku11.ks(四条ルートのみ、(10月~2月)九月×　三月×　
;sijyou_sansaku12.ks(10月~2月)九月×　三月×　
;sijyou_sansaku13.ks(10月~2月)九月×　三月×
;====================================================================================================
;判定処理をまとめます 散策
;見合い前
;左位置3 tf.x0_2/tf.x3/tf.x3_sumi
;1◆sansaku9　(見合い前なら一回発生子供達　気力が微多めに回復)
[image name="day,sansaku_9" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y1 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_sansaku_9 == 1"]
[button name="btn,sijyou_sansaku9" graphic="day4_1_1.png" target="sijyou_sinario" x=&tf.x3 y=&tf.y1 exp="tf.jp_sinario='sijyou_sansaku9'"]
[image name="day,sansaku_9" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3_sumi" y=&tf.y1 visible=true]
[endif]

;8月
;2◆sansaku6(7~8月→8月(他攻略対象より好感度が高い)花火イベント)
[image name="day,sansaku_6" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y2 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_sansaku_6 == 1"]
[button name="btn,sijyou_sansaku6" graphic="day8_1.png" target="sijyou_sinario" x=&tf.x3 y=&tf.y2 exp="tf.jp_sinario='sijyou_sansaku6'"]
[image name="day,sansaku_6" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3_sumi" y=&tf.y2 visible=true]
[endif]

;左位置3 tf.x0_2/tf.x3/tf.x3_sumi
;3◆sansaku10　sijyou_sansaku10.ks(四条ルートのみ　四条の好感度が高い攻略のヒント)
[image name="day,sansaku_10" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y3 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_sansaku_10 == 1"]
[button name="btn,sijyou_sansaku10" graphic="day9_1_1.png" target="sijyou_sinario" x=&tf.x3 y=&tf.y3 exp="tf.jp_sinario='sijyou_sansaku10'"]
[image name="day,sansaku_10" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3_sumi" y=&tf.y3 visible=true]
[endif]

;4◆sansaku1　(9月1週~9月4週)(銀座デート前まで)に1度だけ発生
[image name="day,sansaku_1" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y4 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_sansaku == 1"]
[button name="btn,sijyou_sansaku" graphic="day9_1_2.png" target="sijyou_sinario" x=&tf.x3 y=&tf.y4 exp="tf.jp_sinario='sijyou_sansaku'"]
[image name="day,sansaku_1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3_sumi" y=&tf.y4 visible=true]
[endif]

;5◆sansaku5 sijyou_sansaku5.ks(9月～9月末　銀座デート前 b）or(11事件解決後～12月 a)
[image name="day,sansaku_5" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y5 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_sansaku_5 == 1"]
[button name="btn,sijyou_sansaku5" graphic="day9_1_3.png" target="sijyou_sinario" x=&tf.x3 y=&tf.y5 exp="tf.jp_sinario='sijyou_sansaku5'"]
[image name="day,sansaku_5" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3_sumi" y=&tf.y5 visible=true]
[endif]

;6◆sansaku2 sijyou_sansaku2.ks (9/2~4)華道展ｲﾍﾞﾝﾄﾌﾗｸﾞ1 四条綾花
[image name="day,sansaku_2" storage="../image/day_check.png" layer=26 x=&tf.x0_2 y=&tf.y6 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_sansaku_2 == 1"]
[button name="btn,sijyou_sansaku2" graphic="day9_2.png" target="sijyou_sinario" x=&tf.x3 y=&tf.y6 exp="tf.jp_sinario='sijyou_sansaku2'"]
[image name="day,sansaku_2" storage="../image/day_check_sumi.png" layer=26 x="&tf.x3_sumi" y=&tf.y6 visible=true]
[endif]

;折り返し地点
;左位置4 tf.x0_3 /tf.x4 /tf.x4_sumi
;7◆sansaku3 sijyou_sansaku3.ks(9/4~10/1)華道展ｲﾍﾞﾝﾄﾌﾗｸﾞ2
[image name="day,sansaku_3" storage="../image/day_check.png" layer=26 x=&tf.x0_3 y=&tf.y1 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_sansaku_3 == 1"]
[button name="btn,sijyou_sansaku3" graphic="day9_4.png" target="sijyou_sinario" x=&tf.x4 y=&tf.y1 exp="tf.jp_sinario='sijyou_sansaku3'"]
[image name="day,sansaku_3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4_sumi" y=&tf.y1 visible=true]
[endif]

;8◆sansaku11　　10/1_1
[image name="day,sansaku_11" storage="../image/day_check.png" layer=26 x="&tf.x0_3" y="&tf.y2" visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_sansaku_11 == 1"]
[button name="btn,sijyou_sansaku11" graphic="day10_1_1.png" target="sijyou_sinario" x=&tf.x4 y=&tf.y2 exp="tf.jp_sinario='sijyou_sansaku11'"]
[image name="day,sansaku_11" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4_sumi" y=&tf.y2 visible=true]
[endif]

;左位置4 tf.x0_3 /tf.x4 /tf.x4_sumi
;9◆sansaku12
[image name="day,sansaku_12" storage="../image/day_check.png" layer=26 x=&tf.x0_3 y=&tf.y3 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_sansaku_12 == 1"]
[button name="btn,sijyou_sansaku12" graphic="day10_1_2.png" target="sijyou_sinario" x=&tf.x4 y=&tf.y3 exp="tf.jp_sinario='sijyou_sansaku12'"]
[image name="day,sansaku_12" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4_sumi" y=&tf.y3 visible=true]
[endif]

;tf.x0_3 /tf.x4 /tf.x4_sumi
;10◆sansaku13
[image name="day,sansaku_13" storage="../image/day_check.png" layer=26 x=&tf.x0_3 y=&tf.y4 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_sansaku_13 == 1"]
[button name="btn,sijyou_sansaku13" graphic="day10_1_3.png" target="sijyou_sinario" x=&tf.x4 y=&tf.y4 exp="tf.jp_sinario='sijyou_sansaku13'"]
[image name="day,sansaku_13" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4_sumi" y=&tf.y4 visible=true]
[endif]

;tf.x0_3 /tf.x4 /tf.x4_sumi
;11◆sansaku4 sijyou_sansaku4.ks(11月3週→12～1月末)　事件解決後の華衣のイベント
[image name="day,sansaku_4" storage="../image/day_check.png" layer=26 x=&tf.x0_3 y=&tf.y5 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_sansaku_4 == 1"]
[button name="btn,sijyou_sansaku4" graphic="day11_3.png" target="sijyou_sinario" x=&tf.x4 y=&tf.y5 exp="tf.jp_sinario='sijyou_sansaku4'"]
[image name="day,sansaku_4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4_sumi" y=&tf.y5 visible=true]
[endif]

;tf.x0_3 /tf.x4 /tf.x4_sumi
;12◆sansaku7 3月
[image name="day,sansaku_7" storage="../image/day_check.png" layer=26 x=&tf.x0_3 y=&tf.y6 visible=true wait=true]
[wait time=10]
[if exp="sf.event_sijyou_sansaku_7 == 1"]
[button name="btn,sijyou_sansaku7" graphic="day3_1.png" target="sijyou_sinario" x=&tf.x4 y=&tf.y6 exp="tf.jp_sinario='sijyou_sansaku7'"]
[image name="day,sansaku_7" storage="../image/day_check_sumi.png" layer=26 x="&tf.x4_sumi" y=&tf.y6 visible=true]
[endif]
;=============================================エンディング=========================================================	
;enndingボタン位置		
[eval exp="tf.x5 = 580"]
[eval exp="tf.x6 = tf.x5 + 200"]
[eval exp="tf.x7 = tf.x5 + 140"]
[eval exp="tf.x8 = tf.x6 + 130"]
[eval exp="tf.end1_y = tf.y7+30"]
[eval exp="tf.end2_y = tf.y8+10"]
[if exp="sf.ED_sijyou_normal == 1 || sf.ED_sijyou_good == 1 && sf.ED_sijyou_bad == 1"]		
[image name="endtitle" storage="../image/day_end.png" layer=26 x="&tf.x5+140" y="&tf.y7" visible=true wait=true]		
[else]
[image name="day,endtitle" storage="../image/day_end.png" layer=26 x="&tf.x5+140" y="&tf.y7" visible=true wait=true]		
[iscript]		
$(".endtitle").css({'filter': 'brightness(60%)','-webkit-filter': 'brightness(60%)','-moz-filter': 'brightness(60%)','-o-filter': 'brightness(60%)','-ms-filter': 'brightness(60%)'});		
[endscript]
[wait time=10]		
[endif]

[if exp="sf.ED_sijyou_bad == 1"]		
[button name="ending1" graphic="day_bad1.png" y="&tf.end1_y" x="&tf.x5" size=15 target="sijyou_sinario_ed" exp="tf.jp_sinario='sijyou_10_3_badED'"]		
[image name="ending1" storage="../image/day_check_sumi.png" layer=26 x="&tf.x7" y="&tf.end1_y" visible=true wait=true]		
[endif]
[if exp="sf.ED_sijyou_bad != 1"]
;[button fix=true name="day,ending1,tips_btn" graphic="day_bad1.png" y="&tf.end1_y" x="&tf.x5" size=15 target="tips_label" exp="tf.tips=tf.hint_bad"]
[image name="day,ending1" storage="../image/day_bad1.png" layer=26 x="&tf.x5" y="&tf.end1_y" visible=true wait=true]		
[wait time=10]
[iscript]
$(".ending1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="ending1" storage="../image/day_check_mi.png" layer=26 x="&tf.x7" y="&tf.end1_y" visible=true wait=true]		
[wait time=10]		
[endif]		

[if exp="sf.ED_sijyou_normal == 1"]		
[button name="ending3" graphic="day_nomal.png" y="&tf.end2_y" x="&tf.x5" size=15 target="sijyou_sinario_ed" exp="tf.jp_sinario='sijyou_3_4_goodED'"]		
[image name="ending3" storage="../image/day_check_sumi.png" layer=26 x="&tf.x7" y="&tf.end2_y" visible=true wait=true]		
[wait time=10]		
[endif]
[if exp="sf.ED_sijyou_normal != 1"]
;[button fix=true name="day,ending3,tips_btn" graphic="day_nomal.png" y="&tf.end2_y" x="&tf.x5" size=15 target="tips_label" exp="tf.tips=tf.hint_nomal"]		
[image name="day,ending3" storage="../image/day_nomal.png" layer=26 x="&tf.x5" y="&tf.end2_y" visible=true wait=true]		
[wait time=10]
[iscript]
$(".ending3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="ending3" storage="../image/day_check_mi.png" layer=26 x="&tf.x7" y="&tf.end2_y" visible=true wait=true]		
[wait time=10]		
[endif]		

[if exp="sf.ED_sijyou_good == 1"]		
[button name="ending4" graphic="day_good.png" y="&tf.end2_y" x="&tf.x6" size=15 target="sijyou_sinario_ed" exp="tf.jp_sinario='sijyou_3_4_epilogue_goodED'"]		
[image name="ending4" storage="../image/day_check_sumi.png" layer=26 x="&tf.x8" y="&tf.end2_y" visible=true wait=true]		
[wait time=10]		
[endif]	
[if exp="sf.ED_sijyou_good != 1"]
;[button fix=true name="day,ending4,tips_btn" graphic="day_good.png" y="&tf.end2_y" x="&tf.x6" size=15 target="tips_label" exp="tf.tips=tf.hint_good"]		
[image name="day,ending4" storage="../image/day_good.png" layer=26 x="&tf.x6" y="&tf.end2_y" visible=true wait=true]		
[wait time=10]
[iscript]
$(".ending4").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="ending4" storage="../image/day_check_mi.png" layer=26 x="&tf.x8" y="&tf.end2_y" visible=true wait=true]		 
[endif]

;========================================未判定=======================================================
*mihantei
;tips_labelにとびます【１】
[if exp="sf.event_sijyou_event_6_1 != 1"]
[button fix=true name="day6_1,sijyou_6_1,tips_6_1,tips_btn" graphic="day6_1.png" target="tips_label" x=&tf.x1 y=&tf.y1 exp="tf.tips=tf.hint1"]
;[image name="day,day6_1,sijyou_6_1,tips_6_1" storage="../image/day6_1.png" layer=26 x=&tf.x1 y=&tf.y1 visible=true wait=true]
[wait time=10]
[iscript]
$(".day6_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
;未に影はかけないので最後に
[image name="day,day6_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y1 visible=true]
[endif]

;【２】
[if exp="sf.event_sijyou_event_9_1 != 1"]
[button fix=true name="day,day9_1,sijyou_9_1,tips_9_1,tips_btn" graphic="day9_1.png" target="tips_label" x=&tf.x1 y=&tf.y2 exp="tf.tips=tf.hint2"]
;[image name="day,day9_1,sijyou_9_1" storage="../image/day9_1.png" layer=26 x=&tf.x1 y=&tf.y2 visible=true wait=true]
[wait time=10]
[iscript]
$(".day9_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,day9_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y2 visible=true]
[endif]

;【３】
[if exp="sf.event_sijyou_9_2 != 1"]
[button fix=true name="day,day9_2,sijyou_9_2,tips_9_2,tips_btn" graphic="day9_2.png" target="tips_label" x=&tf.x1 y=&tf.y3 exp="tf.tips=tf.hint3"]
;[image name="day,day9_2,sijyou_9_2" storage="../image/day9_2.png" layer=26 x=&tf.x1 y=&tf.y3 visible=true wait=true]
[wait time=10]
[iscript]
$(".day9_2").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,day9_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y3 visible=true]
[wait time=10]
[endif]

;【４】
[if exp="sf.event_sijyou_9_3 != 1"]
[button fix=true name="day,day9_3,sijyou_9_3,tips_btn" graphic="day9_3.png" target="tips_label" x=&tf.x1 y=&tf.y4 exp="tf.tips=tf.hint4"]
;[image name="day,day9_3,sijyou_9_3" storage="../image/day9_3.png" layer=26 x=&tf.x1 y=&tf.y4 visible=true wait=true]
[wait time=10]
[iscript]
$(".day9_3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,day9_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y4 visible=true]
[endif]

;【５】
[if exp="sf.event_sijyou_9_4 != 1"]
[button fix=true name="day,day9_4,sijyou_9_4,tips_btn" graphic="day9_4.png" target="tips_label" x=&tf.x1 y=&tf.y5 exp="tf.tips=tf.hint5"]
;[image name="day,day9_4,sijyou_9_4" storage="../image/day9_4.png" layer=26 x=&tf.x1 y=&tf.y5 visible=true wait=true]
[wait time=10]
[iscript]
$(".day9_4").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,day9_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y5 visible=true]
[endif]

;【６】
[if exp="sf.event_sijyou_10_1 != 1"]
[button fix=true name="day,day10_1,sijyou_10_1,tips_btn" graphic="day10_1.png" target="tips_label" x=&tf.x1 y=&tf.y6 exp="tf.tips=tf.hint6"]
;[image name="day,day10_1,sijyou_10_1" storage="../image/day10_1.png" layer=26 x=&tf.x1 y=&tf.y6 visible=true wait=true]
[wait time=10]
[iscript]
$(".day10_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,day10_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y6 visible=true]
[endif]

;【７】
[if exp="sf.event_sijyou_10_3 != 1"]
[button fix=true name="day,day10_3,sijyou_10_3,tips_btn" graphic="day10_3.png" target="tips_label" x=&tf.x1 y=&tf.y7 exp="tf.tips=tf.hint7"]
;[image name="day,day10_3,sijyou_10_3" storage="../image/day10_3.png" layer=26 x=&tf.x1 y=&tf.y7 visible=true wait=true]
[wait time=10]
[iscript]
$(".day10_3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,day10_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y7 visible=true]
[endif]

;【８】
[if exp="sf.event_sijyou_11_1 != 1"]
[button fix=true name="day,day11_1,sijyou_11_1,tips_btn" graphic="day11_1.png" target="tips_label" x=&tf.x1 y=&tf.y8 exp="tf.tips=tf.hint8"]
;[image name="day,day11_1,sijyou_11_1" storage="../image/day11_1.png" layer=26 x=&tf.x1_2 y=&tf.y8 visible=true wait=true]
[wait time=10]
[iscript]
$(".day11_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,day11_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x1+140" y=&tf.y8 visible=true]
[endif]

;【９】
[if exp="sf.event_sijyou_1_1 != 1"]
[button fix=true name="day,day1_1,sijyou_1_1,tips_btn" graphic="day1_1.png" target="tips_label" x=&tf.x2 y=&tf.y1 exp="tf.tips=tf.hint9"]
[image name="day,day1_1,sijyou_1_1" storage="../image/day1_1.png" layer=26 x=&tf.x2 y=&tf.y1 visible=true wait=true]
[wait time=10]
[iscript]
$(".day1_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,day1_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+155" y=&tf.y1 visible=true]
[endif]

;【１０】
[if exp="sf.event_sijyou_1_3 != 1"]
[button fix=true name="day,day1_3,sijyou_1_3,tips_btn" graphic="day1_3.png" target="tips_label" x=&tf.x2 y=&tf.y2 exp="tf.tips=tf.hint10"]
;[image name="day,day1_3,sijyou_1_3" storage="../image/day1_3.png" layer=26 x=&tf.x2 y=&tf.y2 visible=true wait=true]
[wait time=10]
[iscript]
$(".day1_3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,day1_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+155" y=&tf.y2 visible=true]
[endif]

;【１１】
[if exp="sf.event_sijyou_1_4 != 1"]
[button fix=true name="day,day1_4,sijyou_1_4,tips_btn" graphic="day1_4.png" target="tips_label" x=&tf.x2 y=&tf.y3 exp="tf.tips=tf.hint11"]
;[image name="day,day1_4,sijyou_1_4" storage="../image/day1_4.png" layer=26 x=&tf.x2 y=&tf.y3 visible=true wait=true]
[wait time=10]
[iscript]
$(".day1_4").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,day1_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+155" y=&tf.y3 visible=true]
[endif]

;【１２】
[if exp="sf.event_sijyou_2_1 != 1"]
[button fix=true name="day,day2_1,sijyou_2_1,tips_btn" graphic="day2_1.png" target="tips_label" x=&tf.x2 y=&tf.y4 exp="tf.tips=tf.hint12"]
;[image name="day,day2_1,sijyou_2_1" storage="../image/day2_1.png" layer=26 x=&tf.x2 y=&tf.y4 visible=true wait=true]
[wait time=10]
[iscript]
$(".day2_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,day2_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+155" y=&tf.y4 visible=true]
[endif]

;【１３】
[if exp="sf.event_sijyou_2_2_bazar != 1"]
[button fix=true name="day,day2_2,sijyou_2_2,tips_btn" graphic="day2_2.png" target="tips_label" x=&tf.x2 y=&tf.y5 exp="tf.tips=tf.hint13"]
;[image name="day,day2_2,sijyou_2_2" storage="../image/day2_2.png" layer=26 x=&tf.x2 y=&tf.y5 visible=true wait=true]
[wait time=10]
[iscript]
$(".day2_2").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,day2_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x2+155" y=&tf.y5 visible=true]
[endif]
;========================================散策_未=======================================================
;【１】14
[if exp="sf.event_sijyou_sansaku_9 != 1"]
[button fix=true name="day,sansaku_9,sijyou_sansaku9,tips_btn" graphic="day4_1_1.png" target="tips_label" x=&tf.x3 y=&tf.y1 exp="tf.tips=tf.hint14"]
;[image name="day,sansaku_9,sijyou_sansaku9" storage="../image/day4_1_1.png" layer=26 x=&tf.x3 y=&tf.y1 visible=true wait=true]
[wait time=10]
[iscript]
$(".sansaku_9").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,sansaku_9" storage="../image/day_check_mi.png" layer=26 x="&tf.x3_sumi" y=&tf.y1 visible=true]
[endif]

;【２】15
[if exp="sf.event_sijyou_sansaku_6 != 1"]
[button fix=true name="day,sansaku_6,sijyou_sansaku6,tips_btn" graphic="day8_1.png" target="tips_label" x=&tf.x3 y=&tf.y2 exp="tf.tips=tf.hint15"]
;[image name="day,sansaku_6,sijyou_sansaku6" storage="../image/day8_1.png" layer=26 x=&tf.x3 y=&tf.y2 visible=true wait=true]
[wait time=10]
[iscript]
$(".sansaku_6").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,sansaku_6" storage="../image/day_check_mi.png" layer=26 x="&tf.x3_sumi" y=&tf.y2 visible=true]
[endif]

;【３】16
[if exp="sf.event_sijyou_sansaku_10 != 1"]
[button fix=true name="day,sansaku_10,sijyou_sansaku10,tips_btn" graphic="day9_1_1.png" target="tips_label" x=&tf.x3 y=&tf.y3 exp="tf.tips=tf.hint16"]
;[image name="day,sansaku_10,sijyou_sansaku10" storage="../image/day9_1_1.png" layer=26 x=&tf.x3 y=&tf.y3 visible=true wait=true]
[wait time=10]
[iscript]
$(".sansaku_10").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,sansaku_10" storage="../image/day_check_mi.png" layer=26 x="&tf.x3_sumi" y=&tf.y3 visible=true]
[endif]

;【４】17
[if exp="sf.event_sijyou_sansaku != 1"]
[button fix=true name="day,sansaku_1,sijyou_sansaku1,tips_btn" graphic="day9_1_2.png" target="tips_label" x=&tf.x3 y=&tf.y4 exp="tf.tips=tf.hint17"]
;[image name="day,sansaku_1" storage="../image/day9_1_2.png" layer=26 x=&tf.x3 y=&tf.y4 visible=true wait=true]
[wait time=10]
[iscript]
$(".sansaku_1").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,sansaku_1" storage="../image/day_check_mi.png" layer=26 x="&tf.x3_sumi" y=&tf.y4 visible=true]
[endif]

;【５】18
[if exp="sf.event_sijyou_sansaku_5 != 1"]
[button fix=true name="day,sansaku_5,sijyou_sansaku5,tips_btn" graphic="day9_1_3.png" target="tips_label" x=&tf.x3 y=&tf.y5 exp="tf.tips=tf.hint18"]
;[image name="day,sansaku_5,sijyou_sansaku5" storage="../image/day9_1_3.png" layer=26 x=&tf.x3 y=&tf.y5 visible=true wait=true]
[wait time=10]
[iscript]
$(".sansaku_5").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(100%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,sansaku_5" storage="../image/day_check_mi.png" layer=26 x="&tf.x3_sumi" y=&tf.y5 visible=true]
[endif]

;【６】19
[if exp="sf.event_sijyou_sansaku_2 != 1"]
[button fix=true name="day,sansaku_2,sijyou_sansaku2,tips_btn" graphic="day9_2.png" target="tips_label" x=&tf.x3 y=&tf.y6 exp="tf.tips=tf.hint19"]
;[image name="day,sansaku_2,sijyou_sansaku2" storage="../image/day9_2.png" layer=26 x=&tf.x3 y=&tf.y6 visible=true wait=true]
[wait time=10]
[iscript]
$(".sansaku_2").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,sansaku_2" storage="../image/day_check_mi.png" layer=26 x="&tf.x3_sumi" y=&tf.y6 visible=true]
[endif]
;折り返し地点
;【７】20
[if exp="sf.event_sijyou_sansaku_3 != 1"]
[button fix=true name="day,sansaku_3,sijyou_sansaku,tips_btn" graphic="day9_4.png" target="tips_label" x=&tf.x4 y=&tf.y1 exp="tf.tips=tf.hint20"]
;[image name="day,sansaku_3,sijyou_sansaku3" storage="../image/day9_4.png" layer=26 x=&tf.x4 y=&tf.y1 visible=true wait=true]
[wait time=10]
[iscript]
$(".sansaku_3").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(100%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,sansaku_3" storage="../image/day_check_mi.png" layer=26 x="&tf.x4_sumi" y=&tf.y1 visible=true]
[endif]

;【８】21
[if exp="sf.event_sijyou_sansaku_11 != 1"]
[button fix=true name="day,sansaku_11,sijyou_sansaku11,tips_btn" graphic="day10_1_1.png" target="tips_label" x=&tf.x4 y=&tf.y2 exp="tf.tips=tf.hint21"]
;[image name="day,sansaku_11,sijyou_sansaku11" storage="../image/day10_1_1.png" layer=26 x=&tf.x4 y=&tf.y2 visible=true wait=true]
[wait time=10]
[iscript]
$(".sansaku_11").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,sansaku_11" storage="../image/day_check_mi.png" layer=26 x="&tf.x4_sumi" y=&tf.y2 visible=true]
[endif]

;【９】22
[if exp="sf.event_sijyou_sansaku_12 != 1"]
[button fix=true name="day,sansaku_12,sijyou_sansaku12,tips_btn" graphic="day10_1_2.png" target="tips_label" x=&tf.x4 y=&tf.y3 exp="tf.tips=tf.hint22"]
;[image name="day,sansaku_12,sijyou_sansaku12" storage="../image/day10_1_2.png" layer=26 x=&tf.x4 y=&tf.y3 visible=true wait=true]
[wait time=10]
[iscript]
$(".sansaku_12").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,sansaku_12" storage="../image/day_check_mi.png" layer=26 x="&tf.x4_sumi" y=&tf.y3 visible=true]
[endif]

;【１０】23
[if exp="sf.event_sijyou_sansaku_13 != 1"]
[button fix=true name="day,sansaku_13,sijyou_sansaku13,tips_btn" graphic="day10_1_3.png" target="tips_label" x=&tf.x4 y=&tf.y4 exp="tf.tips=tf.hint23"]
;[image name="day,sansaku_13" storage="../image/day10_1_3.png" layer=26 x=&tf.x4 y=&tf.y4 visible=true wait=true]
[wait time=10]
[iscript]
$(".sansaku_13").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,sansaku_13" storage="../image/day_check_mi.png" layer=26 x="&tf.x4_sumi" y=&tf.y4 visible=true]
[endif]

;【１１】24
[if exp="sf.event_sijyou_sansaku_4 != 1"]
[button fix=true name="day,sansaku_4,sijyou_sansaku4,tips_btn" graphic="day11_3.png" target="tips_label" x=&tf.x4 y=&tf.y5 exp="tf.tips=tf.hint24"]
;[image name="day,sansaku_4,sijyou_sansaku4" storage="../image/day11_3.png" layer=26 x=&tf.x4 y=&tf.y5 visible=true wait=true]
[wait time=10]
[iscript]
$(".sansaku_4").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,sansaku_4" storage="../image/day_check_mi.png" layer=26 x="&tf.x4_sumi" y=&tf.y5 visible=true]
[endif]

;【１２】25
[if exp="sf.event_sijyou_sansaku_7 != 1"]
[button fix=true name="day,sansaku_7,sijyou_sansaku7,tips_btn" graphic="day3_1.png" target="tips_label" x=&tf.x4 y=&tf.y6 exp="tf.tips=tf.hint25"]
;[image name="day,sansaku_7,sijyou_sansaku7" storage="../image/day3_1.png" layer=26 x=&tf.x4 y=&tf.y6 visible=true wait=true]
[wait time=10]
[iscript]
$(".sansaku_7").css({'filter': 'brightness(50%)','-webkit-filter': 'brightness(50%)','-moz-filter': 'brightness(50%)','-o-filter': 'brightness(50%)','-ms-filter': 'brightness(50%)'});
[endscript]
[wait time=10]
[image name="day,sansaku_7" storage="../image/day_check_mi.png" layer=26 x="&tf.x4_sumi" y=&tf.y6 visible=true]
[endif]
;===============================================================================================
[iscript]
$(".loding_pic").remove();
$(".loding_pic2").remove();
$(".loding_pic1").remove();
$(".layer_free").css("opacity",1);
$(".fixlayer").css("opacity",1);
$(".fix").css("opacity",1);
[endscript]
[wait time=100]
[iscript]
$(".fixlayer").css("opacity",1);
[endscript]
*stop
[s]

*sijyou_sinario
[cm]
;tf.jp_sinarioのシナリオにジャンプ　アラートはテストのみ
[if exp="tf.test_sijyou == true"]
[iscript]
alert(tf.jp_sinario);
[endscript]
[endif]
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
$(".25_fore").empty();
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
$(".25_fore").empty();
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
[freeimage layer = 25]
@jump storage=&f.viewing_storage target=&f.viewing_target
[s]

*back_test
[cm]
[eval exp="tf.jp_sinario='none'"]
;f.event_replay = 'sijyou';
[eval exp="f.event_replay = 'none'"]
[freeimage layer = 26]
[freeimage layer = 25]
@jump storage="test.ks"
[s]

*title
[cm]
[eval exp="tf.jp_sinario='none'"]
[eval exp="f.event_replay = 'none'"]
[freeimage layer = 26]
[freeimage layer = 25]
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

*tips_btn
;オフからオンにしたときの書き換え処理を書いていた場所
;オフからオンにしたときの書き換え処理　初めから表示させておく→opactyで回避できないか？→できないので再度書き換えしかない
;[s]に飛ぶのも不可かもしれない　調査中
;初めから表示させておく→opactyで回避できないか？→できないので再度書き換えしかないようです・・・どの道opcityの変更待ちがみえる
;未が大量の場合　待ち時間が発生し、上にloadingの背景をかけないとチカチカする　オンオフためだけに待ちたくない
;判定待ち時間をなくすために　tips_btnに処理をくわえる　→上にloadingの背景をかけないとチカチカする
;imageはやめて　はじめからボタンにする　何もないときに待ち時間が発生するので回避したかったがそれ以外思いつかない
@jump target="stop"
[s]

