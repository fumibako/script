*fumi_toutyaku_hantei_sijyou
;◇四条手紙到着判定
[eval exp="f.test='手紙到着可能性なし'"]
[if exp="f.sijyou_fumi_henjimachi <= parseInt([sf.sijyou['fumi_henjimachi_ok_number']])"]
	[eval exp="f.sijyou_fumi_toutyakumachi_week=f.sijyou_fumi_toutyakumachi_week+1"]
	[eval exp="f.test='手紙到着可能性あり'+f.sijyou_fumi_toutyakumachi_week+parseInt([sf.sijyou['fumi_hindo_week']])"]
;　↓f.sijyou_fumi_toutyakumachi_week(四条手紙が前回届いてからの経過週数)が四条の手紙を書く頻度sf.sijyou['fumi_hindo_week'を超えると手紙到着処理解放
	[if exp="f.sijyou_fumi_toutyakumachi_week >= parseInt([sf.sijyou['fumi_hindo_week']])"]
;手紙到着：条件有り分
;◆◆手紙到着：季節、好感度など条件有り分
;
;◆2【つばめの季節】5月1週～6月4週に好感度が一定以上で届く
;		[if exp="(f.okeiko_month==5 || f.okeiko_month==6) && f.para_sijyou_koukando > 5 && f.fumi_toutyaku_sijyou[2]==0"]
;			[eval exp="f.test='手紙到着「つばめの季節」'+f.sijyou_fumi_toutyakumachi_week+parseInt([sf.sijyou['fumi_hindo_week']])"]
;			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
;			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
;			[eval exp="f.sijyou_fumi_toutyakumachi_week=0"]
;			@jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_2
			
;◆『趣味について』の話題で手紙を送った場合かつ「趣味について（お見合い前）」の手紙をまだ貰っていない場合(f.fumi_toutyaku_sijyou[2]==0)に、好感度に応じた期間後に返事（お見合い前）がある
[if exp="f.sijyou_fumi_toutyakumachi_shumi==0 && f.sijyou_omiai==0 && f.fumi_toutyaku_sijyou[2]==0"]
;↓手紙が届いている場合のメッセージ「○○様からお手紙が届いております」の○○様の部分
	[eval exp="f.fumi_toutyaku_oaite[0]='四条様'"]
;↓手紙が届いているかどうか、届いた手紙は何通かを見るための変数
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
;↓四条からの手紙到着待ち週数をリセット
	[eval exp="f.sijyou_fumi_toutyakumachi_week=0"]
	@jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_2
[endif]

;手紙到着：条件有りが該当しなければ、条件無し分が到着
;		[eval exp="f.target_fumi_toutyaku='*fumi_toutyaku_sijyou_'+f.sijyou_nextfumi_common"]
;		[eval exp="f.test='手紙到着'+f.target_fumi_toutyaku"]
;		[iscript]
;		f.fumi_toutyaku_oaite.push('四条様');
;		[endscript]
;　　　↓f.fumi_totyaku…手紙到着数
;		[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
;　　　↓四条の手紙到着待ち週数をリセット(好感度により手紙の届くまでの週数が変化する)
;		[eval exp="f.sijyou_fumi_toutyakumachi_week=0"]
;		[eval exp="f.sijyou_nextfumi_common=f.sijyou_nextfumi_common+1"]
;		@jump target=&f.target_fumi_toutyaku
	[endif]
[endif]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya
[s]
