;=============================================
;◆財前イベント判定(週始め)
;=============================================
*start

*zaizen_event_hantei
;↓以下にイベント判定を追記
;◆財前イベント判定【顔合せ】判定 財前ルートかつ9月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month==9 && f.okeiko_week==3) && f.event_zaizen[1]==0 && f.zaizen_au==1"]
	[eval exp="f.event_storage='zaizen/zaizen_9_3.ks'"]
	[eval exp="f.event_target='replay_zaizenzaizen_9_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_zaizen[1]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆財前イベント判定【顔合せ】判定 財前ルートかつ10月1週になった時点で1度だけ発生
[if exp="(f.okeiko_month==10 && f.okeiko_week==1) && f.event_zaizen[2]==0 && f.zaizen_au==1"]
	[eval exp="f.event_storage='zaizen/zaizen_10_1.ks'"]
	[eval exp="f.event_target='replay_zaizen_10_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_zaizen[2]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆財前イベント判定【顔合せ】判定 財前ルートかつ10月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month==10 && f.okeiko_week==3) && f.event_zaizen[3]==0 && f.zaizen_au==1"]
	[eval exp="f.event_storage='zaizen/zaizen_10_3.ks'"]
	[eval exp="f.event_target='replay_zaizen_10_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_zaizen[3]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆財前イベント判定【顔合せ】判定 財前ルートかつ11月1週になった時点で1度だけ発生
[if exp="(f.okeiko_month==11 && f.okeiko_week==1) && f.event_zaizen[4]==0 && f.zaizen_au==1"]
	[eval exp="f.event_storage='zaizen/zaizen_11_1.ks'"]
	[eval exp="f.event_target='replay_zaizen_11_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_zaizen[4]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆財前イベント判定【顔合せ】判定 財前ルートかつ11月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month==11 && f.okeiko_week==3) && f.event_zaizen[5]==0 && f.zaizen_au==1"]
	[eval exp="f.event_storage='zaizen/zaizen_11_3.ks'"]
	[eval exp="f.event_target='replay_zaizen_11_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_zaizen[5]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆財前イベント判定【顔合せ】判定 財前ルートかつ11月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month==11 && f.okeiko_week==4) && f.event_zaizen[6]==0 && f.zaizen_au==1"]
	[eval exp="f.event_storage='zaizen/zaizen_11_4_1.ks'"]
	[eval exp="f.event_target='replay_zaizen_11_4_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_zaizen[6]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆財前イベント判定【顔合せ】判定 財前ルートかつ12月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month==12 && f.okeiko_week==2) && f.event_zaizen[7]==0 && f.zaizen_au==1"]
	[eval exp="f.event_storage='zaizen/zaizen_12_2.ks'"]
	[eval exp="f.event_target='replay_zaizen_12_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_zaizen[7]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆財前イベント判定【顔合せ】判定 財前ルートかつ12月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month==12 && f.okeiko_week==4) && f.event_zaizen[8]==0 && f.zaizen_au==1"]
	[eval exp="f.event_storage='zaizen/zaizen_12_4.ks'"]
	[eval exp="f.event_target='replay_zaizen_12_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_zaizen[8]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆財前イベント判定【顔合せ】判定 財前ルートかつ1月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month==1 && f.okeiko_week==3) && f.event_zaizen[9]==0 && f.zaizen_au==1"]
	[eval exp="f.event_storage='zaizen/zaizen_1_3_1.ks'"]
	[eval exp="f.event_target='replay_zaizen_1_3_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_zaizen[9]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆財前イベント判定【顔合せ】判定 財前ルートかつ2月1週になった時点で1度だけ発生
[if exp="(f.okeiko_month==2 && f.okeiko_week==1) && f.event_zaizen[10]==0 && f.zaizen_au==1"]
	[eval exp="f.event_storage='zaizen/zaizen_2_1.ks'"]
	[eval exp="f.event_target='replay_zaizen_2_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_zaizen[10]=1"]
	@jump storage="event.ks" target=*start
[endif]

;↓他のイベント判定処理リストに戻ります
@jump storage="event_hantei_week_hajime.ks" target=*zaizen_event_hantei_owari
