;=============================================
;◆四条イベント判定(週終わり：主にエンディングイベントなどの判定処理用です)
;=============================================
*start

*sijyou_event_hantei
;以下にイベント判定を追記してください。Wikiに説明を追記予定ですが、Googleスプレッドシート「四条イベントリスト」のうち週終わりに発生予定のイベント分を貼っていただければ大丈夫と思います。

;================================================
;◆四条イベント判定【デート】sijyou_9_4.ks
[if exp="(f.okeiko_month==9 && f.okeiko_week==4) && f.event_sijyou[6]==0 && f.sijyou_au==1"]
	[eval exp="f.event_storage=’sijyou_9_4.ks'"]
	[eval exp="f.event_target='*replay_sijyou_9_4.ks'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[6]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================

;↓他のイベント判定処理リストに戻ります
@jump storage="event_hantei_week_owari.ks" target=*sijyou_event_hantei_owari
