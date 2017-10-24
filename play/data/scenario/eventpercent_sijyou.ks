;◆B4nFWraU42さん、各キャラクタークリアリストの作成をありがとうございました。
;「おまけ」「情報」から参照使用させていただきたく、◆B4nFWraU42さん作成のイベント達成率計算部分の切り出しをしました。
*start
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
[eval exp="sf.event_sijyou_2_2_bazar = 0"]
[endif]
;=============================================
[if exp="sf.ED_sijyou_normal == undefined"]
[eval exp="sf.ED_sijyou_normal = 0"]
[endif]
[if exp="sf.ED_sijyou_good == undefined"]
[eval exp="sf.ED_sijyou_good = 0"]
[endif]
[if exp="sf.ED_sijyou_bad == undefined"]
[eval exp="sf.ED_sijyou_bad = 0"]
[endif]
;sf.event_sijyou_event_6_1 sf.event_sijyou_9_1 sf.event_sijyou_9_2  sf.event_sijyou_9_3 sf.event_sijyou_9_4 
;sf.event_sijyou_10_1 sf.event_sijyou_10_3
;sf.event_sijyou_11_1 sf.event_sijyou_1_1 sf.event_sijyou_1_3 sf.event_sijyou_1_4 sf.event_sijyou_2_1 sf.event_sijyou_2_2_bazar
;sf.ED_sijyou_normal sf.ED_sijyou_good sf.ED_sijyou_bad
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
[eval exp="sf.event_sijyou_sansaku_4 = 0"]
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
;散策数パーセント
[eval exp="tf.sansaku_pasent =  0"]
[eval exp="tf.sansaku_pasent = tf.eventSansaku_Number_of_times / 12 * 100"]
[eval exp="tf.sansaku_pasent = Math.floor(tf.sansaku_pasent)"]
;イベント数
[eval exp="tf.event_Number_of_times = 0"]
[eval exp="tf.event_Number_of_times = sf.event_sijyou_event_6_1 + sf.event_sijyou_9_1 + sf.event_sijyou_9_2 + sf.event_sijyou_9_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_sijyou_9_4 + sf.event_sijyou_10_1 + sf.event_sijyou_10_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_sijyou_11_1 + sf.event_sijyou_1_1 + sf.event_sijyou_1_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_sijyou_1_4 + sf.event_sijyou_2_1 + sf.event_sijyou_2_2_bazar"]
;エンディング数(ありがとうございます。エンディングを加算します)
[eval exp="tf.ending_Number_of_times = 0"]
[eval exp="tf.ending_Number_of_times = sf.ED_sijyou_normal + sf.ED_sijyou_good + sf.ED_sijyou_bad"]
;達成イベント数
[eval exp="tf.allEvent_Number_of_times = 0"]
[eval exp="tf.allEvent_Number_of_times = tf.eventSansaku_Number_of_times + tf.event_Number_of_times + tf.ending_Number_of_times"]
;達成率
[eval exp="tf.event_pasent =  0"]
[eval exp="tf.event_pasent = tf.allEvent_Number_of_times / (25 + 3) * 100"]
[eval exp="tf.event_pasent = Math.floor(tf.event_pasent)"]
[eval exp="f.sijyou_event_percent = 'イベント達成率' + tf.event_pasent + '％'"]
;↓クリアリスト表示用("イベント達成率"の文字抜きVer.)
[eval exp="f.sijyou_event_percent_s = tf.event_pasent + '％'"]


[iscript]
//ヒントを設定
tf.hint1="四条の好感度が他攻略対象より高い場合一回発生";
tf.hint2="お見合い相手に四条を選択した場合一回発生";
tf.hint3="四条ルートにて一回発生";
tf.hint4="四条ルートにて一回発生";
tf.hint5="四条ルートにて一回発生";
tf.hint6="四条ルートにて一回発生";
tf.hint7="四条ルートにて好感度が40以上であれば一回発生";
tf.hint8="四条ルートにて(十月三週のイベントをみている場合に)一回発生1";
tf.hint9="四条ルートにて(十月三週のイベントをみている場合に)一回発生2";
tf.hint10="四条ルートにて(十月三週のイベントをみている場合に)一回発生3";
tf.hint11="四条ルートにて(十月三週のイベントをみている場合に)一回発生4";
tf.hint12="四条ルートにて(十月三週のイベントをみている場合に)一回発生5";
tf.hint13="四条ルートにて(十月三週のイベントをみている場合に)一回発生6";
//散策
//;sijyou_sansaku9.ks(見合い前なら一回発生子供達　気力が微多めに回復)
tf.hint14="お見合い前に一回発生";
//;sijyou_sansaku6.ks(8月(他攻略対象より好感度が高い)花火イベント)
tf.hint15="八月四週までに他攻略対象より四条の好感度が高い時に一回発生";
//;sijyou_sansaku10.ks(四条ルートのみ　四条の好感度が高い攻略のヒント)
tf.hint16="四条ルートにて一回発生";
//;sijyou_sansaku.ks (9月1週~9月4週)(銀座デート前まで)に1度だけ発生
tf.hint17="四条ルート・九月一週~九月四週までに一回発生";
//;sijyou_sansaku5.ks(9月～9月末　銀座デート前 b）or(11事件解決後～12月 a)
tf.hint18="四条ルート・九月一週~九月四週または十一月二週~十二月四週までに二回発生";
//;sijyou_sansaku2.ks (9/2~4)華道展ｲﾍﾞﾝﾄﾌﾗｸﾞ1 四条綾花
tf.hint19="四条ルート・九月二週~九月四週までに一回発生";
//;sijyou_sansaku3.ks(9/4~10/1)華道展ｲﾍﾞﾝﾄﾌﾗｸﾞ2
tf.hint20="四条ルート・九月四週~十月一週までに一回発生";
//;sijyou_sansaku11.ks(四条ルートのみ、(10月~2月)九月×　三月×　最大文字数ここまで　
tf.hint21="四条ルート・十月~二月四週までに一回発生。但し、九月と三月は含まれない";
//;sijyou_sansaku12.ks(10月~2月)九月×　三月×　
tf.hint22="四条ルート・十月~二月四週までに一回発生";
//;sijyou_sansaku13.ks(10月~2月)九月×　三月×
tf.hint23="四条ルート・十月~二月四週までに一回発生";
//;sijyou_sansaku4.ks(12～1月末)　事件解決後の華衣のイベント
tf.hint24="四条ルート・十二月～一月四週までに一回発生";
//;sijyou_sansaku7.ks(3月)香水
tf.hint25="四条ルート・三月に一回発生";

tf.hint_bad="ヒントbad";
tf.hint_bad2="ヒントbad2";
tf.hint_nomal="ヒントnomal";
tf.hint_good="ヒントgood";
[endscript]

[return]
;sansaku8はない。（旧華衣おまけ）

[return]
