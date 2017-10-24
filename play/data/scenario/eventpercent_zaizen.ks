;◆B4nFWraU42さん、各キャラクタークリアリストの作成をありがとうございました。
;「おまけ」「情報」から参照使用させていただきたく、◆B4nFWraU42さん作成のイベント達成率計算部分の切り出しをしました。
*start
;変数初期設定　エラー回避
[if exp="sf.event_zaizen_event_6_1 == undefined"]
[eval exp="sf.event_zaizen_event_6_1 = 0"]
[endif]
[if exp="sf.event_zaizen_9_1 == undefined"]
[eval exp="sf.event_zaizen_9_1 = 0"]
[endif]
[if exp="sf.event_zaizen_9_3 == undefined"]
[eval exp="sf.event_zaizen_9_3 = 0"]
[endif]
[if exp="sf.event_zaizen_10_1 == undefined"]
[eval exp="sf.event_zaizen_10_1 = 0"]
[endif]
[if exp="sf.event_zaizen_10_3 == undefined"]
[eval exp="sf.event_zaizen_10_3 = 0"]
[endif]
[if exp="sf.event_zaizen_11_1 == undefined"]
[eval exp="sf.event_zaizen_11_1 = 0"]
[endif]
[if exp="sf.event_zaizen_11_3 == undefined"]
[eval exp="sf.event_zaizen_11_3 = 0"]
[endif]
[if exp="sf.event_zaizen_11_4 == undefined"]
[eval exp="sf.event_zaizen_11_4 = 0"]
[endif]
[if exp="sf.event_zaizen_12_2 == undefined"]
[eval exp="sf.event_zaizen_12_2 = 0"]
[endif]
[if exp="sf.event_zaizen_12_4 == undefined"]
[eval exp="sf.event_zaizen_12_4 = 0"]
[endif]
[if exp="sf.event_zaizen_1_3 == undefined"]
[eval exp="sf.event_zaizen_1_3 = 0"]
[endif]
[if exp="sf.event_zaizen_sansaku_2_1 == undefined"]
[eval exp="sf.event_zaizen_sansaku_2_1 = 0"]
[endif]
[if exp="sf.event_zaizen_sansaku_bazar== undefined"]
[eval exp="sf.event_zaizen_sansaku_bazar = 0"]
[endif]
;================================
[if exp="sf.ED_zaizen_normal == undefined"]
[eval exp="sf.ED_zaizen_normal = 0"]
[endif]
[if exp="sf.ED_zaizen_good == undefined"]
[eval exp="sf.ED_zaizen_good = 0"]
[endif]
[if exp="sf.ED_zaizen_bad2 == undefined"]
[eval exp="sf.ED_zaizen_bad2 = 0"]
[endif]
[if exp="sf.ED_zaizen_bad1 == undefined"]
[eval exp="sf.ED_zaizen_bad1 = 0"]
[endif]
;==================================達成率の計算===========================================
;財前散策
[eval exp="tf.event_sansaku_Number_of_times = 0"]
[eval exp="tf.event_sansaku_Number_of_times = sf.event_zaizen_sansaku_2_1+ sf.event_zaizen_sansaku_bazar"]
;財前イベント
[eval exp="tf.event_Number_of_times = sf.event_zaizen_event_6_1 + sf.event_zaizen_9_1 + sf.event_zaizen_9_3 + sf.event_zaizen_10_1 + sf.event_zaizen_10_3 + sf.event_zaizen_11_1 + sf.event_zaizen_11_3 + sf.event_zaizen_11_4 + sf.event_zaizen_12_2 + sf.event_zaizen_12_4 + sf.event_zaizen_1_3"]
;エンディング数4 13→17
[eval exp="tf.ending_Number_of_times = 0"]
[eval exp="tf.ending_Number_of_times = sf.ED_zaizen_normal + sf.ED_zaizen_good + sf.ED_zaizen_bad2 + sf.ED_zaizen_bad1"]
;全てのイベント数 (ありがとうございます。エンディングを加算します)
[eval exp="tf.allEvent_Number_of_times = 0"]
[eval exp="tf.allEvent_Number_of_times = tf.event_sansaku_Number_of_times + tf.event_Number_of_times + tf.ending_Number_of_times"]
;達成率
[eval exp="tf.event_pasent=0"]
[eval exp="tf.event_pasent = tf.allEvent_Number_of_times / (13 + 4) * 100"]
[eval exp="tf.event_pasent =Math.floor(tf.event_pasent)"]
[eval exp="f.zaizen_event_percent = 'イベント達成率' + tf.event_pasent + '％'"]

;ヒントを設定 イベント名等をライターにいれさせたい等ありましたら別ファイルにお願いします。
[iscript]
tf.hint1="財前ヒント1";
tf.hint2="財前ヒント2";
tf.hint3="財前ヒント3";
tf.hint4="財前ヒント4";
tf.hint5="財前ヒント5";
tf.hint6="財前ヒント6";
tf.hint7="財前ヒント7";
tf.hint8="財前ヒント8";
tf.hint9="財前ヒント9";
tf.hint10="財前ヒント10";
tf.hint11="財前ヒント11";
tf.hint12="二月一週~三月三週";
//散策
tf.hint13="財前ヒント13";
tf.hint_bad="ヒントbad";
tf.hint_bad2="ヒントbad2";
tf.hint_nomal="ヒントnomal";
tf.hint_good="ヒントgood";
[endscript]

[return]
