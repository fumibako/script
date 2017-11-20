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
[eval exp="tf.event_sansaku_Number_of_times = sf.event_zaizen_sansaku_bazar"]
;財前イベント
[eval exp="tf.event_Number_of_times = sf.event_zaizen_event_6_1 + sf.event_zaizen_9_1 + sf.event_zaizen_9_3 + sf.event_zaizen_10_1 + sf.event_zaizen_10_3 + sf.event_zaizen_11_1 + sf.event_zaizen_11_3 + sf.event_zaizen_11_4 + sf.event_zaizen_12_2 + sf.event_zaizen_12_4 + sf.event_zaizen_1_3 + sf.event_zaizen_sansaku_2_1"]
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
;財前、全てのイベントが達成されたか
[if exp="tf.event_pasent == 100 || tf.allEvent_Number_of_times == 17"]
[eval exp="sf.zaizen_clearlist_complete = 1"]
[endif]
;ヒントを設定 イベント名等をライターにいれさせたい等ありましたら別ファイルにお願いします。
[iscript]
tf.hint1="他攻略対象より好感度が高い場合一度だけ発生";
tf.hint2="淑女度20以上であり、お見合い相手に財前を選択した場合一度だけ発生";
tf.hint3="ルート確定後、九月三週に一度だけ発生";
tf.hint4="ルート確定後、十月一週に一度だけ発生";
tf.hint5="ルート確定後、十月三週に一度だけ発生";
tf.hint6="ルート確定後、十一月一週に一度だけ発生";
tf.hint7="ルート確定後、十一月三週に一度だけ発生";
tf.hint8="ルート確定後、十一月四週に一度だけ発生";
tf.hint9="ルート確定後、十二月二週に一度だけ発生";
tf.hint10="ルート確定後、十二月四週に一度だけ発生";
tf.hint11="ルート確定後、一月三週に一度だけ発生";
tf.hint12="二月一週~三月三週の間に自動で一度だけ発生";
//散策
tf.hint13="礼法が70以上、二月一週~三月四週に町へ行くと一度だけ発生";
//エンデイング
tf.hint_bad="十一月一週に「帰る」を選択で発生";
tf.hint_bad2="十一月一週に「帰らない」を選択、好感度30以下の場合自動で発生";
tf.hint_nomal="三月四週に発生";
tf.hint_good="三月四週に好感度90以上礼法淑女度80以上でnormalから連続で発生";
[endscript]

[return]
