;◆B4nFWraU42さん、各キャラクタークリアリストの作成をありがとうございました。
;「おまけ」「情報」から参照使用させていただきたく、◆B4nFWraU42さん作成のイベント達成率計算部分の切り出しをしました。
*start
;エラー回避変数初期設定
;黒田6_1→6_4(麦イベント)に差し替えします
[if exp="sf.event_kuroda_6_4 == undefined"]
[eval exp="sf.event_kuroda_6_4 = 0"]
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
[if exp="sf.event_kuroda_sansaku_1 == undefined"]
[eval exp="sf.event_kuroda_sansaku_1 = 0"]
[endif]
[if exp="sf.event_kuroda_sansaku_2 == undefined"]
[eval exp="sf.event_kuroda_sansaku_2 = 0"]
[endif]
[if exp="sf.event_kuroda_sansaku_3 == undefined"]
[eval exp="sf.event_kuroda_sansaku_3 = 0"]
[endif]
[if exp="sf.event_kuroda_sansaku_4 == undefined"]
[eval exp="sf.event_kuroda_sansaku_4 = 0"]
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
[eval exp="tf.event_sansaku_Number_of_times = sf.event_kuroda_sansaku_1 + sf.event_kuroda_sansaku_2 + sf.event_kuroda_sansaku_3 + sf.event_kuroda_sansaku_4"]
;黒田イベント
[eval exp="tf.event_Number_of_times = sf.event_kuroda_6_4 + sf.event_kuroda_9_1"] 
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_kuroda_9_3 + sf.event_kuroda_9_4"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_kuroda_10_3 + sf.event_kuroda_10_4"] 
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_kuroda_11_1 + sf.event_kuroda_11_2"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_kuroda_11_3 + sf.event_kuroda_11_4"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_kuroda_12_2 + sf.event_kuroda_12_3 + sf.event_kuroda_1_1"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_kuroda_1_4 + sf.event_kuroda_2_2"]
;エンディング数3 /15→/22(6_1→6_4イベントに差し替えします)
[eval exp="tf.ending_Number_of_times = 0"]
[eval exp="tf.ending_Number_of_times = sf.ED_kuroda_normal + sf.ED_kuroda_good + sf.ED_kuroda_bad"]
;全てのイベント数 (ありがとうございます。エンディングを加算します)
[eval exp="tf.allEvent_Number_of_time = 0"]
[eval exp="tf.allEvent_Number_of_times = tf.event_sansaku_Number_of_times + tf.event_Number_of_times + tf.ending_Number_of_times"]
;達成率(6_1→6_4イベントに差し替えします)
[eval exp="tf.event_pasent=0"]
[eval exp="tf.event_pasent = tf.allEvent_Number_of_times / (15 + 3 + 4) * 100"]
[eval exp="tf.event_pasent =Math.floor(tf.event_pasent)"]
[eval exp="f.kuroda_event_percent = 'イベント達成率' + tf.event_pasent + '％'"]
;黒田、全てのイベントが達成されたか(6_1→6_4イベントに差し替えします)
[if exp="tf.event_pasent == 100 || tf.allEvent_Number_of_times == 22"]
[eval exp="sf.kuroda_clearlist_complete = 1"]
[endif]
;ヒントを設定
[iscript]
tf.hint1="その週までに黒田様の好感度を高め、華道のお稽古を何度かしてみましょう";
tf.hint2="その週まで進行するとイベントが発生します";
tf.hint3="その週まで進行するとイベントが発生します";
tf.hint4="その週まで進行するとイベントが発生します";
tf.hint5="その週まで進行するとイベントが発生します";
tf.hint6="その週まで進行するとイベントが発生します";
tf.hint7="その週まで進行するとイベントが発生します";
tf.hint8="その週まで進行するとイベントが発生します";
tf.hint9="その週まで進行するとイベントが発生します";
tf.hint10="その週まで進行するとイベントが発生します";
tf.hint11="その週まで進行するとイベントが発生します";
tf.hint12="その週まで進行するとイベントが発生します";
tf.hint13="その週まで進行するとイベントが発生します";
tf.hint14="その週まで進行するとイベントが発生します";
tf.hint15="その週まで進行するとイベントが発生します";

tf.hint16="黒田ヒント16";

tf.hint_sansaku1="黒田様の好感度を高めてから、七月一週～四週の間に散策へ出てみましょう";
tf.hint_sansaku2="黒田様の好感度を高めてから、七月二週～四週の間に散策へ出てみましょう";
tf.hint_sansaku3="黒田様の好感度を高めてから、八月一週～四週の間に散策へ出てみましょう";
tf.hint_sansaku4="黒田様の好感度を高めてから、一二月一週か二週に散策へ出てみましょう";

tf.hint_bad="ヒントbad";
tf.hint_bad2="ヒントbad2";
tf.hint_nomal="ヒントnomal";
tf.hint_good="ヒントgood";
[endscript]
[return]
