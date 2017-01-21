;=============================================
;◆葛城宮イベント判定(週始め)
;=============================================
*start

*katuraginomiya_event_hantei
;↓以下にイベント判定を追記
;テスト用 他攻略ｷｬﾗと比較できるようにイベントを見たら上がるようにしてありますが０入力等で一括調整してください
[eval exp="tf.koukando_eventup_katuraginomiya=5"]
;===================================================================================================================================================
;1◆葛城宮イベント判定 katuraginomiya_event_1.ks 他好感度が一定以下_淑女度15以上 町で葛城宮に会い胸が高鳴る→手紙がくる 梅雨の晴れ 20以下　藤枝はイベントが被るので10以下
[if exp="(f.okeiko_month==6 && f.okeiko_week==3) && f.para_shujinkou_shukujodo > 15 && f.event_katuraginomiya[1]==0 && f.katuraginomiya_au == 0 && f.para_sijyou_koukando < 21 && f.para_kuroda_koukando < 21 && f.para_hujieda_koukando < 11"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_event_1.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_event_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[1]=1"]
	;テスト用　他攻略ｷｬﾗと比較できるようにイベントを見たら上がるようにしてありますが上で調整してください	
	[eval exp="f.para_katuraginomiya_koukando=f.para_katuraginomiya_koukando + tf.koukando_eventup_katuraginomiya"]
	@jump storage="event.ks" target=*start
[endif]
;===================================================================================================================================================
;葛城宮　夢イベント　場合淑女度１４（20以上は手紙を出していたら有りえない数値）１イベントみたとき
[if exp="(f.okeiko_month==7 && f.okeiko_week==2) && f.para_shujinkou_shukujodo > 20 && f.event_katuraginomiya[1]==1 && f.event_sijyou[0]==0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_6_1.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_6_1'"]
	[eval exp="f.event_type='talk'"]
	;共通イベント。四条の変数のままでok	
	[eval exp="f.event_sijyou[1]=1"]
	;テスト用　他攻略ｷｬﾗと比較できるようにイベントを見たら上がるようにしてありますが上で調整してください
	[eval exp="f.para_katuraginomiya_koukando=f.para_katuraginomiya_koukando + tf.koukando_eventup_katuraginomiya"]
	@jump storage="event.ks" target=*start
[endif]
;===================================================================================================================================================
;2◆葛城宮イベント判定katuraginomiya_event_2.ks 別ファイルへ
;=======================================================================================
;3◆葛城宮イベント判定katuraginomiya_event_3.ks 皇后様のお印入りのお茶事の招待状が届く
;even2をみている
[if exp="(f.okeiko_month==8 && f.okeiko_week==2) && f.para_shujinkou_shukujodo > 20 && f.event_katuraginomiya[3]==0 && f.event_katuraginomiya[2]==1 && f.katuraginomiya_au==0"]
;&& f.para_sijyou_koukando < 11 && f.para_kuroda_koukando < 11 && f.para_hujieda_koukando < 11 必要であれば追加してください	
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_event_3.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_event_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[3]=1"]
	;テスト用
	[eval exp="f.para_katuraginomiya_koukando=f.para_katuraginomiya_koukando + tf.koukando_eventup_katuraginomiya"]
	@jump storage="event.ks" target=*start
[endif]

;=======================================================================================
;4◆葛城宮イベント判定katuraginomiya_9_1.ks 　使者がくる。ルートが決定する　ほぼ強制なのですがどうしましょう
;even3をみている
[if exp="(f.okeiko_month==9 && f.okeiko_week==1) && f.event_oaite_mitei==1 && f.event_katuraginomiya[4]==0 && f.event_katuraginomiya[3]==1 && f.katuraginomiya_au==0 && (f.para_katuraginomiya_koukando > f.para_sijyou_koukando && f.para_katuraginomiya_koukando > f.para_kuroda_koukando && f.para_katuraginomiya_koukando > f.para_hujieda_koukando)"]
;&& f.para_shujinkou_shukujodo > 20  必要であれば追加してください		
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_9_1.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_9_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[4]=1"]
	;イベント中に選択肢有り。イベントファイルに記述　[eval exp="f.katuraginomiya_au=1"]
	@jump storage="event.ks" target=*start
[endif]
;=======================================================================================
;5◆葛城宮イベント判定katuraginomiya_9_3.ks ルート決定後なので条件はすくなめ（9/3,かつ　au==1のとき）
[if exp="(f.okeiko_month==9 && f.okeiko_week==3) &&  f.katuraginomiya_au==1 && f.event_katuraginomiya[5]==0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_9_3.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_9_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[5]=1"]
	@jump storage="event.ks" target=*start
[endif]
;=======================================================================================
;6◆葛城宮イベント判定katuraginomiya_9_4.ks　週終わりファイルへ

;=======================================================================================
;7◆葛城宮イベント判定 katuraginomiya_10_2.ks
[if exp="(f.okeiko_month==10 && f.okeiko_week==2) &&  f.katuraginomiya_au==1 && f.event_katuraginomiya[7]==0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_10_2.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_10_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[7]=1"]
	@jump storage="event.ks" target=*start
[endif]
;=======================================================================================
;8◆葛城宮イベント判定 katuraginomiya_10_3.ks
[if exp="(f.okeiko_month==10 && f.okeiko_week==3) &&  f.katuraginomiya_au==1 && f.event_katuraginomiya[8]==0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_10_3.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_10_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[8]=1"]
	@jump storage="event.ks" target=*start
[endif]
;=======================================================================================
;9◆葛城宮イベント判定 katuraginomiya_11_1.ks
[if exp="(f.okeiko_month==11 && f.okeiko_week==1) &&  f.katuraginomiya_au==1 && f.event_katuraginomiya[9]==0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_11_1.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_11_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[9]=1"]
	@jump storage="event.ks" target=*start
[endif]
;=======================================================================================
;10◆葛城宮イベント判定 katuraginomiya_11_1badED.ks
;別ファイルへ　週終わりファイルへ　選択肢
;=======================================================================================
;11◆葛城宮イベント判定 katuraginomiya_11_4.ks
;別ファイルへ　週終わりファイルへ
;[if exp="(f.okeiko_month==11 && f.okeiko_week==4) &&  f.katuraginomiya_au==1 && f.event_katuraginomiya[12]==0"]
;	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_11_4.ks'"]
;	[eval exp="f.event_target='*replay_katuraginomiya_11_4'"]
;	[eval exp="f.event_type='talk'"]
;	[eval exp="f.event_katuraginomiya[11]=1"]
;	@jump storage="event.ks" target=*start
;[endif]
;=======================================================================================
;12◆葛城宮イベント判定 katuraginomiya_12_1.ks(katuraginomiya12_1ｂ.ks)
[if exp="(f.okeiko_month==12 && f.okeiko_week==1) &&  f.katuraginomiya_au==1 && f.event_katuraginomiya[12]==0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_12_1.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_12_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[12]=1"]
	@jump storage="event.ks" target=*start
[endif]
;=======================================================================================
;13◆葛城宮イベント判定 katuraginomiya_1_3.ks
[if exp="(f.okeiko_month==1 && f.okeiko_week==3) &&  f.katuraginomiya_au==1 && f.event_katuraginomiya[13]==0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_1_3.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_1_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[13]=1"]
	@jump storage="event.ks" target=*start
[endif]
;=======================================================================================
;14◆葛城宮イベント判定katuraginomiya_2_2.ks(katuraginomiya2_2ｂ.ks)
[if exp="(f.okeiko_month==2 && f.okeiko_week==2) &&  f.katuraginomiya_au==1 && f.event_katuraginomiya[14]==0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_2_2.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_2_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[14]=1"]
	@jump storage="event.ks" target=*start
[endif]
;========================以下は別ファイル=================================
;ending
;15 katuraginomiya_3_4_nomalED.ks
;16 katuraginomiya_3_4epilogue_goodED.ks
;散策
;=======================================================================================
;1(17)katuraginomiya_bazaar.ks茶道が高い2/3~3/4→3 *replay_katuraginomiya_bazaar
[if exp="( (f.okeiko_month==2 || f.okeiko_month==3) && f.okeiko_week==3 ) &&  f.katuraginomiya_au==1 && f.para_shujinkou_j_sadou > 70 && f.event_katuraginomiya[17]==0"]
	[eval exp="f.event_storage='katuraginomiya/katuraginomiya_bazaar.ks'"]
	[eval exp="f.event_target='*replay_katuraginomiya_bazaar'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_katuraginomiya[17]=1"]
	@jump storage="event.ks" target=*start
[endif]
;========================以下は別ファイル=================================
;2(18)katuraginomiya_sansaku1.ks
;3(19)katuraginomiya_sansaku2.ks
;=========================================================





;↓他のイベント判定処理リストに戻ります
@jump storage="event_hantei_week_hajime.ks" target=*katuraginomiya_event_hantei_owari
