;=============================================
;◆四条イベント判定(週終わり：主にエンディングイベントなどの判定処理用です)
;=============================================
*start

*sijyou_event_hantei
;以下にイベント判定を追記してください。Wikiに説明を追記予定ですが、Googleスプレッドシート「四条イベントリスト」のうち週終わりに発生予定のイベント分を貼っていただければ大丈夫と思います。
;================================================
;◆四条イベント判定【顔合せ】判定 四条ルートかつ9月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 2) && f.event_sijyou[4] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_storage='sijyou/sijyou_9_2.ks'"]
	[eval exp="f.event_target='*replay_sijyou_9_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[4]=1"]
 	[eval exp="f.sijyou_omiai=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【デート】sijyou_9_4.ks
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 4) && f.event_sijyou[6] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_storage='sijyou/sijyou_9_4.ks'"]
	[eval exp="f.event_target='*replay_sijyou_9_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[6]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【園遊会】sijyou_9_3.ks
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 3) && f.event_sijyou[5] == 0 && f.sijyou_au==1"]
	[eval exp="f.event_storage='sijyou/sijyou_9_3.ks'"]
	[eval exp="f.event_target='*replay_sijyou_9_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[5]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【お正月後に再会と告白】sijyou_1_3_normalED.ks(1_3)1_3は重なるので1_2
[if exp="(f.okeiko_month == 1 && f.okeiko_week == 2) && f.event_sijyou[18] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_storage='sijyou/sijyou_1_3_normalED.ks'"]
	[eval exp="f.event_target='*replay_sijyou_1_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[18]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【華衣のその後・1/3】sijyou_omake_kai.ks
[if exp="(f.okeiko_month == 1 && f.okeiko_week == 3) && f.event_sijyou[12] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_storage='sijyou/sijyou_omake_kai.ks'"]
	[eval exp="f.event_target='*replay_sijyou_omake_kai'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[12]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【華道教室・華道パラが高い】  sijyou_2_1.ks
[if exp="(f.okeiko_month == 2 && f.okeiko_week == 1) && f.para_shujinkou_j_kadou > 70 && f.event_sijyou[14] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_storage='sijyou/sijyou_2_1.ks'"]
	[eval exp="f.event_target='*replay_sijyou_2_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[14]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;ennding パラメータは適当です
;================================================
;◆四条ED判定 四条ルートかつ3月4週が終わる時点で淑女度一定値未満又は好感度一定値未満で1度だけ発生　イベント上でnormal分岐することに
[if exp="(f.okeiko_month == 3 && f.okeiko_week == 4) && f.event_sijyou[16] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_storage='sijyou/sijyou_3_4_goodED.ks'"]
	[eval exp="f.event_target='*replay_sijyou_3_4_normalED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[16]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================


;↓他のイベント判定処理リストに戻ります
@jump storage="event_hantei_week_owari.ks" target=*sijyou_event_hantei_owari
