;=============================================
;お稽古パート：イベント判定(週始め)
;=============================================
*start

;◆イベント発生判定
*event_hantei
;◆テスト画面からプレイの場合は助言イベントをカット
[if exp="tf.test_gamen==true"]
@jump target=*advice_event_owari
[endif]

;=============================================
;◆共通イベント判定：助言
;=============================================
;◆お稽古パート導入イベント判定 4月1週になった時点で1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==1) && f.event_common[0]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_1'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[0]=1"]
;↓その週のアドバイスイベント処理を(0=アドバイスイベント発生かつ未通過、1=通過済)「今週は何をしましょうか？」のセリフに影響
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆お稽古の助言イベント判定 4月2週になった時点でお稽古を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==2) && f.para_shujinkou_shukujodo==1 && f.event_common[1]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_2'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[1]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆散策の助言イベント判定 4月3週になった時点で散策を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==3) && f.event_machi_common[1]==0 && f.event_common[2]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[2]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆返信の助言イベント判定 4月4週になった時点で返信を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==4 && f.okeiko_week==4) && f.fumi_henji==0 && f.event_common[3]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_4_4'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[3]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆返信の忠告イベント判定 5月1週になった時点で返信を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==5 && f.okeiko_week==1) && f.fumi_henji==0 && f.event_common[4]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[4]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆お稽古の助言イベント判定 5月2週になった時点でお稽古を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==5 && f.okeiko_week==2) && f.para_shujinkou_shukujodo==1 && f.event_common[5]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_2'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[5]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆散策の助言イベント判定 5月3週になった時点で散策を一度もしていないと1度だけ発生
[if exp="((f.okeiko_month==5 && f.okeiko_week==3) && f.event_machi_common[1]==0 && f.event_common[6]==0)"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_3'"]
	[eval exp="f.event_type='advice'"]
	[eval exp="f.event_common[6]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]

;◆返信の忠告イベント判定 5月4週になった時点で返信を一度もしていないと1度だけ発生
[if exp="(f.okeiko_month==5 && f.okeiko_week==4) && f.fumi_henji==0 && f.event_common[7]==0"]
	[eval exp="f.event_storage='event.ks'"]
	[eval exp="f.event_target='*replay_common_5_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[7]=1"]
	[eval exp="f.event_advice=0"]
	@jump storage="event.ks" target=*start
[endif]
*advice_event_owari

;=============================================
;◆共通イベント判定：助言以外
;=============================================
;◆夢イベント判定：イベント 6月2週になった時点で、攻略対象(四条、財前、黒田)の好感度一定値以上又は藤枝イベント発生中の状態なら1度だけ発生(まだコピペしただけです。全員の組み込み後に調整しようと思います)
;[if exp="(f.okeiko_month==6 && f.okeiko_week==2) && f.event_common[11]==0 && (f.para_kuroda_koukando > 30 || f.para_zaizen_koukando > 30 || f.para_sijyou_koukando > 30 || f.para_katuraginomiya_koukando > 30|| f.para_hujieda_koukando > 30)"]
;	[eval exp="f.event_storage='common_9_1.ks'"]
;	[eval exp="f.event_target='*replay_common_9_1'"]
;	[eval exp="f.event_type='talk'"]
;	[eval exp="f.event_common[11]=1"]
;	@jump storage="event.ks" target=*start
;[endif]


;◆顔合せのお相手選びイベント判定：イベント 9月1週になった時点で、攻略対象の好感度一定値以上なら1度だけ発生
[if exp="(f.okeiko_month==9 && f.okeiko_week==1) && f.event_common[10]==0 && (f.para_kuroda_koukando > 30 || f.para_zaizen_koukando > 30 || f.para_sijyou_koukando > 30 || f.para_katuraginomiya_koukando > 30|| f.para_hujieda_koukando > 30)"]
	[eval exp="f.event_storage='common_9_1.ks'"]
	[eval exp="f.event_target='*replay_common_9_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_common[10]=1"]
	@jump storage="event.ks" target=*start
[endif]
*common_event_hantei_owari
;=============================================
;◆四条イベント判定
;=============================================
*sijyou_event_hantei
@jump storage="01_sijyou_event_hantei_week_hajime.ks" target=*start
*sijyou_event_hantei_owari

;=============================================
;◆財前イベント判定
;=============================================
*zaizen_event_hantei
@jump storage="event_hantei_week_hajime_zaizen.ks" target=*start
*zaizen_event_hantei_owari

;=============================================
;◆葛城宮イベント判定
;=============================================
*katuraginomiya_event_hantei
@jump storage="event_hantei_week_hajime_katuraginomiya.ks" target=*start
*katuraginomiya_event_hantei_owari

;=============================================
;◆藤枝イベント判定
;=============================================
*hujieda_event_hantei
@jump storage="event_hantei_week_hajime_hujieda.ks" target=*start
*hujieda_event_hantei_owari


;=============================================
;◆黒田イベント判定
;=============================================
;◆黒田イベント判定【麦】6月4週になった時点で、黒田好感度一定値以上なら1度だけ発生
[if exp="(f.okeiko_month==6 && f.okeiko_week==4) && f.event_machi_kuroda[2]==0 && f.para_kuroda_koukando > 5"]
	@jump storage="sansaku.ks" target=*sansaku
[endif]

;◆黒田イベント判定【友人からの忠告】8月4週になった時点で、黒田好感度一定値以上なら1度だけ発生
;[if exp="(f.okeiko_month==8 && f.okeiko_week==4) && f.event_machi_kuroda[3]==1 && f.event_machi_kuroda[5]==0 && f.para_kuroda_koukando > 20"]
;	@jump storage="sansaku.ks" target=*sansaku_machi_kuroda_05
;[endif]

;◆黒田イベント判定【顔合せ】判定 黒田ルートかつ9月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month==9 && f.okeiko_week==3) && f.event_kuroda[1]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_9_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_9_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[1]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：紅葉散策お誘い】黒田ルートかつ9月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month==9 && f.okeiko_week==4) && f.event_kuroda[2]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_9_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_9_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[2]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【初デート】黒田ルートかつ10月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month==10 && f.okeiko_week==3) && f.event_kuroda[3]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_10_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_10_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[3]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：散策お誘い】黒田ルートかつ10月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month==10 && f.okeiko_week==4) && f.event_kuroda[4]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_10_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_10_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[4]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【友人に会う】黒田ルートかつ11月1週になった時点で1度だけ発生
[if exp="(f.okeiko_month==11 && f.okeiko_week==1) && f.event_kuroda[5]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_11_1.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[5]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【デート】黒田ルートかつ11月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month==11 && f.okeiko_week==2) && f.event_kuroda[6]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_11_2.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[6]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【黒田多忙と聞く】黒田ルートかつ11月3週になった時点で1度だけ発生
[if exp="(f.okeiko_month==11 && f.okeiko_week==3) && f.event_kuroda[7]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_11_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[7]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【黒田母倒れデートキャンセル】黒田ルートかつ11月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month==11 && f.okeiko_week==4) && f.event_kuroda[8]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_11_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_11_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[8]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【黒田実験失敗と聞く→手紙を書こうと決意】黒田ルートかつ12月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month==12 && f.okeiko_week==2) && f.event_kuroda[9]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_12_2.ks'"]
	[eval exp="f.event_target='*replay_kuroda_12_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[9]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【分岐：badED】黒田ルートかつ12月3週になった時点で淑女度一定値未満好感度一定値未満又は麦の穂無しでbadED
[if exp="(f.okeiko_month==12 && f.okeiko_week==3) && f.event_kuroda[10]==0 && f.kuroda_au==1 &&(f.para_shujinkou_shukujodo <= 40 ||f.para_kuroda_koukando <= 50 || f.event_machi_kuroda[2]==0)"]
	[eval exp="f.event_storage='kuroda_12_3_badED.ks'"]
	[eval exp="f.event_target='*replay_kuroda_12_3_badED'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[10]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【分岐：normal/goodED】黒田ルートかつ12月3週になった時点で好感度一定値以上かつ麦の穂所持で1度だけ発生
[if exp="(f.okeiko_month==12 && f.okeiko_week==3) && f.event_kuroda[11]==0 && f.kuroda_au==1 && f.para_kuroda_koukando > 50 && f.event_machi_kuroda[2]==1"]
	[eval exp="f.event_storage='kuroda_12_3.ks'"]
	[eval exp="f.event_target='*replay_kuroda_12_3'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[11]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：年賀状】黒田ルートかつ1月1週になった時点で1度だけ発生
[if exp="(f.okeiko_month==1 && f.okeiko_week==1) && f.event_kuroda[12]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_1_1.ks'"]
	[eval exp="f.event_target='*replay_kuroda_1_1'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[12]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【手紙が届く：お礼とお誘い】黒田ルートかつ1月4週になった時点で1度だけ発生
[if exp="(f.okeiko_month==1 && f.okeiko_week==4) && f.event_kuroda[13]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_1_4.ks'"]
	[eval exp="f.event_target='*replay_kuroda_1_4'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[13]=1"]
	@jump storage="event.ks" target=*start
[endif]

;◆黒田イベント判定【小料理屋】黒田ルートかつ2月2週になった時点で1度だけ発生
[if exp="(f.okeiko_month==2 && f.okeiko_week==2) && f.event_kuroda[14]==0 && f.kuroda_au==1"]
	[eval exp="f.event_storage='kuroda_2_2.ks'"]
	[eval exp="f.event_target='*replay_kuroda_2_2'"]
	[eval exp="f.event_type='talk'"]
	[eval exp="f.event_kuroda[14]=1"]
	@jump storage="event.ks" target=*start
[endif]
@jump storage="okeiko.ks" target=*event_hantei_week_hajime_owari
