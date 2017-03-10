﻿﻿;=============================================
;お稽古パート：イベント判定(週終わり：主にエンディングイベントなどの判定処理用です)
;=============================================
*start
;=============================================
;◆共通イベント判定
;=============================================
*event_hantei_week_owari

;◆イベント判定(週終わり：12月3週のbadEDは週始め開始のため、他のイベントと同じ並びで判定）
;◆判定 9月1週始めにお相手選びを保留すると、終わった時点で再度お相手選び
[if exp="((f.okeiko_month == 9 && f.okeiko_week == 1) && f.event_common[11] == 0 && f.event_oaite_mitei == 1)"]
	[eval exp="f.event_storage='common_9_1.ks'"]
	[eval exp="f.event_target='*common_9_1_futatabi_oaiteerabi'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_jiki='weekend'"]
	[eval exp="f.event_common[11]=1"]
	@jump storage="event.ks" target=*start
[endif]
*common_9_1_hantei_owari

;◆badED判定 5月4週終わった時点で返信を一度もしていない場合はbadED(淑女度18以上の場合はイベント中に回避。また、テスト画面経由時は藤枝イベント2が発生していれば回避)
[if exp="tf.test_gamen==true && ((f.okeiko_month == 5 && f.okeiko_week == 4) && f.fumi_henji==0 && f.event_common[8] == 0 && f.event_hujieda[2] != 1)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_4_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[8]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆badED判定 5月4週終わった時点で返信を一度もしていない場合はbadED(淑女度18以上の場合はイベント中に回避。テスト画面経由時以外は藤枝イベント2が発生していても回避不能)
[if exp="(tf.test_gamen != true && (f.okeiko_month == 5 && f.okeiko_week == 4) && f.fumi_henji == 0 && f.event_common[8] == 0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_4_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[8]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆badED判定 8月4週終わった時点で黒田、四条の好感度が30未満、財前好感度30未満又は淑女度20未満、葛城宮ルート進行条件を満たさないとbadED
[if exp="((f.okeiko_month == 8 && f.okeiko_week == 4) && f.event_common[9] == 0 && f.para_kuroda_koukando < 30 && (f.para_zaizen_koukando < 30 || f.para_shujinkou_shukujodo < 20) && f.para_sijyou_koukando < 30 && (f.para_katuraginomiya_koukando < 20 || f.para_shujinkou_shukujodo < 30 || f.event_katuraginomiya[3] != 1 ) && f.katuraginomiya_only != 1)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_8_4_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[9]=1"]
	@jump storage="event.ks" target=*start
[endif]

;葛城宮とだけ進行している場合は葛城宮ルート進行条件を満たさないとbadED
[if exp="(f.okeiko_month == 8 && f.okeiko_week == 4) && f.event_katuraginomiya[20] == 0 && f.katuraginomiya_only == 1 && (f.para_katuraginomiya_koukando < 20 || f.para_shujinkou_shukujodo < 30 || f.event_katuraginomiya[3] != 1)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_katuraginomiya_only_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[20] = 1"]
	@jump storage="event.ks" target=*start
[endif]

;=============================================
;◆四条イベント判定
;=============================================
*sijyou_event_hantei
@jump storage="01_sijyou_event_hantei_week_owari.ks" target=*start
*sijyou_event_hantei_owari

;=============================================
;◆財前イベント判定
;=============================================
;◆財前normalED判定 財前ルートかつ3月4週が終わる時点で発生
[if exp="(f.okeiko_month == 3 && f.okeiko_week == 4)  && f.zaizen_au == 1"]
	[eval exp="f.event_storage='zaizen/zaizen_3_4_normal.ks'"]
	[eval exp="f.event_target='*replay_zaizen_3_4_normal'"]
	[eval exp="f.event_type='talk'"]
	@jump storage="event.ks" target=*start
[endif]

;=============================================
;◆葛城宮イベント判定
;=============================================
;11◆葛城宮イベント判定 katuraginomiya_11_4.ks
;別ファイルへ　週終わりファイルへ
[if exp="(f.okeiko_month == 11 && f.okeiko_week == 4) &&  f.katuraginomiya_au == 1 && f.event_katuraginomiya[11] == 0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_11_4.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_11_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[11]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆葛城宮normalED判定 葛城宮ルートかつ3月4週が終わる時点で発生
[if exp="(f.okeiko_month == 3 && f.okeiko_week == 4)  && f.katuraginomiya_au == 1"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_3_4_nomalED.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_3_4_nomalED'"]
	[eval exp="f.event_type='talk'"]
	@jump storage="event.ks" target=*start
[endif]

;=============================================
;◆藤枝イベント判定
;=============================================
;◆藤枝normalED判定 藤枝ルートかつ3月4週が終わる時点で発生
[if exp="(f.okeiko_month == 3 && f.okeiko_week == 4)  && f.hujieda_au == 1"]
	[eval exp="f.event_storage='hujieda/hujieda_3_4_normalED.ks'"]
	[eval exp="f.event_target='*start'"]
	[eval exp="f.event_type='talk'"]
	@jump storage="event.ks" target=*start
[endif]

;=============================================
;◆黒田イベント判定
;=============================================
;◆黒田goodED判定 黒田ルートかつ3月4週が終わる時点で淑女度一定値以上、好感度一定値以上で1度だけ発生
[if exp="(f.okeiko_month == 3 && f.okeiko_week == 4) && f.event_kuroda[16] == 0 && f.kuroda_au == 1 && (f.para_kuroda_koukando >= 80 && f.para_shujinkou_shukujodo >= 80 && f.para_shujinkou_j_gogaku >= 80)"]
	[eval exp="f.event_storage='kuroda_3_4_goodED.ks'"]
	[eval exp="f.event_target='*replay_kuroda_3_4_goodED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[16]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田normalED判定 黒田ルートかつ3月4週が終わる時点でgood条件を満たしていなければ、1度だけ発生
[if exp="(f.okeiko_month == 3 && f.okeiko_week == 4) && f.event_kuroda[15]==0 && f.kuroda_au == 1"]
	[eval exp="f.event_storage='kuroda_3_4_normalED.ks'"]
	[eval exp="f.event_target='*replay_kuroda_3_4_normalED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[15]=1"]
	@jump storage="event.ks" target=*start
[endif]

@jump storage="okeiko.ks" target=*event_hantei_week_owari_owari
