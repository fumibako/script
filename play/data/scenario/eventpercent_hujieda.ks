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
;藤枝、全てのイベントが達成されたか
[if exp="tf.event_pasent == 100 || tf.allEvent_Number_of_times == 22"]
[eval exp="sf.hujieda_clearlist_complete = 1"]
[endif]
;ヒントを設定 イベント名等をライターにいれさせたい等ありましたら別ファイルにお願いします。
[iscript]
tf.hint1="「とあるお稽古」を(三週までに)二回以上で一度だけ発生";
tf.hint2="同お稽古を二回以上、手紙1通目を見ている場合に一度だけ発生";
tf.hint3="他の攻略対象より好感度が高いと発生";
tf.hint4="同お稽古を二回以上、手紙2通目を見ている場合に一度だけ発生";
tf.hint5="同お稽古を二回以上、手紙3通目を見ている場合に一度だけ発生";
tf.hint6="同お稽古を二回以上、手紙4通目を見ている場合に一度だけ発生";
tf.hint7="手紙4通目を見ており「誰も選ばない」を選択した場合に一度だけ発生";
tf.hint8="ルート確定後九月二週に一度だけ発生";
tf.hint9="ルート確定後九月四週に一度だけ発生";
tf.hint10="ルート確定後十月一週に一度だけ発生";
tf.hint11="ルート確定後十月三週に一度だけ発生";
tf.hint12="ルート確定後十一月一週に一度だけ発生";
tf.hint13="ルート確定後十一月三週に一度だけ発生";
tf.hint14="ルート確定後十二月三週に一度だけ発生";
tf.hint15="ルート確定後一月三週に一度だけ発生";
tf.hint16="ルート確定後二月三週に一度だけ発生";
//散策
tf.hint17="二月三週から三月四週の間、町に出た時一度だけ発生";
//バザー
tf.hint18="三月二週から三月三週まであるお稽古の熟練度が高いと自動で一度だけ発生";

tf.hint_bad="十一月一週のイベントにて好感度が40以下で自動で分岐発生";
//十二月三週のイベントにて「話さない」を選択後、または好感度が30以下の場合、自動で分岐　好感度分岐はない
tf.hint_bad2="十二月三週のイベントにて「話さない」を選択後、分岐発生";
tf.hint_nomal="三月四週に発生";
tf.hint_good="三月四週、好感度80以上「とあるお稽古」が80以上 淑女度70以上においてnormalイベントから連続で発生";
[endscript]

[return]
