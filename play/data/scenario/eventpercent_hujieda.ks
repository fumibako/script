;◆B4nFWraU42さん、各キャラクタークリアリストの作成をありがとうございました。
;「おまけ」「情報」から参照使用させていただきたく、◆B4nFWraU42さん作成のイベント達成率計算部分の切り出しをしました。
*start
;変数初期設定　エラー回避
[if exp="sf.event_hujieda_4_4 == undefined"]
[eval exp="sf.event_hujieda_4_4 = 0"]
[endif]
[if exp="sf.event_hujieda_5_4 == undefined"]
[eval exp="sf.event_hujieda_5_4 = 0"]
[endif]
[if exp="sf.event_hujieda_6_1 == undefined"]
[eval exp="sf.event_hujieda_6_1 = 0"]
[endif]
[if exp="sf.event_hujieda_6_4 == undefined"]
[eval exp="sf.event_hujieda_6_4 = 0"]
[endif]
[if exp="sf.event_hujieda_7_4 == undefined"]
[eval exp="sf.event_hujieda_7_4 = 0"]
[endif]
[if exp="sf.event_hujieda_8_4 == undefined"]
[eval exp="sf.event_hujieda_8_4 = 0"]
[endif]
[if exp="sf.event_hujieda_9_1 == undefined"]
[eval exp="sf.event_hujieda_9_1 = 0"]
[endif]
[if exp="sf.event_hujieda_9_2 == undefined"]
[eval exp="sf.event_hujieda_9_2 = 0"]
[endif]
[if exp="sf.event_hujieda_9_4 == undefined"]
[eval exp="sf.event_hujieda_9_4 = 0"]
[endif]
[if exp="sf.event_hujieda_10_1 == undefined"]
[eval exp="sf.event_hujieda_10_1 = 0"]
[endif]
[if exp="sf.event_hujieda_10_3 == undefined"]
[eval exp="sf.event_hujieda_10_3 = 0"]
[endif]
[if exp="sf.event_hujieda_11_1 == undefined"]
[eval exp="sf.event_hujieda_11_1 = 0"]
[endif]
[if exp="sf.event_hujieda_11_3 == undefined"]
[eval exp="sf.event_hujieda_11_3 = 0"]
[endif]
[if exp="sf.event_hujieda_12_3 == undefined"]
[eval exp="sf.event_hujieda_12_3 = 0"]
[endif]
[if exp="sf.event_hujieda_1_3 == undefined"]
[eval exp="sf.event_hujieda_1_3 = 0"]
[endif]
[if exp="sf.event_hujieda_2_3 == undefined"]
[eval exp="sf.event_hujieda_2_3 = 0"]
[endif]
[if exp="sf.event_hujieda_bazaar == undefined"]
[eval exp="sf.event_hujieda_bazaar = 0"]
[endif]
[if exp="sf.event_hujieda_sansaku == undefined"]
[eval exp="sf.event_hujieda_sansaku = 0"]
[endif]
;================================
[if exp="sf.ED_hujieda_normal == undefined"]
[eval exp="sf.ED_hujieda_normal = 0"]
[endif]
[if exp="sf.ED_hujieda_good == undefined"]
[eval exp="sf.ED_hujieda_good = 0"]
[endif]
[if exp="sf.ED_hujieda_bad == undefined"]
[eval exp="sf.ED_hujieda_bad = 0"]
[endif]
[if exp="sf.ED_hujieda_bad2 == undefined"]
[eval exp="sf.ED_hujieda_bad2 = 0"]
[endif]
;================================
;藤枝散策イベントクリア回数
[eval exp="tf.event_sansaku_Number_of_times = 0"]
[eval exp="tf.event_sansaku_Number_of_times = sf.event_hujieda_bazaar + sf.event_hujieda_sansaku"]
;藤枝イベントクリア回数
[eval exp="tf.event_Number_of_times = 0"]
[eval exp="tf.event_Number_of_times = sf.event_hujieda_4_4 + sf.event_hujieda_5_4 + sf.event_hujieda_6_1 + sf.event_hujieda_6_4"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_hujieda_7_4 + sf.event_hujieda_8_4 + sf.event_hujieda_9_1"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_hujieda_9_2 + sf.event_hujieda_9_4"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_hujieda_10_1 + sf.event_hujieda_10_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_hujieda_11_1 + sf.event_hujieda_11_3"] 
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times+ sf.event_hujieda_12_3 + sf.event_hujieda_1_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times+ sf.event_hujieda_2_3"]
;エンディング数
[eval exp="tf.ending_Number_of_times = 0"]
[eval exp="tf.ending_Number_of_times = sf.ED_hujieda_normal + sf.ED_hujieda_good + sf.ED_hujieda_bad + sf.ED_hujieda_bad2"]
;全てのイベント数　(ありがとうございます。エンディングを加算します)
[eval exp="tf.allEvent_Number_of_times = 0"]
[eval exp="tf.allEvent_Number_of_times = tf.event_sansaku_Number_of_times + tf.event_Number_of_times + tf.ending_Number_of_times"]
;達成率
[eval exp="tf.event_pasent = 0"]
[eval exp="tf.event_pasent = tf.allEvent_Number_of_times / (18 + 4) * 100"]
[eval exp="tf.event_pasent =Math.floor(tf.event_pasent)"]
[eval exp="f.hujieda_event_percent = 'イベント達成率' + tf.event_pasent + '％'"]

;ヒントを設定 イベント名等をライターにいれさせたい等ありましたら別ファイルにお願いします。
[iscript]
tf.hint1="藤枝ヒント1";
tf.hint2="藤枝ヒント2";
tf.hint3="藤枝ヒント3";
tf.hint4="藤枝ヒント4";
tf.hint5="藤枝ヒント5";
tf.hint6="藤枝ヒント6";
tf.hint7="藤枝ヒント7";
tf.hint8="藤枝ヒント8";
tf.hint9="藤枝ヒント9";
tf.hint10="藤枝ヒント10";
tf.hint11="藤枝ヒント11";
tf.hint12="藤枝ヒント12";
tf.hint13="藤枝ヒント13";
tf.hint14="藤枝ヒント14";
tf.hint15="藤枝ヒント15";
tf.hint16="藤枝ヒント16";
//散策
tf.hint17="藤枝ヒント17";
tf.hint18="藤枝ヒント18";

tf.hint_bad="ヒントbad";
tf.hint_bad2="ヒントbad2";
tf.hint_nomal="ヒントnomal";
tf.hint_good="ヒントgood";
[endscript]

[return]
