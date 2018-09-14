;文字列に別途置換
;手紙を出した月、記録用 (月は月が変わった時に代入でもいい)
;fumi_report_month 初期化
[eval exp="f.fumi_report_month =''"]
;数値によって文字列化
[if  exp="f.okeiko_month == 4"]
[eval exp="f.fumi_report_month ='四月'"]
[elsif exp="f.okeiko_month == 5"]
[eval exp="f.fumi_report_month ='五月'"]
[elsif exp="f.okeiko_month == 6"]
[eval exp="f.fumi_report_month ='六月'"]
[elsif exp="f.okeiko_month == 7"]
[eval exp="f.fumi_report_month ='七月'"]
[elsif exp="f.okeiko_month == 8"]
[eval exp="f.fumi_report_month ='八月'"]
[elsif exp="f.okeiko_month == 9"]
[eval exp="f.fumi_report_month ='九月'"]
[elsif exp="f.okeiko_month == 10"]
[eval exp="f.fumi_report_month ='十月'"]
[elsif exp="f.okeiko_month == 11"]
[eval exp="f.fumi_report_month ='十一月'"]
[elsif exp="f.okeiko_month == 12"]
[eval exp="f.fumi_report_month ='十二月'"]
[elsif exp="f.okeiko_month == 1"]
[eval exp="f.fumi_report_month ='一月'"]
[elsif exp="f.okeiko_month == 2"]
[eval exp="f.fumi_report_month ='二月'"]
[elsif exp="f.okeiko_month == 3"]
[eval exp="f.fumi_report_month ='三月'"]
[else]
;例外処理 テスト用
[eval exp="f.fumi_report_month ='去三月'"]
[endif]
;手紙を出した日付f.okeiko_week
[if  exp="f.okeiko_week == 1"]
[eval exp="f.fumi_report_week ='一週目'"]
[elsif  exp="f.okeiko_week == 2"]
[eval exp="f.fumi_report_week ='二週目'"]
[elsif  exp="f.f.okeiko_week == 3"]
[eval exp="f.fumi_report_week ='三週目'"]
[elsif  exp="f.okeiko_week == 4"]
[eval exp="f.fumi_report_week ='四週目'"]
[else]
;例外処理 テスト用
[eval exp="fumi_report_week ='零週目'"]
[endif]


;手紙の宛先 別途記録
;fumi_report_atesaki初期化
[eval exp="f.fumi_report_atesaki=''"]
;変数によって文字列にする分岐
[if exp="f.fumi_atesaki == 'kuroda'"]
 [eval exp="f.fumi_report_atesaki='黒田様宛'"]
[elsif exp="f.fumi_atesaki == 'sijyou'"]
 [eval exp="f.fumi_report_atesaki='四条様宛'"]
[elsif exp="f.fumi_atesaki == 'zaizen'"]
 [eval exp="f.fumi_report_atesaki='財前様宛'"]
[elsif exp="f.fumi_atesaki == 'hujieda' && f.hujieda_au == 0 && (f.event_hujieda[17]== 0"]
;8/4のイベントで名前発覚
 [eval exp="f.fumi_report_atesaki='鳥君宛'"]
[elsif exp="f.fumi_atesaki == 'hujieda' && (f.hujieda_au == 1 || f.event_hujieda[17] == 1)"]
 [eval exp="f.fumi_report_atesaki='藤枝様宛'"]
[elsif exp="f.fumi_atesaki == 'katuraginomiya'"]
 [eval exp="f.fumi_report_atesaki='殿下宛'"]
[else]
;例外処理 テストエラー確認用
 [eval exp="fumi_report_atesaki='お兄様宛'"]
[endif]



[iscript]
//便箋
f.fumi_report_binsen =f.binsen_list_hairetsu[f.binsen_number][0]
[endscript]

[iscript]
//語調 
f.fumi_report_gotyou = f.fumi_gotyou;
[endscript]

[iscript]
//話題
f.fumi_report_wadai = f.wadai_list_hairetsu[f.wadai_number][0];
[endscript]

[iscript]
tf.fumi_report ='';
;tf.fumi_report = f.fumi_report_month + f.fumi_report_week + ' : ' + f.fumi_report_atesaki +'・' + f.fumi_report_binsen +'・' + f.fumi_report_gotyou +'・' + f.fumi_report_wadai;
;tf.fumi_report = f.fumi_report_month + f.fumi_report_week + ' : ' + f.fumi_report_atesaki +' ' + f.fumi_report_binsen +' ' + f.fumi_report_gotyou +' ' + f.fumi_report_wadai;
tf.fumi_report = f.fumi_report_month + f.fumi_report_week + ' : ' + f.fumi_report_atesaki +'　' + f.fumi_report_binsen +'　' + f.fumi_report_gotyou +'　' + f.fumi_report_wadai;
//表示例 四月二週:四条様宛・〜の便箋・気軽に・〜の話題
[endscript]

[iscript]
f.fumi_report_info.unshift(tf.fumi_report);
if (f.fumi_report_info.length > 100){
	f.fumi_report_info.pop(); //100件を超えた場合、新規履歴データが1件追加されるたびに古い配列データを1件ずつ消去
}
//f.fumi_report_info.push(tf.fumi_report);
//alert(f.fumi_report_info);
[endscript]
@jump storage="fumi_wadai_owari.ks" target="*fumi_wadai_owari2"