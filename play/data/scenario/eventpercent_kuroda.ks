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
tf.hint1="その週までに黒田様の好感度を高め、華道のお稽古を何度かしてみましょう。黒田様との仲を深めるには大切なイベントです";
tf.hint2="その週まで進行し「黒田様」を選んでみましょう。黒田様の個別ルートに進行します";
tf.hint3="黒田様のルートに入り、その週まで進めてみましょう";
tf.hint4="黒田様のルートに入り、その週まで進めてみましょう";
tf.hint5="黒田様のルートに入り、その週まで進めてみましょう";
tf.hint6="黒田様のルートに入り、その週まで進めてみましょう";
tf.hint7="黒田様のルートに入り、その週まで進めてみましょう";
tf.hint8="黒田様のルートに入り、その週まで進めてみましょう";
tf.hint9="黒田様のルートに入り、その週まで進めてみましょう";
tf.hint10="黒田様のルートに入り、その週まで進めてみましょう";
tf.hint11="黒田様のルートに入り、その週まで進めてみましょう";
tf.hint12="黒田様のルートに入り、その週まで進めてみましょう";
tf.hint13="黒田様のルートに入り、その週まで進めてみましょう";
tf.hint14="黒田様のルートに入り、その週まで進めてみましょう";
tf.hint15="黒田様のルートに入り、その週まで進めてみましょう";

tf.hint16="黒田ヒント16";

tf.hint_sansaku1="黒田様の好感度を高めてから、七月一週～四週の間に散策へ出てみましょう";
tf.hint_sansaku2="黒田様の好感度を高めてから、七月二週～四週の間に散策へ出てみましょう";
tf.hint_sansaku3="黒田様の好感度を高めてから、八月一週～四週の間に散策へ出てみましょう";
tf.hint_sansaku4="黒田様の好感度を高めてから、十二月一週か二週に散策へ出てみましょう";

tf.hint_bad="十二月三週に淑女度又は好感度が低いか、梅雨の時期のイベントを見ていないとbadエンドになります";
tf.hint_bad2="ヒントbad2";
tf.hint_nomal="三月四週に好感度、淑女度、語学が一定値未満の状態で休憩するとnormalエンドになります";
tf.hint_good="三月四週までに好感度、淑女度、語学を一定値以上にして休憩するとgoodエンドになります";

tf.spoiler1="その週までに黒田様の好感度を4以上、華道熟練度3以上にしてみましょう";
tf.spoiler2="黒田様の好感度を30以上にしてその週まで進行し「黒田様」を選びましょう。黒田様の個別ルートに進行します";
tf.spoiler3="黒田様のルートに入り、その週まで進めてみましょう";
tf.spoiler4="黒田様のルートに入り、その週まで進めてみましょう";
tf.spoiler5="黒田様のルートに入り、その週まで進めてみましょう";
tf.spoiler6="黒田様のルートに入り、その週まで進めてみましょう";
tf.spoiler7="黒田様のルートに入り、その週まで進めてみましょう";
tf.spoiler8="黒田様のルートに入り、その週まで進めてみましょう";
tf.spoiler9="黒田様のルートに入り、その週まで進めてみましょう";
tf.spoiler10="黒田様のルートに入り、その週まで進めてみましょう";
tf.spoiler11="黒田様のルートに入り、その週まで進めてみましょう";
tf.spoiler12="黒田様のルートに入り、その週まで進めてみましょう";
tf.spoiler13="黒田様のルートに入り、その週まで進めてみましょう";
tf.spoiler14="黒田様のルートに入り、その週まで進めてみましょう";
tf.spoiler15="黒田様のルートに入り、その週まで進めてみましょう";

tf.spoiler16="黒田攻略情報16";

tf.spoiler_sansaku1="黒田様の好感度を11以上にして、七月一週～四週の間に散策へ出てみましょう";
tf.spoiler_sansaku2="散策イベント：七月一週～を見てから、黒田様の好感度を16以上にして七月二週～四週の間に散策へ出てみましょう";
tf.spoiler_sansaku3="散策イベント：七月一週～を見てから、黒田様の好感度を21以上にして八月一週～四週の間に散策へ出てみましょう";
tf.spoiler_sansaku4="黒田様のルートに入り、十二月一週か二週に散策へ出てみましょう";

tf.spoiler_bad="十二月三週に好感度50未満か淑女度40未満、又は麦の穂が無い(六月四週イベントを見ていない)とbadエンドになります";
tf.spoiler_bad2="ヒントbad2";
tf.spoiler_nomal="三月四週に好感度、淑女度、語学どれかが80未満の状態で休憩するとnormalエンドになります";
tf.spoiler_good="三月四週に好感度、淑女度、語学全て80以上の状態で休憩するとgoodエンドになります";
[endscript]
[return]
