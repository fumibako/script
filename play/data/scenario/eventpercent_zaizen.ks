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
tf.hint1="その週までにお相手のなかで財前様の好感度を一番高くして、淑女度を低めに抑えてみましょう";
tf.hint2="その週までに淑女度と好感度をある程度高くして「財前様」を選んでみましょう。財前様の個別ルートに進行します";
tf.hint3="財前様のルートに入り、その週まで進めてみましょう";
tf.hint4="財前様のルートに入り、その週まで進めてみましょう";
tf.hint5="財前様のルートに入り、その週まで進めてみましょう";
tf.hint6="財前様のルートに入り、その週までに好感度を高くして「帰らない」を選んでみましょう";
tf.hint7="財前様のルートに入り、その週まで進めてみましょう";
tf.hint8="財前様のルートに入り、その週まで進めてみましょう";
tf.hint9="財前様のルートに入り、その週まで進めてみましょう";
tf.hint10="財前様のルートに入り、その週まで進めてみましょう";
tf.hint11="財前様のルートに入り、その週まで進めてみましょう";
tf.hint12="財前様のルートに入り、その週まで進めてみましょう";
//散策
tf.hint13="財前様のルートに入り、礼法熟練度を高くして二月一週～三月四週の期間中に散策へ出てみましょう";
//エンデイング
tf.hint_bad="十一月一週イベントで「帰る」を選択するとbadエンドになります";
tf.hint_bad2="十一月一週に好感度一定値未満の場合に「帰らない」を選択するとこちらのbadエンドになります";
tf.hint_normal="三月四週にgoodエンドの条件を満たさない状態で休憩するとnormalエンドになります";
tf.hint_good="三月四週に好感度、礼法熟練度と淑女度全て高い状態で休憩するとgoodエンドになります";


//◆攻略情報
tf.spoiler1="その週までにお相手のなかで財前様の好感度を一番高くして、淑女度を15未満に抑えてみましょう";
tf.spoiler2="その週までに淑女度20以上、好感度を30以上にして「財前様」を選んでみましょう。財前様の個別ルートに進行します";
tf.spoiler3="財前様のルートに入り、その週まで進めてみましょう";
tf.spoiler4="財前様のルートに入り、その週まで進めてみましょう";
tf.spoiler5="財前様のルートに入り、その週まで進めてみましょう";
tf.spoiler6="財前様のルートに入り、その週までに好感度を50以上にして「帰らない」を選んでみましょう";
tf.spoiler7="財前様のルートに入り、その週まで進めてみましょう";
tf.spoiler8="財前様のルートに入り、その週まで進めてみましょう";
tf.spoiler9="財前様のルートに入り、その週まで進めてみましょう";
tf.spoiler10="財前様のルートに入り、その週まで進めてみましょう";
tf.spoiler11="財前様のルートに入り、その週まで進めてみましょう";
tf.spoiler12="財前様のルートに入り、その週まで進めてみましょう";
//散策
tf.spoiler13="財前様のルートに入り、礼法熟練度を70以上にして二月一週～三月四週の期間中に散策へ出てみましょう";
//エンデイング
tf.spoiler_bad="十一月一週イベントで「帰る」を選択するとbadエンドになります";
tf.spoiler_bad2="十一月一週に好感度50未満の場合に「帰らない」を選択するとこちらのbadエンドになります";
tf.spoiler_normal="三月四週にgoodエンドの条件(好感度、礼法熟練度と淑女度全て80以上)を満たさない状態で休憩するとnormalエンドになります";
tf.spoiler_good="三月四週に好感度、礼法熟練度と淑女度全て80以上の状態で休憩するとgoodエンドになります";
[endscript]

[return]
