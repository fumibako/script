*start
;=============================================
;◆◆散策_個別イベント発生判定開始:sansaku.ksから切り出しました。
;=============================================
*sansaku_machi_event_hantei
;=============================================
[skipstop]
[wait time=50]
;「他の散策イベント非表示時」は共通散策イベントの該当部分※のみチェック
;※(話題関係散策イベント新規分、「手紙」の散策イベント)
[if exp="tf.event_sansaku_hyouji == 0"]
	@jump storage="sansaku.ks" target=*sansaku_hantei_common
[endif]
;=============================================
;◆各個別ルート(又はonly時)には対象キャラクターイベント判定と共通ルート判定のみ行う
;=============================================
[wait time=50]
[if exp="f.zaizen_au == 1"]
	@jump storage="sansaku_hantei_kobetsu.ks" target=*zaizen_event_hantei
[endif]
[wait time=50]
[if exp="f.sijyou_au == 1"]
	@jump storage="01_sijyou_event_hantei_sansaku.ks" target=*start
[endif]
[wait time=50]
[if exp="f.katuraginomiya_au == 1 || f.katuraginomiya_only == 1"]
	@jump storage="sansaku_hantei_kobetsu.ks" target=*katuraginomiya_event_hantei
[endif]
[if exp="f.hujieda_au == 1"]
	@jump storage="sansaku_hantei_kobetsu.ks" target=*hujieda_event_hantei
[endif]
[wait time=50]

;=============================================
;重要イベント判定(共通イベントよりも優先して発生させたいイベントはこちらに記載します
;=============================================
;◆黒田イベント2判定【麦】(判定部分はevent_hantei_week_hajime.ksに移動しました)

;◆共通イベント1判定【友人に会う】4月1週～6月4週、期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month == 4 || f.okeiko_month == 5 || f.okeiko_month == 6) && f.event_machi_common[1] == 0"]
	@jump storage="sansaku_common_yuujin.ks"
[endif]

;=============================================
;◆四条イベント判定
;=============================================
*sijyou_event_hantei
@jump storage="01_sijyou_event_hantei_sansaku.ks" target=*start
*sijyou_event_hantei_owari
[if exp="f.sijyou_au == 1"]
	@jump storage="sansaku.ks" target=*event_hantei_owari
[endif]

;=============================================
;◆財前イベント判定
;=============================================
*zaizen_event_hantei
;◆財前イベント判定【バザー】財前ルートかつ2月1週から3月4週、礼法が70(暫定)以上で期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month==2 || f.okeiko_month==3) && f.event_machi_zaizen[1]==0 && f.para_shujinkou_j_reihou >= 70 && f.zaizen_au==1"]
;散策イベントを見たフラグ[eval exp="f.event_machi_zaizen[1]=1"]はイベントファイル終了のタイミングに移動しました(イベント発生処理後に読込不良がある場合に、本当は見ていないのに「見た」フラグだけ立って散策イベントを見られない場合があったため)
	@jump storage="zaizen/zaizen_bazaar.ks"
[endif]
*zaizen_event_hantei_owari
[if exp="f.zaizen_au == 1"]
	@jump storage="sansaku.ks" target=*event_hantei_owari
[endif]

;=============================================
;◆葛城宮イベント判定
;=============================================
*katuraginomiya_event_hantei
;◆葛城宮イベント判定【散策1】葛城宮ルート2月2週から3月3週期間中に散策で1度だけ発生(散策2へ続く物語となるため元案の3月4週までではなく3月3週までに変更しました)
[if exp="((f.okeiko_month==2 && f.okeiko_week!=1) || (f.okeiko_month==3 && f.okeiko_week!=4)) && f.event_machi_katuraginomiya[1]==0 && f.katuraginomiya_au==1"]
;散策イベントを見たフラグをイベントファイル終了のタイミングに移動しました
	@jump storage="katuraginomiya/katuraginomiya_sansaku1.ks"
[endif]

;◆葛城宮イベント判定【散策2】葛城宮ルートで散策1を見ている状態で2月2週から3月4週期間中に散策をすると、1度だけ発生。判定順から散策1が先に発生すると思いますが、念のためf.event_machi_katuraginomiya[1]==1 を条件に加えます
[if exp="((f.okeiko_month==2 && f.okeiko_week!=1) || f.okeiko_month==3) && f.event_machi_katuraginomiya[1]==1 && f.event_machi_katuraginomiya[2]==0 && f.katuraginomiya_au==1"]
;散策イベントを見たフラグと伊能氏の手紙フラグをイベントファイル終了のタイミングに移動しました
	@jump storage="katuraginomiya/katuraginomiya_sansaku2.ks"
[endif]
*katuraginomiya_event_hantei_owari
[if exp="f.katuraginomiya_au == 1 || f.katuraginomiya_only == 1"]
	@jump storage="sansaku.ks" target=*event_hantei_owari
[endif]

;=============================================
;◆藤枝イベント判定
;=============================================
*hujieda_event_hantei
;◆藤枝イベント判定【藤枝晶子さん(藤枝お姉さん)と話す】藤枝ルートかつ2月3週から3月4週期間中に町へ行くと1度だけ発生
[if exp="((f.okeiko_month==2 && (f.okeiko_week==3 || f.okeiko_week==4)) || f.okeiko_month==3) && f.event_machi_hujieda[1]==0 && f.hujieda_au==1"]
;散策イベントを見たフラグをイベントファイル終了のタイミングに移動しました
	@jump storage="hujieda/hujieda_sansaku1.ks"
[endif]
*hujieda_event_hantei_owari
[if exp="f.hujieda_au == 1"]
	@jump storage="sansaku.ks" target=*event_hantei_owari
[endif]

;=============================================
;◆黒田イベント判定
;=============================================
*kuroda_event_hantei
;◆黒田イベント3判定【黒田家のうわさ１】7月1週～4週、期間中に町へ行くと黒田好感度一定値以上で1度だけ発生
[if exp="f.okeiko_month==7 && f.event_machi_kuroda[3]==0 && f.para_kuroda_koukando > 10"]
	[eval exp="f.event_char='kuroda'"]
	@jump storage="sansaku_kuroda.ks" target=*sansaku_machi_kuroda_03
[endif]

;◆黒田イベント4判定【黒田家のうわさ２】7月2週～4週、期間中に町へ行くと黒田好感度一定値以上かつ「黒田家のうわさ１」フラグONの場合に1度だけ発生
[if exp="(f.okeiko_month==7 && (f.okeiko_week==2 || f.okeiko_week==3 || f.okeiko_week==4)) && f.event_machi_kuroda[3]==1 && f.event_machi_kuroda[4]==0 && f.para_kuroda_koukando > 15"]
	[eval exp="f.event_char='kuroda'"]
	@jump storage="sansaku_kuroda.ks" target=*sansaku_machi_kuroda_04
[endif]

;◆黒田イベント5判定【友人に忠告される】8月1週～4週、期間中に町へ行くと黒田好感度一定値以上かつ「黒田家のうわさ１」フラグONの場合に1度だけ発生
[if exp="f.okeiko_month==8 && f.event_machi_kuroda[3]==1 && f.event_machi_kuroda[5]==0 && f.para_kuroda_koukando > 20"]
	[eval exp="f.event_char='kuroda'"]
	@jump storage="sansaku_kuroda.ks" target=*sansaku_machi_kuroda_05
[endif]

;◆黒田イベント6判定【友人と会う（落ち込み時）】12月1週～2週、期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month==12 && (f.okeiko_week==1 || f.okeiko_week==2)) && f.event_machi_kuroda[6]==0 && f.kuroda_au==1"]
	[eval exp="f.event_char='kuroda'"]
	@jump storage="sansaku_kuroda.ks" target=*sansaku_machi_kuroda_06
[endif]

*kuroda_event_hantei_owari
[if exp="f.kuroda_au == 1"]
	@jump storage="sansaku.ks" target=*event_hantei_owari
[endif]

@jump storage="sansaku.ks" target=*event_hantei_owari
