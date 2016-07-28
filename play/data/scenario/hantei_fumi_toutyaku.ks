;◆手紙到着判定処理
*fumi_toutyaku_hantei_all
[iscript]
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
;◇黒田手紙到着判定
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
			@jump target=*fumi_toutyaku_kuroda_2

;◆3【ヤマアジサイ】5月3週～6月4週に好感度が一定以上で届く
		[elsif exp="((f.okeiko_month==5 && (f.okeiko_week==3 || f.okeiko_week==4))|| f.okeiko_month==6) && f.para_kuroda_koukando > 20 && f.fumi_toutyaku_kuroda[3]==0"]
			[eval exp="f.test='手紙到着「ヤマアジサイ」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump target=*fumi_toutyaku_kuroda_3
		
;◆4【蛍の季節】6月1週～7月2週に好感度が一定以上で届く
		[elsif exp="(f.okeiko_month==6 || (f.okeiko_month==7 && (f.okeiko_week==1 || f.okeiko_week==2))) && f.para_kuroda_koukando > 15 && f.fumi_toutyaku_kuroda[4]==0"]
			[eval exp="f.test='手紙到着「蛍の季節」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump target=*fumi_toutyaku_kuroda_4
			
;◆5【夏山に来ています】7月1週～7月4週に好感度が一定以上で届く
		[elsif exp="f.okeiko_month==7 && f.para_kuroda_koukando > 25 && f.fumi_toutyaku_kuroda[5]==0"]
			[eval exp="f.test='手紙到着「夏山に来ています」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump target=*fumi_toutyaku_kuroda_5
		
;◆6【夏休みの日々】8月1週～8月4週に好感度が一定以上で届く
		[elsif exp="f.okeiko_month==8 && f.para_kuroda_koukando > 30 && f.fumi_toutyaku_kuroda[6]==0"]
			[eval exp="f.test='手紙到着「夏休みの日々」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump target=*fumi_toutyaku_kuroda_6

;◆7【いよいよですね】9月2週、黒田と会うことが決まった場合かつ好感度が一定以上で届く
		[elsif exp="(f.okeiko_month==9 && f.okeiko_week==2)  && f.para_kuroda_koukando > 40 && f.fumi_toutyaku_kuroda[7]==0 && f.kuroda_au==1"]
			[eval exp="f.test='手紙到着「蛍の季節」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump target=*fumi_toutyaku_kuroda_7
			
;◆8【竜胆】10月1～2週に好感度が一定以上で届く
		[elsif exp="(f.okeiko_month==10 && (f.okeiko_week==1 || f.okeiko_week==2)) && f.para_kuroda_koukando > 50 && f.fumi_toutyaku_kuroda[8]==0"]
			[eval exp="f.test='手紙到着「竜胆」'+f.kuroda_fumi_toutyakumachi_week+parseInt([sf.kuroda['fumi_hindo_week']])"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump target=*fumi_toutyaku_kuroda_8
			
;◆9『趣味について』（最初から選べる話題）の手紙を送った場合、好感度に応じた期間後に返事がある
		[elsif exp="f.kuroda_fumi_toutyakumachi_shumi==0 && f.fumi_toutyaku_kuroda[9]==0"]
			[eval exp="f.test='手紙到着「趣味について」'"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump target=*fumi_toutyaku_kuroda_9

;◆10『家族について』（最初から選べる話題）の手紙を送った場合、好感度に応じた期間後に返事がある
		[elsif exp="f.kuroda_fumi_toutyakumachi_kazoku==0 && f.fumi_toutyaku_kuroda[10]==0"]
			[eval exp="f.test='手紙到着「家族について」'"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump target=*fumi_toutyaku_kuroda_10

;◆11『友人について』（最初から選べる話題）の手紙を送った場合、好感度に応じた期間後に返事がある
		[elsif exp="f.kuroda_fumi_toutyakumachi_yuujin==0 && f.fumi_toutyaku_kuroda[11]==0"]
			[eval exp="f.test='手紙到着「友人について」'"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump target=*fumi_toutyaku_kuroda_11
			
			
;◆12：4月3週～5月2週に『新茶について』の手紙を送った場合、翌週に返事がある
		[elsif exp="((f.okeiko_month==4 && f.okeiko_week==4)|| f.okeiko_month==5 && (f.okeiko_week==1 || f.okeiko_week==2 || f.okeiko_week==3)) && f.kuroda_fumi_toutyakumachi_sintya==0 && f.fumi_toutyaku_kuroda[12]==0"]
			[eval exp="f.test='手紙到着「新茶について」'"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump target=*fumi_toutyaku_kuroda_12
			
;◆13：5月3週～6月2週に『さつきについて』の手紙を送った場合、翌週に返事がある
		[elsif exp="((f.okeiko_month==5 && f.okeiko_week==4)|| f.okeiko_month==6 && (f.okeiko_week==1 || f.okeiko_week==2 || f.okeiko_week==3)) &&f.kuroda_fumi_toutyakumachi_satuki==0 && f.fumi_toutyaku_kuroda[13]==0"]
			[eval exp="f.test='手紙到着「さつきについて」'"]
			[eval exp="f.fumi_toutyaku_oaite[0]='黒田様'"]
			[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
			[eval exp="f.kuroda_fumi_toutyakumachi_week=0"]
			@jump target=*fumi_toutyaku_kuroda_13
			
		[endif]
		



;手紙到着：条件有りが該当しなければ、条件無し分が到着：黒田ルートには無し
;		[eval exp="f.target_fumi_toutyaku='*fumi_toutyaku_kuroda_'+f.kuroda_nextfumi_common"]
;		[eval exp="f.test='手紙到着'+f.target_fumi_toutyaku"]
;		[eval exp="f.kuroda_nextfumi_common=f.kuroda_nextfumi_common+1"]
;		@jump target=&f.target_fumi_toutyaku
	[endif]
[endif]

*fumi_toutyaku_hantei_zaizen
;◇財前手紙到着判定
[eval exp="f.test='手紙到着可能性なし'"]
[if exp="f.zaizen_fumi_henjimachi <= parseInt([sf.zaizen['fumi_henjimachi_ok_number']])"]
	[eval exp="f.zaizen_fumi_toutyakumachi_week=f.zaizen_fumi_toutyakumachi_week+1"]
	[eval exp="f.test='手紙到着可能性あり'+f.zaizen_fumi_toutyakumachi_week+parseInt([sf.zaizen['fumi_hindo_week']])"]
	[if exp="f.zaizen_fumi_toutyakumachi_week >= parseInt([sf.zaizen['fumi_hindo_week']])"]
;手紙到着：条件有り分

;手紙到着：条件有りが該当しなければ、条件無し分が到着
		[eval exp="f.target_fumi_toutyaku='*fumi_toutyaku_zaizen_'+f.zaizen_nextfumi_common"]
		[eval exp="f.test='手紙到着'+f.target_fumi_toutyaku"]
		[iscript]
		f.fumi_toutyaku_oaite.push('財前様');
		[endscript]
		[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
		[eval exp="f.zaizen_fumi_toutyakumachi_week=0"]
		[eval exp="f.zaizen_nextfumi_common=f.zaizen_nextfumi_common+1"]
		@jump target=&f.target_fumi_toutyaku
	[endif]
[endif]

*fumi_toutyaku_hantei_sijyou
;◇四条手紙到着判定
[eval exp="f.test='手紙到着可能性なし'"]
[if exp="f.sijyou_fumi_henjimachi <= parseInt([sf.sijyou['fumi_henjimachi_ok_number']])"]
	[eval exp="f.sijyou_fumi_toutyakumachi_week=f.sijyou_fumi_toutyakumachi_week+1"]
	[eval exp="f.test='手紙到着可能性あり'+f.sijyou_fumi_toutyakumachi_week+parseInt([sf.sijyou['fumi_hindo_week']])"]
	[if exp="f.sijyou_fumi_toutyakumachi_week >= parseInt([sf.sijyou['fumi_hindo_week']])"]
;手紙到着：条件有り分

;手紙到着：条件有りが該当しなければ、条件無し分が到着
		[eval exp="f.target_fumi_toutyaku='*fumi_toutyaku_sijyou_'+f.sijyou_nextfumi_common"]
		[eval exp="f.test='手紙到着'+f.target_fumi_toutyaku"]
		[iscript]
		f.fumi_toutyaku_oaite.push('四条様');
		[endscript]
		[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
		[eval exp="f.sijyou_fumi_toutyakumachi_week=0"]
		[eval exp="f.sijyou_nextfumi_common=f.sijyou_nextfumi_common+1"]
		@jump target=&f.target_fumi_toutyaku
	[endif]
[endif]

*fumi_toutyaku_hantei_jiyuuwaku1
;◇自由枠1手紙到着判定
[eval exp="f.test='手紙到着可能性なし'"]
[if exp="f.jiyuuwaku1_fumi_henjimachi <= parseInt([sf.jiyuuwaku1['fumi_henjimachi_ok_number']])"]
	[eval exp="f.jiyuuwaku1_fumi_toutyakumachi_week=f.jiyuuwaku1_fumi_toutyakumachi_week+1"]
	[eval exp="f.test='手紙到着可能性あり'+f.jiyuuwaku1_fumi_toutyakumachi_week+parseInt([sf.jiyuuwaku1['fumi_hindo_week']])"]
	[if exp="f.jiyuuwaku1_fumi_toutyakumachi_week >= parseInt([sf.jiyuuwaku1['fumi_hindo_week']])"]
;手紙到着：条件有り分

;手紙到着：条件有りが該当しなければ、条件無し分が到着
		[eval exp="f.target_fumi_toutyaku='*fumi_toutyaku_jiyuuwaku1_'+f.jiyuuwaku1_nextfumi_common"]
		[eval exp="f.test='手紙到着'+f.target_fumi_toutyaku"]
		[iscript]
		f.fumi_toutyaku_oaite.push('自由枠1様');
		[endscript]
		[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
		[eval exp="f.jiyuuwaku1_fumi_toutyakumachi_week=0"]
		[eval exp="f.jiyuuwaku1_nextfumi_common=f.jiyuuwaku1_nextfumi_common+1"]
		@jump target=&f.target_fumi_toutyaku
	[endif]
[endif]

*fumi_toutyaku_hantei_jiyuuwaku2
;◇自由枠2手紙到着判定
[eval exp="f.test='手紙到着可能性なし'"]
[if exp="f.jiyuuwaku2_fumi_henjimachi <= parseInt([sf.jiyuuwaku2['fumi_henjimachi_ok_number']])"]
	[eval exp="f.jiyuuwaku2_fumi_toutyakumachi_week=f.jiyuuwaku2_fumi_toutyakumachi_week+1"]
	[eval exp="f.test='手紙到着可能性あり'+f.jiyuuwaku2_fumi_toutyakumachi_week+parseInt([sf.jiyuuwaku2['fumi_hindo_week']])"]
	[if exp="f.jiyuuwaku2_fumi_toutyakumachi_week >= parseInt([sf.jiyuuwaku2['fumi_hindo_week']])"]
;手紙到着：条件有り分

;手紙到着：条件有りが該当しなければ、条件無し分が到着
		[eval exp="f.target_fumi_toutyaku='*fumi_toutyaku_jiyuuwaku2_'+f.jiyuuwaku2_nextfumi_common"]
		[eval exp="f.test='手紙到着'+f.target_fumi_toutyaku"]
		[iscript]
		f.fumi_toutyaku_oaite.push('自由枠2様');
		[endscript]
		[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
		[eval exp="f.jiyuuwaku2_fumi_toutyakumachi_week=0"]
		[eval exp="f.jiyuuwaku2_nextfumi_common=f.jiyuuwaku2_nextfumi_common+1"]
		@jump target=&f.target_fumi_toutyaku
	[endif]
[endif]

*hantei_fumi_toutyaku_end
	[eval exp="f.fumi_toutyaku_info=f.fumi_toutyaku_oaite+'からお手紙が届いております'"]
;◆手紙（全員）総数計算
[eval exp="f.fumi_all_number = f.fumi_list_all_title.length"]
[eval exp="f.fumi_kuroda_number = f.fumi_list_kuroda_title.length"]
[eval exp="f.fumi_zaizen_number = f.fumi_list_zaizen_title.length"]
[eval exp="f.fumi_sijyou_number = f.fumi_list_sijyou_title.length"]
[eval exp="f.fumi_jiyuuwaku1_number = f.fumi_list_jiyuuwaku1_title.length"]
[eval exp="f.fumi_jiyuuwaku2_number = f.fumi_list_jiyuuwaku2_title.length"]
;◆お稽古パート(休憩終了、週更新時)に戻る
@jump storage=okeiko.ks target=*qk_end

[s]


;◆手紙到着フラグONの個別処理
;◆黒田手紙到着
*fumi_toutyaku_kuroda_2
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「つばめの季節」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「つばめの季節」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi2");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_kuroda_location_fumi.push(1);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi2");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[2]=1;
[endscript]
		[eval exp="f.test='手紙到着黒田'+f.target_fumi_toutyaku"]
@jump target=*fumi_toutyaku_hantei_zaizen

*fumi_toutyaku_kuroda_3
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「ヤマアジサイ」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「ヤマアジサイ」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi3");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_kuroda_location_fumi.push(2);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi3");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[3]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_zaizen

*fumi_toutyaku_kuroda_4
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「蛍の季節」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「蛍の季節」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi4");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_kuroda_location_fumi.push(3);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi4");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[4]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_zaizen

*fumi_toutyaku_kuroda_5
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「夏山に来ています」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「夏山に来ています」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi5");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_kuroda_location_fumi.push(4);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi5");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[5]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_zaizen

*fumi_toutyaku_kuroda_6
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「夏休みの日々」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「夏休みの日々」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi6");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_kuroda_location_fumi.push(5);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi6");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[6]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_zaizen

*fumi_toutyaku_kuroda_7
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「いよいよですね」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「いよいよですね」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi7");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_kuroda_location_fumi.push(6);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi7");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[7]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_zaizen

*fumi_toutyaku_kuroda_8
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「竜胆」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「竜胆」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi8");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_kuroda_location_fumi.push(7);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi8");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[8]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_zaizen

*fumi_toutyaku_kuroda_9
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「趣味について」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「趣味について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi9");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_kuroda_location_fumi.push(8);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi9");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[9]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_zaizen

*fumi_toutyaku_kuroda_10
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「家族について」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「家族について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi10");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_kuroda_location_fumi.push(9);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi10");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[10]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_zaizen

*fumi_toutyaku_kuroda_11
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「友人について」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「友人について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi11");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_kuroda_location_fumi.push(10);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi11");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[11]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_zaizen

*fumi_toutyaku_kuroda_12
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「新茶について」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「新茶について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi12");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_kuroda_location_fumi.push(11);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi12");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[12]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_zaizen

*fumi_toutyaku_kuroda_13
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「さつきについて」　黒田 将貴";
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「さつきについて」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi13");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_kuroda_location_fumi.push(12);
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
f.fumi_list_kuroda_target.push("*kuroda_fumi13");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
f.fumi_toutyaku_kuroda[13]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_zaizen

;◆財前手紙到着
*fumi_toutyaku_zaizen_2
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「2」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「2」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi2");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_zaizen_location_fumi.push(1);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi2");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[2]=1;
[endscript]
		[eval exp="f.test='手紙到着財前'+f.target_fumi_toutyaku"]
@jump target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_3
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「3」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「3」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi3");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_zaizen_location_fumi.push(2);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi3");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[3]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_4
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「4」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「4」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi4");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_zaizen_location_fumi.push(3);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi4");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[4]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_5
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「5」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「5」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi5");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_zaizen_location_fumi.push(4);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi5");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[5]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_6
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「6」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「6」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi6");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_zaizen_location_fumi.push(5);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi6");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[6]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_7
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「7」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「7」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi7");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_zaizen_location_fumi.push(6);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi7");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[7]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_8
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「8」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「8」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi8");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_zaizen_location_fumi.push(7);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi8");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[8]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_9
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「9」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「9」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi9");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_zaizen_location_fumi.push(8);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi9");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[9]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_10
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「10」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「10」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi10");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_zaizen_location_fumi.push(9);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi10");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[10]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_11
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「11」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「11」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi11");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_zaizen_location_fumi.push(10);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi11");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[11]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_12
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「12」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「12」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi12");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_zaizen_location_fumi.push(11);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi12");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[12]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_13
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi13");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_zaizen_location_fumi.push(12);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi13");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[13]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_sijyou

;◆四条手紙到着
*fumi_toutyaku_sijyou_2
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「2」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「2」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi2");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_sijyou_location_fumi.push(1);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi2");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
		[eval exp="f.test='手紙到着四条'+f.target_fumi_toutyaku"]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku1

*fumi_toutyaku_sijyou_3
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「3」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「3」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi3");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_sijyou_location_fumi.push(2);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi3");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku1

*fumi_toutyaku_sijyou_4
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「4」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「4」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi4");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_sijyou_location_fumi.push(3);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi4");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku1

*fumi_toutyaku_sijyou_5
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「5」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「5」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi5");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_sijyou_location_fumi.push(4);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi5");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku1

*fumi_toutyaku_sijyou_6
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「6」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「6」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi6");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_sijyou_location_fumi.push(5);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi6");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku1

*fumi_toutyaku_sijyou_7
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「7」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「7」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi7");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_sijyou_location_fumi.push(6);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi7");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku1

*fumi_toutyaku_sijyou_8
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「8」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「8」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi8");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_sijyou_location_fumi.push(7);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi8");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku1

*fumi_toutyaku_sijyou_9
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「9」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「9」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi9");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_sijyou_location_fumi.push(8);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi9");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku1

*fumi_toutyaku_sijyou_10
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「10」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「10」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi10");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_sijyou_location_fumi.push(9);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi10");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku1

*fumi_toutyaku_sijyou_11
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「11」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「11」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi11");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_sijyou_location_fumi.push(10);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi11");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku1

*fumi_toutyaku_sijyou_12
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「12」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「12」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi12");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_sijyou_location_fumi.push(11);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi12");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku1

*fumi_toutyaku_sijyou_13
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi13");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_sijyou_location_fumi.push(12);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi13");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku1

;◆自由枠1手紙到着
*fumi_toutyaku_jiyuuwaku1_2
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「2」　自由枠1";
f.fumi_jiyuuwaku1_title_new=f.okeiko_month_kansuuji+"「2」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi2");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_jiyuuwaku1_location_fumi.push(1);
f.fumi_list_jiyuuwaku1_title.push(f.fumi_jiyuuwaku1_title_new);
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi2");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
		[eval exp="f.test='手紙到着四条'+f.target_fumi_toutyaku"]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku2

*fumi_toutyaku_jiyuuwaku1_3
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「3」　自由枠1";
f.fumi_jiyuuwaku1_title_new=f.okeiko_month_kansuuji+"「3」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi3");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_jiyuuwaku1_location_fumi.push(2);
f.fumi_list_jiyuuwaku1_title.push(f.fumi_jiyuuwaku1_title_new);
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi3");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku2

*fumi_toutyaku_jiyuuwaku1_4
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「4」　自由枠1";
f.fumi_jiyuuwaku1_title_new=f.okeiko_month_kansuuji+"「4」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi4");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_jiyuuwaku1_location_fumi.push(3);
f.fumi_list_jiyuuwaku1_title.push(f.fumi_jiyuuwaku1_title_new);
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi4");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku2

*fumi_toutyaku_jiyuuwaku1_5
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「5」　自由枠1";
f.fumi_jiyuuwaku1_title_new=f.okeiko_month_kansuuji+"「5」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi5");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_jiyuuwaku1_location_fumi.push(4);
f.fumi_list_jiyuuwaku1_title.push(f.fumi_jiyuuwaku1_title_new);
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi5");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku2

*fumi_toutyaku_jiyuuwaku1_6
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「6」　自由枠1";
f.fumi_jiyuuwaku1_title_new=f.okeiko_month_kansuuji+"「6」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi6");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_jiyuuwaku1_location_fumi.push(5);
f.fumi_list_jiyuuwaku1_title.push(f.fumi_jiyuuwaku1_title_new);
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi6");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku2

*fumi_toutyaku_jiyuuwaku1_7
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「7」　自由枠1";
f.fumi_jiyuuwaku1_title_new=f.okeiko_month_kansuuji+"「7」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi7");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_jiyuuwaku1_location_fumi.push(6);
f.fumi_list_jiyuuwaku1_title.push(f.fumi_jiyuuwaku1_title_new);
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi7");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku2

*fumi_toutyaku_jiyuuwaku1_8
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「8」　自由枠1";
f.fumi_jiyuuwaku1_title_new=f.okeiko_month_kansuuji+"「8」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi8");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_jiyuuwaku1_location_fumi.push(7);
f.fumi_list_jiyuuwaku1_title.push(f.fumi_jiyuuwaku1_title_new);
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi8");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku2

*fumi_toutyaku_jiyuuwaku1_9
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「9」　自由枠1";
f.fumi_jiyuuwaku1_title_new=f.okeiko_month_kansuuji+"「9」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi9");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_jiyuuwaku1_location_fumi.push(8);
f.fumi_list_jiyuuwaku1_title.push(f.fumi_jiyuuwaku1_title_new);
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi9");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku2

*fumi_toutyaku_jiyuuwaku1_10
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「10」　自由枠1";
f.fumi_jiyuuwaku1_title_new=f.okeiko_month_kansuuji+"「10」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi10");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_jiyuuwaku1_location_fumi.push(9);
f.fumi_list_jiyuuwaku1_title.push(f.fumi_jiyuuwaku1_title_new);
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi10");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku2

*fumi_toutyaku_jiyuuwaku1_11
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「11」　自由枠1";
f.fumi_jiyuuwaku1_title_new=f.okeiko_month_kansuuji+"「11」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi11");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_jiyuuwaku1_location_fumi.push(10);
f.fumi_list_jiyuuwaku1_title.push(f.fumi_jiyuuwaku1_title_new);
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi11");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku2

*fumi_toutyaku_jiyuuwaku1_12
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「12」　自由枠1";
f.fumi_jiyuuwaku1_title_new=f.okeiko_month_kansuuji+"「12」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi12");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_jiyuuwaku1_location_fumi.push(11);
f.fumi_list_jiyuuwaku1_title.push(f.fumi_jiyuuwaku1_title_new);
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi12");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku2

*fumi_toutyaku_jiyuuwaku1_13
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　自由枠1";
f.fumi_jiyuuwaku1_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi13");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_jiyuuwaku1_location_fumi.push(12);
f.fumi_list_jiyuuwaku1_title.push(f.fumi_jiyuuwaku1_title_new);
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi13");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_jiyuuwaku2

;◆自由枠2手紙到着
*fumi_toutyaku_jiyuuwaku2_2
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「2」　自由枠2";
f.fumi_jiyuuwaku2_title_new=f.okeiko_month_kansuuji+"「2」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi2");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_jiyuuwaku2_location_fumi.push(1);
f.fumi_list_jiyuuwaku2_title.push(f.fumi_jiyuuwaku2_title_new);
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi2");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
		[eval exp="f.test='手紙到着四条'+f.target_fumi_toutyaku"]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_jiyuuwaku2_3
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「3」　自由枠2";
f.fumi_jiyuuwaku2_title_new=f.okeiko_month_kansuuji+"「3」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi3");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_jiyuuwaku2_location_fumi.push(2);
f.fumi_list_jiyuuwaku2_title.push(f.fumi_jiyuuwaku2_title_new);
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi3");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_jiyuuwaku2_4
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「4」　自由枠2";
f.fumi_jiyuuwaku2_title_new=f.okeiko_month_kansuuji+"「4」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi4");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_jiyuuwaku2_location_fumi.push(3);
f.fumi_list_jiyuuwaku2_title.push(f.fumi_jiyuuwaku2_title_new);
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi4");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_jiyuuwaku2_5
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「5」　自由枠2";
f.fumi_jiyuuwaku2_title_new=f.okeiko_month_kansuuji+"「5」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi5");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_jiyuuwaku2_location_fumi.push(4);
f.fumi_list_jiyuuwaku2_title.push(f.fumi_jiyuuwaku2_title_new);
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi5");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_jiyuuwaku2_6
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「6」　自由枠2";
f.fumi_jiyuuwaku2_title_new=f.okeiko_month_kansuuji+"「6」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi6");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_jiyuuwaku2_location_fumi.push(5);
f.fumi_list_jiyuuwaku2_title.push(f.fumi_jiyuuwaku2_title_new);
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi6");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_jiyuuwaku2_7
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「7」　自由枠2";
f.fumi_jiyuuwaku2_title_new=f.okeiko_month_kansuuji+"「7」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi7");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_jiyuuwaku2_location_fumi.push(6);
f.fumi_list_jiyuuwaku2_title.push(f.fumi_jiyuuwaku2_title_new);
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi7");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_jiyuuwaku2_8
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「8」　自由枠2";
f.fumi_jiyuuwaku2_title_new=f.okeiko_month_kansuuji+"「8」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi8");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_jiyuuwaku2_location_fumi.push(7);
f.fumi_list_jiyuuwaku2_title.push(f.fumi_jiyuuwaku2_title_new);
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi8");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_jiyuuwaku2_9
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「9」　自由枠2";
f.fumi_jiyuuwaku2_title_new=f.okeiko_month_kansuuji+"「9」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi9");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_jiyuuwaku2_location_fumi.push(8);
f.fumi_list_jiyuuwaku2_title.push(f.fumi_jiyuuwaku2_title_new);
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi9");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_jiyuuwaku2_10
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「10」　自由枠2";
f.fumi_jiyuuwaku2_title_new=f.okeiko_month_kansuuji+"「10」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi10");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_jiyuuwaku2_location_fumi.push(9);
f.fumi_list_jiyuuwaku2_title.push(f.fumi_jiyuuwaku2_title_new);
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi10");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_jiyuuwaku2_11
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「11」　自由枠2";
f.fumi_jiyuuwaku2_title_new=f.okeiko_month_kansuuji+"「11」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi11");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_jiyuuwaku2_location_fumi.push(10);
f.fumi_list_jiyuuwaku2_title.push(f.fumi_jiyuuwaku2_title_new);
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi11");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_jiyuuwaku2_12
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「12」　自由枠2";
f.fumi_jiyuuwaku2_title_new=f.okeiko_month_kansuuji+"「12」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi12");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_jiyuuwaku2_location_fumi.push(11);
f.fumi_list_jiyuuwaku2_title.push(f.fumi_jiyuuwaku2_title_new);
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi12");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_jiyuuwaku2_13
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　自由枠2";
f.fumi_jiyuuwaku2_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_jiyuuwaku2_location_fumi.push(12);
f.fumi_list_jiyuuwaku2_title.push(f.fumi_jiyuuwaku2_title_new);
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi13");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

