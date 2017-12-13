;◆B4nFWraU42さん、各キャラクタークリアリストの作成をありがとうございました。
;「おまけ」「情報」から参照使用させていただきたく、◆B4nFWraU42さん作成のイベント達成率計算部分の切り出しをしました。
*start
;変数初期設定
[eval exp="tf.event_Number_of_times = 0"]
[if exp="sf.event_sijyou_event_6_1 == undefined"]
[eval exp="sf.event_sijyou_event_6_1 = 0"]
[endif]
[if exp="sf.event_sijyou_9_1 == undefined"]
[eval exp="sf.event_sijyou_9_1 = 0"]
[endif]
[if exp="sf.event_sijyou_9_2 == undefined"]
[eval exp="sf.event_sijyou_9_2 = 0"]
[endif]
[if exp="sf.event_sijyou_9_3 == undefined"]
[eval exp="sf.event_sijyou_9_3 = 0"]
[endif]
[if exp="sf.event_sijyou_9_4 == undefined"]
[eval exp="sf.event_sijyou_9_4 = 0"]
[endif]
[if exp="sf.event_sijyou_10_1 == undefined"]
[eval exp="sf.event_sijyou_10_1 = 0"]
[endif]
[if exp="sf.event_sijyou_10_3 == undefined"]
[eval exp="sf.event_sijyou_10_3 = 0"]
[endif]
[if exp="sf.event_sijyou_11_1 == undefined"]
[eval exp="sf.event_sijyou_11_1 = 0"]
[endif]
[if exp="sf.event_sijyou_1_1 == undefined"]
[eval exp="sf.event_sijyou_1_1 = 0"]
[endif]
[if exp="sf.event_sijyou_1_2 == undefined"]
[eval exp="sf.event_sijyou_1_2 = 0"]
[endif]
[if exp="sf.event_sijyou_1_3 == undefined"]
[eval exp="sf.event_sijyou_1_3 = 0"]
[endif]
[if exp="sf.event_sijyou_1_4 == undefined"]
[eval exp="sf.event_sijyou_1_4 = 0"]
[endif]
[if exp="sf.event_sijyou_2_1 == undefined"]
[eval exp="sf.event_sijyou_2_1 = 0"]
[endif]
[if exp="sf.event_sijyou_2_2_bazar == undefined"]
[eval exp="sf.event_sijyou_2_2_bazar = 0"]
[endif]
[if exp="sf.event_sijyou_3_1 == undefined"]
[eval exp="sf.event_sijyou_3_1 = 0"]
[endif]
;=============================================
[if exp="sf.ED_sijyou_normal == undefined"]
[eval exp="sf.ED_sijyou_normal = 0"]
[endif]
[if exp="sf.ED_sijyou_good == undefined"]
[eval exp="sf.ED_sijyou_good = 0"]
[endif]
[if exp="sf.ED_sijyou_bad == undefined"]
[eval exp="sf.ED_sijyou_bad = 0"]
[endif]
;sf.event_sijyou_event_6_1 sf.event_sijyou_9_1 sf.event_sijyou_9_2  sf.event_sijyou_9_3 sf.event_sijyou_9_4 
;sf.event_sijyou_10_1 sf.event_sijyou_10_3
;sf.event_sijyou_11_1 sf.event_sijyou_1_1 sf.event_sijyou_1_3 sf.event_sijyou_1_4 sf.event_sijyou_2_1 sf.event_sijyou_2_2_bazar
;sf.ED_sijyou_normal sf.ED_sijyou_good sf.ED_sijyou_bad
;=============================================
;変数初期設定
[eval exp="tf.eventSnsaku_Number_of_times = 0"]
[if exp="sf.event_sijyou_1_1 == undefined"]
[eval exp="sf.event_sijyou_1_1 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku == undefined"]
[eval exp="sf.event_sijyou_sansaku = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_2 == undefined"]
[eval exp="sf.event_sijyou_sansaku_2 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_3 == undefined"]
[eval exp="sf.event_sijyou_sansaku_3 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_4 == undefined"]
[eval exp="sf.event_sijyou_sansaku_4 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_5 == undefined"]
[eval exp="sf.event_sijyou_sansaku_5 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_6 == undefined"]
[eval exp="sf.event_sijyou_sansaku_6 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_7 == undefined"]
[eval exp="sf.event_sijyou_sansaku_7 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_9 == undefined"]
[eval exp="sf.event_sijyou_sansaku_9 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_10 == undefined"]
[eval exp="sf.event_sijyou_sansaku_10 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_11 == undefined"]
[eval exp="sf.event_sijyou_sansaku_11 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_12 == undefined"]
[eval exp="sf.event_sijyou_sansaku_12 = 0"]
[endif]
[if exp="sf.event_sijyou_sansaku_13 == undefined"]
[eval exp="sf.event_sijyou_sansaku_13 = 0"]
[endif]
;==================================================================
;散策数
[eval exp="tf.eventSansaku_Number_of_times = 0"]
[eval exp="tf.eventSansaku_Number_of_times = sf.event_sijyou_sansaku + sf.event_sijyou_sansaku_2 + sf.event_sijyou_sansaku_3"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_4 + sf.event_sijyou_sansaku_5"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_6 + sf.event_sijyou_sansaku_7"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_9 + sf.event_sijyou_sansaku_10"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_11 + sf.event_sijyou_sansaku_12"]
[eval exp="tf.eventSansaku_Number_of_times = tf.eventSansaku_Number_of_times + sf.event_sijyou_sansaku_13"]
;散策数パーセント
[eval exp="tf.sansaku_pasent =  0"]
[eval exp="tf.sansaku_pasent = tf.eventSansaku_Number_of_times / 12 * 100"]
[eval exp="tf.sansaku_pasent = Math.floor(tf.sansaku_pasent)"]
;イベント数
[eval exp="tf.event_Number_of_times = 0"]
[eval exp="tf.event_Number_of_times = sf.event_sijyou_event_6_1 + sf.event_sijyou_9_1 + sf.event_sijyou_9_2 + sf.event_sijyou_9_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_sijyou_9_4 + sf.event_sijyou_10_1 + sf.event_sijyou_10_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_sijyou_11_1 + sf.event_sijyou_1_1 + sf.event_sijyou_1_2 + sf.event_sijyou_1_3"]
[eval exp="tf.event_Number_of_times = tf.event_Number_of_times + sf.event_sijyou_1_4 + sf.event_sijyou_2_1 + sf.event_sijyou_2_2_bazar + sf.event_sijyou_3_1"]
;エンディング数(ありがとうございます。エンディングを加算します)
[eval exp="tf.ending_Number_of_times = 0"]
[eval exp="tf.ending_Number_of_times = sf.ED_sijyou_normal + sf.ED_sijyou_good + sf.ED_sijyou_bad"]
;達成イベント数
[eval exp="tf.allEvent_Number_of_times = 0"]
[eval exp="tf.allEvent_Number_of_times = tf.eventSansaku_Number_of_times + tf.event_Number_of_times + tf.ending_Number_of_times"]
;達成率
[eval exp="tf.event_pasent =  0"]
[eval exp="tf.event_pasent = tf.allEvent_Number_of_times / (27 + 3) * 100"]
[eval exp="tf.event_pasent = Math.floor(tf.event_pasent)"]
[eval exp="f.sijyou_event_percent = 'イベント達成率' + tf.event_pasent + '％'"]
;↓クリアリスト表示用("イベント達成率"の文字抜きVer.)
[eval exp="f.sijyou_event_percent_s = tf.event_pasent + '％'"]
;四条、全てのイベントが達成されたか
[if exp="tf.event_pasent == 100 || tf.allEvent_Number_of_times == 30"]
[eval exp="sf.sijyou_clearlist_complete = 1"]
[endif]

[iscript]
//ヒントを設定
tf.hint1="その週までにお相手のなかで四条様の好感度を一番高くして、淑女度を低めに抑えてみましょう";
tf.hint2="その週まで進めて「四条様」を選んでみましょう。四条様の個別ルートに進行します";
tf.hint3="四条様のルートに入り、その週まで進めてみましょう";
tf.hint4="四条様のルートに入り、その週まで進めてみましょう";
tf.hint5="四条様のルートに入り、その週まで進めてみましょう";
tf.hint6="四条様のルートに入り、その週まで進めてみましょう";
tf.hint7="四条様のルートに入り、その週までに好感度を高くしてみましょう";
tf.hint8="四条様のルートに入り、その週まで進めてみましょう";
//9=1_1
tf.hint9="四条様のルートに入り、その週まで進めてみましょう";
//10=1_2:sijyou_1_3_normalED.ks
tf.hint10="四条様のルートに入り、その週まで進めてみましょう";
//11=1_3:sijyou_omake_kai.ks
tf.hint11="四条様のルートに入り、その週まで進めてみましょう";
//12=1_4:(f.okeiko_month == 1 && f.okeiko_week == 4) &&( f.para_shujinkou_j_kadou > 80 || f.sijyou_sobo == true )&& f.event_sijyou[13] == 0 && f.sijyou_au == 1
tf.hint12="四条様のルートに入り、散策イベント九月二週又は九月四週を見るか華道熟練度を高くしてその週まで進めてみましょう";
//13=2_1華道教室:(f.okeiko_month == 2 && f.okeiko_week == 1) && f.para_shujinkou_j_kadou > 70 && f.event_sijyou[14] == 0 && f.sijyou_au == 1
tf.hint13="四条様のルートに入り、華道熟練度を高くしてその週まで進めてみましょう";
//14=sijyou_2_2_bazar_1.ks:f.event_sijyou_4 == 1 || f.event_sijyou_kai_jijyou == 1) && f.sijyou_sobo != true && f.para_shujinkou_j_reihou >= 10"]
tf.hint14="四条様ルートで散策イベント九月二週と九月四週は「見ない」で過ごしましょう。散策イベント十二月一週を見て、その週までに礼法のお稽古をある程度してみましょう";
//15=3_1華道展:(f.okeiko_month == 3 && f.okeiko_week == 1) && f.sijyou_sobo == true && f.event_sijyou[15] == 0 && f.sijyou_au == 1
tf.hint15="四条様のルートに入り、散策イベント九月二週又は九月四週を見てからその週まで進めてみましょう";
//散策
//;sijyou_sansaku9.ks(見合い前なら一回発生子供達　気力が微多めに回復)
tf.hint16="四～八月の期間中に散策へ出てみましょう";
//;sijyou_sansaku6.ks(8月(他攻略対象より好感度が高い)花火イベント)
tf.hint17="お相手のなかで四条様の好感度を一番高くしてから、八月中に散策へ出てみましょう";
//;sijyou_sansaku10.ks(四条ルートのみ　四条の好感度が高い攻略のヒント)
tf.hint18="四条様のルートに入ってから、散策へ出てみましょう";
//;sijyou_sansaku.ks (9月1週~9月4週)(銀座デート前まで)に1度だけ発生
tf.hint19="四条様のルートに入ってから、九月中に散策へ出てみましょう";
//;sijyou_sansaku5.ks(9月～9月末　銀座デート前 b）or(11事件解決後～12月 a)elsif exp="f.okeiko_month == 12 && f.event_machi_sijyou[17] == 0 && f.sijyou_event6==1…2度発生可能という部分は九月中"又は"十二月中ではなく、九月中"や"十二月中という表現に込めてみました◆jsYiJcqRkk
tf.hint20="四条様のルートに入ってから、九月中や十二月中に散策へ出てみましょう";
//;sijyou_sansaku2.ks (9/2~4)華道展ｲﾍﾞﾝﾄﾌﾗｸﾞ1 四条綾花
tf.hint21="四条様のルートに入ってから、九月二～四週の間に散策へ出てみましょう";
//;sijyou_sansaku3.ks(9/4~10/1)華道展ｲﾍﾞﾝﾄﾌﾗｸﾞ2
tf.hint22="四条様のルートに入ってから、九月四週～十月一週の間に散策へ出てみましょう";
//;sijyou_sansaku11.ks(四条ルートのみ、(10月~2月)九月×　三月×　最大文字数ここまで　
tf.hint23="四条様のルートに入ってから、十月～二月の間に散策へ出てみましょう";
//;sijyou_sansaku12.ks(10月~2月)九月×　三月×　
tf.hint24="四条様のルートに入ってから、十月～二月の間に散策へ出てみましょう";
//;sijyou_sansaku13.ks(10月~2月)九月×　三月×
tf.hint25="四条様のルートに入ってから、十月～二月の間に散策へ出てみましょう";
//;sijyou_sansaku4.ks(12～1月末)　事件解決後の華衣のイベント
tf.hint26="四条様のルートに入ってから、十二月か一月に散策へ出てみましょう";
//;sijyou_sansaku7.ks(3月)香水：f.para_shujinkou_j_kadou > 70 && f.para_sijyou_koukando > 80 && f.sijyou_au == 1
tf.hint27="四条様のルートに入ってから、華道熟練度と好感度を高めにして三月中に散策へ出てみましょう";

tf.hint_bad="十月三週に好感度が一定値未満の場合、badエンドになります";
tf.hint_bad2="ヒントbad2";
tf.hint_normal="三月四週にgoodエンドの条件を満たさない状態で休憩するとnormalエンドになります";
tf.hint_good="三月四週までに好感度と淑女度かなり高め、華道熟練度高め、とある秋の散策イベントを「見ている」状態にして休憩するとgoodエンドになります";

//◆攻略情報
tf.spoiler1="その週までにお相手のなかで四条様の好感度を一番高くして、淑女度を15未満に抑えてみましょう";
tf.spoiler2="その週までに好感度を30以上にして「四条様」を選んでみましょう。四条様の個別ルートに進行します";
tf.spoiler3="四条様のルートに入り、その週まで進めてみましょう";
tf.spoiler4="四条様のルートに入り、その週まで進めてみましょう";
tf.spoiler5="四条様のルートに入り、その週まで進めてみましょう";
tf.spoiler6="四条様のルートに入り、その週まで進めてみましょう";
tf.spoiler7="四条様のルートに入り、その週までに好感度を40以上にしてみましょう";
tf.spoiler8="四条様のルートに入り、その週まで進めてみましょう";
//9=1_1
tf.spoiler9="四条様のルートに入り、その週まで進めてみましょう";
//10=1_2:sijyou_1_3_normalED.ks
tf.spoiler10="四条様のルートに入り、その週まで進めてみましょう";
//11=1_3:sijyou_omake_kai.ks
tf.spoiler11="四条様のルートに入り、その週まで進めてみましょう";
//12=1_4:(f.okeiko_month == 1 && f.okeiko_week == 4) &&( f.para_shujinkou_j_kadou > 80 || f.sijyou_sobo == true )&& f.event_sijyou[13] == 0 && f.sijyou_au == 1
tf.spoiler12="四条様のルートに入り、散策イベント九月二週又は九月四週を見るか華道熟練度を81以上にしてその週まで進めてみましょう";
//13=2_1華道教室:(f.okeiko_month == 2 && f.okeiko_week == 1) && f.para_shujinkou_j_kadou > 70 && f.event_sijyou[14] == 0 && f.sijyou_au == 1
tf.spoiler13="四条様のルートに入り、華道熟練度を71以上にしてその週まで進めてみましょう";
//14=sijyou_2_2_bazar_1.ks:f.event_sijyou_4 == 1 || f.event_sijyou_kai_jijyou == 1) && f.sijyou_sobo != true && f.para_shujinkou_j_reihou >= 10"]
tf.spoiler14="四条様ルートで散策イベント九月二週と九月四週は「見ない」で過ごしましょう。十一月一週に「～尋ねた」を選択するか散策イベント十二月一週を見て、その週までに礼法熟練度を10以上にしてみましょう";
//15=3_1華道展:(f.okeiko_month == 3 && f.okeiko_week == 1) && f.sijyou_sobo == true && f.event_sijyou[15] == 0 && f.sijyou_au == 1
tf.spoiler15="四条様のルートに入り、散策イベント九月二週又は九月四週を見てからその週まで進めてみましょう";
//散策
//;sijyou_sansaku9.ks(見合い前なら一回発生子供達　気力が微多めに回復)
tf.spoiler16="四～八月の期間中に散策へ出てみましょう";
//;sijyou_sansaku6.ks(8月(他攻略対象より好感度が高い)花火イベント)
tf.spoiler17="お相手のなかで四条様の好感度を一番高くしてから、八月中に散策へ出てみましょう";
//;sijyou_sansaku10.ks(四条ルートのみ　四条の好感度が高い攻略のヒント)
tf.spoiler18="四条様のルートに入ってから、散策へ出てみましょう";
//;sijyou_sansaku.ks (9月1週~9月4週)(銀座デート前まで)に1度だけ発生
tf.spoiler19="四条様のルートに入ってから、九月中に散策へ出てみましょう";
//;sijyou_sansaku5.ks(9月～9月末　銀座デート前 b）or(11事件解決後～12月 a)elsif exp="f.okeiko_month == 12 && f.event_machi_sijyou[17] == 0 && f.sijyou_event6==1…2度発生可能という部分は九月中"又は"十二月中ではなく、九月中"や"十二月中という表現に込めてみました◆jsYiJcqRkk
tf.spoiler20="四条様のルートに入ってから、九月中や十二月中に散策へ出てみましょう";
//;sijyou_sansaku2.ks (9/2~4)華道展ｲﾍﾞﾝﾄﾌﾗｸﾞ1 四条綾花
tf.spoiler21="四条様のルートに入ってから、九月二～四週の間に散策へ出てみましょう";
//;sijyou_sansaku3.ks(9/4~10/1)華道展ｲﾍﾞﾝﾄﾌﾗｸﾞ2
tf.spoiler22="四条様のルートに入ってから、九月四週～十月一週の間に散策へ出てみましょう";
//;sijyou_sansaku11.ks(四条ルートのみ、(10月~2月)九月×　三月×　最大文字数ここまで　
tf.spoiler23="四条様のルートに入ってから、十月～二月の間に散策へ出てみましょう";
//;sijyou_sansaku12.ks(10月~2月)九月×　三月×　
tf.spoiler24="四条様のルートに入ってから、十月～二月の間に散策へ出てみましょう";
//;sijyou_sansaku13.ks(10月~2月)九月×　三月×
tf.spoiler25="四条様のルートに入ってから、十月～二月の間に散策へ出てみましょう";
//;sijyou_sansaku4.ks(12～1月末)　事件解決後の華衣のイベント
tf.spoiler26="四条様のルートに入ってから、十二月か一月に散策へ出てみましょう";
//;sijyou_sansaku7.ks(3月)香水：f.para_shujinkou_j_kadou > 70 && f.para_sijyou_koukando > 80 && f.sijyou_au == 1
tf.spoiler27="四条様のルートに入ってから、華道熟練度71以上、好感度を81以上にして三月中に散策へ出てみましょう";

tf.spoiler_bad="十月三週に好感度40未満の場合、badエンドになります";
tf.spoiler_bad2="ヒントbad2";
tf.spoiler_normal="三月四週にgoodエンドの条件を満たさない状態で休憩するとnormalエンドになります";
tf.spoiler_good="三月四週までに好感度と淑女度80以上、華道熟練度50以上、散策イベント九月二週又は九月四週を「見ている」状態にして休憩するとgoodエンドになります";
[endscript]

[return]
;sansaku8はない。（旧華衣おまけ）

[return]
