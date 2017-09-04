;=============================================
;◆藤枝イベント判定(週始め)
;=============================================
*start

*hujieda_event_hantei
;↓8月までのイベントを見た際の好感度増加値です(暫定)
[eval exp="tf.koukando_eventup_hujieda=0"]
;↓以下にイベント判定を追記
;◆藤枝イベント判定【手紙が来る】条件 お箏の練習を2回以上で1度だけ発生
;9月1週個別ルート分岐が選択肢による流れなので、事前の好感度増加は無くても大丈夫かもしれません→無しにしました(1/26更新)
;しかし他の攻略対象に比べ手紙による好感度up期間が短いため、その分の加算は必要かもしれないと考えて8月まではイベントによる好感度加算を入れています
[if exp="f.okeiko_month == 4 && f.event_hujieda[1] == 0 && f.para_shujinkou_koto_kaisuu >= 2"]
	[eval exp="f.event_storage='hujieda/hujieda_4_4.ks'"]
	[eval exp="f.event_target='replay_hujieda_4_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[1]=1"]
	[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando+tf.koukando_eventup_hujieda"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【手紙が来る2】条件 お箏の練習を2回以上、手紙1通目を見ている場合に1度だけ発生
[if exp="f.okeiko_month == 5 && f.event_hujieda[1] == 1 && f.event_hujieda[2] == 0 && f.para_shujinkou_koto_kaisuu >= 2"]
	[eval exp="f.event_storage='hujieda/hujieda_5_4.ks'"]
	[eval exp="f.event_target='replay_hujieda_5_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[2]=1"]
	[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando+tf.koukando_eventup_hujieda"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【手紙が来る3】条件 6月にお箏の練習を2回以上、手紙2通目を見ている場合に1度だけ発生
[if exp="f.okeiko_month == 6 && f.event_hujieda[2] == 1 && f.event_hujieda[3] == 0 && f.para_shujinkou_koto_kaisuu >= 2"]
	[eval exp="f.event_storage='hujieda/hujieda_6_4.ks'"]
	[eval exp="f.event_target='replay_hujieda_6_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[3]=1"]
	[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando+tf.koukando_eventup_hujieda"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【手紙が来る4】条件 7月にお箏の練習を2回以上、手紙3通目を見ている場合に1度だけ発生
[if exp="f.okeiko_month == 7 && f.event_hujieda[3] == 1 && f.event_hujieda[4] == 0 && f.para_shujinkou_koto_kaisuu >= 2"]
	[eval exp="f.event_storage='hujieda/hujieda_7_4.ks'"]
	[eval exp="f.event_target='replay_hujieda_7_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[4]=1"]
	[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando+tf.koukando_eventup_hujieda"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【手紙のお返事】条件 8月にお箏の練習を2回以上、手紙4通目を見ている場合に1度だけ発生
[if exp="f.okeiko_month == 8 && f.event_hujieda[4] == 1 && f.event_hujieda[5] == 0 && f.para_shujinkou_koto_kaisuu >= 2"]
	[eval exp="f.event_storage='hujieda/hujieda_8_4.ks'"]
	[eval exp="f.event_target='replay_hujieda_8_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[5]=1"]
	[eval exp="f.para_hujieda_koukando=f.para_hujieda_koukando+tf.koukando_eventup_hujieda"]
	@jump storage="event.ks" target=*start
[endif]
;====================================================================================
;◆藤枝 【最後の手紙】 6月(f.event_hujieda[3])をみたが7月(f.event_hujieda[4])をみていない→8月1週に進行不可時の手紙到着
[if exp="(f.okeiko_month == 8 && f.okeiko_week == 1) && f.event_hujieda[3] == 1 && f.event_hujieda[4] == 0 && f.event_hujieda[17] == 0"]
	[call storage="hantei_fumi_toutyaku.ks" target=*hujieda_toutyaku_hantei_shori_common]
	[eval exp="f.event_hujieda[17]=1"]
	;[eval exp="f.hato = 1"]
	;@jump storage="event.ks" target=*start
	@jump storage="fumi_toutyaku_shori_list.ks" target=*hujieda_fumi_last
[endif]
;=====================================================================================
;◆藤枝 【最後の手紙】7月(f.event_hujieda[4])をみたが8月(f.event_hujieda[5] == 0)をみていない→8月4週に進行不可時の手紙到着
[if exp="(f.okeiko_month == 8 && f.okeiko_week == 4) && f.event_hujieda[4] == 1 && f.event_hujieda[5] == 0 && f.event_hujieda[17] == 0 "]
	[call storage="hantei_fumi_toutyaku.ks" target=*hujieda_toutyaku_hantei_shori_common]
	[eval exp="f.event_hujieda[17]=1"]
	;[eval exp="f.hato = 1"]
	;@jump storage="event.ks" target=*start
	@jump storage="fumi_toutyaku_shori_list.ks" target=*hujieda_fumi_last
[endif]
;=====================================================================================
;◆藤枝個別ルート分岐 f.event_hujieda[6]はcommon_9_1.ksから選択肢分岐で実装しています
;◆藤枝イベント判定【再び手紙が届く】条件 藤枝ルートかつ9月2週に1度だけ発生(物語の流れ上、必ず通過することが必要なイベントであるため原案の"お箏の練習を1回以上した場合に"という条件は除きました)
;このイベント以降は個別ルート分岐済かつ(禁止されるまでは)手紙による好感度upが可能となるため、好感度加算は中止しています
[if exp="(f.okeiko_month==9 && f.okeiko_week==2) && f.event_hujieda[7]==0 && f.hujieda_au==1"]
	[eval exp="f.event_storage='hujieda/hujieda_9_2.ks'"]
	[eval exp="f.event_target='replay_hujieda_9_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[7]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【散策でミルクホールの外まで行く】条件 藤枝ルートかつ9月4週に1度だけ発生(シナリオファイルに「散策イベント」と記載がありましたが、物語の流れ上必ず必要なイベントであるため「休憩」で発生する通常イベントとして組み込みました)
[if exp="(f.okeiko_month==9 && f.okeiko_week==4) && f.event_hujieda[8]==0 && f.hujieda_au==1"]
	[eval exp="f.event_storage='hujieda/hujieda_9_4.ks'"]
	[eval exp="f.event_target='replay_hujieda_9_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[8]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【兄にミルクホールへ連れて行ってもらうように頼む】条件 藤枝ルートかつ10月1週に1度だけ発生
[if exp="(f.okeiko_month==10 && f.okeiko_week==1) && f.event_hujieda[9]==0 && f.hujieda_au==1"]
	[eval exp="f.event_storage='hujieda/hujieda_10_1.ks'"]
	[eval exp="f.event_target='replay_hujieda_10_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[9]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【花と手紙を渡す】条件 藤枝ルートかつ10月3週に1度だけ発生
[if exp="(f.okeiko_month==10 && f.okeiko_week==3) && f.event_hujieda[10]==0 && f.hujieda_au==1"]
	[eval exp="f.event_storage='hujieda/hujieda_10_3.ks'"]
	[eval exp="f.event_target='replay_hujieda_10_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[10]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【手紙を交わしていることが発覚】条件 藤枝ルートかつ11月1週に1度だけ発生
[if exp="(f.okeiko_month==11 && f.okeiko_week==1) && f.event_hujieda[11]==0 && f.hujieda_au==1"]
	[eval exp="f.event_storage='hujieda/hujieda_11_1.ks'"]
	[eval exp="f.event_target='replay_hujieda_11_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[11]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【父と磯野への説得】条件 藤枝ルートかつ11月3週に1度だけ発生
[if exp="(f.okeiko_month==11 && f.okeiko_week==3) && f.event_hujieda[12]==0 && f.hujieda_au==1"]
	[eval exp="f.event_storage='hujieda/hujieda_11_3.ks'"]
	[eval exp="f.event_target='replay_hujieda_11_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[12]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【時子さん訪問】条件 藤枝ルートかつ12月3週に1度だけ発生
[if exp="(f.okeiko_month==12 && f.okeiko_week==3) && f.event_hujieda[13]==0 && f.hujieda_au==1"]
	[eval exp="f.event_storage='hujieda/hujieda_12_3.ks'"]
	[eval exp="f.event_target='replay_hujieda_12_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[13]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【bad】条件 hujieda_12_3.ksより選択肢分岐にて実装しています。(「話さない。」を選択)

;◆藤枝イベント判定【時子さんからの手紙】条件 藤枝ルートかつ1月3週に1度だけ発生
[if exp="(f.okeiko_month==1 && f.okeiko_week==3) && f.event_hujieda[14]==0 && f.hujieda_au==1"]
	[eval exp="f.event_storage='hujieda/hujieda_1_3.ks'"]
	[eval exp="f.event_target='replay_hujieda_1_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[14]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【藤枝の留学辞退】条件 藤枝ルートかつ2月3週に1度だけ発生
[if exp="(f.okeiko_month==2 && f.okeiko_week==3) && f.event_hujieda[15]==0 && f.hujieda_au==1"]
	[eval exp="f.event_storage='hujieda/hujieda_2_3.ks'"]
	[eval exp="f.event_target='replay_hujieda_2_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[15]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆藤枝イベント判定【バザー】条件 藤枝ルートかつ3月2週から3月3週までお箏熟練度が高い(暫定値)と1度だけ発生
[if exp="(f.okeiko_month==3 && (f.okeiko_week==2 || f.okeiko_week==3)) && f.event_hujieda[16]==0 && f.hujieda_au==1 && f.para_shujinkou_j_koto >= 70"]
	[eval exp="f.event_storage='hujieda/hujieda_bazaar_1.ks'"]
	[eval exp="f.event_target='replay_hujieda_bazaar_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_hujieda[16]=1"]
	@jump storage="event.ks" target=*start
[endif]

;↓他のイベント判定処理リストに戻ります
@jump storage="event_hantei_week_hajime.ks" target=*hujieda_event_hantei_owari
