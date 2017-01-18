;=============================================
;◆四条イベント判定(週始め) 
;=============================================
*start

*sijyou_event_hantei
;↓以下にイベント判定を追記してください。Wikiに説明を追記予定ですが、Googleスプレッドシート「四条イベントリスト」のうち週始めに発生予定のイベント分を貼っていただければ大丈夫と思います(週終わりに発生の必要があるエンディングなど特殊イベント以外は基本的にこちらで良いと思います)
;================================================
;◆四条 sijyou_6_1.ks好感度一定値以上で1度だけ発生 日付は不明(仮)　！！共通イベントですがどうしましょう ここは葛城宮好感度→淑女度１８以下　と　藤枝好感度→箏、一定値　5/4で華道ばかり１５になった
[if exp="(f.okeiko_month == 5 && f.okeiko_week == 4) && f.event_sijyou[1] == 0"]
	;配列に好感度を入れます。
	[eval exp ="tf.hikaku_koukando=[f.para_sijyou_koukando , f.para_kuroda_koukando, f.para_zaizen_koukando, f.para_katuraginomiya_koukando , f.para_hujieda_koukando ]"]
	[iscript]
	tf.a=Math.max.apply(null, tf.hikaku_koukando);
	//alert(tf.a); //一番高い数値がでます。
[endscript]
	[if exp="tf.a==f.para_sijyou_koukando && f.sijyou_au==0"]
	;四条の好感度と一番高い数値が同じであるとき	
	[eval exp="f.event_storage='sijyou/sijyou_6_1.ks'"]
	[eval exp="f.event_target='*replay_sijyou_6_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[1]=1"]
	@jump storage="event.ks" target=*start
	[elsif exp="tf.a==f.para_zaizen_koukando && f.zaizen_au==0"]
	[eval exp="f.event_storage='zaizen/zaizen_6_1.ks'"]
	[eval exp="f.event_target='*replay_zaizen_6_1'"]
	[eval exp="f.event_type='talk'"]
	;共通イベント。四条の変数のままでok	
	[eval exp="f.event_sijyou[1]=1"]
	[elsif exp="tf.a==f.para_hujieda_koukando && f.hujieda_au==0"]
	[eval exp="f.event_storage='hujieda/hujieda_6_1.ks'"]
	[eval exp="f.event_target='*replay_hujieda_6_1'"]
	[eval exp="f.event_type='talk'"]
	;共通イベント。四条の変数のままでok	
	[eval exp="f.event_sijyou[1]=1"]
	[else]
	;ない場合はそのままスルー	
	@jump storage="event.ks" target=*start
	[endif]
;================================================
;◆ 七月一週に休憩を押した場合 ！！共通イベントですがどうしましょう
[if exp="(f.okeiko_month==7 && f.okeiko_week==1) && f.event_sijyou[2]==0 && f.sijyou_au==0"]
	[eval exp="f.event_storage='sijyou/sijyou_7_1.ks'"]
	[eval exp="f.event_target='*replay_sijyou_7_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[2]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆顔合せのお相手選びイベント判定：◆四条 sijyou_9_1.ks好感度一定値以上で1度だけ発生 　選択肢になるのでいらない　common_9_1.ksでとぶ
;[if exp="(f.okeiko_month == 9 && f.okeiko_week == 1) && f.event_common[3]==0 && (f.para_sijyou_koukando > 30 || f.para_zaizen_koukando > 30 || f.para_kuroda_koukando > 30 || f.para_katuraginomiya_koukando > 30|| f.para_hujieda_koukando > 30)"]
;[eval exp="f.event_storage='sijyou/sijyou_9_1.ks'"]
;[eval exp="f.event_target='*replay_ sijyou_9_1'"]
;[eval exp="f.event_type='talk'"]
;[eval exp="f.event_sijyou[3]=1"]
;@jump storage="event.ks" target=*start
;[endif]
;================================================
;◆四条イベント判定【顔合せ】判定 四条ルートかつ9月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 2) && f.event_sijyou[4]==0 && f.sijyou_au==1"]
	[eval exp="f.event_storage='sijyou/sijyou_9_2.ks'"]
	[eval exp="f.event_target='*replay_sijyou_9_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[4]=1"]
 	[eval exp="f.sijyou_omiai=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【園遊会】sijyou_9_3.ks
[if exp="(f.okeiko_month==9 && f.okeiko_week==3) && f.event_sijyou[5]==0 && f.sijyou_au==1"]
	[eval exp="f.event_storage='sijyou/sijyou_9_3.ks'"]
	[eval exp="f.event_target='*replay_sijyou_9_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[5]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【デート】sijyou_9_4.ks　は別ファイル
;================================================
;◆四条イベント判定【障害のはじまり/手紙が帰ってこなくなる】sijyou_10_1.ks
[if exp="(f.okeiko_month==10 && f.okeiko_week==1) && f.event_sijyou[7]==0 && f.sijyou_au==1"]
	[eval exp="f.event_storage='sijyou/sijyou_10_1.ks'"]
	[eval exp="f.event_target='*replay_sijyou_10_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[7]=1"]
		@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【BAD】sijyou_10_3_badED.ks
[if exp="(f.okeiko_month==10 && f.okeiko_week==3) && f.para_sijyou_koukando < 40 && f.event_sijyou[9]==0 && f.sijyou_au==1"]
[eval exp="f.event_storage='sijyou/sijyou_10_3_badED.ks'"]
	[eval exp="f.event_target='*replay_sijyou_10_3_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[9]=1"]
	[iscript]
	alert(f.event_storage);
	[endscript]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【デート/事件導入】sijyou_10_3.ks
[if exp="(f.okeiko_month==10 && f.okeiko_week==3) && f.event_sijyou[8]==0 && f.sijyou_au==1"]
	[eval exp="f.event_storage='sijyou/sijyou_10_3.ks'"]
	[eval exp="f.event_target='*replay_sijyou_10_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[8]=1"]
		@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【事件】sijyou_11_1.ks
[if exp="(f.okeiko_month==11 && f.okeiko_week==1) && f.event_sijyou[10]==0 && f.sijyou_au==1"]
	[eval exp="f.event_storage='sijyou/sijyou_11_1.ks'"]
	[eval exp="f.event_target='*replay_sijyou_11_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[10]=1"]
	;事件前後フラグの変更
[eval exp=f.sijyou_event6==1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント１２月はない
;================================================
;◆四条イベント判定【お正月の手紙話】sijyou_1_1.ks
[if exp="(f.okeiko_month==1 && f.okeiko_week==1) && f.event_sijyou[11]==0 && f.sijyou_au==1"]
	[eval exp="f.event_storage='sijyou/sijyou_1_1.ks'"]
	[eval exp="f.event_target='*replay_sijyou_1_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[11]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【お正月の手紙話】sijyou_1_3_normalED.ks(1_3)1_3は重なるので1_2
[if exp="(f.okeiko_month==1 && f.okeiko_week==2) && f.event_sijyou[18]==0 && f.sijyou_au==1"]
	[eval exp="f.event_storage='sijyou/sijyou_1_3_normalED.ks'"]
	[eval exp="f.event_target='*replay_sijyou_1_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[18]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【華衣のその後・１＿3、散策４をみたら？】sijyou_omake_kai.ks
[if exp="(f.okeiko_month==1 && f.okeiko_week==3) && f.event_sijyou[12]==0 && f.sijyou_au==1"]
	[eval exp="f.event_storage='sijyou/sijyou_omake_kai.ks'"]
	[eval exp="f.event_target='*replay_sijyou_omake_kai'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[12]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【華織兄・華道パラが高いまたはf.sijyou_sobo==true】 sijyou_1_4.ks
[if exp="(f.okeiko_month==1 && f.okeiko_week==4) &&( f.para_shujinkou_j_kadou >80 || f.sijyou_sobo==true )&& f.event_sijyou[13]==0 && f.sijyou_au==1"]
	[eval exp="f.event_storage='sijyou/sijyou_1_4.ks'"]
	[eval exp="f.event_target='*replay_sijyou_1_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[13]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【華道教室・華道パラが高い】  sijyou_2_1.ks
[if exp="(f.okeiko_month==2 && f.okeiko_week==1) && f.para_shujinkou_j_kadou >100 && f.event_sijyou[14]==0 && f.sijyou_au==1"]
	[eval exp="f.event_storage='sijyou/sijyou_2_1.ks'"]
	[eval exp="f.event_target='*replay_sijyou_2_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_sijyou[14]=1"]
	@jump storage="event.ks" target=*start
[endif]
;================================================
;◆四条イベント判定【華道展・f.sijyou_sobo==true】 sijyou_3_1.ks
[if exp="(f.okeiko_month==3 && f.okeiko_week==1) && f.sijyou_sobo==true && f.event_sijyou[15]==0 && f.sijyou_au==1"]
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
