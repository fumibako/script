;=============================================
;◆四条イベント判定(週終わり：主にエンディングイベントなどの判定処理用です)
;=============================================
*start

*sijyou_event_hantei
;以下にイベント判定を追記してください。Wikiに説明を追記予定ですが、Googleスプレッドシート「四条イベントリスト」のうち週終わりに発生予定のイベント分を貼っていただければ大丈夫と思います。

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
;ennding パラメータは適当です
;================================================
;◆四条normalED判定 四条ルートかつ3月4週が終わる時点で淑女度一定値未満又は好感度一定値未満で1度だけ発生　イベント上で分岐することに
[if exp="(f.okeiko_month == 3 && f.okeiko_week == 4) && f.event_sijyou[16] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_storage='sijyou/sijyou_3_4_goodED.ks'"]
	[eval exp="f.event_target='*replay_sijyou_3_4_normalED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[16]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条goodED判定 四条ルートかつ3月4週が終わる時点で淑女度一定値以上、好感度一定値以上で1度だけ発生
;[if exp="(f.okeiko_month==3 && f.okeiko_week==4) && f.event_sijyou[17]==0 && f.sijyou_au==1 && (f.para_sijyou_koukando > 80 && f.para_shujinkou_shukujodo > 80)"]
;[eval exp="f.event_storage='sijyou/sijyou_3_4_epilogue_goodED.ks'"]
;[eval exp="f.event_target='*replay_sijyou_3_4_goodED'"]
;[eval exp="f.event_type='talk'"]
;[eval exp="f.event_sijyou[17]=1"]
;@jump storage="event.ks" target=*start
;[endif]


;↓他のイベント判定処理リストに戻ります
@jump storage="event_hantei_week_owari.ks" target=*sijyou_event_hantei_owari
