*fumi_toutyaku_hantei_sijyou
;◇四条手紙到着判定
[eval exp="f.test='手紙到着可能性なし'"]
[if exp="f.sijyou_fumi_henjimachi <= parseInt([sf.sijyou['fumi_henjimachi_ok_number']])"]
	[eval exp="f.sijyou_fumi_toutyakumachi_week=f.sijyou_fumi_toutyakumachi_week+1"]
	[eval exp="f.test='手紙到着可能性あり'+f.sijyou_fumi_toutyakumachi_week+parseInt([sf.sijyou['fumi_hindo_week']])"]
[endif]
;↓f.sijyou_fumi_toutyakumachi_week(四条手紙が前回届いてからの経過週数)が四条の手紙を書く頻度sf.sijyou['fumi_hindo_week'を超えると手紙到着処理解放。判定リストへ飛ぶ
[if exp="f.sijyou_event6==1 && f.sijyou_fumi_toutyakumachi_week >= parseInt([sf.sijyou['fumi_hindo_week']])"]
	@jump target=*hantei_list_sijyou
[endif]
;↓話題のお返事待ち週数が0になった時にも判定リストへ飛ぶ
[if exp="f.sijyou_fumi_toutyakumachi_shumi==0||f.sijyou_fumi_toutyakumachi_sigoto==0||f.sijyou_fumi_toutyakumachi_kazoku==0||f.sijyou_fumi_toutyakumachi_kisetsu==0||f.sijyou_fumi_toutyakumachi_shourai==0||f.sijyou_fumi_toutyakumachi_yuujin==0||f.sijyou_fumi_toutyakumachi_shokuji==0||f.sijyou_fumi_toutyakumachi_kangeki==0||f.sijyou_fumi_toutyakumachi_neko==0||f.sijyou_fumi_toutyakumachi_kiki==0||f.sijyou_fumi_toutyakumachi_midori==0||f.sijyou_fumi_toutyakumachi_photo==0||f.sijyou_fumi_toutyakumachi_hajimari==0||f.sijyou_fumi_toutyakumachi_music==0||f.sijyou_fumi_toutyakumachi_michi==0||f.sijyou_fumi_toutyakumachi_henka==0||f.sijyou_fumi_toutyakumachi_dokusho==0||f.sijyou_fumi_toutyakumachi_sports==0"]
	@jump target=*hantei_list_sijyou
[endif]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya
[s]

*hantei_list_sijyou
;手紙到着：条件有り分
;◆◆手紙到着：季節、好感度など条件有り分
;◆↓手紙一通分の到着判定処理(開始)：『趣味について』
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
;◆↓手紙一通分の到着判定処理(開始)：『趣味について（お見合い前）』(重複分をコメントアウトさせていただきます(スクリプト担
;[if exp="f.sijyou_fumi_toutyakumachi_shumi==0 && f.sijyou_omiai==0 && f.fumi_toutyaku_sijyou[2]==0"]
;	[call target=*sijyou_toutyaku_hantei_shori_common]
;	@jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_2
;[endif]
;◆↑手紙一通分の到着判定処理(終了)
;(↑if文の中身について)
;f.sijyou_fumi_toutyakumachi_shumi==0…『趣味について』の話題の返事待ち週=0週(届く週)
;f.sijyou_omiai==0…お見合い前を示す。お見合い後は1
;f.fumi_toutyaku_sijyou[2]==0…f.fumi_toutyaku_sijyou[]は四条全手紙の到着未着情報管理配列。
;その[2]が『趣味について（お見合い前）』の手紙の到着(1)or未着(0)を示す

;↓以下に手紙到着判定処理を記述してください
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『趣味について(お見合い後)』
[if exp="f.sijyou_fumi_toutyakumachi_shumi==0 && f.sijyou_omiai==1 && f.fumi_toutyaku_sijyou[3]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_3 
   //←このjump先ラベルを01_sijyou_fumi_toutyaku_shori_list.ks内の手紙ラベルと合わせていただくと、目的の手紙が届くようになると思います
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『家族について(お見合い前)』
[if exp="f.sijyou_fumi_toutyakumachi_kazoku==0 && f.sijyou_omiai==0 && f.fumi_toutyaku_sijyou[4]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_4
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『家族について(お見合い後)』
[if exp="f.sijyou_fumi_toutyakumachi_kazoku==0 && f.sijyou_omiai==1 && f.fumi_toutyaku_sijyou[5]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_5
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『家族・祖父母両親(お見合い後・事件解決後)』f.sijyou_omiai==1  f.sijyou_sobo==true
[if exp="f.sijyou_fumi_toutyakumachi_kazoku==0 && f.sijyou_omiai==1 && f.sijyou_sobo==true && f.fumi_toutyaku_sijyou[6]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_6
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『家族について 兄弟』 (お見合い後・事件解決後2 f.sijyou_sobo==true)
;sijyou_kazoku_2_2/f.sijyou_omiai==1    f.okeiko_month=>12  f.sijyou_sobo==true
[if exp="f.sijyou_fumi_toutyakumachi_kazoku==0 && f.sijyou_omiai==1 && f.okeiko_month==2 && f.fumi_toutyaku_sijyou[7]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_7
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『家族について 弟と妹』 (お見合い後・事件解決後2 f.sijyou_sobo==true)
;sijyou_kazoku_2_3/f.sijyou_omiai==1  f.okeiko_month=>12  f.sijyou_sobo==true
[if exp="f.sijyou_fumi_toutyakumachi_kazoku==0 && f.sijyou_omiai==1 && f.okeiko_month==2 && f.fumi_toutyaku_sijyou[8]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_8
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：家族・主人公と(イベント6後??) 
;sijyou_kazoku_3/f.sijyou_event6
[if exp="f.sijyou_fumi_toutyakumachi_sigoto==0 && f.sijyou_omiai==1 && f.okeiko_month==2 && f.fumi_toutyaku_sijyou[9]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_9
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『将来について(お見合い前)』
[if exp="f.sijyou_fumi_toutyakumachi_shourai==0 && f.sijyou_omiai==0 && f.fumi_toutyaku_sijyou[10]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_10
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『将来について(お見合い前2)』
[if exp="f.sijyou_fumi_toutyakumachi_shourai==0 && f.sijyou_omiai==0 && f.fumi_toutyaku_sijyou[11]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_11
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『将来について(お見合い後)』
[if exp="f.sijyou_fumi_toutyakumachi_shourai==0 && f.sijyou_omiai==1 && f.fumi_toutyaku_sijyou[12]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_12
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『将来について(お見合い後,事件解決後)』
[if exp="f.sijyou_fumi_toutyakumachi_shourai==0 && f.sijyou_omiai==1 && f.okeiko_month>11 && f.fumi_toutyaku_sijyou[13]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_13
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『仕事について(お見合い前)』
[if exp="f.sijyou_fumi_toutyakumachi_sigoto==0 && f.sijyou_omiai==0 && f.fumi_toutyaku_sijyou[14]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_14
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『仕事について(お見合い後)』
[if exp="f.sijyou_fumi_toutyakumachi_sigoto==0 && f.sijyou_omiai==1 && f.fumi_toutyaku_sijyou[15]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_15
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『仕事について(お見合い後2)』
[if exp="f.sijyou_fumi_toutyakumachi_sigoto==0 && f.sijyou_omiai==1 && f.fumi_toutyaku_sijyou[16]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_16
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『仕事について』(お見合い後3)』事件解決後
[if exp="f.sijyou_fumi_toutyakumachi_sigoto==0 && f.sijyou_omiai==1 && f.okeiko_month>11 && f.fumi_toutyaku_sijyou[17]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_17
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『仕事について(お見合い後4)』事件解決後２月２日以降
[if exp="f.sijyou_fumi_toutyakumachi_sigoto==0 && f.sijyou_omiai==1 && f.okeiko_month==2 && f.fumi_toutyaku_sijyou[18]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_18
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：友人(お見合い前)sijyou_yujin_1/f.sijyou_omiai==0
[if exp="f.sijyou_fumi_toutyakumachi_yuujin==0 && f.sijyou_omiai==0 && f.fumi_toutyaku_sijyou[19]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_19
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：友人(お見合い後)sijyou_yujin_2/f.sijyou_omiai==1
[if exp="f.sijyou_fumi_toutyakumachi_yuujin==0 && f.sijyou_omiai==1 && f.fumi_toutyaku_sijyou[20]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_20
[endif]
;=======================================================================================
;◆◇◆◇◆◇◆◇◆◇◆◇◆____季節の手紙＿＿＿◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：春『ヒヨドリ』1
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==4 && f.fumi_toutyaku_sijyou[21]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_21
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：春『チューリップ』3/f.okeiko_month==4
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==4 && f.fumi_toutyaku_sijyou[24]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_22
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：春『アンズ』1_2/f.okeiko_month==4
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==4 &&  f.fumi_toutyaku_sijyou[22]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_23
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：春『トキワナズナ』1_3/f.okeiko_month==4
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==4 && f.fumi_toutyaku_sijyou[23]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_24
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：春 『筍』4/f.okeiko_month==4
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==4 && f.fumi_toutyaku_sijyou[25]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_25
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏『すだれ』5/f.okeiko_month==5
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==5 && f.fumi_toutyaku_sijyou[26]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_26
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏『すだれ2』5_1/f.okeiko_month==6
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==6 && f.fumi_toutyaku_sijyou[27]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_27
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏『ハマナス』5_2/f.okeiko_month==7
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==7 && f.fumi_toutyaku_sijyou[28]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_28
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏『かき氷』6/f.okeiko_month==7
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==7 && f.fumi_toutyaku_sijyou[29]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_29
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏 『蛙』7/f.okeiko_month==7
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==7 && f.fumi_toutyaku_sijyou[30]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_30
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏『夏の夜明け』8_1/f.okeiko_month==8
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==8 && f.fumi_toutyaku_sijyou[31]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_31
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏『昨晩の星』8_2/f.okeiko_month==8 仲がいいこと
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==8 && f.fumi_toutyaku_sijyou[32]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_32
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏『ネリネ』8_3/f.okeiko_month==8
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==8 && f.fumi_toutyaku_sijyou[33]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_33
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：秋『秋の夕暮れ』9/f.okeiko_month==9
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==9 && f.fumi_toutyaku_sijyou[34]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_34
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：秋『秋の空』10/f.okeiko_month==10
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==10 && f.fumi_toutyaku_sijyou[35]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_35
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：秋『読書』11/f.okeiko_month==11
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==11 && f.fumi_toutyaku_sijyou[36]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_36
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：冬『冬の夜ふけに』12/f.okeiko_month==11
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==11 && f.fumi_toutyaku_sijyou[37]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_37
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：冬『別荘にて』13/f.okeiko_month==12
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==12 && f.fumi_toutyaku_sijyou[38]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_38
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：冬『新年の準備』14/f.okeiko_month==12
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==12 && f.fumi_toutyaku_sijyou[39]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_39
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：冬『白霜』15/f.okeiko_month==1
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && f.okeiko_month==1 && f.fumi_toutyaku_sijyou[40]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_40
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：冬『結納』(1月～３月３週｜家族　その他話題にて)16_end (コメントアウトされている)f.okeiko_month==1 OR f.okeiko_month==2
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0 && (f.okeiko_month==1 || f.okeiko_month==3) && f.fumi_toutyaku_sijyou[41]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_41
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：春 『お茶の中に』2/f.okeiko_month==3
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==3 && f.sijyou_omiai==1 && f.fumi_toutyaku_sijyou[42]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_42
[endif]
;=======================================================================================
;！！日付 条件指定未！！
;◆↓手紙一通分の到着判定処理(開始)：春『未来へ』!!  (1月2週～1月末まで)17_ex (コメントアウトされている)
;f.okeiko_month=＞1 f.okeiko_week=＞2  f.sijyou_sobo==true
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==1 && f.sijyou_sobo==true &&(f.okeiko_month==1 || f.okeiko_month==2) && f.fumi_toutyaku_sijyou[43]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_43
[endif]
;=======================================================================================
;！！日付　条件指定未！！
;◆↓手紙一通分の到着判定処理(開始)：春『全力』 (『未来へ』をみている)18_ex/f.okeiko_month=＞1　 f.okeiko_week=＞2  f.sijyou_sobo==true
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==1 &&(f.okeiko_month==1 || f.okeiko_month==2) && f.fumi_toutyaku_sijyou[44]==0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_44
[endif]
;==============================================================================================================
;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇あぶりだしの手紙◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
;==============================================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『あぶりだしの便せん』
;[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==0  && f.fumi_toutyaku_sijyou[45]==0"]
 ; [call target=*sijyou_toutyaku_hantei_shori_common]
  ; @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_45
;[endif]
;==============================================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『あぶりだしの便せん』
;[if exp="f.sijyou_fumi_toutyakumachi_kisetsu==0 && f.sijyou_omiai==1  && f.fumi_toutyaku_sijyou[46]==0"]
 ; [call target=*sijyou_toutyaku_hantei_shori_common]
  ; @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_46
;[endif]
;=======================================================================================
;◆◇◆◇◆◇◆◇◆◇◆◇◆____話題の手紙＿＿＿◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：新茶の話題１（事件前）sijyou_fumi47
;[if exp="f.sijyou_fumi_toutyakumachi_shumi==0 && f.sijyou_omiai==1 && f.fumi_toutyaku_sijyou[3]==0"]
 ; [call target=*sijyou_toutyaku_hantei_shori_common]
  ; @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_3 
  ; //←このjump先ラベルを01_sijyou_fumi_toutyaku_shori_list.ks内の手紙ラベルと合わせていただくと、目的の手紙が届くようになると思います
;[endif]
;=======================================================================================
;新茶の話題１（事件後）sijyou_fumi48
;新茶の話題２（事件後） *sijyou_fumi49
;新茶の話題３（事件後） *sijyou_fumi50
;新茶の話題　凡庸（事件前） *sijyou_fumi51
;新茶の話題　凡庸（事件前） *sijyou_fumi52
;新茶の話題　凡庸（事件後） *sijyou_fumi55
;新茶の話題　凡庸（事件後） *sijyou_fumi56
;さつきの話題 sijyou_fumi57
;さつきの話題(見合い後) sijyou_fumi58
;詩集*sijyou_fumi59
;聞き上手と話し上手１ sijyou_fumi60
;聞き上手と話し上手１(事件解決後) sijyou_fumi61
;聞き上手と話し上手２　凡庸 sijyou_fumi62
;聞き上手と話し上手２　凡庸 sijyou_fumi63
;聞き上手と話し上手３(事件解決後) sijyou_fumi64
;食事 sijyou_fumi65
;食事 凡庸1 sijyou_fumi66
;食事 凡庸2 sijyou_fumi67
;緑の石 sijyou_fumi68
;緑の石　凡庸 sijyou_fumi69
;緑の石　凡庸(事件後) sijyou_fumi70
;緑の石３(事件後のみ sijyou_fumi71
;緑の石４(事件後のみ) sijyou_fumi72
;『一日のはじまり』ichi_nichi sijyou_fumi73
;『一日のはじまり２凡庸』ichi_nichi2 sijyou_fumi74
;『一日のはじまり２＿２凡庸』sijyou_fumi53
;『一日のはじまり３』ichi_nichi3 sijyou_fumi75
;『猫』neko*sijyou_fumi76
;『猫 凡庸』neko2 sijyou_fumi77
;『猫 凡庸2』sijyou_fumi78
;『猫３　事件解決後』neko3*sijyou_fumi7
;『猫４　事件解決後』neko4*sijyou_fumi78
;『猫５　事件解決後』neko4b*sijyou_fumi79
;『猫６　事件解決後』neko5*sijyou_fumi80
;『道』michi*sijyou_fumi81
;『道２ (事件解決後)』michi2*sijyou_fumi82
;『お気に入りの曲』kuoku1*sijyou_fumi83
;『お気に入りの曲２』sijyou_fumi84*kyoku
;『変化と永遠』*enka1*sijyou_fumi85
;『変化と永遠 (事件解決後) 』 henka2*sijyou_fumi86
;『スポーツ』sps*sijyou_fumi88
;『スポーツ 事件解決後』sps2*sijyou_fumi89
;『 スポーツ 凡庸1』sps2_1*sijyou_fumi91
;『 スポーツ 凡庸2』sps2_2 *sijyou_fumi92
;『観劇の話題　事件前』kangeki *sijyou_fumi93
;『観劇の話題　事件後』kangeki2 *sijyou_fumi94
;『写真の話題（事件前）』syasin *sijyou_fumi95
;『写真の話題（事件後）』syasin2*sijyou_fumi96
;『友人について凡庸』(お見合い後) sijyou_fumi98
;=======================================================================================






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
