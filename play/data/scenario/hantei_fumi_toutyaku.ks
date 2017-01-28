;◆手紙到着判定処理開始
*fumi_toutyaku_hantei_all
[iscript]
f.fumi_toutyaku_oaite = []; //到着時お相手名リセット
f.hato = 0; //鳩による到着リセット
if (f.okeiko_month==4){
f.okeiko_month_kansuuji="四月 ";
}
if (f.okeiko_month==5){
f.okeiko_month_kansuuji="五月 ";
}
if (f.okeiko_month==6){
f.okeiko_month_kansuuji="六月 ";
}
if (f.okeiko_month==7){
f.okeiko_month_kansuuji="七月 ";
}
if (f.okeiko_month==8){
f.okeiko_month_kansuuji="八月 ";
}
if (f.okeiko_month==9){
f.okeiko_month_kansuuji="九月 ";
}
if (f.okeiko_month==10){
f.okeiko_month_kansuuji="十月 ";
}
if (f.okeiko_month==11){
f.okeiko_month_kansuuji="十一月 ";
}
if (f.okeiko_month==12){
f.okeiko_month_kansuuji="十二月 ";
}
if (f.okeiko_month==1){
f.okeiko_month_kansuuji="一月 ";
}
if (f.okeiko_month==2){
f.okeiko_month_kansuuji="二月 ";
}
if (f.okeiko_month==3){
f.okeiko_month_kansuuji="三月 ";
}
[endscript]

*fumi_toutyaku_hantei_kuroda
;=============================================
;◇◇黒田手紙到着判定◇◇
;=============================================
[eval exp="f.test='手紙到着可能性なし'"]
[if exp="f.kuroda_fumi_henjimachi <= parseInt([sf.kuroda['fumi_henjimachi_ok_number']])"]
	[eval exp="f.kuroda_fumi_toutyakumachi_week=f.kuroda_fumi_toutyakumachi_week+1"]
	[eval exp="f.test='手紙到着可能性あり'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
	[if exp="f.kuroda_fumi_toutyakumachi_week >= parseInt([sf.kuroda['fumi_hindo_week']])"]
;◆◆手紙到着：季節、好感度など条件有り分
;◆2【つばめの季節】5月1週～6月4週に好感度が一定以上で届く
		[if exp="(f.okeiko_month==5 || f.okeiko_month==6) && f.para_kuroda_koukando > 5 && f.fumi_toutyaku_kuroda[2]==0"]
			[eval exp="f.test='手紙到着「つばめの季節」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_2

;◆3【ヤマアジサイ】5月3週～6月4週に好感度が一定以上で届く
		[elsif exp="((f.okeiko_month==5 && (f.okeiko_week==3 || f.okeiko_week==4))|| f.okeiko_month==6) && f.para_kuroda_koukando > 20 && f.fumi_toutyaku_kuroda[3]==0"]
			[eval exp="f.test='手紙到着「ヤマアジサイ」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_3
		
;◆4【蛍の季節】6月1週～7月2週に好感度が一定以上で届く
		[elsif exp="(f.okeiko_month==6 || (f.okeiko_month==7 && (f.okeiko_week==1 || f.okeiko_week==2))) && f.para_kuroda_koukando > 15 && f.fumi_toutyaku_kuroda[4]==0"]
			[eval exp="f.test='手紙到着「蛍の季節」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_4
			
;◆5【夏山に来ています】7月1週～7月4週に好感度が一定以上で届く
		[elsif exp="f.okeiko_month==7 && f.para_kuroda_koukando > 25 && f.fumi_toutyaku_kuroda[5]==0"]
			[eval exp="f.test='手紙到着「夏山に来ています」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_5
		
;◆6【夏休みの日々】8月1週～8月4週に好感度が一定以上で届く
		[elsif exp="f.okeiko_month==8 && f.para_kuroda_koukando > 30 && f.fumi_toutyaku_kuroda[6]==0"]
			[eval exp="f.test='手紙到着「夏休みの日々」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_6

;◆7【いよいよですね】9月2週、黒田と会うことが決まった場合かつ好感度が一定以上で届く
		[elsif exp="(f.okeiko_month==9 && f.okeiko_week==2)  && f.para_kuroda_koukando > 40 && f.fumi_toutyaku_kuroda[7]==0 && f.kuroda_au==1"]
			[eval exp="f.test='手紙到着「蛍の季節」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_7
			
;◆8【竜胆】10月1～2週に好感度が一定以上で届く
		[elsif exp="(f.okeiko_month==10 && (f.okeiko_week==1 || f.okeiko_week==2)) && f.para_kuroda_koukando > 50 && f.fumi_toutyaku_kuroda[8]==0"]
			[eval exp="f.test='手紙到着「竜胆」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_8
			
;◆9『趣味について』（最初から選べる話題）の手紙を送った場合、好感度に応じた期間後に返事がある
		[elsif exp="f.kuroda_fumi_toutyakumachi_shumi==0 && f.fumi_toutyaku_kuroda[9]==0"]
			[eval exp="f.test='手紙到着「趣味について」'"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_9

;◆10『家族について』（最初から選べる話題）の手紙を送った場合、好感度に応じた期間後に返事がある
		[elsif exp="f.kuroda_fumi_toutyakumachi_kazoku==0 && f.fumi_toutyaku_kuroda[10]==0"]
			[eval exp="f.test='手紙到着「家族について」'"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_10

;◆11『友人について』（最初から選べる話題）の手紙を送った場合、好感度に応じた期間後に返事がある
		[elsif exp="f.kuroda_fumi_toutyakumachi_yuujin==0 && f.fumi_toutyaku_kuroda[11]==0"]
			[eval exp="f.test='手紙到着「友人について」'"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_11
			
			
;◆12：4月3週～5月2週に『新茶について』の手紙を送った場合、翌週に返事がある
		[elsif exp="((f.okeiko_month==4 && f.okeiko_week==4)|| f.okeiko_month==5 && (f.okeiko_week==1 || f.okeiko_week==2 || f.okeiko_week==3)) && f.kuroda_fumi_toutyakumachi_sintya==0 && f.fumi_toutyaku_kuroda[12]==0"]
			[eval exp="f.test='手紙到着「新茶について」'"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_12
			
;◆13：5月3週～6月2週に『さつきについて』の手紙を送った場合、翌週に返事がある
		[elsif exp="((f.okeiko_month==5 && f.okeiko_week==4)|| f.okeiko_month==6 && (f.okeiko_week==1 || f.okeiko_week==2 || f.okeiko_week==3)) &&f.kuroda_fumi_toutyakumachi_satuki==0 && f.fumi_toutyaku_kuroda[13]==0"]
			[eval exp="f.test='手紙到着「さつきについて」'"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_13
			
		[endif]

;手紙到着：条件有りが該当しなければ、条件無し分が到着：黒田ルートには無し
;		[eval exp="f.target_fumi_toutyaku='*fumi_toutyaku_kuroda_'+f.kuroda_nextfumi_common"]
;		[eval exp="f.test='手紙到着'+f.target_fumi_toutyaku"]
;		[eval exp="f.kuroda_nextfumi_common=f.kuroda_nextfumi_common+1"]
;		@jump storage="fumi_toutyaku_shori_list.ks" target=&f.target_fumi_toutyaku
	[endif]
[endif]

;=============================================
;◇◇財前手紙到着判定◇◇
;=============================================
*fumi_toutyaku_hantei_zaizen
[if exp="f.zaizen_fumi_henjimachi <= parseInt([sf.zaizen['fumi_henjimachi_ok_number']])"]
	[eval exp = "f.zaizen_fumi_toutyakumachi_week = f.zaizen_fumi_toutyakumachi_week + 1"]
[endif]
[if exp="f.zaizen_fumi_toutyakumachi_week >= parseInt([sf.zaizen['fumi_hindo_week']])"]
@jump target=*hantei_list_zaizen
[endif]
@jump target=*fumi_toutyaku_hantei_zaizen_owari

;手紙到着：条件有り分
*hantei_list_zaizen
;=======================================================================================
;◆話題のお返事◆
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『趣味について』
[if exp="f.zaizen_fumi_toutyakumachi_shumi == 0 && f.fumi_toutyaku_zaizen[2] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_2
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『仕事について』
[if exp="f.zaizen_fumi_toutyakumachi_sigoto == 0 && f.fumi_toutyaku_zaizen[3] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_3
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『友人について』
[if exp="f.zaizen_fumi_toutyakumachi_yuujin == 0 && f.fumi_toutyaku_zaizen[4] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_4
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『家族について』
[if exp="f.zaizen_fumi_toutyakumachi_kazoku == 0 && f.fumi_toutyaku_zaizen[5] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_5
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『将来について』
[if exp="f.zaizen_fumi_toutyakumachi_shourai == 0 && f.fumi_toutyaku_zaizen[6] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_6
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『新茶の話題』
[if exp="f.zaizen_fumi_toutyakumachi_sintya == 0 && f.fumi_toutyaku_zaizen[7] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_7
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『さつきの話題』
[if exp="f.zaizen_fumi_toutyakumachi_satuki == 0 && f.fumi_toutyaku_zaizen[8] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_8
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『読書について』
[if exp="f.zaizen_fumi_toutyakumachi_dokusho == 0 && f.fumi_toutyaku_zaizen[9] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_9
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『スポーツについて』
[if exp="f.zaizen_fumi_toutyakumachi_sports == 0 && f.fumi_toutyaku_zaizen[10] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_10
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『食事について』
[if exp="f.zaizen_fumi_toutyakumachi_shokuji == 0 && f.fumi_toutyaku_zaizen[11] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_11
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『観劇について』
[if exp="f.zaizen_fumi_toutyakumachi_kangeki == 0 && f.fumi_toutyaku_zaizen[12] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_12
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『猫について』
[if exp="f.zaizen_fumi_toutyakumachi_neko == 0 && f.fumi_toutyaku_zaizen[13] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_13
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『聞き上手と話し上手について』
[if exp="f.zaizen_fumi_toutyakumachi_kiki == 0 && f.fumi_toutyaku_zaizen[14] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_14
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『緑の石について』
[if exp="f.zaizen_fumi_toutyakumachi_midori == 0 && f.fumi_toutyaku_zaizen[15] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_15
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『緑の石について 二』
[if exp="f.zaizen_fumi_toutyakumachi_midori == 0 && f.fumi_toutyaku_zaizen[16] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_16
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『写真について』
[if exp="f.zaizen_fumi_toutyakumachi_photo == 0 && f.fumi_toutyaku_zaizen[17] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_17
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『一日のはじまりについて』
[if exp="f.zaizen_fumi_toutyakumachi_hajimari == 0 && f.fumi_toutyaku_zaizen[18] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_18
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『お気に入りの曲について』
[if exp="f.zaizen_fumi_toutyakumachi_music == 0 && f.fumi_toutyaku_zaizen[19] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_19
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『お気に入りの曲について 二』
[if exp="f.zaizen_fumi_toutyakumachi_music == 0 && f.fumi_toutyaku_zaizen[20]==0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_20
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『 道 』
[if exp="f.zaizen_fumi_toutyakumachi_michi == 0 && f.fumi_toutyaku_zaizen[21]==0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_21
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『 道２ 』
[if exp="f.zaizen_fumi_toutyakumachi_michi == 0 && f.fumi_toutyaku_zaizen[22]==0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_22
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『変化と永遠』
[if exp="f.zaizen_fumi_toutyakumachi_henka == 0 && f.fumi_toutyaku_zaizen[23]==0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_23
[endif]
;=======================================================================================
;◆季節の便り◆
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『柏餅』5月 好感度(暫定)1以上
[if exp="f.okeiko_month == 5 && f.para_zaizen_koukando > 0 && f.fumi_toutyaku_zaizen[24]==0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_24
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『梅雨』6月 好感度(暫定)5以上
[if exp="f.okeiko_month == 6 && f.para_zaizen_koukando > 4 && f.fumi_toutyaku_zaizen[25]==0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_25
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『七夕』7月 好感度(暫定)15以上
[if exp="f.okeiko_month == 7 && f.para_zaizen_koukando > 14 && f.fumi_toutyaku_zaizen[26]==0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_26
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『お墓参り』8月 好感度(暫定)25以上
[if exp="f.okeiko_month == 8 && f.para_zaizen_koukando > 24 && f.fumi_toutyaku_zaizen[27]==0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_27
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『彼岸花』9月 好感度(暫定)35以上
[if exp="f.okeiko_month == 9 && f.para_zaizen_koukando > 34 && f.fumi_toutyaku_zaizen[28]==0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_28
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『菊花展』10月 好感度(暫定)45以上
[if exp="f.okeiko_month == 10 && f.para_zaizen_koukando > 44 && f.fumi_toutyaku_zaizen[29]==0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_29
[endif]
;=======================================================================================
;手紙到着：条件有りが該当しなければ、条件無し分が到着（財前には該当なし
		;[eval exp="f.target_fumi_toutyaku='*fumi_toutyaku_zaizen_'+f.zaizen_nextfumi_common"]
		;[eval exp="f.test='手紙到着'+f.target_fumi_toutyaku"]
		;[iscript]
		;f.fumi_toutyaku_oaite.push('財前様');
		;[endscript]
		;[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
		;[eval exp="f.zaizen_fumi_toutyakumachi_week=0"]
		;[eval exp="f.zaizen_nextfumi_common=f.zaizen_nextfumi_common+1"]
		;@jump storage="fumi_toutyaku_shori_list.ks" target=&f.target_fumi_toutyaku
*fumi_toutyaku_hantei_zaizen_owari

;=============================================
;◇◇四条手紙到着判定◇◇
;=============================================
;01_sijyou_fumi_toutyaku_hantei.ks上で判定した後、*fumi_toutyaku_hantei_katuraginomiyaに戻ります
@jump storage=01_sijyou_fumi_toutyaku_hantei.ks target=*fumi_toutyaku_hantei_sijyou

;=============================================
;◇◇葛城宮手紙到着判定◇◇
;=============================================
*fumi_toutyaku_hantei_katuraginomiya
;↓葛城宮との手紙開始していなければ藤枝手紙判定へ飛ぶ
[if exp="f.katuraginomiya_fumi_start==0"]
@jump target=*fumi_toutyaku_hantei_hujieda
[endif]

;↓葛城宮との手紙開始していれば判定スタート
[if exp="f.katuraginomiya_fumi_start==1 && f.katuraginomiya_fumi_henjimachi <= parseInt([sf.katuraginomiya['fumi_henjimachi_ok_number']])"]
	[eval exp="f.katuraginomiya_fumi_toutyakumachi_week=f.katuraginomiya_fumi_toutyakumachi_week+1"]
[endif]
[if exp="f.katuraginomiya_fumi_toutyakumachi_week >= parseInt([sf.katuraginomiya['fumi_hindo_week']])"]
@jump target=*hantei_list_katuraginomiya
[endif]
@jump target=*fumi_toutyaku_hantei_katuraginomiya_owari
;手紙到着：条件有り分
*hantei_list_katuraginomiya
;=======================================================================================
;◆話題のお返事◆
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『趣味について』
[if exp="f.katuraginomiya_fumi_toutyakumachi_shumi == 0 && f.fumi_toutyaku_katuraginomiya[3] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_3
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『仕事について』
[if exp="f.katuraginomiya_fumi_toutyakumachi_sigoto == 0 && f.fumi_toutyaku_katuraginomiya[4] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_4
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『友人について』
[if exp="f.katuraginomiya_fumi_toutyakumachi_yuujin == 0 && f.fumi_toutyaku_katuraginomiya[5] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_5
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『家族について』
[if exp="f.katuraginomiya_fumi_toutyakumachi_kazoku == 0 && f.fumi_toutyaku_katuraginomiya[6] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_6
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『将来について』
[if exp="f.katuraginomiya_fumi_toutyakumachi_shourai == 0 && f.fumi_toutyaku_katuraginomiya[7] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_7
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『読書について』
[if exp="f.katuraginomiya_fumi_toutyakumachi_dokusho == 0 && f.fumi_toutyaku_katuraginomiya[8] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_8
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『スポーツについて』
[if exp="f.katuraginomiya_fumi_toutyakumachi_sports == 0 && f.fumi_toutyaku_katuraginomiya[9] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_9
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『食事について』
[if exp="f.katuraginomiya_fumi_toutyakumachi_shokuji == 0 && f.fumi_toutyaku_katuraginomiya[10] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_10
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『観劇について』
[if exp="f.katuraginomiya_fumi_toutyakumachi_kangeki == 0 && f.fumi_toutyaku_katuraginomiya[11] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_11
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『猫について』
[if exp="f.katuraginomiya_fumi_toutyakumachi_neko == 0 && f.fumi_toutyaku_katuraginomiya[12] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_12
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『聞き上手と話し上手について』
[if exp="f.katuraginomiya_fumi_toutyakumachi_kiki == 0 && f.fumi_toutyaku_katuraginomiya[13] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_13
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『聞き上手と話し上手について 二』
[if exp="f.katuraginomiya_fumi_toutyakumachi_kiki == 0 && f.fumi_toutyaku_katuraginomiya[14] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_14
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『緑の石について』
[if exp="f.katuraginomiya_fumi_toutyakumachi_midori == 0 && f.fumi_toutyaku_katuraginomiya[15] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_15
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『写真について』
[if exp="f.katuraginomiya_fumi_toutyakumachi_photo == 0 && f.fumi_toutyaku_katuraginomiya[16] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_16
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『一日のはじまりについて』
[if exp="f.katuraginomiya_fumi_toutyakumachi_hajimari == 0 && f.fumi_toutyaku_katuraginomiya[17] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_17
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『お気に入りの曲について』
[if exp="f.katuraginomiya_fumi_toutyakumachi_music == 0 && f.fumi_toutyaku_katuraginomiya[18] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_18
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『 道 』
[if exp="f.katuraginomiya_fumi_toutyakumachi_michi == 0 && f.fumi_toutyaku_katuraginomiya[19] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_19
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『 道２ 』
[if exp="f.katuraginomiya_fumi_toutyakumachi_michi == 0 && f.fumi_toutyaku_katuraginomiya[20] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_20
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『変化と永遠』
[if exp="f.katuraginomiya_fumi_toutyakumachi_henka == 0 && f.fumi_toutyaku_katuraginomiya[21] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_21
[endif]
;=======================================================================================
;◆季節の便り◆
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『 虫干し 』6月　好感度(暫定)13以上(イベント1見終わった段階で好感度12：（内訳）初期値10+イベント1の手紙による加算2)より1でも上がっていればok
[if exp="f.okeiko_month == 6 && f.para_katuraginomiya_koukando > 12 && f.fumi_toutyaku_katuraginomiya[22] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_22
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『 スイカ 』7月 好感度(暫定)15以上
[if exp="f.okeiko_month == 7 && f.para_katuraginomiya_koukando > 14 && f.fumi_toutyaku_katuraginomiya[23] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_23
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『夏は夜』8月 好感度(暫定)20以上
[if exp="f.okeiko_month == 8 && f.para_katuraginomiya_koukando > 19 && f.fumi_toutyaku_katuraginomiya[24] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_24
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『季節は巡る』9月 好感度(暫定)30以上
[if exp="f.okeiko_month == 8 && f.para_katuraginomiya_koukando > 29 && f.fumi_toutyaku_katuraginomiya[25] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_25
[endif]
;=======================================================================================
;◆イベントに関係して届く手紙◆ イベント中に届くのではないため、こちらに置きます
;=======================================================================================
;◆葛城宮ルート時子さんの散策イベントを見ている場合に自動的に2週間後に手紙『 伊能殿について 』
;=======================================================================================
[if exp="f.event_machi_katuraginomiya[2] == 1 && f.katuraginomiya_fumi_inou == 1 && f.fumi_toutyaku_katuraginomiya[26] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_26
[endif]
;=======================================================================================
;◆葛城宮ルート10月1週に届く『 従妹宮の件について 』
;=======================================================================================
[if exp="f.okeiko_month == 10 && f.okeiko_week == 1 && f.fumi_toutyaku_katuraginomiya[27] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_27
[endif]
;=======================================================================================
;手紙到着：条件有りが該当しなければ、条件無し分が到着(葛城宮には該当なし
		;[eval exp="f.target_fumi_toutyaku='*fumi_toutyaku_katuraginomiya_'+f.katuraginomiya_nextfumi_common"]
		;[eval exp="f.test='手紙到着'+f.target_fumi_toutyaku"]
		;[iscript]
		;f.fumi_toutyaku_oaite.push('葛城宮親王殿下');
		;[endscript]
		;[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
		;[eval exp="f.katuraginomiya_fumi_toutyakumachi_week=0"]
		;[eval exp="f.katuraginomiya_nextfumi_common=f.katuraginomiya_nextfumi_common+1"]
		;@jump storage="fumi_toutyaku_shori_list.ks" target=&f.target_fumi_toutyaku
*fumi_toutyaku_hantei_katuraginomiya_owari

;=============================================
;◇◇藤枝手紙到着判定◇◇
;=============================================
*fumi_toutyaku_hantei_hujieda
;↓藤枝との手紙開始していなければ手紙判定終了
[if exp="f.hujieda_fumi_start==0"]
@jump target=*fumi_toutyaku_hantei_tokiko
[endif]

[eval exp="f.test='手紙到着可能性なし'"]
;↓藤枝との手紙開始していれば判定スタート
[if exp="f.hujieda_fumi_start==1 && f.hujieda_fumi_henjimachi <= parseInt([sf.hujieda['fumi_henjimachi_ok_number']])"]
	[eval exp="f.hujieda_fumi_toutyakumachi_week=f.hujieda_fumi_toutyakumachi_week+1"]
[endif]
[if exp="f.hujieda_fumi_toutyakumachi_week >= parseInt([sf.hujieda['fumi_hindo_week']])"]
@jump target=*hantei_list_hujieda
[endif]
@jump target=*fumi_toutyaku_hantei_hujieda_owari
;手紙到着：条件有り分
*hantei_list_hujieda
;=======================================================================================
;◆話題のお返事◆
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『趣味について』
[if exp="f.hujieda_fumi_toutyakumachi_shumi == 0 && f.fumi_toutyaku_hujieda[8] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_8
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『仕事について』
[if exp="f.hujieda_fumi_toutyakumachi_sigoto == 0 && f.fumi_toutyaku_hujieda[9] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_9
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『友人について』
[if exp="f.hujieda_fumi_toutyakumachi_yuujin == 0 && f.fumi_toutyaku_hujieda[10] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_10
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『家族について』
[if exp="f.hujieda_fumi_toutyakumachi_kazoku == 0 && f.fumi_toutyaku_hujieda[11] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_11
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『将来について』
[if exp="f.hujieda_fumi_toutyakumachi_shourai == 0 && f.fumi_toutyaku_hujieda[12] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_12
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『読書について』
[if exp="f.hujieda_fumi_toutyakumachi_dokusho == 0 && f.fumi_toutyaku_hujieda[13] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_13
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『スポーツについて』
[if exp="f.hujieda_fumi_toutyakumachi_sports == 0 && f.fumi_toutyaku_hujieda[14] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_14
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『食事について』
[if exp="f.hujieda_fumi_toutyakumachi_shokuji == 0 && f.fumi_toutyaku_hujieda[15] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_15
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『観劇について』
[if exp="f.hujieda_fumi_toutyakumachi_kangeki == 0 && f.fumi_toutyaku_hujieda[16] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_16
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『猫について』
[if exp="f.hujieda_fumi_toutyakumachi_neko == 0 && f.fumi_toutyaku_hujieda[17] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_17
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『聞き上手と話し上手味について』
[if exp="f.hujieda_fumi_toutyakumachi_kiki == 0 && f.fumi_toutyaku_hujieda[18] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_18
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『緑の石について』
[if exp="f.hujieda_fumi_toutyakumachi_midori == 0 && f.fumi_toutyaku_hujieda[19] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_19
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『写真について』
[if exp="f.hujieda_fumi_toutyakumachi_photo == 0 && f.fumi_toutyaku_hujieda[20] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_20
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『一日のはじまりについて』
[if exp="f.hujieda_fumi_toutyakumachi_hajimari == 0 && f.fumi_toutyaku_hujieda[21] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_21
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『お気に入りの曲について』
[if exp="f.hujieda_fumi_toutyakumachi_music == 0 && f.fumi_toutyaku_hujieda[22] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_22
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『 道 』
[if exp="f.hujieda_fumi_toutyakumachi_michi == 0 && f.fumi_toutyaku_hujieda[23] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_23
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『 変化と永遠 』
[if exp="f.hujieda_fumi_toutyakumachi_henka == 0 && f.fumi_toutyaku_hujieda[24] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_24
[endif]
;=============================================
;◆季節の便り◆
;=============================================
;◆↓手紙一通分の到着判定処理(開始)：『 巡る季節 』9月 好感度(暫定)10以上(好感度初期5、4-8月イベント好感度0up、イベント中の手紙返信(7月と9月の2通分)による好感度4up→9月2週時点で好感度4。調整中)
[if exp="f.okeiko_month == 9 && f.para_hujieda_koukando > 9 && f.fumi_toutyaku_hujieda[25] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_25
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『 実りの秋 』10月 好感度(暫定)15以上
[if exp="f.okeiko_month == 10 && f.para_hujieda_koukando > 14  && f.fumi_toutyaku_hujieda[26] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_26
[endif]

;手紙到着：条件有りが該当しなければ、条件無し分が到着
		[eval exp="f.target_fumi_toutyaku='*fumi_toutyaku_hujieda_'+f.hujieda_nextfumi_common"]
		[eval exp="f.test='手紙到着'+f.target_fumi_toutyaku"]
		[iscript]
		f.fumi_toutyaku_oaite.push('藤枝様');
		[endscript]
		[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
		[eval exp="f.hujieda_fumi_toutyakumachi_week=0"]
		[eval exp="f.hujieda_nextfumi_common=f.hujieda_nextfumi_common+1"]
		@jump storage="fumi_toutyaku_shori_list.ks" target=&f.target_fumi_toutyaku
*fumi_toutyaku_hantei_hujieda_owari

*fumi_toutyaku_hantei_tokiko
;=======================================================================================
;◇◇時子さん手紙到着判定◇◇
;=======================================================================================
;◆葛城宮ルート時子さんの散策イベントを見ている場合に自動的に3週間後に手紙『 未来へ向けて 』
;=======================================================================================
[if exp="f.event_machi_katuraginomiya[2] == 1 && f.katuraginomiya_fumi_inou == 0 && f.fumi_toutyaku_tokiko[0] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_tokiko_katuraginomiya
[endif]
*fumi_toutyaku_hantei_owari

;=======================================================================================
;◇◇飛鳥紗代子さん手紙到着判定◇◇
;=======================================================================================
*fumi_toutyaku_hantei_asuka

*fumi_toutyaku_hantei_asuka_owari


;=======================================================================================
;◇◇その他の方々手紙到着判定(今のところなし)◇◇
;=======================================================================================
*fumi_toutyaku_hantei_etc

*fumi_toutyaku_hantei_etc_owari

*hantei_fumi_toutyaku_end
[eval exp="f.fumi_toutyaku_info=f.fumi_toutyaku_oaite+'からお手紙が届いております'"]
;◆手紙（全員）総数計算
[eval exp="f.fumi_all_number = f.fumi_list_all_title.length"]
[eval exp="f.fumi_kuroda_number = f.fumi_list_kuroda_title.length"]
[eval exp="f.fumi_zaizen_number = f.fumi_list_zaizen_title.length"]
[eval exp="f.fumi_sijyou_number = f.fumi_list_sijyou_title.length"]
[eval exp="f.fumi_katuraginomiya_number = f.fumi_list_katuraginomiya_title.length"]
[eval exp="f.fumi_hujieda_number = f.fumi_list_hujieda_title.length"]
;◆お稽古パート(休憩終了、週更新時)に戻る
@jump storage=okeiko.ks target=*qk_end

[s]

;◆到着判定時の共通処理：財前
*zaizen_toutyaku_hantei_shori_common
;↓(変更の必要はありません)手紙が届いている場合のメッセージ「○○様からお手紙が届いております」の○○様の部分
	[eval exp="f.fumi_toutyaku_oaite.push('財前様')"]
;↓(変更の必要はありません)手紙が届いているかどうか、届いた手紙は何通かを見るための変数
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
;↓(変更の必要はありません)財前からの手紙到着待ち週数をリセット
	[eval exp="f.zaizen_fumi_toutyakumachi_week=0"]
[return]

;◆到着判定時の共通処理：葛城宮
*katuraginomiya_toutyaku_hantei_shori_common
;↓(変更の必要はありません)手紙が届いている場合のメッセージ「○○様からお手紙が届いております」の○○様の部分
	[eval exp="f.fumi_toutyaku_oaite.push('葛城宮親王殿下')"]
;↓(変更の必要はありません)手紙が届いているかどうか、届いた手紙は何通かを見るための変数
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
;↓(変更の必要はありません)葛城宮からの手紙到着待ち週数をリセット
	[eval exp="f.katuraginomiya_fumi_toutyakumachi_week=0"]
[return]

;◆到着判定時の共通処理：藤枝
*hujieda_toutyaku_hantei_shori_common
;↓鳩から届く間(9月2週～10月4週)の到着メッセージ
[if exp="f.okeiko_month == 10||(f.okeiko_month == 9 && f.okeiko_week != 1)"]
	[eval exp="f.hato = 1"]
	[eval exp="f.fumi_toutyaku_info_hato='鳩が訪れました。お手紙を受け取りました。'"]
[else]
	;↓(変更の必要はありません)手紙が届いている場合のメッセージ「○○様からお手紙が届いております」の○○様の部分
	[eval exp="f.fumi_toutyaku_oaite.push('藤枝様')"]
[endif]
	;↓(変更の必要はありません)手紙が届いているかどうか、届いた手紙は何通かを見るための変数
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
	;↓(変更の必要はありません)藤枝からの手紙到着待ち週数をリセット
	[eval exp="f.hujieda_fumi_toutyakumachi_week=0"]
[return]
