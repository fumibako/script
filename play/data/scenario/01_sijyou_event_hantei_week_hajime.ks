﻿;=============================================
;◆四条イベント判定(週始め) 
;=============================================
*start

*sijyou_event_hantei
;↓以下にイベント判定を追記してください。Wikiに説明を追記予定ですが、Googleスプレッドシート「四条イベントリスト」のうち週始めに発生予定のイベント分を貼っていただければ大丈夫と思います(週終わりに発生の必要があるエンディングなど特殊イベント以外は基本的にこちらで良いと思います)
;6_1夢イベントと7_1流れ星イベントはevent_hantei_week_hajime.ksに移動しました。判定の作成とイベント組み込み作業をありがとうございました。助かりました(◆jsYiJcqRkk
;================================================
;◆顔合せのお相手選びイベント判定：◆四条 sijyou_9_1.ks好感度一定値以上で1度だけ発生 　選択肢になるのでいらない　common_9_1.ksでとぶ
;[if exp="(f.okeiko_month == 9 && f.okeiko_week == 1) && f.event_common[3] == 0 && (f.para_sijyou_koukando > 30 || f.para_zaizen_koukando > 30 || f.para_kuroda_koukando > 30 || f.para_katuraginomiya_koukando > 30|| f.para_hujieda_koukando > 30)"]
;[eval exp="f.event_storage='sijyou/sijyou_9_1.ks'"]
;[eval exp="f.event_target='*replay_ sijyou_9_1'"]
;[eval exp="f.event_type='talk'"]
;[eval exp="f.event_sijyou[3]=1"]
;@jump storage="event.ks" target=*start
;[endif]
;================================================

;◆四条イベント判定【デート】sijyou_9_4.ks　は別ファイル
;================================================
;◆四条イベント判定【障害のはじまり/手紙が帰ってこなくなる】sijyou_10_1.ks
[if exp="(f.okeiko_month == 10 && f.okeiko_week == 1) && f.event_sijyou[7] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_storage='sijyou/sijyou_10_1.ks'"]
	[eval exp="f.event_target='*replay_sijyou_10_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[7]=1"]
		@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【BAD】sijyou_10_3_badED.ks
[if exp="(f.okeiko_month == 10 && f.okeiko_week == 3) && f.para_sijyou_koukando < 40 && f.event_sijyou[9]==0 && f.sijyou_au==1"]
[eval exp="f.event_storage='sijyou/sijyou_10_3_badED.ks'"]
	[eval exp="f.event_target='*replay_sijyou_10_3_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[9]=1"]
;	[iscript]
;	alert(f.event_storage);
;	[endscript]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【デート/事件導入】sijyou_10_3.ks
[if exp="(f.okeiko_month == 10 && f.okeiko_week == 3) && f.event_sijyou[8] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_storage='sijyou/sijyou_10_3.ks'"]
	[eval exp="f.event_target='*replay_sijyou_10_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[8]=1"]
		@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【事件】sijyou_11_1.ks
[if exp="(f.okeiko_month == 11 && f.okeiko_week == 1) && f.event_sijyou[10] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_storage='sijyou/sijyou_11_1.ks'"]
	[eval exp="f.event_target='*replay_sijyou_11_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[10]=1"]
	;事件前後フラグの変更
[eval exp=f.sijyou_event6=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント１２月はない
;================================================
;◆四条イベント判定【お正月の手紙話】sijyou_1_1.ks
[if exp="(f.okeiko_month == 1 && f.okeiko_week == 1) && f.event_sijyou[11] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_storage='sijyou/sijyou_1_1.ks'"]
	[eval exp="f.event_target='*replay_sijyou_1_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[11]=1"]
	@jump storage="event.ks" target=*start
[endif]

;================================================
;◆四条イベント判定【華織兄・華道パラが高いまたはf.sijyou_sobo == true】 sijyou_1_4.ks
[if exp="(f.okeiko_month == 1 && f.okeiko_week == 4) &&( f.para_shujinkou_j_kadou > 80 || f.sijyou_sobo == true )&& f.event_sijyou[13] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_storage='sijyou/sijyou_1_4.ks'"]
	[eval exp="f.event_target='*replay_sijyou_1_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[13]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【バザー】sijyou/sijyou_2_2_bazar_1.ks
;goodエンドの条件以下であるときに発生（仮条件）　ある程度は礼法は必要 華衣について聞くを選択しているのも必要。(f.sijyou_sobo != true)
[if exp="(f.okeiko_month == 2 && f.okeiko_week == 3) && f.sijyou_au == 1 && f.event_sijyou[17] == 0 && (f.event_sijyou_4 == 1 || f.event_sijyou_kai_jijyou == 1) && f.sijyou_sobo != true && f.para_shujinkou_j_reihou >= 10"]
	[eval exp="f.event_storage='sijyou/sijyou_2_2_bazar_1.ks'"]
	[eval exp="f.event_target='*replay_sijyou_2_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[17]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【華道展・f.sijyou_sobo == true】 sijyou_3_1.ks
[if exp="(f.okeiko_month == 3 && f.okeiko_week == 1) && f.sijyou_sobo == true && f.event_sijyou[15] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_storage='sijyou/sijyou_3_1.ks'"]
	[eval exp="f.event_target='*replay_sijyou_3_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[15]=1"]
;グッドエピローグ判定フラグ
	@jump storage="event.ks" target=*start
[endif]
;================================================
;散策は別ファイル

;↓他のイベント判定処理リストに戻ります
@jump storage="event_hantei_week_hajime.ks" target=*sijyou_event_hantei_owari
