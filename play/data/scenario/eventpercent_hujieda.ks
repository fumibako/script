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
[if exp="sf.ED_hujieda_bad3 == undefined"]
[eval exp="sf.ED_hujieda_bad3 = 0"]
[endif]
;================================
;藤枝散策イベントクリア回数
[eval exp="tf.event_sansaku_Number_of_times = 0"]
[eval exp="tf.event_sansaku_Number_of_times = sf.event_hujieda_sansaku"]
;藤枝イベントクリア回数
[eval exp="tf.event_Number_of_times = 0"]
[eval exp="tf.event_Number_of_times = sf.event_hujieda_4_4 + sf.event_hujieda_5_4 + sf.event_hujieda_6_1 + sf.event_hujieda_6_4"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_hujieda_7_4 + sf.event_hujieda_8_4 + sf.event_hujieda_9_1"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_hujieda_9_2 + sf.event_hujieda_9_4"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_hujieda_10_1 + sf.event_hujieda_10_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_hujieda_11_1 + sf.event_hujieda_11_3"] 
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times+ sf.event_hujieda_12_3 + sf.event_hujieda_1_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times+ sf.event_hujieda_2_3 + sf.event_hujieda_bazaar"]
;エンディング数
[eval exp="tf.ending_Number_of_times = 0"]
[eval exp="tf.ending_Number_of_times = sf.ED_hujieda_normal + sf.ED_hujieda_good + sf.ED_hujieda_bad + sf.ED_hujieda_bad2 + sf.ED_hujieda_bad3"]
;全てのイベント数　(ありがとうございます。エンディングを加算します)
[eval exp="tf.allEvent_Number_of_times = 0"]
[eval exp="tf.allEvent_Number_of_times = tf.event_sansaku_Number_of_times + tf.event_Number_of_times + tf.ending_Number_of_times"]
;達成率
[eval exp="tf.event_pasent = 0"]
[eval exp="tf.event_pasent = tf.allEvent_Number_of_times / (18 + 5) * 100"]
[eval exp="tf.event_pasent =Math.floor(tf.event_pasent)"]
[eval exp="f.hujieda_event_percent = 'イベント達成率' + tf.event_pasent + '％'"]
;藤枝、全てのイベントが達成されたか
[if exp="tf.event_pasent == 100 || tf.allEvent_Number_of_times == 23"]
[eval exp="sf.hujieda_clearlist_complete = 1"]
[endif]
;ヒントを設定 イベント名等をライターにいれさせたい等ありましたら別ファイルにお願いします。
[iscript]
tf.hint1="四月三週までに「とあるお稽古」を二回以上してみましょう。どのようなお稽古なら、想いが外へ伝わるでしょう";
tf.hint2="某手紙一通目を見ている必要があります。五月一週～三週の期間にとあるお稽古を二回以上してみましょう";
tf.hint3="某手紙二通目までを見ている必要があります。他のお相手の好感度を8以下に抑えてみましょう";
tf.hint4="某手紙二通目までを見ている必要があります。六月一週～三週の期間にとあるお稽古を二回以上してみましょう";
tf.hint5="某手紙三通目までを見ている必要があります。七月一週～三週の期間にとあるお稽古を二回以上してみましょう";
tf.hint6="某手紙四通目までを見ている必要があります。八月一週～三週の期間にとあるお稽古を二回以上してみましょう";
tf.hint7="某手紙四通目までを見ている必要があります。好感度30以上のお相手が居て「誰も選ばない」を選択した場合に個別ルートに進めます";
tf.hint8="個別ルートに入り、その週まで進めてみましょう";
tf.hint9="個別ルートに入り、その週まで進めてみましょう";
tf.hint10="個別ルートに入り、その週まで進めてみましょう";
tf.hint11="個別ルートに入り、その週まで進めてみましょう";
tf.hint12="個別ルートに入り、その週まで進めてみましょう";
tf.hint13="個別ルートに入り、その週まで進めてみましょう";
tf.hint14="個別ルートに入り、その週まで進めてみましょう";
tf.hint15="個別ルートに入り、その週まで進めてみましょう";
tf.hint16="個別ルートに入り、その週まで進めてみましょう";
//散策
tf.hint17="個別ルートに入り、二月三週～三月四週の間に散策へ出てみましょう";
//バザー
tf.hint18="個別ルートに入り、三月二週～三月三週までにとあるお稽古熟練度を70以上にしてみましょう";

tf.hint_bad="十一月三週に好感度が一定値未満の場合、badエンドになります";
//十二月三週のイベントにて「話さない」を選択後、または好感度が30以下の場合、自動で分岐　好感度分岐はない
tf.hint_bad2="十二月三週のイベントで選択肢によってはbadエンドになります";
tf.hint_bad3="某手紙四通目までを見ていて、八月四週に他のお相手で好感度一定値以上の方がいらっしゃらないとbadエンドになります。個別ルート進行前のため「思ひ出」には載りません";
tf.hint_normal="三月四週に好感度かとあるお稽古一定値未満、又は淑女度一定値未満の状態で休憩するとnormalエンドになります";
tf.hint_good="三月四週までに好感度、とあるお稽古、淑女度を一定値以上にして休憩するとgoodエンドになります";

//◆攻略情報
tf.spoiler1="四月三週までに「お箏」を二回以上お稽古してみましょう";
tf.spoiler2="鳩の手紙一通目を見ている必要があります。五月一週～三週の期間にお箏を二回以上お稽古してみましょう";
tf.spoiler3="鳩の手紙二通目までを見ている必要があります。他のお相手の好感度を8以下に抑えてみましょう";
tf.spoiler4="鳩の手紙二通目までを見ている必要があります。六月一週～三週の期間にお箏を二回以上お稽古してみましょう";
tf.spoiler5="鳩の手紙三通目までを見ている必要があります。七月一週～三週の期間にお箏を二回以上お稽古してみましょう";
tf.spoiler6="鳩の手紙四通目までを見ている必要があります。八月一週～三週の期間にお箏を二回以上お稽古してみましょう";
tf.spoiler7="鳩の手紙四通目までを見ている必要があります。好感度30以上のお相手が居て「誰も選ばない」を選択した場合に藤枝様ルートに進めます";
tf.spoiler8="藤枝様ルートに入り、その週まで進めてみましょう";
tf.spoiler9="藤枝様ルートに入り、その週まで進めてみましょう";
tf.spoiler10="藤枝様ルートに入り、その週まで進めてみましょう";
tf.spoiler11="藤枝様ルートに入り、その週まで進めてみましょう";
tf.spoiler12="藤枝様ルートに入り、その週まで進めてみましょう";
tf.spoiler13="藤枝様ルートに入り、その週まで進めてみましょう";
tf.spoiler14="藤枝様ルートに入り、その週まで進めてみましょう";
tf.spoiler15="藤枝様ルートに入り、その週まで進めてみましょう";
tf.spoiler16="藤枝様ルートに入り、その週まで進めてみましょう";
//散策
tf.spoiler17="藤枝様ルートに入り、二月三週～三月四週の間に散策へ出てみましょう";
//バザー
tf.spoiler18="藤枝様ルートに入り、三月二週～三月三週までにお箏熟練度を70以上にしてみましょう";

tf.spoiler_bad="十一月三週に好感度40未満の場合、badエンドになります";
//十二月三週のイベントにて「話さない」を選択後、または好感度が30以下の場合、自動で分岐　好感度分岐はない
tf.spoiler_bad2="十二月三週のイベントで「話さない」を選択すると、badエンドになります";
tf.spoiler_bad3="鳩の手紙四通目までを見ていて、八月四週に他のお相手で好感度30以上の方がいらっしゃらないとbadエンドになります。個別ルート進行前のため「思ひ出」には載りません";
tf.spoiler_normal="三月四週に好感度かお箏熟練度80未満、又は淑女度70未満の状態で休憩するとnormalエンドになります";
tf.spoiler_good="三月四週までに好感度とお箏熟練度80以上、かつ淑女度70以上にして休憩するとgoodエンドになります";
[endscript]

[return]
