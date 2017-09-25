﻿﻿;=============================================
;お稽古パート：イベント判定(週始め)
;=============================================
*start

;◆イベント発生判定
*event_hantei
;[eval exp="f.hantei_event_storage='event_hantei_week_hajime.ks冒頭共通イベント判定開始'"]
;[変数ログ表示]

;=============================================
;◆共通イベント判定：助言以外
;=============================================
;磯野アドバイス(f.event_common[0]~[7])badED5月4週(f.event_common[8])8月4週badED(f.event_common[9])
;お見合い決定9_1(f.event_common[11])磯野相談f.event_common[12]各ｷｬﾗ散策ｱﾄﾞﾊﾞｲｽf.event_common[13]~[19]紗代子手紙[20]怪談[21]
;================================================
;common_asuka.ks;　飛鳥紗代子はじめての手紙 当初の手紙は5_2になっています
[if exp="(f.okeiko_month == 5 && f.okeiko_week == 2) && f.event_common[20] == 0"]
	[eval exp="f.event_storage='common_asuka.ks'"]
	[eval exp="f.event_target='*replay_common_ausuka'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[20]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;event_8_week_asuka.ks　飛鳥紗代子・怪談葉月の庭 ２週目以降　8_4バッドを満たしていない(四条又は黒田の好感度30以上、又は財前好感度30以上かつ淑女度20以上)選択肢処理がある為葛城宮オンリーではない || (f.para_katuraginomiya_koukando >= 20 && f.para_shujinkou_shukujodo >= 30)の心配はonlyではじかれるので記述しない
[if exp="(f.okeiko_month == 8 && f.okeiko_week == 4) && f.event_common[21] == 0 && (f.para_kuroda_koukando >= 30 || f.para_sijyou_koukando >= 30 || (f.para_zaizen_koukando >= 30 && f.para_shujinkou_shukujodo >= 20)) && f.katuraginomiya_only != 1 && sf.ending_Number_of_times > 0"]
;2週目sf.EDclear_Number_of_times > 0 ※財前好感度30だけで反応させない
	[eval exp="f.event_storage='sijyou/event_8_week_asuka.ks'"]
	[eval exp="f.event_target='*replay_event_8_week_asuka'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[21]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;夢イベント　一番好感度高い　かつ
;藤枝　箏１０以上（普通に箏ばかりやれば１２）　葛城宮と被らないように箏パラメータで
;葛城宮　淑女度１４以上（箏と茶道をやっても１８）・・・しかし6/1の内容ではないので今はなし
;四条・財前は好感度最大値　葛城宮と被らないように淑女度１５以下
;================================================
;◆四条 sijyou_6_1.ks好感度一定値以上で1度だけ発生 日付は不明(仮)　！！共通イベントですがどうしましょう ここは葛城宮好感度→淑女度１８以下　と　藤枝好感度→箏、一定値　5/4で華道ばかり１５になった
[if exp="(f.okeiko_month == 6 && f.okeiko_week == 1) && f.event_sijyou[1] == 0 && f.katuraginomiya_only != 1"]
	;配列に好感度を入れます。
	[eval exp ="tf.hikaku_koukando=[f.para_sijyou_koukando , f.para_kuroda_koukando, f.para_zaizen_koukando, f.para_katuraginomiya_koukando , f.para_hujieda_koukando ]"]
	[iscript]
	tf.a=Math.max.apply(null, tf.hikaku_koukando);
	//alert(tf.a); ここまでok
	[endscript]
	[if exp="tf.a == f.para_hujieda_koukando && f.hujieda_au == 0 && f.para_shujinkou_j_koto > 5 && f.event_hujieda[2] == 1 && f.event_sijyou[1] == 0 && f.katuraginomiya_only != 1"]
	;藤枝の好感度と一番高い数値が同じであるとき箏が7以上（好感度があがらないキャラほど上の判定）
	;藤枝が登場している場合、葛城宮は登場しないので淑女度判定なし
	[eval exp="f.event_storage='hujieda/hujieda_6_1.ks'"]
	[eval exp="f.event_target='*replay_hujieda_6_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[1]=1"]
	@jump storage="event.ks" target=*start
	;四条	
	[elsif exp="tf.a == f.para_sijyou_koukando && f.sijyou_au == 0 && (f.para_shujinkou_shukujodo < 15 || f.para_sijyou_koukando > 20) && f.event_sijyou[1] == 0 && f.katuraginomiya_only != 1"]
	;四条の好感度と一番高い数値が同じであるとき淑女度が15以下　または　四条の好感度と一番高い数値が同じであり、その好感度が15以上	
	[eval exp="f.event_storage='sijyou/sijyou_6_1.ks'"]
	[eval exp="f.event_target='*replay_sijyou_6_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[1]=1"]
	@jump storage="event.ks" target=*start
	[elsif exp="tf.a == f.para_zaizen_koukando && f.zaizen_au == 0 && (f.para_shujinkou_shukujodo < 15 || f.para_zaizen_koukando > 20) && f.event_sijyou[1] == 0 && f.katuraginomiya_only != 1"]
	;財前の好感度と一番高い数値が同じであるとき淑女度が15以下	または　財前の好感度と一番高い数値が同じであり、その好感度が15以上
	[eval exp="f.event_storage='zaizen/zaizen_6_1.ks'"]
	[eval exp="f.event_target='*replay_zaizen_6_1'"]
	[eval exp="f.event_type='talk'"]	
	[eval exp="f.event_sijyou[1]=1"]
	@jump storage="event.ks" target=*start
	[endif]
[endif]
;================================================
;◆ 七月一週に休憩を押した場合 ！！共通イベントですがどうしましょう
[if exp="(f.okeiko_month ==7 && f.okeiko_week == 1) && f.event_sijyou[2] == 0 && f.sijyou_au == 0"]
	[eval exp="f.event_storage='sijyou/sijyou_7_1.ks'"]
	[eval exp="f.event_target='*replay_sijyou_7_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[2]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;4～8月は9月以降の
[if exp="(f.okeiko_month >= 4) && (f.okeiko_month <= 8)"]
@jump target=*katuraginomiya_event_hantei
[endif]
;================================================
;◆顔合せのお相手選びイベント判定：イベント 9月1週になった時点で、攻略対象の好感度一定値以上なら1度だけ発生
;↓お相手候補が葛城宮だけの場合は葛城宮イベント判定へ
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 1) && f.katuraginomiya_only == 1"]
@jump target=*katuraginomiya_event_hantei
;↓葛城宮Onlyではないものの葛城宮条件を満たし、他の候補の好感度等条件を満たさない結果葛城宮のみ候補となる場合も葛城宮イベント判定へ
[elsif exp="(f.okeiko_month == 9 && f.okeiko_week == 1) && (f.para_katuraginomiya_koukando >= 20 && f.para_shujinkou_shukujodo >= 30) && (f.para_kuroda_koukando < 30 && f.para_zaizen_koukando < 30 && f.para_sijyou_koukando < 30)"]
@jump target=*katuraginomiya_event_hantei
;黒田、財前、四条の進行条件を満たすと共通イベントcommon_9_1発生
[elsif exp="(f.okeiko_month == 9 && f.okeiko_week == 1) && f.event_common[10] == 0 && (f.para_kuroda_koukando >= 30 || (f.para_zaizen_koukando >= 30 && f.para_shujinkou_shukujodo >= f.zaizen_shukujodo) || f.para_sijyou_koukando >= 30)"]

;好感度と淑女度により、選択可能なお相手を調べる
[iscript]
f.common_9_1_storage = [];
f.common_9_1_target = [];
f.common_9_1_oaite = [];
f.common_9_1_oaite_full = [];
f.common_9_1_oaite_exp = [];

if (f.para_kuroda_koukando >= 30) {
  f.common_9_1_storage.push("kuroda_9_1.ks");
  f.common_9_1_target.push("*from_common_9_1");
  f.common_9_1_oaite.push("黒田様");
  f.common_9_1_oaite_full.push("黒田 将貴");
  f.common_9_1_oaite_exp.push("f.kuroda_au = 1"); //葛城宮以外はボタンを押した段階で個別ルート決定するようにしてみます(シナリオ側の設定漏れ防止とテストし易さ目的)
}
if (f.para_zaizen_koukando >= 30 && f.para_shujinkou_shukujodo >= f.zaizen_shukujodo) {
  f.common_9_1_storage.push("zaizen/zaizen_9_1.ks");
  f.common_9_1_target.push("*replay_zaizenzaizen_9_1");
  f.common_9_1_oaite.push("財前様");
  f.common_9_1_oaite_full.push("財前 美彬");
  f.common_9_1_oaite_exp.push("f.zaizen_au = 1");
}
if (f.para_sijyou_koukando >= 30) {
  f.common_9_1_storage.push("sijyou/sijyou_9_1.ks");
  f.common_9_1_target.push("*replay_sijyou_9_1");
  f.common_9_1_oaite.push("四条様");
  f.common_9_1_oaite_full.push("四条 華織");
  f.common_9_1_oaite_exp.push("f.sijyou_au = 1");
}
f.common_9_1_ninzuu = 0;
f.common_9_1_ninzuu = f.common_9_1_oaite.length;
[endscript]

	[eval exp="f.event_storage='common_9_1.ks'"]
	[eval exp="f.event_target='*replay_common_9_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[10] = 1"]
	@jump storage="event.ks" target=*start
[endif]
*common_9_1_hantei_owari

;◆badED判定 9月、誰のルートにも進行しない場合に(8月4週と同じ)badED(9月1週はお相手未定以外)
[if exp="((f.okeiko_month == 9 && f.okeiko_week == 1 && f.event_oaite_mitei != 1) || (f.okeiko_month == 9 && f.okeiko_week != 1)) && f.event_common[9]==0 && f.kuroda_au == 0 && f.sijyou_au == 0 && f.zaizen_au == 0 && f.katuraginomiya_au == 0 && f.hujieda_au == 0"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_8_4_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[9] = 1"]
	@jump storage="event.ks" target=*start
[endif]

;=============================================
;誰かとのお見合いが決定している　テストでみたいのでそのままスキップせず　一回代入したらスキップへ
[if exp="(f.kuroda_au == 1 || f.sijyou_au == 1 || f.zaizen_au == 1) && f.omiai_kettei != 1"]
[eval exp="f.omiai_kettei=1"]
[endif]

;◆各個別ルート(又はonly時)には対象キャラクターイベント判定のみ行う
[if exp="f.zaizen_au == 1"]
@jump target=*zaizen_event_hantei
[endif]
[if exp="f.sijyou_au == 1"]
@jump target=*sijyou_event_hantei
[endif]
[if exp="f.katuraginomiya_au == 1 || f.katuraginomiya_only == 1"]
@jump target=*katuraginomiya_event_hantei
[endif]
[if exp="f.hujieda_au == 1"]
@jump target=*hujieda_event_hantei
[endif]
;[eval exp="f.hantei_event_storage='event_hantei_week_hajime.ks四条イベント判定直前通過'"]
;[変数ログ表示]

;=============================================
;◆四条イベント判定
;=============================================
*sijyou_event_hantei
@jump storage="01_sijyou_event_hantei_week_hajime.ks" target=*start
*sijyou_event_hantei_owari
[if exp="f.sijyou_au == 1"]
@jump target=*event_hantei_owari
[endif]

;[eval exp="f.hantei_event_storage='event_hantei_week_hajime.ks財前イベント判定直前通過'"]
;[変数ログ表示]
;=============================================
;◆財前イベント判定
;=============================================
*zaizen_event_hantei
@jump storage="event_hantei_week_hajime_zaizen.ks" target=*start
*zaizen_event_hantei_owari
[if exp="f.zaizen_au == 1"]
@jump target=*event_hantei_owari
[endif]

;[eval exp="f.hantei_event_storage='event_hantei_week_hajime.ks葛城宮イベント判定直前通過'"]
;[変数ログ表示]
;=============================================
;◆葛城宮イベント判定
;=============================================
*katuraginomiya_event_hantei
;[eval exp="f.hantei_event_storage='event_hantei_week_hajime.ks葛城宮イベント判定開始'"]
;[変数ログ表示]
;◆藤枝4月の箏イベントを見た場合は葛城宮イベント判定をスキップして藤枝判定へ
[if exp="f.event_hujieda[1] == 1"]
@jump target=*hujieda_event_hantei
[endif]
;[eval exp="f.hantei_event_storage='event_hantei_week_hajime.ks葛城宮イベント判定event_hantei_week_hajime_katuraginomiya.ksへjump直前'"]
;[変数ログ表示]
@jump storage="event_hantei_week_hajime_katuraginomiya.ks" target=*start
*katuraginomiya_event_hantei_owari
[eval exp="f.hantei_event_storage='event_hantei_week_hajime.ks葛城宮イベント判定終わり通過'"]
[変数ログ表示]
[if exp="f.katuraginomiya_au == 1 || f.katuraginomiya_only == 1"]
@jump target=*event_hantei_owari
[endif]

[if exp="f.event_katuraginomiya[21] == 1 && f.event_katuraginomiya[22] == 1"]
;◆最後の手紙１を見たときはスキップして藤枝判定へ
@jump target=*hujieda_event_hantei
[endif]

;[eval exp="f.hantei_event_storage='event_hantei_week_hajime.ks藤枝イベント判定直前通過'"]
;[変数ログ表示]
;=============================================
;◆藤枝イベント判定
;=============================================
*hujieda_event_hantei
@jump storage="event_hantei_week_hajime_hujieda.ks" target=*start
*hujieda_event_hantei_owari
[if exp="f.hujieda_au == 1"]
@jump target=*event_hantei_owari
[endif]

;[eval exp="f.hantei_event_storage='event_hantei_week_hajime.ks黒田イベント判定直前通過'"]
;[変数ログ表示]
;=============================================
;◆黒田イベント判定
;=============================================
*kuroda_event_hantei
;◆黒田イベント判定【麦】6月4週になった時点で、黒田好感度一定値以上かつ華道熟練度5以上なら1度だけ発生
[if exp="(f.okeiko_month == 6 && f.okeiko_week == 4) && f.event_machi_kuroda[2] == 0 && f.para_kuroda_koukando > 3 && f.para_shujinkou_j_kadou >= 5"]
	@jump storage="sansaku_kuroda.ks" target=*sansaku_machi_kuroda_02
[endif]

;◆黒田イベント判定【友人からの忠告】8月4週になった時点で、黒田好感度一定値以上なら1度だけ発生
;[if exp="(f.okeiko_month == 8 && f.okeiko_week == 4) && f.event_machi_kuroda[3] == 1 && f.event_machi_kuroda[5] == 0 && f.para_kuroda_koukando > 20"]
;	@jump storage="sansaku_kuroda.ks" target=*sansaku_machi_kuroda_05
;[endif]

;◆黒田イベント判定【顔合せ】判定 黒田ルートかつ9月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 3) && f.event_kuroda[1] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_9_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_9_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[1]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：紅葉散策お誘い】黒田ルートかつ9月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 4) && f.event_kuroda[2] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_9_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_9_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[2]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【初デート】黒田ルートかつ10月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 10 && f.okeiko_week == 3) && f.event_kuroda[3] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_10_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_10_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[3]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：散策お誘い】黒田ルートかつ10月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 10 && f.okeiko_week == 4) && f.event_kuroda[4] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_10_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_10_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[4]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【友人に会う】黒田ルートかつ11月1週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 11 && f.okeiko_week == 1) && f.event_kuroda[5] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_11_1.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[5]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【デート】黒田ルートかつ11月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 11 && f.okeiko_week == 2) && f.event_kuroda[6] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_11_2.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[6]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【黒田多忙と聞く】黒田ルートかつ11月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 11 && f.okeiko_week == 3) && f.event_kuroda[7] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_11_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[7]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【黒田母倒れデートキャンセル】黒田ルートかつ11月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 11 && f.okeiko_week == 4) && f.event_kuroda[8] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_11_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[8]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【黒田実験失敗と聞く→手紙を書こうと決意】黒田ルートかつ12月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 12 && f.okeiko_week == 2) && f.event_kuroda[9] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_12_2.ks'"]
	[eval exp="f.event_target='*replay_kuroda_12_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[9]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【分岐：badED】黒田ルートかつ12月3週になった時点で淑女度一定値未満好感度一定値未満又は麦の穂無しでbadED
[if exp="(f.okeiko_month == 12 && f.okeiko_week == 3) && f.event_kuroda[10] == 0 && f.kuroda_au == 1 &&(f.para_shujinkou_shukujodo <= 40 ||f.para_kuroda_koukando <= 50 || f.event_machi_kuroda[2] == 0)"]
	[eval exp="f.event_storage='kuroda_12_3_badED.ks'"]
	[eval exp="f.event_target='*replay_kuroda_12_3_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[10]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【分岐：normal/goodED】黒田ルートかつ12月3週になった時点で好感度一定値以上かつ麦の穂所持で1度だけ発生
[if exp="(f.okeiko_month == 12 && f.okeiko_week == 3) && f.event_kuroda[11] == 0 && f.kuroda_au == 1 && f.para_kuroda_koukando > 50 && f.event_machi_kuroda[2] == 1"]
	[eval exp="f.event_storage='kuroda_12_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_12_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[11]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：年賀状】黒田ルートかつ1月1週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 1 && f.okeiko_week == 1) && f.event_kuroda[12] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_1_1.ks'"]
	[eval exp="f.event_target='*replay_kuroda_1_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[12]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：お礼とお誘い】黒田ルートかつ1月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 1 && f.okeiko_week == 4) && f.event_kuroda[13] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_1_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_1_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[13]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【小料理屋】黒田ルートかつ2月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 2 && f.okeiko_week == 2) && f.event_kuroda[14] == 0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_2_2.ks'"]
	[eval exp="f.event_target='*replay_kuroda_2_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[14]=1"]
	@jump storage="event.ks" target=*start
[endif]
*event_hantei_owari

;◆テスト画面からプレイの場合は助言イベントをカット→設定で選べるようにしました
[if exp="tf.advice_event_hyouji == 0"]
@jump target=*advice_event_owari
[endif]

;[eval exp="f.hantei_event_storage='event_hantei_week_hajime.ks共通(助言)イベント判定直前通過'"]
;[変数ログ表示]
;=============================================
;◆共通イベント判定：助言
;=============================================
[if exp="f.okeiko_month <= 3 &&f.okeiko_month >= 9"]
@jump target=*isono_advice_sansaku
[endif]
;◆周回時は共通イベントの磯野アドバイスをカット
;黒田チェック
[if exp="sf.ED_kuroda_bad == 1 || sf.ED_kuroda_normal == 1 || sf.ED_kuroda_good == 1"]
@jump target=*isono_advice_common_end
[endif]
;四条チェック
[if exp="sf.ED_sijyou_bad == 1 || sf.ED_sijyou_normal == 1 || sf.ED_sijyou_good == 1"]
@jump target=*isono_advice_common_end
[endif]
;財前チェック
[if exp="sf.ED_zaizen_bad1 == 1 || sf.ED_zaizen_bad2 == 1 || sf.ED_zaizen_normal == 1 || sf.ED_zaizen_good == 1"]
@jump target=*isono_advice_common_end
[endif]
;葛城宮チェック
[if exp="sf.ED_katuraginomiya_good == 1 || sf.ED_katuraginomiya_normal == 1 || sf.ED_katuraginomiya_bad == 1"]
@jump target=*isono_advice_common_end
[endif]
;藤枝チェック
[if exp="sf.ED_hujieda_good == 1 || sf.ED_hujieda_normal == 1 || sf.ED_hujieda_bad == 1"]
@jump target=*isono_advice_common_end
[endif]

;◆お稽古パート導入イベント判定 4月1週になった時点で1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==1) && f.event_common[0]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_1'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[0]=1"]
;↓その週のアドバイスイベント処理を(0=アドバイスイベント発生かつ未通過、1=通過済)「今週は何をしましょうか？」のセリフに影響
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆お稽古の助言イベント判定 4月2週になった時点でお稽古を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==2) && f.para_shujinkou_shukujodo == 1 && f.event_common[1]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_2'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[1]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆散策の助言イベント判定 4月3週になった時点で散策を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==3) && f.event_machi_common[1]==0 && f.event_common[2]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[2]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆返信の助言イベント判定 4月4週になった時点で返信を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==4) && f.fumi_henji==0 && f.event_common[3]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_4'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[3]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆返信の忠告イベント判定 5月1週になった時点で返信を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==5 && f.okeiko_week==1) && f.fumi_henji==0 && f.event_common[4]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[4]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆お稽古の助言イベント判定 5月2週になった時点でお稽古を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==5 && f.okeiko_week==2) && f.para_shujinkou_shukujodo == 1 && f.event_common[5]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_2'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[5]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆散策の助言イベント判定 5月3週になった時点で散策を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==5 && f.okeiko_week==3) && f.event_machi_common[1]==0 && f.event_common[6]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[6]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆返信の忠告イベント判定 5月4週になった時点で返信を一度もしていないと1度だけ発生
[if exp="(f.okeiko_month==5 && f.okeiko_week==4) && f.fumi_henji==0 && f.event_common[7]==0"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[7]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]
*isono_advice_common_end

;◆「磯野に相談」イベント判定 5月中、他のアドバイスイベントが発生しなければ1度だけ発生
;周回時にイベントを見るかどうか希望を選べるようにします(別の攻略対象の場合は見たい、などありそうです)
[if exp="f.okeiko_month==5 && f.event_common[12]==0"]
	[eval exp="f.event_storage='common_5_1.ks'"]
	[eval exp="f.event_target='*replay_common_5_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[12]=1"]
;	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]
;=============================================
;◆イベント判定：各個別ルート「散策」キーイベント発生時期にお知らせ, f.event_common[13]以降を使用
;=============================================
*isono_advice_sansaku
;◆散策の助言イベント判定 四条ルート：9月2～4週の期間中sansaku2未見なら1度だけ発生
[if exp="(f.okeiko_month == 9 && (f.okeiko_week == 2 || f.okeiko_week == 3 || f.okeiko_week == 4 )) && f.event_machi_sijyou[2] == 0 && f.sijyou_au == 1 && f.event_common[13] == 0"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[13]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]
;◆散策の助言イベント判定 四条ルート：9-3園遊会～9月末(銀座デート前まで)でsansaku3未見なら1度だけ発生
[if exp="f.sijyou_au == 1 && f.event_sijyou[5] == 1 && (f.okeiko_month == 9 && f.okeiko_week == 4 || f.okeiko_month == 10 && f.okeiko_week == 1) && f.event_machi_sijyou[3] == 0 && f.event_common[14] == 0"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[14]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]
;◆散策の助言イベント判定 四条ルート：香水イベント　３月華道パラメータ一定値以上、四条好感度一定値以上でsansaku7未見なら1度だけ発生
[if exp="f.okeiko_month == 3 && f.event_machi_sijyou[7] == 0 && f.para_shujinkou_j_kadou > 70 && f.para_sijyou_koukando > 80 && f.sijyou_au == 1 && f.event_common[15] == 0"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[15]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]
;◆散策の助言イベント判定 財前ルート：【バザー】財前ルートかつ2月1週から3月4週、礼法が70(暫定)以上でバザーイベント未見なら1度だけ発生
[if exp="(f.okeiko_month == 2 || f.okeiko_month == 3) && f.event_machi_zaizen[1] == 0 && f.para_shujinkou_j_reihou >= 70 && f.zaizen_au == 1 && f.event_common[16] == 0"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[16]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]
;◆散策の助言イベント判定 葛城宮ルート：【散策1】葛城宮ルート2月2週から3月3週期間中で散策1未見なら1度だけ発生
[if exp="((f.okeiko_month == 2 && f.okeiko_week != 1) || (f.okeiko_month == 3 && f.okeiko_week != 4)) && f.event_machi_katuraginomiya[1] == 0 && f.katuraginomiya_au == 1 && f.event_common[17] == 0"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[17]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]
;◆散策の助言イベント判定 葛城宮ルート：【散策2】葛城宮ルートで散策1を見ている状態で2月2週から3月4週期間中で散策2未見なら1度だけ発生
[if exp="((f.okeiko_month == 2 && f.okeiko_week != 1) || f.okeiko_month == 3) && f.event_machi_katuraginomiya[1] == 1 && f.event_machi_katuraginomiya[2] == 0 && f.katuraginomiya_au == 1 && f.event_common[18] == 0"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[18]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]
;◆散策の助言イベント判定 藤枝ルート：【藤枝晶子さん(藤枝お姉さん)と話す】藤枝ルートかつ2月3週から3月4週期間中で散策イベント未見なら1度だけ発生
[if exp="((f.okeiko_month==2 && (f.okeiko_week==3 || f.okeiko_week==4)) || f.okeiko_month==3) && f.event_machi_hujieda[1]==0 && f.hujieda_au==1 && f.event_common[19] == 0"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[19]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

*advice_event_owari
;[eval exp="f.hantei_event_storage='event_hantei_week_hajime.ks共通(助言)イベント判定終了通過'"]
;[変数ログ表示]

*common_event_hantei_owari
;[eval exp="f.hantei_event_storage='event_hantei_week_hajime.ks　*common_event_hantei_owari通過'"]
;[変数ログ表示]

@jump storage="okeiko.ks" target=*event_hantei_week_hajime_owari
