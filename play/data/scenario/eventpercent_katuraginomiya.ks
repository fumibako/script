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


;ヒントを設定 イベント名等をライターにいれさせたい等ありましたら別ファイルにお願いします。
[iscript]
tf.hint1="葛城宮ヒント1";
tf.hint2="葛城宮ヒント2";
tf.hint3="葛城宮ヒント3";
tf.hint4="葛城宮ヒント4";
tf.hint5="葛城宮ヒント5";
tf.hint6="葛城宮ヒント6";
tf.hint7="葛城宮ヒント7";
tf.hint8="葛城宮ヒント8";
tf.hint9="葛城宮ヒント9";
tf.hint10="葛城宮ヒント10";
tf.hint11="葛城宮ヒント11";
tf.hint12="葛城宮ヒント12";
tf.hint13="葛城宮ヒント13";
tf.hint14="葛城宮ヒント14";
tf.hint15="葛城宮ヒント15";
//散策
tf.hint16="葛城宮ヒント16";
tf.hint17="葛城宮ヒント17";

tf.hint_bad="ヒントbad";
tf.hint_bad2="ヒントbad2";
tf.hint_nomal="ヒントnomal";
tf.hint_good="ヒントgood";
[endscript]
[return]
