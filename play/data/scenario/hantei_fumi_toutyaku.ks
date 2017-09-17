﻿﻿;◆手紙到着判定処理開始
*fumi_toutyaku_hantei_all
;[emb exp="f.hantei_event_storage='hantei_fumi_toutyaku.ks 手紙到着判定開始'"]
;[変数ログ表示]

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

[if exp="f.zaizen_au == 1"]
@jump target=*fumi_toutyaku_hantei_zaizen
[endif]
[if exp="f.sijyou_au == 1"]
@jump target=*fumi_toutyaku_hantei_sijyou
[endif]
[if exp="f.katuraginomiya_au == 1 || f.katuraginomiya_only == 1"]
@jump target=*fumi_toutyaku_hantei_katuraginomiya
[endif]
[if exp="f.hujieda_au == 1 && f.hujieda_fumi_start != 1"]
@jump target=*fumi_toutyaku_hantei_kobetu_owari
[endif]
[if exp="f.hujieda_fumi_start == 1"]
@jump target=*fumi_toutyaku_hantei_hujieda
[endif]


*fumi_toutyaku_hantei_kuroda
;=============================================
;◇◇黒田手紙到着判定◇◇
;=============================================
;◇黒田ルート11月4週～12月4週は手紙到着判定を回避します
[if exp="(f.okeiko_month == 11 && f.okeiko_week ==4) || f.okeiko_month == 12"]
@jump target=*fumi_toutyaku_hantei_kobetu_owari
[endif]
[if exp="(f.kuroda_fumi_henjimachi <= parseInt([sf.kuroda['fumi_henjimachi_ok_number']]))"]
	[eval exp="f.kuroda_fumi_toutyakumachi_week=f.kuroda_fumi_toutyakumachi_week+1"]
[endif]
[if exp="f.kuroda_fumi_toutyakumachi_week >= parseInt([sf.kuroda['fumi_hindo_week']])"]
@jump target=*hantei_list_kuroda
[endif]
@jump target=*fumi_toutyaku_hantei_kuroda_owari

*hantei_list_kuroda
;◆◆手紙到着：季節、好感度など条件有り分
;話題へのお返事を季節の手紙より優先とします(判定チェック手前に移動)
;◆『趣味について』（最初から選べる話題）の手紙を送った場合、好感度に応じた期間後に返事がある
[if exp="f.kuroda_fumi_toutyakumachi_shumi == 0 && f.fumi_toutyaku_kuroda[9] == 0"]
	[eval exp="f.test='手紙到着「趣味について」'"]
	[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
	[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
	@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_9
[endif]

;◆『家族について』（最初から選べる話題）の手紙を送った場合、好感度に応じた期間後に返事がある
[if exp="f.kuroda_fumi_toutyakumachi_kazoku == 0 && f.fumi_toutyaku_kuroda[10] == 0"]
	[eval exp="f.test='手紙到着「家族について」'"]
	[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
	[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
	@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_10
[endif]

;◆『友人について』（最初から選べる話題）の手紙を送った場合、好感度に応じた期間後に返事がある
[if exp="f.kuroda_fumi_toutyakumachi_yuujin == 0 && f.fumi_toutyaku_kuroda[11] == 0"]
	[eval exp="f.test='手紙到着「友人について」'"]
	[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
	[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
	@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_11
[endif]

;◆2【つばめの季節】5月1週～6月4週に好感度が一定以上で届く
[if exp="(f.okeiko_month == 5 || f.okeiko_month == 6) && f.para_kuroda_koukando > 5 && f.fumi_toutyaku_kuroda[2] == 0"]
	[eval exp="f.test='手紙到着「つばめの季節」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
	[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
	[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
	@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_2
[endif]

;◆3【ヤマアジサイ】5月3週～6月4週に好感度が一定以上で届く
[if exp="((f.okeiko_month == 5 && (f.okeiko_week == 3 || f.okeiko_week == 4))|| f.okeiko_month == 6) && f.para_kuroda_koukando > 20 && f.fumi_toutyaku_kuroda[3]==0"]
	[eval exp="f.test='手紙到着「ヤマアジサイ」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
	[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
	[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
	@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_3
[endif]
		
;◆4【蛍の季節】6月1週～7月2週に好感度が一定以上で届く
[if exp="(f.okeiko_month == 6 || (f.okeiko_month == 7 && (f.okeiko_week == 1 || f.okeiko_week == 2))) && f.para_kuroda_koukando > 15 && f.fumi_toutyaku_kuroda[4]==0"]
	[eval exp="f.test='手紙到着「蛍の季節」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
	[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
	[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
	@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_4
[endif]
			
;◆5【夏山に来ています】7月1週～7月4週に好感度が一定以上で届く
[if exp="f.okeiko_month == 7 && f.para_kuroda_koukando > 25 && f.fumi_toutyaku_kuroda[5] == 0"]
	[eval exp="f.test='手紙到着「夏山に来ています」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
	[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
	[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
	@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_5
[endif]
		
;◆6【夏休みの日々】8月1週～8月4週に好感度が一定以上で届く
[if exp="f.okeiko_month == 8 && f.para_kuroda_koukando > 30 && f.fumi_toutyaku_kuroda[6] == 0"]
	[eval exp="f.test='手紙到着「夏休みの日々」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
	[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
	[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
	@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_6
[endif]

;◆7【いよいよですね】9月2週、黒田と会うことが決まった場合かつ好感度が一定以上で届く
[if exp="(f.okeiko_month == 9 && f.okeiko_week == 2)  && f.para_kuroda_koukando > 40 && f.fumi_toutyaku_kuroda[7] == 0 && f.kuroda_au == 1"]
	[eval exp="f.test='手紙到着「蛍の季節」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
	[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
	[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
	@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_7
[endif]
			
;◆8【竜胆】10月1～2週に好感度が一定以上で届く
[if exp="(f.okeiko_month == 10 && (f.okeiko_week == 1 || f.okeiko_week == 2)) && f.para_kuroda_koukando > 50 && f.fumi_toutyaku_kuroda[8] == 0 && f.kuroda_au == 1"]
	[eval exp="f.test='手紙到着「竜胆」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
	[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
	[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
	@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_8
[endif]
			
			
;◆12：4月3週～5月2週に『新茶について』の手紙を送った場合、翌週に返事がある
[if exp="((f.okeiko_month == 4 && f.okeiko_week == 4)|| f.okeiko_month == 5 && (f.okeiko_week == 1 || f.okeiko_week == 2 || f.okeiko_week == 3)) && f.kuroda_fumi_toutyakumachi_sintya == 0 && f.fumi_toutyaku_kuroda[12] == 0"]
	[eval exp="f.test='手紙到着「新茶について」'"]
	[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
	[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
	@jump storage="fumi_toutyaku_shori_list.ks" target=*fumi_toutyaku_kuroda_12
[endif]
			
;◆13：5月3週～6月2週に『さつきについて』の手紙を送った場合、翌週に返事がある
[if exp="((f.okeiko_month == 5 && f.okeiko_week == 4)|| f.okeiko_month == 6 && (f.okeiko_week == 1 || f.okeiko_week == 2 || f.okeiko_week == 3)) &&f.kuroda_fumi_toutyakumachi_satuki == 0 && f.fumi_toutyaku_kuroda[13] == 0"]
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
;個別ルート時は各キャラ到着判定終了
[if exp="f.kuroda_au == 1"]
@jump target=*fumi_toutyaku_hantei_kobetu_owari
[endif]
*fumi_toutyaku_hantei_kuroda_owari

;=============================================
;◇◇財前手紙到着判定◇◇
;=============================================
*fumi_toutyaku_hantei_zaizen
[if exp="f.sijyou_au == 1"]
@jump target=*fumi_toutyaku_hantei_sijyou
[endif]
[if exp="f.katuraginomiya_au == 1 || f.katuraginomiya_only == 1"]
@jump target=*fumi_toutyaku_hantei_katuraginomiya
[endif]
[if exp="f.hujieda_au == 1 && f.hujieda_fumi_start == 1"]
@jump target=*fumi_toutyaku_hantei_hujieda
[endif]
;◇財前ルート11月4週～1月3週は手紙到着判定を回避します
[if exp="(f.okeiko_month == 11  && f.okeiko_week ==4) || f.okeiko_month == 12 || (f.okeiko_month == 1 && f.okeiko_week != 4)"]
@jump target=*fumi_toutyaku_hantei_kobetu_owari
[endif]

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
[if exp="f.okeiko_month == 9 && f.para_zaizen_koukando > 34 && f.fumi_toutyaku_zaizen[28]==0 && f.zaizen_au == 1"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_28
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『菊花展』10月 好感度(暫定)45以上
[if exp="f.okeiko_month == 10 && f.para_zaizen_koukando > 44 && f.fumi_toutyaku_zaizen[29] == 0 && f.zaizen_au == 1"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_29
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『怪談』返事の詳細な判定は変更してください && f.zaizen_au == 1
[if exp="f.zaizen_fumi_toutyakumachi_kaidan == 0 && f.fumi_toutyaku_zaizen[30] == 0"]
  [call target=*zaizen_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_zaizen_30
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
;個別ルート時は各キャラ到着判定終了
[if exp="f.zaizen_au == 1"]
@jump target=*fumi_toutyaku_hantei_kobetu_owari
[endif]

*fumi_toutyaku_hantei_sijyou
;=============================================
;◇◇四条手紙到着判定◇◇
;=============================================
;◆10月1週～11月2週は事件中のため手紙到着判定を回避します
[if exp="f.okeiko_month == 10 || (f.okeiko_month == 11 && ( f.okeiko_week == 1 || f.okeiko_week == 2 ))"]
@jump target=*fumi_toutyaku_hantei_kobetu_owari
[endif]
;01_sijyou_fumi_toutyaku_hantei.ks上で判定した後、*fumi_toutyaku_hantei_katuraginomiyaに戻ります
@jump storage=01_sijyou_fumi_toutyaku_hantei.ks target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_hantei_katuraginomiya
;=============================================
;◇◇葛城宮手紙到着判定◇◇
;=============================================
;個別ルート時は各キャラ到着判定終了
[if exp="f.sijyou_au == 1"]
@jump target=*fumi_toutyaku_hantei_kobetu_owari
[endif]
[if exp="f.hujieda_au == 1 && f.hujieda_fumi_start == 1"]
@jump target=*fumi_toutyaku_hantei_hujieda
[endif]
;↓葛城宮との手紙開始していなければ藤枝手紙判定へ飛ぶ
[if exp="f.katuraginomiya_fumi_start == 0"]
@jump target=*fumi_toutyaku_hantei_hujieda
[endif]
;◇葛城宮ルート10月2週～2月1週は葛城宮が通常の手紙を書けない期間のため手紙到着判定を回避します
[if exp="(f.okeiko_month == 10  && f.okeiko_week != 1) || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || (f.okeiko_month == 2 && f.okeiko_week == 1)"]
@jump target=*fumi_toutyaku_hantei_kobetu_owari
[endif]

;↓手紙到着タイミングに関わらず葛城宮ルートであれば葛城宮イベント関連手紙判定に飛ぶ
[if exp="f.katuraginomiya_au == 1"]
@jump target=*hantei_list_katuraginomiya_event
[endif]
*katuraginomiya_event_fumi_check_owari

;↓葛城宮との手紙開始していれば判定スタート
[if exp="f.katuraginomiya_fumi_start == 1 && f.katuraginomiya_fumi_henjimachi <= parseInt([sf.katuraginomiya['fumi_henjimachi_ok_number']])"]
	[eval exp="f.katuraginomiya_fumi_toutyakumachi_week=f.katuraginomiya_fumi_toutyakumachi_week+1"]
[endif]
[if exp="f.katuraginomiya_fumi_toutyakumachi_week >= parseInt([sf.katuraginomiya['fumi_hindo_week']])"]
@jump target=*hantei_list_katuraginomiya
[else]
;手紙到着のタイミイングでなければ判定終わり
@jump target=*fumi_toutyaku_hantei_katuraginomiya_owari
[endif]

;手紙到着：条件有り分(返信週数などの影響がある分
*hantei_list_katuraginomiya_event
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
;イベント関連手紙のチェックが終われば判定続きに戻る
@jump target=*katuraginomiya_event_fumi_check_owari

;=======================================================================================
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
;◆↓手紙一通分の到着判定処理(開始)：『新茶について』
[if exp="f.katuraginomiya_fumi_toutyakumachi_sintya == 0 && f.fumi_toutyaku_katuraginomiya[28] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_28
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『さつきについて』
[if exp="f.katuraginomiya_fumi_toutyakumachi_satuki == 0 && f.fumi_toutyaku_katuraginomiya[29] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_29
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『怪談』
[if exp="f.katuraginomiya_fumi_toutyakumachi_kaidan == 0 && f.fumi_toutyaku_katuraginomiya[30] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_30
[endif]
;=======================================================================================
;◆季節の便り◆
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『 虫干し 』6月　好感度条件は除くかわりに「葛城宮イベント1を見ている」を条件に追加
;(葛城宮は最初の手紙がイベント中に届き返信済となるため、好感度条件があると「自分から送る」ことに気付かないプレイヤーさんが詰まってしまう可能性が高めであるため)
[if exp="f.okeiko_month == 6 && f.event_katuraginomiya[1] == 1 && f.fumi_toutyaku_katuraginomiya[22] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_22
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『 スイカ 』7月 好感度条件は除くかわりに「葛城宮イベント1を見ている」を条件に追加
[if exp="f.okeiko_month == 7 && f.event_katuraginomiya[1] == 1 && f.fumi_toutyaku_katuraginomiya[23] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_23
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『夏は夜』8月 好感度(暫定)15以上(2/4調整。初期値を下げた事による)
[if exp="f.okeiko_month == 8 && f.para_katuraginomiya_koukando >= 15 && f.fumi_toutyaku_katuraginomiya[24] == 0"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_24
[endif]
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『季節は巡る』9月 好感度(暫定)25以上(2/4調整。初期値を下げた事による)
[if exp="f.okeiko_month == 8 && f.para_katuraginomiya_koukando >= 25 && f.fumi_toutyaku_katuraginomiya[25] == 0 && f.katuraginomiya_au == 1"]
  [call target=*katuraginomiya_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_katuraginomiya_25
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
;個別ルート時は各キャラ到着判定終了
[if exp="f.katuraginomiya_au == 1 || f.katuraginomiya_only == 1"]
@jump target=*fumi_toutyaku_hantei_kobetu_owari
[endif]

;=============================================
;◇◇藤枝手紙到着判定◇◇
;=============================================
*fumi_toutyaku_hantei_hujieda
;◇藤枝ルート11月1週～2月2週は手紙禁止期間(2月3週から手紙を許される)のため手紙到着判定を回避します
[if exp="f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 ||  (f.okeiko_month == 2 && ( f.okeiko_week == 1 || f.okeiko_week == 2 ))"]
@jump target=*fumi_toutyaku_hantei_tokiko
[endif]

;↓藤枝との手紙開始していなければ手紙判定終了
[if exp="f.hujieda_fumi_start == 0"]
@jump target=*fumi_toutyaku_hantei_tokiko
[endif]

[eval exp="f.test='手紙到着可能性なし'"]
;↓藤枝との手紙開始していれば判定スタート
[if exp="f.hujieda_fumi_start == 1 && f.hujieda_fumi_henjimachi <= parseInt([sf.hujieda['fumi_henjimachi_ok_number']])"]
	[eval exp="f.hujieda_fumi_toutyakumachi_week = f.hujieda_fumi_toutyakumachi_week + 1"]
[endif]
[if exp="f.hujieda_fumi_toutyakumachi_week >= parseInt([sf.hujieda['fumi_hindo_week']])"]
@jump target=*hantei_list_hujieda
[endif]
@jump target=*fumi_toutyaku_hantei_hujieda_owari
;手紙到着：条件有り分
*hantei_list_hujieda
;=======================================================================================
;◆重要なお手紙：話題のお返事よりも前に判定
;=======================================================================================
;◆↓手紙一通分の到着判定処理(開始)：『 心の音色 』2月4週 お箏80以上、11_4文矢手紙後のお箏練習後のセリフを見ている、2月にお箏練習を2回以上
[if exp="(f.okeiko_month == 2 && f.okeiko_week == 4) && f.para_shujinkou_j_koto >= 80 && f.fumi_fumiya_11_4 == 4 && f.para_shujinkou_koto_kaisuu >= 2 && f.fumi_toutyaku_hujieda[30] == 0 && f.hujieda_au == 1"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_30
[endif]

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
;◆↓手紙一通分の到着判定処理(開始)：『 新茶について 』
[if exp="f.hujieda_fumi_toutyakumachi_sintya == 0 && f.fumi_toutyaku_hujieda[27] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_27
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『 さつきの話題 』
[if exp="f.hujieda_fumi_toutyakumachi_satuki == 0 && f.fumi_toutyaku_hujieda[28] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_28
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『 怪談の話題 』
[if exp="f.hujieda_fumi_toutyakumachi_kaidan == 0 && f.fumi_toutyaku_hujieda[31] == 0"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_31
[endif]
;=============================================
;◆季節の便り◆
;=============================================
;◆↓手紙一通分の到着判定処理(開始)：『 巡る季節 』9月3週以降 好感度条件無し(藤枝もイベント中に届く手紙が返信済となるため、返信可能な手紙を届ける目的で好感度条件を除きます2/4)
[if exp="(f.okeiko_month == 9 && (f.okeiko_week == 3 || f.okeiko_week == 4 )) && f.fumi_toutyaku_hujieda[25] == 0 && f.hujieda_au == 1"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_25
[endif]
;◆↓手紙一通分の到着判定処理(開始)：『 実りの秋 』10月 好感度(暫定)15以上
[if exp="f.okeiko_month == 10 && f.para_hujieda_koukando >= 15  && f.fumi_toutyaku_hujieda[26] == 0 && f.hujieda_au == 1"]
  [call target=*hujieda_toutyaku_hantei_shori_common]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_hujieda_26
[endif]


*fumi_toutyaku_hantei_hujieda_owari

*fumi_toutyaku_hantei_kobetu_owari

*fumi_toutyaku_hantei_tokiko
;=======================================================================================
;◇◇時子さん手紙到着判定◇◇
;=======================================================================================
;◆葛城宮ルート時子さんの散策イベントを見ている場合に自動的に3週間後に手紙『 未来へ向けて 』
;=======================================================================================
[if exp="f.event_machi_katuraginomiya[2] == 1 && f.katuraginomiya_fumi_inou == 0 && f.fumi_toutyaku_tokiko[0] == 0"]
	[eval exp="f.fumi_toutyaku_oaite.push('三宮様')"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku + 1"]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_tokiko_katuraginomiya
[endif]
;=======================================================================================
;◆藤枝ルート１２月１週『 恋は、泡沫の夢、されど 』
;=======================================================================================
[if exp="(f.okeiko_month == 12 && f.okeiko_week == 1) && f.fumi_toutyaku_tokiko[1] == 0 && f.hujieda_au == 1"]
	[eval exp="f.fumi_toutyaku_oaite.push('三宮様')"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku + 1"]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_tokiko_hujieda
[endif]
*fumi_toutyaku_hantei_owari

*fumi_toutyaku_hantei_asuka
;=======================================================================================
;◇◇飛鳥紗代子さん手紙到着判定◇◇
;=======================================================================================
;◆(仮)5月2週　全ルート「はじめての手紙」→common_asuka.ksイベント中に届くよう調整しました

;◆(仮)5月4週　全ルート(鳩からの手紙2通目を見ている場合)
[if exp="f.okeiko_month == 5 && f.okeiko_week == 4 && f.fumi_toutyaku_asuka[6] == 0 && f.fumi_toutyaku_hujieda[3] == 1"]
	[eval exp="f.fumi_toutyaku_oaite.push('飛鳥様')"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku + 1"]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_asuka_6
[endif]

;◆(仮)9月4週　藤枝ルート以外
[if exp="f.okeiko_month == 9 && f.okeiko_week == 4 && ( f.kuroda_au == 1 || f.zaizen_au == 1 || f.sijyou_au == 1 || f.katuraginomiya_au == 1 ) && f.fumi_toutyaku_asuka[1] == 0"]
	[eval exp="f.fumi_toutyaku_oaite.push('飛鳥様')"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku + 1"]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_asuka_1
[endif]

;◆(仮)10月4週　四条ルート(イベント6を暗示させる感じにイベント6手前に配置してみていますが、「冬は、もうすぐそこ」という書き出しからは6の後を想定されていますでしょうか？)
[if exp="f.okeiko_month == 10 && f.okeiko_week == 4 && f.sijyou_au == 1 && f.fumi_toutyaku_asuka[2] == 0"]
	[eval exp="f.fumi_toutyaku_oaite.push('飛鳥様')"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku + 1"]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_asuka_2
[endif]

;◆(仮)黒田12月1週or財前11月4週or四条10月2週or葛城宮10月4週or藤枝11月2週
[if exp="((f.okeiko_month == 12 && f.okeiko_week == 1 && f.kuroda_au == 1) || (f.okeiko_month == 11 && f.okeiko_week == 4 && f.zaizen_au == 1) || (f.okeiko_month == 10 && f.okeiko_week == 2 && f.sijyou_au == 1) || (f.okeiko_month == 10 && f.okeiko_week == 4 && f.katuraginomiya_au == 1) || (f.okeiko_month == 11 && f.okeiko_week == 2 && f.hujieda_au == 1)) && f.fumi_toutyaku_asuka[3] == 0"]
	[eval exp="f.fumi_toutyaku_oaite.push('飛鳥様')"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku + 1"]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_asuka_3
[endif]

;◆(仮)2月4週　藤枝ルート以外
[if exp="f.okeiko_month == 2 && f.okeiko_week == 4 && ( f.kuroda_au == 1 || f.zaizen_au == 1 || f.sijyou_au == 1 || f.katuraginomiya_au == 1 ) && f.fumi_toutyaku_asuka[4] == 0"]
	[eval exp="f.fumi_toutyaku_oaite.push('飛鳥様')"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku + 1"]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_asuka_4
[endif]

;◆(仮)2月4週　藤枝ルート
[if exp="f.okeiko_month == 2 && f.okeiko_week == 4 && f.hujieda_au == 1 && f.fumi_toutyaku_asuka[5] == 0"]
	[eval exp="f.fumi_toutyaku_oaite.push('飛鳥様')"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku + 1"]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_asuka_5
[endif]

*fumi_toutyaku_hantei_asuka_owari
;=============================================
;共通手紙 最後の手紙
;=============================================
;◆最後の手紙１（２）を見たときは判定スキップ
[if exp="f.event_katuraginomiya[21] == 1 && f.event_katuraginomiya[22] == 1"]
@jump target=katuragi_kyoutu_skip
[endif]
;=============================================
;◆葛城宮進行不可でイベント４の条件を満たしているが他の攻略キャラと見合いをきめた場合　最後の手紙2_1　【上でスキップされる】f.sijyou_au != 1 && 
[if exp="f.omiai_kettei == 1 && (f.okeiko_month == 9 && f.okeiko_week == 2) && f.event_katuraginomiya[1] == 1 && f.event_katuraginomiya[2] == 1 && f.event_katuraginomiya[3] == 1 && f.event_katuraginomiya[4] == 0 && f.katuraginomiya_au == 0 && f.para_katuraginomiya_koukando >= 20 && f.para_shujinkou_shukujodo >= 30"]
;9/1に手紙は入らないので9/2　最後の手紙2_1　発生藤枝auは判定しない
	[eval exp="f.event_katuraginomiya[23]=1"]
	[eval exp="f.event_katuraginomiya[22]=1"]
	[eval exp="f.event_katuraginomiya[21]=1"]
	[call storage="hantei_fumi_toutyaku.ks" target=*katuraginomiya_toutyaku_hantei_shori_common]
	@jump storage=fumi_toutyaku_shori_list.ks target=*katuraginomiya_fumi_last_2_2	
[endif]
;◆葛城宮進行不可で他の攻略キャラと見合いをきめた場合　最後の手紙2_2　【上でスキップされる】f.sijyou_au != 1 && 
[if exp="f.omiai_kettei == 1 && (f.okeiko_month == 9 && f.okeiko_week == 2) && f.event_katuraginomiya[1] == 1 && f.event_katuraginomiya[2] == 1 && f.event_katuraginomiya[3] == 1 && f.event_katuraginomiya[4] == 0 && f.katuraginomiya_au == 0"]
;9/1に手紙は入らないので9/2　最後の手紙2_1　発生藤枝auは判定しない
	[eval exp="f.event_katuraginomiya[23]=1"]
	[eval exp="f.event_katuraginomiya[22]=1"]
	[eval exp="f.event_katuraginomiya[21]=1"]
	[call storage="hantei_fumi_toutyaku.ks" target=*katuraginomiya_toutyaku_hantei_shori_common]
	@jump storage=fumi_toutyaku_shori_list.ks target=*katuraginomiya_fumi_last_2_1	
[endif]
;◆葛城宮使者イベントを見た[4]が　他の攻略キャラとの見合いを決定しており、葛城宮見合いフラグが立ってない f.katuraginomiya_konyaku == false
;最後の手紙2_2 
[if exp="f.omiai_kettei == 1 && (f.okeiko_month == 9 && f.okeiko_week == 2) && f.event_katuraginomiya[1] == 1 && f.event_katuraginomiya[2] == 1 && f.event_katuraginomiya[3] == 1 && f.event_katuraginomiya[4] == 1 && f.katuraginomiya_au == 0 && f.katuraginomiya_konyaku == false"]
;9/1に手紙は入らないので9/2　最後の手紙2_2　発生　藤枝auは判定しない
	[eval exp="f.event_katuraginomiya[23]=1"]
	[eval exp="f.event_katuraginomiya[22]=1"]
	[eval exp="f.event_katuraginomiya[21]=1"]
	[call storage="hantei_fumi_toutyaku.ks" target=*katuraginomiya_toutyaku_hantei_shori_common]
	@jump storage=fumi_toutyaku_shori_list.ks target=*katuraginomiya_fumi_last_2_2
[endif]
;=============================================
*katuragi_kyoutu_skip
;=======================================================================================
;◇◇その他の方々手紙到着判定◇◇
;=======================================================================================
*fumi_toutyaku_hantei_etc
*fumi_toutyaku_hantei_fumiya
;=======================================================================================
;◇◇文矢手紙到着判定◇◇
;=======================================================================================
;◆11月4週　藤枝ルート(f.fumi_toutyaku_tokiko[5]はエラー防止のため時子さんの配列を借りています)
[if exp="f.okeiko_month == 11 && f.okeiko_week == 4 && f.fumi_toutyaku_tokiko[5] == 0 && f.hujieda_au == 1"]
	[eval exp="f.fumi_toutyaku_oaite.push('文矢様')"]
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku + 1"]
   @jump storage=fumi_toutyaku_shori_list.ks target=*fumi_toutyaku_fumiya_1
[endif]
*fumi_toutyaku_hantei_fumiya_owari
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
@jump storage=okeiko.ks target=*fumi_toutyaku_hantei_owari

[s]

;◆到着判定時の共通処理：財前
*zaizen_toutyaku_hantei_shori_common
;↓(変更の必要はありません)手紙が届いている場合のメッセージ「○○様からお手紙が届いております」の○○様の部分
	[eval exp="f.fumi_toutyaku_oaite.push('財前様')"]
;↓(変更の必要はありません)手紙が届いているかどうか、届いた手紙は何通かを見るための変数
	[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
;↓(変更の必要はありません)財前からの手紙到着待ち週数を好感度に応じてリセット
[if exp="f.para_zaizen_koukando >= parseInt([sf.zaizen['koukando_b']])"]
	[eval exp="f.zaizen_fumi_toutyakumachi_week = 2"]
[elsif exp="f.para_zaizen_koukando >= parseInt([sf.zaizen['koukando_a']])"]
	[eval exp="f.zaizen_fumi_toutyakumachi_week = 1"]
[else]
	[eval exp="f.zaizen_fumi_toutyakumachi_week = 0"]
[endif]
[return]

;◆到着判定時の共通処理：葛城宮
*katuraginomiya_toutyaku_hantei_shori_common
;↓(変更の必要はありません)手紙が届いている場合のメッセージ「○○様からお手紙が届いております」の○○様の部分
	[eval exp="f.fumi_toutyaku_oaite.push('葛城宮親王殿下')"]
;↓(変更の必要はありません)手紙が届いているかどうか、届いた手紙は何通かを見るための変数
	[eval exp="f.fumi_toutyaku = f.fumi_toutyaku + 1"]
;↓(変更の必要はありません)葛城宮からの手紙到着待ち週数を好感度に応じてリセット
[if exp="f.para_katuraginomiya_koukando >= parseInt([sf.katuraginomiya['koukando_b']])"]
	[eval exp="f.katuraginomiya_fumi_toutyakumachi_week = 3"]
[elsif exp="f.para_katuraginomiya_koukando >= parseInt([sf.katuraginomiya['koukando_a']])"]
	[eval exp="f.katuraginomiya_fumi_toutyakumachi_week = 2"]
[else]
	[eval exp="f.katuraginomiya_fumi_toutyakumachi_week = 1"]
[endif]
[return]

;◆到着判定時の共通処理：藤枝
*hujieda_toutyaku_hantei_shori_common
;↓鳩から届く間(4月～10月4週)の到着メッセージ
[if exp="f.okeiko_month >= 4 && f.okeiko_month <= 10"]
	[eval exp="f.hato = 1"]
	[eval exp="f.fumi_toutyaku_info_hato='鳩が訪れました。お手紙を受け取りました。'"]
[else]
	;↓(変更の必要はありません)手紙が届いている場合のメッセージ「○○様からお手紙が届いております」の○○様の部分
	[eval exp="f.fumi_toutyaku_oaite.push('藤枝様')"]
[endif]
	;↓(変更の必要はありません)手紙が届いているかどうか、届いた手紙は何通かを見るための変数
	[eval exp="f.fumi_toutyaku = f.fumi_toutyaku + 1"]
	;↓(変更の必要はありません)藤枝からの手紙到着待ち週数を好感度に応じてリセット
[if exp="f.para_hujieda_koukando >= parseInt([sf.hujieda['koukando_b']])"]
	[eval exp="f.hujieda_fumi_toutyakumachi_week = 2"]
[elsif exp="f.para_hujieda_koukando >= parseInt([sf.hujieda['koukando_a']])"]
	[eval exp="f.hujieda_fumi_toutyakumachi_week = 1"]
[else]
	[eval exp="f.hujieda_fumi_toutyakumachi_week = 0"]
[endif]

[return]
