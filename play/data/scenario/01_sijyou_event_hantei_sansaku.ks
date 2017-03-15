;=============================================
;◆四条イベント判定(散策ボタンを押すと起きるもの)
;=============================================
*start

*sijyou_event_hantei
;↓以下にイベント判定を追記してください。Wikiに説明を追記予定ですが、Googleスプレッドシート「四条イベントリスト」のうち散策イベント分を貼っていただければ大丈夫と思います
;================================================
;散策
;================================================
;◆四条イベント判定 sijyou_sansaku2.ks(9-2お見合い決定～9月末(銀座デート前まで)華道パラが上がる？華道展イベントフラグ2sijyou_sobo=true9
[if exp="f.okeiko_month == 9 && (f.okeiko_week == 2 || f.okeiko_week == 3 || f.okeiko_week == 4 ) && f.event_machi_sijyou[2] == 0 && f.sijyou_au == 1"]
;↑9月1週も発生する条件で問題ないでしょうか？チェックリストにはコメント文の判定内容を載せています(◆jsYiJcqRkk
	[eval exp="f.event_machi_sijyou[2]=1"]
	@jump storage="sijyou/sijyou_sansaku2.ks" 
	;target=*sansaku
[endif]
;================================================
;◆四条イベント判定 sijyou_sansaku3.ks(9-3園遊会～9月末(銀座デート前まで)華道パラが上がる？ 華道展イベントフラグ2sijyou_sobo=true)
;◆四条イベント判定【園遊会】sijyou_9_3.ksを見てからsijyou_sansaku3.ks
[if exp="f.sijyou_au == 1 && f.event_sijyou[5] == 1 && (f.okeiko_month == 9 && f.okeiko_week == 4 || f.okeiko_month == 10 && f.okeiko_week == 1) && f.event_machi_sijyou[3] == 0 "]
	[eval exp="f.event_machi_sijyou[3]=1"]
	@jump storage="sijyou/sijyou_sansaku3.ks" 
	;target=*sansaku
[endif]
;================================================
;◆四条イベント判定条 sijyou_sansaku7.ks(香水イベント　３月華道パラメータ一定値以上、四条好感度一定値以上)数値は適当
[if exp="f.okeiko_month == 3 && f.event_machi_sijyou[7] == 0 && f.para_shujinkou_j_kadou > 70 && f.para_sijyou_koukando > 80 && f.sijyou_au == 1"]
	[eval exp="f.event_machi_sijyou[7]=1"]
	@jump storage="sijyou/sijyou_sansaku7.ks" 
	;target=*sansaku
[endif]
;================================================
;◆四条イベント判定【散策１】9月1週~9月4週(銀座デート前まで)に1度だけ発生sijyou_sansaku.ks
[if exp="f.okeiko_month==9 && f.event_machi_sijyou[1] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_machi_sijyou[1]=1"]
	@jump storage="sijyou/sijyou_sansaku.ks" 
	;target=*sansaku
[endif]
;================================================
;◆四条イベント判定 sijyou_sansaku5.ks(9月～９月末　銀座デート前 b）or(11事件解決後～12月 a)
[if exp="f.okeiko_month == 9 && f.event_machi_sijyou[5] == 0 && f.sijyou_au == 1"]
	[eval exp="f.event_machi_sijyou[5]=1"]
	@jump storage="sijyou/sijyou_sansaku5.ks" 
	;target=*sansaku
[elsif exp="f.okeiko_month == 12 && f.event_machi_sijyou[17] == 0 && f.sijyou_event6==1"]
;↑11月は入れなくてもOK 12月が暇な時期	
;「１７」なのは時期によってパターンが違うため	
	[eval exp="f.event_machi_sijyou[17]=1"]
	@jump storage="sijyou/sijyou_sansaku5.ks" 
	;target=*sansaku
[endif]
;================================================
;◆四条イベント判定 sijyou_sansaku6.ks(7~8月→8月(他攻略対象より好感度が高い)花火イベント)
[if exp="f.okeiko_month == 8 && f.para_sijyou_koukando > f.para_zaizen_koukando && f.para_sijyou_koukando > f.para_kuroda_koukando && f.para_sijyou_koukando > f.para_katuraginomiya_koukando &&  f.para_sijyou_koukando > f.para_hujieda_koukando && f.event_machi_sijyou[6] == 0 && f.sijyou_au == 0 && f.event_hujieda[4] == 0"]
	[eval exp="f.event_machi_sijyou[6]=1"]
	@jump storage="sijyou/sijyou_sansaku6.ks" 
	;target=*sansaku
[endif]
;================================================
;◆四条イベント判定 sijyou_sansaku4.ks(11月3週→12～1月末)　事件解決後の華衣のイベント
[if exp="f.sijyou_au == 1 && (f.okeiko_month == 12 || f.okeiko_month == 1) && f.event_machi_sijyou[4] == 0 && f.sijyou_event6 == 1"]
	[eval exp="f.event_machi_sijyou[4]=1"]
	@jump storage="sijyou/sijyou_sansaku4.ks" 
	;target=*sansaku
[endif]
;================================================
;8ない。（旧華衣おまけ）
;[if exp="f.okeiko_month == 11 && f.event_machi_sijyou[8] == 0 && f.sijyou_au == 1"]
;[eval exp="f.event_machi_sijyou[8]=1"]
;@jump storage="sijyou/sijyou_sansaku8.ks" 
;target=*sansaku
;[endif]
;================================================
;◆四条イベント判定 sijyou_sansaku9.ks(見合い前なら一回発生子供達　気力が微多めに回復)
[if exp="f.okeiko_month < 9 && f.sijyou_au == 0 && f.event_machi_sijyou[9] == 0"]
	[eval exp="f.event_machi_sijyou[9]=1"]
	@jump storage="sijyou/sijyou_sansaku9.ks" 
	;target=*sansaku
[endif]
;================================================
;◆四条イベント判定 sijyou_sansaku10.ks(いつでも→四条ルートのみ　四条の好感度が高い攻略のヒント)
[if exp="f.okeiko_month >= 9 && f.sijyou_au == 1 && f.event_machi_sijyou[10] == 0"]
;↑コメントに書いていただいた"四条ルートのみいつでも"に合わせて9月も入るように調整させていただきました(◆jsYiJcqRkk
	[eval exp="f.event_machi_sijyou[10]=1"]
	@jump storage="sijyou/sijyou_sansaku10.ks" 
[endif]
;================================================
;◆四条イベント判定 sijyou_sansaku11.ks(四条ルートのみ、(10月~2月)九月×　三月×　
[if exp="(f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2) && f.sijyou_au == 1 && f.event_machi_sijyou[11] == 0"]
	[eval exp="f.event_machi_sijyou[11]=1"]
	@jump storage="sijyou/sijyou_sansaku11.ks" 
[endif]
;================================================
;◆四条イベント判定 sijyou_sansaku12.ks(10月~2月)九月×　三月×　
[if exp="(f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2) && f.sijyou_au == 1 && f.event_machi_sijyou[12] == 0"]
	[eval exp="f.event_machi_sijyou[12] = 1"]
	@jump storage="sijyou/sijyou_sansaku12.ks" 
[endif]
;================================================
;◆四条イベント判定 sijyou_sansaku13.ks(10月~2月)九月×　三月×
[if exp="(f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2) && f.sijyou_au == 1 && f.event_machi_sijyou[13] == 0"]
	[eval exp="f.event_machi_sijyou[13]=1"]
	@jump storage="sijyou/sijyou_sansaku13.ks" 
[endif]
;================================================
;sijyou_sansaku2.ks
;sijyou_sansaku3.ks
;sijyou_sansaku4.ks
;sijyou_sansaku5.ks
;sijyou_sansaku6.ks
;sijyou_sansaku7.ks
;8ない。（旧華衣おまけ）
;sijyou_sansaku9.ks
;sijyou_sansaku10.ks
;sijyou_sansaku11.ks
;sijyou_sansaku12.ks
;sijyou_sansaku13.ks

;↓他のイベント判定処理リストに戻ります
@jump storage="sansaku.ks" target=*sijyou_event_hantei_owari
