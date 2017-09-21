﻿﻿﻿*fumi_toutyaku_hantei_sijyou
;◇四条手紙到着判定
[eval exp="f.test='手紙到着可能性なし'"]
[if exp="f.sijyou_fumi_henjimachi <= parseInt([sf.sijyou['fumi_henjimachi_ok_number']])"]
	[eval exp="f.sijyou_fumi_toutyakumachi_week = f.sijyou_fumi_toutyakumachi_week + 1"]
	[eval exp="f.test='手紙到着可能性あり'+f.sijyou_fumi_toutyakumachi_week+parseInt([sf.sijyou['fumi_hindo_week']])"]
[endif]
;↓f.sijyou_fumi_toutyakumachi_week(四条手紙が前回届いてからの経過週数)が四条の手紙を書く頻度sf.sijyou['fumi_hindo_week'を超えると手紙到着処理解放。判定リストへ飛ぶ。f.sijyou_event6 == 1→f.sijyou_omiai == 1に変更(お見合い後事件までの間に自発的に送る設定反映のため)しました(◆jsYiJcqRkk
[if exp="f.sijyou_omiai == 1 && f.sijyou_fumi_toutyakumachi_week >= parseInt([sf.sijyou['fumi_hindo_week']])"]
	@jump target=*hantei_list_sijyou
[endif]
;↓話題のお返事待ち週数が0になった時にも判定リストへ飛ぶ
[if exp="tf.test_sijyou_fumi_hensin_speed == 0 || f.sijyou_fumi_toutyakumachi_shumi == 0 || f.sijyou_fumi_toutyakumachi_sigoto == 0 || f.sijyou_fumi_toutyakumachi_kazoku == 0 || f.sijyou_fumi_toutyakumachi_kisetsu == 0 || f.sijyou_fumi_toutyakumachi_shourai == 0|| f.sijyou_fumi_toutyakumachi_yuujin == 0 || f.sijyou_fumi_toutyakumachi_shokuji == 0 || f.sijyou_fumi_toutyakumachi_kangeki == 0 || f.sijyou_fumi_toutyakumachi_neko == 0 || f.sijyou_fumi_toutyakumachi_kiki == 0 || f.sijyou_fumi_toutyakumachi_midori == 0 || f.sijyou_fumi_toutyakumachi_photo == 0 || f.sijyou_fumi_toutyakumachi_hajimari == 0 || f.sijyou_fumi_toutyakumachi_music == 0 || f.sijyou_fumi_toutyakumachi_michi == 0 || f.sijyou_fumi_toutyakumachi_henka == 0 || f.sijyou_fumi_toutyakumachi_dokusho == 0 || f.sijyou_fumi_toutyakumachi_sports == 0"]
	@jump target=*hantei_list_sijyou
[endif]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya
[s]

*hantei_list_sijyou
;手紙到着：条件有り分
;◆◆手紙到着：季節、好感度など条件有り分
;=======================================================================================
;物語進行上大切な手紙は判定先頭に移動しました。もし他のお返事を優先させたい場合は再移動をお願いします(◆jsYiJcqRkk
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『妹へ』(お見合い後) sijyou_fumi103
[if exp="f.sijyou_au == 1 && (f.okeiko_month == 9 && f.okeiko_week == 3) && f.fumi_toutyaku_sijyou[103] == 0"]
	[eval exp="f.fumi_toutyaku_oaite.push('文矢様')"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku + 1"]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_103
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：秋『ネリネ』f.okeiko_month==9 4週でもいいです　四条が自発的に送る 
[if exp="f.sijyou_omiai == 1 && (f.okeiko_month == 9 && f.okeiko_week == 4) && f.fumi_toutyaku_sijyou[33] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_33
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：冬『結納』(1月～３月３週｜家族　その他話題にて)16_end (コメントアウトされている)f.okeiko_month == 1 OR f.okeiko_month==2
;1月～３月３週に四条が自発的に送る形で届くよう調整させていただきました。通常のプレイでは1月に届くと思われますが、物語進行上大切な手紙ですので返事を溜めていて解消された場合などでも期間中なら届く仕様としてみます(◆jsYiJcqRkk
[if exp="f.sijyou_omiai == 1 && (f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3) && f.fumi_toutyaku_sijyou[41] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_41
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：春『未来へ』!!  (1月2週～1月末まで)17_ex (コメントアウトされている)
;f.okeiko_month=＞1 f.okeiko_week=＞2  f.sijyou_sobo == true
;(1月2週～1月末まで)四条祖母を見ている場合に四条が自発的に送る形で届くよう調整させていただきました(◆jsYiJcqRkk
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 1 && f.sijyou_sobo == true &&(f.okeiko_month == 1 || f.okeiko_month == 2) && f.fumi_toutyaku_sijyou[43] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_43
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：春『全力』 (『未来へ』をみている)18_ex/f.okeiko_month=＞1　 f.okeiko_week=＞2  f.sijyou_sobo == true
[if exp="f.sijyou_omiai == 1 && f.sijyou_sobo == true && (f.okeiko_month == 1 || f.okeiko_month == 2) && f.fumi_toutyaku_sijyou[43] == 1 && f.fumi_toutyaku_sijyou[44] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
  [trace exp="'春『全力』'"]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_44
[endif]
;==============================================================================================================
;あぶりだしの便せんを使用した場合、あぶりだしと話題両方にお返事のフラグが入ります。あぶりだしに関するお返事が先に到着する方が自然かと思いますので、判定リスト先頭に移動します。もし話題のお返事を先に到着させたい場合は後方に再移動をお願いします(◆jsYiJcqRkk
;◆↓手紙一通分の到着判定処理(開始)：『あぶりだしの便せん』
[if exp="f.sijyou_fumi_toutyakumachi_aburidasi == 0 && f.sijyou_omiai == 0  && f.fumi_toutyaku_sijyou[45] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_45
[endif]
;==============================================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『あぶりだしの便せん』
[if exp="f.sijyou_fumi_toutyakumachi_aburidasi == 0 && f.sijyou_omiai == 1  && f.fumi_toutyaku_sijyou[46] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_46
[endif]

;◆↓手紙一通分の到着判定処理(開始)：『趣味について』
[if exp="f.sijyou_fumi_toutyakumachi_shumi == 0 && f.sijyou_omiai == 0 && f.fumi_toutyaku_sijyou[2] == 0"]
	[call target=*sijyou_toutyaku_hantei_shori_common]
	@jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_2
[endif]
;◆↑手紙一通分の到着判定処理(終了)
;(↑if文の中身について)
;f.sijyou_fumi_toutyakumachi_shumi == 0…『趣味について』の話題の返事待ち週=0週(届く週)
;f.sijyou_omiai == 0…お見合い前を示す。お見合い後は1
;f.fumi_toutyaku_sijyou[2]  == 0…f.fumi_toutyaku_sijyou[]は四条全手紙の到着未着情報管理配列。その[2]が『趣味について（お見合い前）』の手紙の到着(1)or未着(0)を示す

;↓以下に手紙到着判定処理を記述してください
;◆↓手紙一通分の到着判定処理(開始)：『趣味について（お見合い前）』(重複分をコメントアウトさせていただきます(スクリプト担
;[if exp="f.sijyou_fumi_toutyakumachi_shumi == 0 && f.sijyou_omiai == 0 && f.fumi_toutyaku_sijyou[2] == 0"]
;	[call target=*sijyou_toutyaku_hantei_shori_common]
;	@jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_2
;[endif]
;◆↑手紙一通分の到着判定処理(終了)
;(↑if文の中身について)
;f.sijyou_fumi_toutyakumachi_shumi == 0…『趣味について』の話題の返事待ち週=0週(届く週)
;f.sijyou_omiai == 0…お見合い前を示す。お見合い後は1
;f.fumi_toutyaku_sijyou[2] == 0…f.fumi_toutyaku_sijyou[]は四条全手紙の到着未着情報管理配列。
;その[2]が『趣味について（お見合い前）』の手紙の到着(1)or未着(0)を示す

;↓以下に手紙到着判定処理を記述してください
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『趣味について(お見合い後)』
[if exp="f.sijyou_fumi_toutyakumachi_shumi == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[3] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_3 
   //←このjump先ラベルを01_sijyou_fumi_toutyaku_shori_list.ks内の手紙ラベルと合わせていただくと、目的の手紙が届くようになると思います
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『家族について(お見合い前)』
[if exp="f.sijyou_fumi_toutyakumachi_kazoku == 0 && f.sijyou_omiai == 0 && f.fumi_toutyaku_sijyou[4] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_4
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『家族について(お見合い後)』
[if exp="f.sijyou_fumi_toutyakumachi_kazoku == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[5] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_5
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『家族・祖父母両親(お見合い後・事件解決後)』(f.sijyou_omiai == 1  f.sijyou_sobo == true [5]または[4]をみたら)
[if exp="f.sijyou_fumi_toutyakumachi_kazoku == 0 && f.sijyou_omiai == 1 && f.sijyou_sobo == true && f.sijyou_event6 == 1 && (f.fumi_toutyaku_sijyou[4] == 1 || f.fumi_toutyaku_sijyou[5] == 1) &&　f.fumi_toutyaku_sijyou[6] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_6
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『家族について 兄弟』 (お見合い後・事件解決後2 f.sijyou_sobo == true　[6]をみたら)
;sijyou_kazoku_2_2/f.sijyou_omiai == 1    f.okeiko_month=>12  f.sijyou_sobo == true
[if exp="f.sijyou_fumi_toutyakumachi_kazoku == 0 && f.sijyou_omiai == 1 && f.sijyou_sobo == true && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[6] == 1 && f.fumi_toutyaku_sijyou[7] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_7
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『家族について 弟と妹』 (お見合い後・事件解決後2 f.sijyou_sobo == true [7]をみたら)
;sijyou_kazoku_2_3/f.sijyou_omiai == 1 f.okeiko_month => 12 f.sijyou_sobo == true
[if exp="f.sijyou_fumi_toutyakumachi_kazoku == 0 && f.sijyou_omiai == 1 && f.sijyou_sobo == true && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[7] == 1 && f.fumi_toutyaku_sijyou[8] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_8
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：家族・主人公と(事件解決後、1月イベント後) 
;sijyou_kazoku_3/f.sijyou_event6
[if exp="f.sijyou_fumi_toutyakumachi_kazoku == 0 && f.sijyou_omiai == 1 && f.okeiko_month == 2 && f.fumi_toutyaku_sijyou[9] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_9
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『将来について(お見合い前)』
[if exp="f.sijyou_fumi_toutyakumachi_shourai == 0 && f.sijyou_omiai == 0 && f.fumi_toutyaku_sijyou[10] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_10
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『将来について(お見合い前2)』
[if exp="f.sijyou_fumi_toutyakumachi_shourai == 0 && f.sijyou_omiai == 0 && f.fumi_toutyaku_sijyou[11] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_11
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『将来について(お見合い後)』 華道展のフラグがある2月3月"ではない"とき（華道展覧で変化しない内容だけなので見合い後は全て）
[if exp="f.sijyou_fumi_toutyakumachi_shourai == 0 && f.sijyou_omiai == 1 && f.okeiko_month !=2 && f.okeiko_month !=3 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[12] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_12
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『将来について(お見合い後,事件解決後)』前後別内容 華道展のフラグがある2月3月"ではない"とき
[if exp="f.sijyou_fumi_toutyakumachi_shourai == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.okeiko_month > 11 && f.okeiko_month !=2 && f.okeiko_month !=3 && f.fumi_toutyaku_sijyou[13] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_13
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『仕事について(お見合い前)』
[if exp="f.sijyou_fumi_toutyakumachi_sigoto == 0 && f.sijyou_omiai == 0 && f.fumi_toutyaku_sijyou[14] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_14
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『仕事について(お見合い後・事件解決後)』華道展のフラグがある2月3月"ではない"とき
[if exp="f.sijyou_fumi_toutyakumachi_sigoto == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.okeiko_month !=2 && f.okeiko_month !=3 && f.fumi_toutyaku_sijyou[15] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_15
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『仕事について(お見合い後2・事件解決後)』華道展のフラグがある2月3月"ではない"とき
[if exp="f.sijyou_fumi_toutyakumachi_sigoto == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.okeiko_month !=2 && f.okeiko_month !=3 && f.fumi_toutyaku_sijyou[16] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_16
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『仕事について』(お見合い後3・事件解決後)』事件解決後 華道展のフラグがある2月3月"ではない"とき
[if exp="f.sijyou_fumi_toutyakumachi_sigoto == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.okeiko_month !=2 && f.okeiko_month!=3 && f.fumi_toutyaku_sijyou[17] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_17
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『仕事について(お見合い後4)』事件解決後 華道展のフラグがある2月3月"ではない"とき
[if exp="f.sijyou_fumi_toutyakumachi_sigoto == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.okeiko_month !=2 && f.okeiko_month !=3 && f.fumi_toutyaku_sijyou[18] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_18
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：友人(お見合い前)sijyou_yujin_1/f.sijyou_omiai == 0
[if exp="f.sijyou_fumi_toutyakumachi_yuujin == 0 && f.sijyou_omiai == 0 && f.fumi_toutyaku_sijyou[19] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_19
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：友人(お見合い後・事件前後共通)sijyou_yujin_2/f.sijyou_omiai == 1
[if exp="f.sijyou_fumi_toutyakumachi_yuujin == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[20] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_20
[endif]
;=======================================================================================
;◆◇◆◇◆◇◆◇◆◇◆◇◆____季節の手紙＿＿＿◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：春『ヒヨドリ』1
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 0 && f.okeiko_month == 4 && f.fumi_toutyaku_sijyou[21] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
  [trace exp="'春 『ヒヨドリ』'"]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_21
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：春『アンズ』1_2/f.okeiko_month==4　sijyou_fumi22
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 0 && f.okeiko_month == 4 &&  f.fumi_toutyaku_sijyou[22] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
  [trace exp="'春 『アンズ』'"]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_22
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：春『トキワナズナ』1_3/f.okeiko_month==4
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 0 && f.okeiko_month == 4 && f.fumi_toutyaku_sijyou[23] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
  [trace exp="'春 『トキワナズナ』'"]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_23
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：春『チューリップ』3/f.okeiko_month==4　sijyou_fumi24
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 0 && f.okeiko_month == 4 && f.fumi_toutyaku_sijyou[24] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
  [trace exp="'春 『チューリップ』'"]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_24
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：春 『筍』4/f.okeiko_month==5
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 0 && f.okeiko_month == 5 && f.fumi_toutyaku_sijyou[25] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
  [trace exp="'春 『筍』'"]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_25
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏『すだれ』5/f.okeiko_month==6
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 0 && f.okeiko_month == 6 && f.fumi_toutyaku_sijyou[26] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_26
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏『すだれ2』5_1/f.okeiko_month==6
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 0 && f.okeiko_month == 6 && f.fumi_toutyaku_sijyou[27] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_27
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏『ハマナス』5_2/f.okeiko_month==7
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 0 && f.okeiko_month == 7 && f.fumi_toutyaku_sijyou[28] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
  [trace exp="'夏 『ハマナス』'"]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_28
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏『かき氷』6/f.okeiko_month==8
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 0 && f.okeiko_month == 8 && f.fumi_toutyaku_sijyou[29] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_29
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏 『蛙』7/f.okeiko_month==7
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 0 && f.okeiko_month == 7 && f.fumi_toutyaku_sijyou[30] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_30
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏『夏の夜明け』8_1/f.okeiko_month==8
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 0 && f.okeiko_month == 8 && f.fumi_toutyaku_sijyou[31] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_31
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：夏『昨晩の星』8_2/f.okeiko_month==8 デバックが面倒なのでそのままでおｋ
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 0 && f.okeiko_month == 8 && f.fumi_toutyaku_sijyou[32] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_32
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：秋『秋の夕暮れ』9/f.okeiko_month==9
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 1 && f.okeiko_month == 9 && f.fumi_toutyaku_sijyou[34] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_34
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：秋『秋の空』10/f.okeiko_month == 11
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 1 && f.okeiko_month == 11 && f.fumi_toutyaku_sijyou[35] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_35
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：秋『読書』11/f.okeiko_month == 11 四条が自発的に送る形に(～kisetsu条件を除去)調整しました(◆jsYiJcqRkk
[if exp="f.sijyou_omiai == 1 && f.okeiko_month == 11 && f.fumi_toutyaku_sijyou[36] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_36
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：冬『冬の夜ふけに』12/f.okeiko_month == 11
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 1 && f.okeiko_month == 11 && f.fumi_toutyaku_sijyou[37] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_37
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：冬『別荘にて』13/f.okeiko_month == 12  四条が自発的に送る形に(～kisetsu条件を除去)調整しました(◆jsYiJcqRkk
[if exp="f.sijyou_omiai == 1 && f.okeiko_month == 12 && f.fumi_toutyaku_sijyou[38] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_38
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：冬『新年の準備』14/f.okeiko_month == 12
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 1 && f.okeiko_month == 12 && f.fumi_toutyaku_sijyou[39] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_39
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：冬『白霜』15/f.okeiko_month == 1
[if exp="f.sijyou_fumi_toutyakumachi_kisetsu == 0 && f.sijyou_omiai == 1 && f.okeiko_month == 1 && f.fumi_toutyaku_sijyou[40] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_40
[endif]
;=======================================================================================
;『結納』『未来へ』『全力』について、判定Topへ移動しました
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：春 『お茶の中に』2/f.okeiko_month==3　3月に四条が自発的に送る形で届くよう調整させていただきました(◆jsYiJcqRkk
[if exp="f.sijyou_omiai == 1 && f.okeiko_month == 3 && f.fumi_toutyaku_sijyou[42] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_42
[endif]
;=======================================================================================
;◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇あぶりだしの手紙◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇◇
;==============================================================================================================
;あぶりだしの手紙判定については、22行目(判定リスト先頭)に移動しました
;=======================================================================================
;◆◇◆◇◆◇◆◇◆◇◆◇◆____話題の手紙＿＿＿◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇
;=======================================================================================
;新茶の話題 f.sijyou_fumi_toutyakumachi_sintya
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：新茶の話題１（事件前　お見合い前後共通）sijyou_fumi47
[if exp="f.sijyou_fumi_toutyakumachi_sintya == 0 && f.sijyou_event6 == 0 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[47] == 0"]
 [call target=*sijyou_toutyaku_hantei_shori_common]
 @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_47
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：新茶の話題１（事件後）sijyou_fumi48 （事件前）を見ていない場合表示
[if exp="f.sijyou_fumi_toutyakumachi_sintya == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[47] == 0 && f.fumi_toutyaku_sijyou[48] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_48
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：新茶の話題２（事件後） *sijyou_fumi49 新茶の話題１(事件前[47])または（事件後[48]）を見ている
[if exp="f.sijyou_fumi_toutyakumachi_sintya == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && (f.fumi_toutyaku_sijyou[47] == 1 || f.fumi_toutyaku_sijyou[48] == 1) && f.fumi_toutyaku_sijyou[49] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_49
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：新茶の話題３（事件後） sijyou_fumi50 新茶の話題１(事件前[47])または（事件後[48])をみている
[if exp="f.sijyou_fumi_toutyakumachi_sintya == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && (f.fumi_toutyaku_sijyou[47] == 1 || f.fumi_toutyaku_sijyou[48] == 1) && f.fumi_toutyaku_sijyou[50] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
  @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_50
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：新茶の話題　凡庸（事件前） sijyou_fumi51 新茶の話題１(事件前[47])を見ている 52をみていない
[if exp="f.sijyou_fumi_toutyakumachi_sintya == 0 && f.sijyou_omiai == 0 && (f.fumi_toutyaku_sijyou[47] == 1 || f.fumi_toutyaku_sijyou[48] == 1) && f.fumi_toutyaku_sijyou[51] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
  @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_51
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：新茶の話題　凡庸（事件前） sijyou_fumi52  新茶の話題１(事件前[47])を見ているを見ている 51をみていない
[if exp="f.sijyou_fumi_toutyakumachi_sintya == 0 && f.sijyou_omiai == 0 && f.sijyou_event6 == 0 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[47] == 1 && f.fumi_toutyaku_sijyou[51] == 0 && f.fumi_toutyaku_sijyou[52] == 0"]
 [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_52
  [endif]
;=======================================================================================
;sijyou_fumi53→『一日のはじまり２＿２凡庸』
;sijyou_fumi54→ なし
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：新茶の話題　成功　凡庸（事件後） sijyou_fumi55 56をみていない
[if exp="f.sijyou_fumi_toutyakumachi_sintya_shumi == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[56] == 0 && f.fumi_toutyaku_sijyou[55] == 0"]
 [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_55
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：新茶の話題　失敗　凡庸（事件後） sijyou_fumi56　55をみていない
[if exp="f.sijyou_fumi_toutyakumachi_sintya == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[55] == 0 && f.fumi_toutyaku_sijyou[56] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
  @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_56
[endif]
;=======================================================================================
;さつきの話題 f.sijyou_fumi_toutyakumachi_satuki
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：さつきの話題(見合い後) sijyou_fumi57　事件前後共通手紙側で判別
[if exp="f.sijyou_fumi_toutyakumachi_satuki == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[57] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_57
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：さつきの話題(見合い後・事件後) sijyou_fumi58
[if exp="f.sijyou_fumi_toutyakumachi_satuki == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[58] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_58
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：詩集sijyou_fumi59　見合い前
[if exp="f.sijyou_fumi_toutyakumachi_dokusho == 0 && f.sijyou_omiai == 0 && f.fumi_toutyaku_sijyou[59] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_59
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：聞き上手と話し上手１ (お見合い前)sijyou_fumi60
[if exp="f.sijyou_fumi_toutyakumachi_kiki == 0 && f.sijyou_omiai == 0 && f.sijyou_event6 == 0 && f.fumi_toutyaku_sijyou[60] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_60
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：聞き上手と話し上手１(お見合い後) sijyou_fumi61＿呼称は手紙側で判別[60]と同じ内容なので判別
[if exp="f.sijyou_fumi_toutyakumachi_kiki == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[60] == 0 && f.fumi_toutyaku_sijyou[61] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_61
  [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：聞き上手と話し上手２(お見合い前)　 sijyou_fumi62
[if exp="f.sijyou_fumi_toutyakumachi_kiki == 0 && f.sijyou_omiai == 0 && f.fumi_toutyaku_sijyou[62] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_62
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：聞き上手と話し上手２(お見合い後)　 sijyou_fumi63
[if exp="f.sijyou_fumi_toutyakumachi_kiki == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[62] == 0 && f.fumi_toutyaku_sijyou[63] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_63
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：聞き上手と話し上手３(事件解決後のみ) sijyou_fumi64
[if exp="f.sijyou_fumi_toutyakumachi_kiki == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[64] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_64
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：食事 sijyou_fumi65 f.sijyou_fumi_toutyakumachi_shokuji
[if exp="f.sijyou_fumi_toutyakumachi_shokuji == 0 &&  (f.sijyou_omiai == 0 || f.sijyou_event6 == 0) && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[65] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_65
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：食事2 （お見合い後＿事件前） sijyou_fumi66
[if exp="f.sijyou_fumi_toutyakumachi_shokuji == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 0 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[66] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_66
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：食事2 （お見合い後＿事件後） sijyou_fumi67
[if exp="f.sijyou_fumi_toutyakumachi_shokuji == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[67] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_67
   [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：緑の石 sijyou_fumi68 見合い前後_共通
[if exp="f.sijyou_fumi_toutyakumachi_midori == 0 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[68] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_68
  [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：緑の石2　凡庸 sijyou_fumi69
[if exp="f.sijyou_fumi_toutyakumachi_midori == 0 && f.sijyou_omiai == 0 && f.okeiko_month != 10 && f.sijyou_event6 == 0 && f.fumi_toutyaku_sijyou[68] == 1 && f.fumi_toutyaku_sijyou[69] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_69
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：緑の石2　凡庸(見合い後　事件判別なし※2の内容が同じなので　69=0のとき) sijyou_fumi70 
[if exp="f.sijyou_fumi_toutyakumachi_midori == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[69] == 0 && f.fumi_toutyaku_sijyou[68] == 1 && f.fumi_toutyaku_sijyou[70] == 0"]
 [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_70
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：緑の石３(事件後のみ) sijyou_fumi71
[if exp="f.sijyou_fumi_toutyakumachi_midori == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[68] == 1 && f.fumi_toutyaku_sijyou[71] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_71
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：緑の石４(事件後のみ) sijyou_fumi72 71 == 1
[if exp="f.sijyou_fumi_toutyakumachi_midori == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[71] == 1 && f.fumi_toutyaku_sijyou[72] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_72
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『一日のはじまり１』ichi_nichi sijyou_fumi73　（事件解決前　見合い前後判定なし）
[if exp="f.sijyou_fumi_toutyakumachi_hajimari == 0 && f.sijyou_event6 == 0 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[73] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_73
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『一日のはじまり２凡庸』ichi_nichi2 sijyou_fumi74（お見合い前）１をみている
[if exp="f.sijyou_fumi_toutyakumachi_hajimari == 0 && f.sijyou_omiai == 0 && f.okeiko_month != 10 && f.sijyou_event6 == 0 && f.fumi_toutyaku_sijyou[73] == 1 && f.fumi_toutyaku_sijyou[74] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
  @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_74
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『一日のはじまり２＿２凡庸』sijyou_fumi53（お見合い後　事件解決後）１をみている
[if exp="f.sijyou_fumi_toutyakumachi_hajimari == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[73] == 1 && f.fumi_toutyaku_sijyou[53] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_53
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『一日のはじまり３(お見合い後 事件解決後)』ichi_nichi3 sijyou_fumi75
[if exp="f.sijyou_fumi_toutyakumachi_hajimari == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[75] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_75
  [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『猫2』neko*sijyou_fumi76　（見合い前・呼称呼び捨て・事件解決前）三毛猫の疑問
[if exp="f.sijyou_fumi_toutyakumachi_neko == 0 && f.sijyou_omiai == 0 && f.okeiko_month != 10 && f.sijyou_event6 == 0 && f.fumi_toutyaku_sijyou[76] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_76
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『猫2 凡庸A』neko2 sijyou_fumi77（見合い後・呼称呼び捨て・事件解決前　呼称手紙側で変更）
[if exp="f.sijyou_fumi_toutyakumachi_neko == 0 & f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[77] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_77
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『猫2 凡庸B』sijyou_fumi78（見合い後 事件解決後）
[if exp="f.sijyou_fumi_toutyakumachi_neko == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[78] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_78
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『猫３　事件解決後』neko3*sijyou_fumi79（見合い後 事件解決後　２どちらかをみている）
[if exp="f.sijyou_fumi_toutyakumachi_nek o== 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.sijyou_event6 == 1 && (f.fumi_toutyaku_sijyou[77] == 1 || f.fumi_toutyaku_sijyou[78] == 1) && f.fumi_toutyaku_sijyou[79] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_79
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『猫４　事件解決後』neko4*sijyou_fumi80（見合い後 事件解決後 ３を見ている）
[if exp="f.sijyou_fumi_toutyakumachi_neko == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[79] == 1 && f.fumi_toutyaku_sijyou[80] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_80
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『猫５　事件解決後』neko4b*sijyou_fumi81（見合い後 事件解決後　４をみている）
[if exp="f.sijyou_fumi_toutyakumachi_neko == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[80] == 1 && f.fumi_toutyaku_sijyou[81] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_81
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『猫６　事件解決後』neko5*sijyou_fumi82（見合い後 事件解決後　５をみている）
[if exp="f.sijyou_fumi_toutyakumachi_neko == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[81] == 1 && f.fumi_toutyaku_sijyou[82] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_82
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『道』sijyou_fumi83*michi　（見合い前　事件解決前）
[if exp="f.sijyou_fumi_toutyakumachi_michi == 0 && f.sijyou_omiai == 0 && f.okeiko_month != 10 && f.sijyou_event6 == 0 && f.fumi_toutyaku_sijyou[83] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_83
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『道２ (事件解決後)』sijyou_fumi84*michi2
[if exp="f.sijyou_fumi_toutyakumachi_michi == 0 && f.sijyou_omiai == 1 && f.okeiko_month != 10 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[84] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_84
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『お気に入りの曲１』sijyou_fumi85*kuoku1  お見合い前
[if exp="f.sijyou_fumi_toutyakumachi_music == 0 && f.sijyou_omiai == 0 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[85] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_85
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『お気に入りの曲２』sijyou_fumi86*kyoku2 お見合い後事件中・９・１０・１１月ではないとき　お気に入りの曲１の純粋な続きの内容のため[85] == 1のとき
[if exp="f.sijyou_fumi_toutyakumachi_music == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 0 && f.okeiko_month != 9 && f.okeiko_month != 10 && f.okeiko_month != 11 && f.fumi_toutyaku_sijyou[85] == 1 && f.fumi_toutyaku_sijyou[86] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_86
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『変化と永遠１』sijyou_fumi87*henka1(見合い後かつ事件前)
[if exp="f.sijyou_fumi_toutyakumachi_henka == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 0 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[87] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_87
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『変化と永遠２』sijyou_fumi88*henka2　(見合い前かつ事件前)
[if exp="f.sijyou_fumi_toutyakumachi_henka  == 0 && f.sijyou_omiai == 0 && f.sijyou_event6 == 0 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[88] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_88
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『変化と永遠３ (事件解決後) 』sijyou_fumi89*henka3
[if exp="f.sijyou_fumi_toutyakumachi_henka == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[89] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_89
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『スポーツ１ 事件解決前』*sijyou_fumi90*sps_f.sijyou_fumi_toutyakumachi_sports
[if exp="f.sijyou_fumi_toutyakumachi_sports == 0 && f.sijyou_omiai == 0 && f.sijyou_event6 == 0 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[90] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_90
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『スポーツ 事件解決後』sps2 sijyou_fumi91
[if exp="f.sijyou_fumi_toutyakumachi_sports == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[91] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_91
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『 スポーツ2 （お見合い前）』sps2_1 sijyou_fumi92
[if exp="f.sijyou_fumi_toutyakumachi_sports == 0 && f.sijyou_omiai == 0 && f.sijyou_event6 == 0 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[92] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_92
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『 スポーツ2 （お見合い後　事件判定なし）』sps2_2 sijyou_fumi93 92をみていない
[if exp="f.sijyou_fumi_toutyakumachi_sports == 0 && f.sijyou_omiai == 1 && f.fumi_toutyaku_sijyou[92] == 0 && f.fumi_toutyaku_sijyou[93] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_93
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『観劇の話題　（お見合い後のみ 事件前）』kangeki sijyou_fumi94
[if exp="f.sijyou_fumi_toutyakumachi_kangeki == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 0 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[94] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_94
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『観劇の話題　（お見合い後　事件後）』sijyou_fumi95*kangeki2
[if exp="f.sijyou_fumi_toutyakumachi_kangeki == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[95] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_95
  [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『写真の話題（事件前）』sijyou_fumi96*syasin
[if exp="f.sijyou_fumi_toutyakumachi_photo == 0 && f.sijyou_omiai == 0 && f.sijyou_event6 == 0 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[96] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_96
  [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『写真の話題（事件後）』sijyou_fumi97*syasin2　きた
[if exp="f.sijyou_fumi_toutyakumachi_photo == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[97] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_97
 [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『友人について凡庸１』(お見合い後 事件解決前) sijyou_fumi98
[if exp="f.sijyou_fumi_toutyakumachi_yuujin == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 0 && f.okeiko_month != 10 && f.fumi_toutyaku_sijyou[98] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_98
  [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『友人について凡庸２』(お見合い後 事件後) sijyou_fumi99 sijyou_yujin_b2|(凡庸)
[if exp="f.sijyou_fumi_toutyakumachi_yuujin == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[99] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_99
  [endif]
;=======================================================================================
;100~103移動
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『怪談』(お見合い前→事件解決前のみへ変更) sijyou_fumi100 sijyou_kaidan_1
[if exp="f.sijyou_fumi_toutyakumachi_kaidan == 0 && f.sijyou_event6 == 0 && f.fumi_toutyaku_sijyou[104] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_104
  [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『怪談』(お見合い後・・事件解決後1) sijyou_fumi100 sijyou_kaidan_1
[if exp="f.sijyou_fumi_toutyakumachi_kaidan == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[105] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
  ;このjump先ラベルを01_sijyou_fumi_toutyaku_shori_list.ks内の手紙ラベルと合わせていただくと、目的の手紙が届くようになると思います
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_105
  [endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『怪談』(お見合い後・・事件解決後2 (1)を見ている) sijyou_fumi100 sijyou_kaidan_1
[if exp="f.sijyou_fumi_toutyakumachi_kaidan == 0 && f.sijyou_omiai == 1 && f.sijyou_event6 == 1 && f.fumi_toutyaku_sijyou[106] == 0"]
  [call target=*sijyou_toutyaku_hantei_shori_common]
   @jump storage=01_sijyou_fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_sijyou_106
  [endif]

;=======================================================================================
;//////////////////////////////以降は変更の必要はありません////////////////////////////////
;=======================================================================================
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya
[s]

;◆到着判定時の共通処理
*sijyou_toutyaku_hantei_shori_common
;↓(変更の必要はありません)手紙が届いている場合のメッセージ「○○様からお手紙が届いております」の○○様の部分
	[eval exp="f.fumi_toutyaku_oaite[0]='四条様'"]
;↓(変更の必要はありません)手紙が届いているかどうか、届いた手紙は何通かを見るための変数
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
;↓(変更の必要はありません)四条からの手紙到着待ち週数を好感度に応じてリセット
[if exp="f.para_sijyou_koukando >= parseInt([sf.sijyou['koukando_b']])"]
	[eval exp="f.sijyou_fumi_toutyakumachi_week = 2"]
[elsif exp="f.para_sijyou_koukando >= parseInt([sf.sijyou['koukando_a']])"]
	[eval exp="f.sijyou_fumi_toutyakumachi_week = 1"]
[else]
	[eval exp="f.sijyou_fumi_toutyakumachi_week = 0"]
[endif]
[return]
