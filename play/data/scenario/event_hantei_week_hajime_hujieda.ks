;=============================================
;◆藤枝イベント判定(週始め)
;=============================================
*start

*hujieda_event_hantei
;↓以下にイベント判定を追記
;◆藤枝イベント判定【手紙が来る】判定 4月3週までにお箏の練習を2回以上で1度だけ発生。好感度増加値は暫定
[if exp="(f.okeiko_month==4 && f.okeiko_week==4) && f.event_hujieda[1]==0 && f.para_shujinkou_koto_kaisuu>=2"]
	[eval exp="f.event_storage='hujieda/hujieda_4_4.ks'"]
	[eval exp="f.event_target='replay_hujieda_4_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[1]=1"]
	[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando+5"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【手紙が来る2】判定 5月3週までにお箏の練習を2回以上、手紙1通目を見ている場合に1度だけ発生
[if exp="(f.okeiko_month==5 && f.okeiko_week==4) && f.event_hujieda[1]==1 && f.event_hujieda[2]==0 && f.para_shujinkou_koto_kaisuu>=2"]
	[eval exp="f.event_storage='hujieda/hujieda_5_4.ks'"]
	[eval exp="f.event_target='replay_hujieda_5_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[2]=1"]
	[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando+5"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【手紙が来る3】判定 6月3週までにお箏の練習を2回以上、手紙2通目を見ている場合に1度だけ発生
[if exp="(f.okeiko_month==6 && f.okeiko_week==4) && f.event_hujieda[2]==1 && f.event_hujieda[3]==0 && f.para_shujinkou_koto_kaisuu>=2"]
	[eval exp="f.event_storage='hujieda/hujieda_6_4.ks'"]
	[eval exp="f.event_target='replay_hujieda_6_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[3]=1"]
	[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando+5"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【手紙が来る4】判定 7月3週までにお箏の練習を2回以上、手紙3通目を見ている場合に1度だけ発生
[if exp="(f.okeiko_month==7 && f.okeiko_week==4) && f.event_hujieda[3]==1 && f.event_hujieda[4]==0 && f.para_shujinkou_koto_kaisuu>=2"]
	[eval exp="f.event_storage='hujieda/hujieda_7_4.ks'"]
	[eval exp="f.event_target='replay_hujieda_7_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[4]=1"]
	[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando+5"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【手紙のお返事】判定 8月3週までにお箏の練習を2回以上、手紙4通目を見ている場合に1度だけ発生
[if exp="(f.okeiko_month==8 && f.okeiko_week==4) && f.event_hujieda[4]==1 && f.event_hujieda[5]==0 && f.para_shujinkou_koto_kaisuu>=2"]
	[eval exp="f.event_storage='hujieda/hujieda_8_4.ks'"]
	[eval exp="f.event_target='replay_hujieda_8_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[5]=1"]
	[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando+5"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【手紙のお返事】判定 8月3週までにお箏の練習を2回以上、手紙4通目を見ている場合に1度だけ発生
[if exp="(f.okeiko_month==8 && f.okeiko_week==4) && f.event_hujieda[4]==1 && f.event_hujieda[5]==0 && f.para_shujinkou_koto_kaisuu>=2"]
	[eval exp="f.event_storage='hujieda/hujieda_8_4.ks'"]
	[eval exp="f.event_target='replay_hujieda_8_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[5]=1"]
	[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando+5"]
	@jump storage="event.ks" target=*start
[endif]

;↓他のイベント判定処理リストに戻ります
@jump storage="event_hantei_week_hajime.ks" target=*hujieda_event_hantei_owari
