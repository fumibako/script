;=============================================
;◆共通イベント判定◆話題を入手する散策イベント
;=============================================
;◇季節限定のもの
;=============================================
*start
;「新規以外散策イベント非表示時」は共通散策イベントの該当部分※のみチェック
;※(話題関係散策イベント新規分、「手紙」の散策イベント)
[if exp="tf.event_sansaku_hyouji == 0"]
@jump target=*sansaku_hantei_new
[endif]

;◆共通イベント2判定【新茶】4月3週～5月2週、期間中に町へ行くと1度だけ発生
[if exp="((f.okeiko_month==4 && (f.okeiko_week==3 || f.okeiko_week==4)) || (f.okeiko_month==5 && (f.okeiko_week==1 || f.okeiko_week==2))) && f.event_machi_common[2]==0"]
	@jump storage="sansaku_common.ks" target=*sansaku_machi_common_02
[endif]

;◆共通イベント1判定【さつき】5月3週～6月2週、期間中に町へ行くと1度だけ発生(以前は黒田イベントだったため、変数やjump先ラベルにその名残があります)
[if exp="((f.okeiko_month==5 && (f.okeiko_week==3 || f.okeiko_week==4)) || (f.okeiko_month==6 && (f.okeiko_week==1 || f.okeiko_week==2))) && f.event_machi_kuroda[1]==0"]
	@jump storage="sansaku_common.ks" target=*sansaku_machi_kuroda_01
[endif]

*sansaku_hantei_new
;「8月以前の散策イベント非表示時」は共通散策イベントの8月までの判定をjumpして飛ばす
[if exp="tf.event_sansaku_hyouji_before_au == 0"]
@jump target=*sansaku_hantei_after_9gatu
[endif]

;◆共通イベント判定【詩集を買う：読書の話題】6月3週～7月2週、語学のお稽古(4月からの累計)2回以上で期間中に町へ行くと1度だけ発生
[if exp="((f.okeiko_month == 6 && (f.okeiko_week == 3 || f.okeiko_week == 4)) || (f.okeiko_month == 7 && (f.okeiko_week == 1 || f.okeiko_week == 2))) && f.event_machi_common[3] == 0 && f.para_shujinkou_gogaku_kaisuu_all >= 2"]
	[eval exp="f.event_machi_common[3] = 1"]
	@jump storage="01_I9IhvvVdPo_sansaku.ks" target=*sansaku_machi_common_I9IhvvVdPo_04
[endif]

;◆共通イベント判定【全国野球大会：スポーツの話題】8月3週～8月4週、期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month == 8 && (f.okeiko_week == 3 || f.okeiko_week == 4)) && f.event_machi_common[4] == 0"]
	[eval exp="f.event_machi_common[4] = 1"]
	@jump storage="01_I9IhvvVdPo_sansaku.ks" target=*sansaku_machi_common_I9IhvvVdPo_01
[endif]
;=============================================
;◇季節にこだわりのないもの(◆jsYiJcqRkkが発生時期を割り振っています)
;=============================================
;◆共通イベント判定【1日のはじまりの話題】5月4週～3月4週、期間中に町へ行くと1度だけ発生
[if exp="((f.okeiko_month == 5 && f.okeiko_week == 4) || f.okeiko_month == 6 || f.okeiko_month == 7 || f.okeiko_month == 8 || f.okeiko_month == 9 || f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3) && f.event_machi_common[5] == 0"]
	[eval exp="f.event_machi_common[5] = 1"]
	@jump storage="01_B4nFWraU42_sansaku.ks" target=*sansaku_machi_common_B4nFWraU42_01
[endif]

;◆共通イベント判定【猫の話題】7月1週～3月4週、期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month == 7 || f.okeiko_month == 8 || f.okeiko_month == 9 || f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3) && f.event_machi_common[6] == 0"]
	[eval exp="f.event_machi_common[6] = 1"]
	@jump storage="01_B4nFWraU42_sansaku.ks" target=*sansaku_machi_common_B4nFWraU42_06
[endif]

;◆共通イベント判定【聞き上手と話し上手の話題】8月1週～3月4週、期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month == 8 || f.okeiko_month == 9 || f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3) && f.event_machi_common[7] == 0"]
	[eval exp="f.event_machi_common[7] = 1"]
	@jump storage="01_B4nFWraU42_sansaku.ks" target=*sansaku_machi_common_B4nFWraU42_02
[endif]

*sansaku_hantei_after_9gatu
;◆共通イベント判定【緑の石の話題】9月1週～3月4週、期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month == 9 || f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3) && f.event_machi_common[8] == 0"]
	[eval exp="f.event_machi_common[8] = 1"]
	@jump storage="01_B4nFWraU42_sansaku.ks" target=*sansaku_machi_common_B4nFWraU42_04
[endif]

;◆共通イベント判定【お気に入りの曲の話題】10月2週～3月4週、期間中に町へ行くと1度だけ発生
[if exp="((f.okeiko_month == 10 && f.okeiko_week != 1) || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3) && f.event_machi_common[9] == 0"]
	[eval exp="f.event_machi_common[9] = 1"]
	@jump storage="01_B4nFWraU42_sansaku.ks" target=*sansaku_machi_common_B4nFWraU42_05
[endif]

;◆共通イベント判定【道の話題】11月1週～3月4週、期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3) && f.event_machi_common[10] == 0"]
	[eval exp="f.event_machi_common[10] = 1"]
	@jump storage="01_B4nFWraU42_sansaku.ks" target=*sansaku_machi_common_B4nFWraU42_03
[endif]

;◆共通イベント判定【食事の話題】12月1週～3月4週、期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3) && f.event_machi_common[11] == 0"]
	[eval exp="f.event_machi_common[11] = 1"]
	@jump storage="01_I9IhvvVdPo_sansaku.ks" target=*sansaku_machi_common_I9IhvvVdPo_02
[endif]

;◆共通イベント判定【観劇の話題】1月4週～3月4週、期間中に町へ行くと1度だけ発生
[if exp="((f.okeiko_month == 1 && f.okeiko_week == 4) || f.okeiko_month == 2 || f.okeiko_month == 3) && f.event_machi_common[12] == 0"]
	[eval exp="f.event_machi_common[12] = 1"]
	@jump storage="01_I9IhvvVdPo_sansaku.ks" target=*sansaku_machi_common_I9IhvvVdPo_03
[endif]

;◆共通イベント判定【写真の話題】2月1週～3月4週、期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month == 2 || f.okeiko_month == 3) && f.event_machi_common[13] == 0"]
	[eval exp="f.event_machi_common[13] = 1"]
	@jump storage="01_I9IhvvVdPo_sansaku.ks" target=*sansaku_machi_common_I9IhvvVdPo_05
[endif]

;◆共通イベント判定【変化と永遠についての話題】3月1週～3月4週、期間中に町へ行くと1度だけ発生
[if exp="(f.okeiko_month == 3) && f.event_machi_common[14] == 0"]
	[eval exp="f.event_machi_common[14] = 1"]
	@jump storage="01_B4nFWraU42_sansaku.ks" target=*sansaku_machi_common_B4nFWraU42_07
[endif]

;=============================================
;◆共通イベント判定◆話題と無関係の散策イベント
;=============================================
;◆共通イベント判『手紙』6月に町へ行くと1度だけ発生
[if exp="(f.okeiko_month == 6) && f.event_machi_common[15] == 0"]
	[eval exp="f.event_machi_common[15] = 1"]
	@jump storage="01_B4nFWraU42_sansaku.ks" target=*sansaku_machi_common_B4nFWraU42_08
[endif]



@jump storage="sansaku.ks" target=*sansaku_hantei_common_owari
