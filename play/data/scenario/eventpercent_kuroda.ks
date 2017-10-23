;◆B4nFWraU42さん、各キャラクタークリアリストの作成をありがとうございました。
;「おまけ」「情報」から参照使用させていただきたく、◆B4nFWraU42さん作成のイベント達成率計算部分の切り出しをしました。
*start
;エラー回避変数初期設定
[if exp="sf.event_kuroda_event_6_1 == undefined"]
[eval exp="sf.event_kuroda_event_6_1 = 0"]
[endif]
[if exp="sf.event_kuroda_9_1 == undefined"]
[eval exp="sf.event_kuroda_9_1 = 0"]
[endif]
[if exp="sf.event_kuroda_9_3 == undefined"]
[eval exp="sf.event_kuroda_9_3 = 0"]
[endif]
[if exp="sf.event_kuroda_9_4 == undefined"]
[eval exp="sf.event_kuroda_9_4 = 0"]
[endif]
[if exp="sf.event_kuroda_10_3 == undefined"]
[eval exp="sf.event_kuroda_10_3 = 0"]
[endif]
[if exp="sf.event_kuroda_10_4 == undefined"]
[eval exp="sf.event_kuroda_10_4 = 0"]
[endif]
[if exp="sf.event_kuroda_11_1 == undefined"]
[eval exp="sf.event_kuroda_11_1 = 0"]
[endif]
[if exp="sf.event_kuroda_11_2 == undefined"]
[eval exp="sf.event_kuroda_11_2 = 0"]
[endif]
[if exp="sf.event_kuroda_11_3 == undefined"]
[eval exp="sf.event_kuroda_11_3 = 0"]
[endif]
[if exp=" sf.event_kuroda_11_4 == undefined"]
[eval exp="sf.event_kuroda_11_4 = 0"]
[endif]
[if exp="sf.event_kuroda_12_2 == undefined"]
[eval exp="sf.event_kuroda_12_2 = 0"]
[endif]
[if exp="sf.event_kuroda_12_3 == undefined"]
[eval exp="sf.event_kuroda_12_3 = 0"]
[endif]
[if exp="sf.event_kuroda_1_1 == undefined"]
[eval exp="sf.event_kuroda_1_1 = 0"]
[endif]
[if exp="sf.event_kuroda_1_4 == undefined"]
[eval exp="sf.event_kuroda_1_4 = 0"]
[endif]
[if exp="sf.event_kuroda_2_2 == undefined"]
[eval exp="sf.event_kuroda_2_2 = 0"]
[endif]
;==================================
[if exp="sf.ED_kuroda_normal == undefined"]
[eval exp="sf.ED_kuroda_normal = 0"] 
[endif]
[if exp="sf.ED_kuroda_good == undefined"]
[eval exp="sf.ED_kuroda_good = 0"]
[endif]
[if exp="sf.ED_kuroda_bad == undefined"]
[eval exp="sf.ED_kuroda_bad = 0"]
[endif]
;==================================達成率の計算===========================================
;黒田散策
[eval exp="tf.event_sansaku_Number_of_times = 0"]
;[eval exp="tf.event_sansaku_Number_of_times = sf.event_kuroda_sansaku_1+ sf.event_kuroda_sansaku_2"]
;黒田イベント
[eval exp="tf.event_Number_of_times = sf.event_kuroda_event_6_1 + sf.event_kuroda_9_1"] 
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_kuroda_9_3 + sf.event_kuroda_9_4"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_kuroda_10_3 + sf.event_kuroda_10_4"] 
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_kuroda_11_1 + sf.event_kuroda_11_2"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_kuroda_11_3 + sf.event_kuroda_11_4"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_kuroda_12_2 + sf.event_kuroda_12_3 + sf.event_kuroda_1_1"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_kuroda_1_4 + sf.event_kuroda_2_2"]
;エンディング数3 /15→/18
[eval exp="tf.ending_Number_of_times = 0"]
[eval exp="tf.ending_Number_of_times = sf.ED_kuroda_normal + sf.ED_kuroda_good + sf.ED_kuroda_bad"]
;全てのイベント数 (ありがとうございます。エンディングを加算します)
[eval exp="tf.allEvent_Number_of_time = 0"]
[eval exp="tf.allEvent_Number_of_times = tf.event_sansaku_Number_of_times + tf.event_Number_of_times + tf.ending_Number_of_times"]
;達成率
[eval exp="tf.event_pasent=0"]
[eval exp="tf.event_pasent = tf.allEvent_Number_of_times / (15 + 3) * 100"]
[eval exp="tf.event_pasent =Math.floor(tf.event_pasent)"]
[eval exp="f.kuroda_event_percent = 'イベント達成率' + tf.event_pasent + '％'"]

;ヒントを設定
[iscript]
tf.hint1="黒田ヒント1";
tf.hint2="黒田ヒント2";
tf.hint3="黒田ヒント3";
tf.hint4="黒田ヒント4";
tf.hint5="黒田ヒント5";
tf.hint6="黒田ヒント6";
tf.hint7="黒田ヒント7";
tf.hint8="黒田ヒント8";
tf.hint9="黒田ヒント9";
tf.hint10="黒田ヒント10";
tf.hint11="黒田ヒント11";
tf.hint12="黒田ヒント12";
tf.hint13="黒田ヒント13";
tf.hint14="黒田ヒント14";
tf.hint15="黒田ヒント15";

tf.hint16="黒田ヒント16";

tf.hint_bad="ヒントbad";
tf.hint_bad2="ヒントbad2";
tf.hint_nomal="ヒントnomal";
tf.hint_good="ヒントgood";
[endscript]
[return]
