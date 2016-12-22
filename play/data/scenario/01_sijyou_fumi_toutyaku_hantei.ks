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

;◆↓手紙一通分の到着判定処理(開始)：『趣味について（お見合い前）』
[if exp="f.sijyou_fumi_toutyakumachi_shumi==0 && f.sijyou_omiai==0 && f.fumi_toutyaku_sijyou[2]==0"]
	[call target=*sijyou_toutyaku_hantei_shori_common]
	@jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_2
[endif]
;◆↑手紙一通分の到着判定処理(終了)
;(↑if文の中身について)
;f.sijyou_fumi_toutyakumachi_shumi==0…『趣味について』の話題の返事待ち週=0週(届く週)
;f.sijyou_omiai==0…お見合い前を示す。お見合い後は1
;f.fumi_toutyaku_sijyou[2]==0…f.fumi_toutyaku_sijyou[]は四条全手紙の到着未着情報管理配列。その[2]が『趣味について（お見合い前）』の手紙の到着(1)or未着(0)を示す

;↓以下に手紙到着判定処理を記述してください


	[endif]
[endif]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya
[s]

;◆到着判定時の共通処理
*sijyou_toutyaku_hantei_shori_common
;↓(変更の必要はありません)手紙が届いている場合のメッセージ「○○様からお手紙が届いております」の○○様の部分
	[eval exp="f.fumi_toutyaku_oaite[0]='四条様'"]
;↓(変更の必要はありません)手紙が届いているかどうか、届いた手紙は何通かを見るための変数
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
;↓(変更の必要はありません)四条からの手紙到着待ち週数をリセット
	[eval exp="f.sijyou_fumi_toutyakumachi_week=0"]
[return]
