;◆B4nFWraU42さん、各キャラクタークリアリストの作成をありがとうございました。
;「おまけ」「情報」から参照使用させていただきたく、◆B4nFWraU42さん作成のイベント達成率計算部分の切り出しをしました。
*start
;変数初期設定　エラー回避
[if exp="sf.event_katuragi_event_1 == undefined"]
[eval exp="sf.event_katuragi_event_1 = 0"]
[endif]
;リプレイに表示されている場合は０を回避
[if exp="sf.replay_katuraginomiya == 1"]
[eval exp="sf.event_katuragi_event_1 = 1"]
[endif]
[if exp="sf.event_katuragi_event_2 == undefined"]
[eval exp="sf.event_katuragi_event_2 = 0"]
[endif]
[if exp="sf.event_katuragi_event_3 == undefined"]
[eval exp="sf.event_katuragi_event_3 = 0"]
[endif]
[if exp="sf.event_katuragi_6_1 == undefined"]
[eval exp="sf.event_katuragi_6_1 = 0"]
[endif]
[if exp="sf.event_katuragi_9_1 == undefined"]
[eval exp="sf.event_katuragi_9_1 = 0"]
[endif]
[if exp="sf.event_katuragi_9_3 == undefined"]
[eval exp="sf.event_katuragi_9_3 = 0"]
[endif]
[if exp="sf.event_katuragi_9_4 == undefined"]
[eval exp="sf.event_katuragi_9_4 = 0"]
[endif]
[if exp="sf.event_katuragi_10_2 == undefined"]
[eval exp="sf.event_katuragi_10_2 = 0"]
[endif]
[if exp="sf.event_katuragi_10_3 == undefined"]
[eval exp="sf.event_katuragi_10_3 = 0"]
[endif]
[if exp="sf.event_katuragi_11_1 == undefined"]
[eval exp="sf.event_katuragi_11_1 = 0"]
[endif]
[if exp="sf.event_katuragi_11_4 == undefined"]
[eval exp="sf.event_katuragi_11_4 = 0"]
[endif]
[if exp="sf.event_katuragi_12_1 == undefined"]
[eval exp="sf.event_katuragi_12_1 = 0"]
[endif]
[if exp="sf.event_katuragi_1_3 == undefined"]
[eval exp="sf.event_katuragi_1_3 = 0"]
[endif]
[if exp="sf.event_katuragi_2_2 == undefined"]
[eval exp="sf.event_katuragi_2_2 = 0"]
[endif]
[if exp="sf.event_katuragi_bazar == undefined"]
[eval exp="sf.event_katuragi_bazar = 0"]
[endif]
[if exp="sf.event_katuragi_sansaku1 == undefined"]
[eval exp="sf.event_katuragi_sansaku1 = 0"]
[endif]
[if exp="sf.event_katuragi_sansaku2 == undefined"]
[eval exp="sf.event_katuragi_sansaku2 = 0"]
[endif]
;===================================================
[if exp="sf.ED_katuraginomiya_normal == undefined"]
[eval exp="sf.ED_katuraginomiya_normal = 0"]
[endif]
[if exp="sf.ED_katuraginomiya_good == undefined"]
[eval exp="sf.ED_katuraginomiya_good = 0"]
[endif]
[if exp="sf.ED_katuraginomiya_bad == undefined"]
[eval exp="sf.ED_katuraginomiya_bad = 0"]
[endif]
;==================================達成率の計算===========================================
;葛城宮散策
[eval exp="tf.event_sansaku_Number_of_times=0"]
[eval exp="tf.event_sansaku_Number_of_times = sf.event_katuragi_sansaku1 + sf.event_katuragi_sansaku2"]
;葛城宮イベント回数
[eval exp="tf.event_Number_of_times=0"]
[eval exp="tf.event_Number_of_times = sf.event_katuragi_event_1 + sf.event_katuragi_event_2"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_katuragi_event_3 + sf.event_katuragi_6_1 + sf.event_katuragi_9_1"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_katuragi_9_3 + sf.event_katuragi_9_4 + sf.event_katuragi_10_2"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_katuragi_10_3 + sf.event_katuragi_11_1 + sf.event_katuragi_11_4"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_katuragi_12_1 + sf.event_katuragi_1_3 + sf.event_katuragi_2_2"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_katuragi_bazar"]
;エンディング数
[eval exp="tf.ending_Number_of_times = 0"]
[eval exp="tf.ending_Number_of_times = sf.ED_katuraginomiya_normal + sf.ED_katuraginomiya_good + sf.ED_katuraginomiya_bad"]
;全てのイベント数 (ありがとうございます。エンディングを加算します)
[eval exp="tf.allEvent_Number_of_times = 0"]
[eval exp="tf.allEvent_Number_of_times = tf.event_sansaku_Number_of_times + tf.event_Number_of_times + tf.ending_Number_of_times"]
;達成率
[eval exp="tf.event_pasent=0"]
[eval exp="tf.event_pasent = tf.allEvent_Number_of_times / (17 + 3) * 100"]
[eval exp="tf.event_pasent =Math.floor(tf.event_pasent)"]
[eval exp="f.katuraginomiya_event_percent = 'イベント達成率' + tf.event_pasent + '％'"]
;葛城宮、全てのイベントが達成されたか
[if exp="tf.event_pasent == 100 || tf.allEvent_Number_of_times == 20"]
[eval exp="sf.katuraginomiya_clearlist_complete = 1"]
[endif]

;ヒントを設定 イベント名等をライターにいれさせたい等ありましたら別ファイルにお願いします。
[iscript]
tf.hint1="六月三週までに他好感度が一定以下、淑女度15以上で一度だけ発生";
tf.hint2="七月二週、他攻略対象の好感度が一定以下淑女度15以上で一度だけ発生";
tf.hint3="七月四週、淑女度20以上で一度だけ発生";
tf.hint4="八月二週、淑女度25以上で一度だけ発生一度だけ発生";
tf.hint5="九月一週に好感度20以上かつ淑女度30以上で一度だけ発生";
tf.hint6="ルート確定後、九月三週に一度だけ発生";
tf.hint7="ルート確定後、九月四週に一度だけ発生";
tf.hint8="ルート確定後、十月二週に一度だけ発生";
tf.hint9="ルート確定後、十月三週に一度だけ発生";
tf.hint10="ルート確定後、十一月一週に一度だけ発生";
tf.hint11="ルート確定後、十一月四週に一度だけ発生";
tf.hint12="ルート確定後、十二月一週に一度だけ発生";
tf.hint13="ルート確定後、一月三週に一度だけ発生";
tf.hint14="ルート確定後、二月二週に一度だけ発生";
tf.hint15="ルート確定後、二月三週に一度だけ発生";
//散策
tf.hint16="二月二週~三月四週に一度だけ発生";
tf.hint17="前回の散策イベントをみているかつ二月二週~三月四週に一度だけ発生";

tf.hint_bad="ヒントbad";
tf.hint_bad2="ヒントbad2";
tf.hint_nomal="ヒントnomal";
tf.hint_good="ヒントgood";
[endscript]
[return]
