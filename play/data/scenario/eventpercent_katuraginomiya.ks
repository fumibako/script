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
tf.hint1="六月二週又は三週までに他のお相手の好感度を低めに抑えつつ、お稽古に励んで淑女度を高めましょう、又もう一方の隠しのお相手とのイベントを起こしていると発生しません";
tf.hint2="六月のイベントを見た状態で、その週までにお相手のなかで殿下の好感度を一番高くしてお稽古に励みみましょう";
tf.hint3="六月のイベントを見た状態で、その週までに淑女度を高めましょう";
tf.hint4="七月のイベントを見た状態で、その週までに淑女度をさらに高めましょう";
tf.hint5="八月のイベントを見た状態で、その週までに淑女度と好感度を高くして「もっと考えたい」「～お受けする」を選んでみましょう。殿下の個別ルートに進行します";
tf.hint6="殿下のルートに入り、その週まで進めてみましょう";
tf.hint7="殿下のルートに入り、その週まで進めてみましょう";
tf.hint8="殿下のルートに入り、その週まで進めてみましょう";
tf.hint9="殿下のルートに入り、その週まで進めてみましょう";
tf.hint10="殿下のルートに入り、その週までに好感度を高めて「問う。」を選んでみましょう";
tf.hint11="殿下のルートに入り、その週まで進めてみましょう";
tf.hint12="殿下のルートに入り、その週まで進めてみましょう";
tf.hint13="殿下のルートに入り、その週まで進めてみましょう";
tf.hint14="殿下のルートに入り、その週まで進めてみましょう";
//15=バザー：((f.okeiko_month == 2 && (f.okeiko_week == 3 || f.okeiko_week == 4)) || (f.okeiko_month == 3 && f.okeiko_week != 4)) && f.katuraginomiya_au == 1 && f.para_shujinkou_j_sadou >= 70 && f.event_katuraginomiya[17] == 0
tf.hint15="殿下のルートに入り、その週までに茶道のお稽古を沢山してみましょう";
//散策
tf.hint16="殿下のルートに入り、二月二週～三月四週の間に散策へ出てみましょう";
tf.hint17="殿下のルートに入り、散策イベント二月二週を見てから二月二週～三月四週の間に散策へ出てみましょう";

tf.hint_bad="十一月一週のイベントで好感度が一定値未満又は「泣く。」を選んだ場合にbadエンドになります";
tf.hint_bad2="ヒントbad2";
tf.hint_normal="三月四週にgoodエンドの条件を満たさない状態で休憩するとnormalエンドになります";
tf.hint_good="三月四週までに淑女度を相当高く、好感度と茶道熟練度を一定値以上にして休憩するとgoodエンドになります";

//◆攻略情報
tf.spoiler1="六月二週又は三週までに他のお相手の好感度を20以下に抑えつつ、淑女度15以上になるまでお稽古に励みましょう。又もう一方の隠しのお相手とのイベントを起こしていると発生しません";
tf.spoiler2="六月のイベントを見た状態で、その週までに淑女度15以上かつお相手のなかで殿下の好感度を一番高くしてみましょう";
tf.spoiler3="六月のイベントを見た状態で、その週までに淑女度を20以上にしてみましょう";
tf.spoiler4="七月のイベントを見た状態で、その週までに淑女度を25以上にしてみましょう";
tf.spoiler5="八月のイベントを見た状態で、その週までに淑女度30以上、好感度を20以上にして「もっと考えたい」「～お受けする」を選んでみましょう。殿下の個別ルートに進行します";
tf.spoiler6="殿下のルートに入り、その週まで進めてみましょう";
tf.spoiler7="殿下のルートに入り、その週まで進めてみましょう";
tf.spoiler8="殿下のルートに入り、その週まで進めてみましょう";
tf.spoiler9="殿下のルートに入り、その週まで進めてみましょう";
tf.spoiler10="殿下のルートに入り、その週までに好感度を40以上にして「問う。」を選んでみましょう";
tf.spoiler11="殿下のルートに入り、その週まで進めてみましょう";
tf.spoiler12="殿下のルートに入り、その週まで進めてみましょう";
tf.spoiler13="殿下のルートに入り、その週まで進めてみましょう";
tf.spoiler14="殿下のルートに入り、その週まで進めてみましょう";
//15=バザー：((f.okeiko_month == 2 && (f.okeiko_week == 3 || f.okeiko_week == 4)) || (f.okeiko_month == 3 && f.okeiko_week != 4)) && f.katuraginomiya_au == 1 && f.para_shujinkou_j_sadou >= 70 && f.event_katuraginomiya[17] == 0
tf.spoiler15="殿下のルートに入り、その週までに茶道熟練度を70以上にしてみましょう";
//散策
tf.spoiler16="殿下のルートに入り、二月二週～三月四週の間に散策へ出てみましょう";
tf.spoiler17="殿下のルートに入り、散策イベント二月二週を見てから二月二週～三月四週の間に散策へ出てみましょう";

tf.spoiler_bad="十一月一週のイベントで好感度を40未満又は「泣く。」を選んだ場合にbadエンドになります";
tf.spoiler_bad2="ヒントbad2";
tf.spoiler_normal="三月四週にgoodエンドの条件を満たさない状態で休憩するとnormalエンドになります";
tf.spoiler_good="三月四週までに淑女度100以上、好感度と茶道熟練度を80以上にして休憩するとgoodエンドになります";
[endscript]
[return]
