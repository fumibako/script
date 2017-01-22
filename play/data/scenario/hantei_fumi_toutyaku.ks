;◆手紙到着判定処理開始
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
;◇四条手紙到着判定(01_sijyou_fumi_toutyaku_hantei.ks上で判定した後、*fumi_toutyaku_hantei_katuraginomiyaに戻ります)
@jump storage=01_sijyou_fumi_toutyaku_hantei.ks target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_hantei_katuraginomiya
;◇葛城宮 晴仁手紙到着判定
;↓葛城宮との手紙開始していなければ藤枝手紙判定へ飛ぶ
[if exp="f.katuraginomiya_fumi_start==0"]
@jump target=*fumi_toutyaku_hantei_hujieda
[endif]

;↓葛城宮との手紙開始していれば判定スタート
[if exp="f.katuraginomiya_fumi_start==1 && f.katuraginomiya_fumi_henjimachi <= parseInt([sf.katuraginomiya['fumi_henjimachi_ok_number']])"]
	[eval exp="f.katuraginomiya_fumi_toutyakumachi_week=f.katuraginomiya_fumi_toutyakumachi_week+1"]
	[eval exp="f.test='手紙到着可能性あり'+f.katuraginomiya_fumi_toutyakumachi_week+parseInt([sf.katuraginomiya['fumi_hindo_week']])"]
	[if exp="f.katuraginomiya_fumi_toutyakumachi_week >= parseInt([sf.katuraginomiya['fumi_hindo_week']])"]
;手紙到着：条件有り分

;手紙到着：条件有りが該当しなければ、条件無し分が到着
		[eval exp="f.target_fumi_toutyaku='*fumi_toutyaku_katuraginomiya_'+f.katuraginomiya_nextfumi_common"]
		[eval exp="f.test='手紙到着'+f.target_fumi_toutyaku"]
		[iscript]
		f.fumi_toutyaku_oaite.push('葛城宮 晴仁様');
		[endscript]
		[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
		[eval exp="f.katuraginomiya_fumi_toutyakumachi_week=0"]
		[eval exp="f.katuraginomiya_nextfumi_common=f.katuraginomiya_nextfumi_common+1"]
		@jump target=&f.target_fumi_toutyaku
	[endif]
[endif]

*fumi_toutyaku_hantei_hujieda
;◇藤枝　肇手紙到着判定
;↓藤枝との手紙開始していなければ手紙判定終了
[if exp="f.hujieda_fumi_start==0"]
@jump target=*hantei_fumi_toutyaku_end
[endif]

[eval exp="f.test='手紙到着可能性なし'"]
;↓藤枝との手紙開始していれば判定スタート
[if exp="f.hujieda_fumi_start==1 && f.hujieda_fumi_henjimachi <= parseInt([sf.hujieda['fumi_henjimachi_ok_number']])"]
	[eval exp="f.hujieda_fumi_toutyakumachi_week=f.hujieda_fumi_toutyakumachi_week+1"]
	[eval exp="f.test='手紙到着可能性あり'+f.hujieda_fumi_toutyakumachi_week+parseInt([sf.hujieda['fumi_hindo_week']])"]
	[if exp="f.hujieda_fumi_toutyakumachi_week >= parseInt([sf.hujieda['fumi_hindo_week']])"]
;手紙到着：条件有り分

;手紙到着：条件有りが該当しなければ、条件無し分が到着
		[eval exp="f.target_fumi_toutyaku='*fumi_toutyaku_hujieda_'+f.hujieda_nextfumi_common"]
		[eval exp="f.test='手紙到着'+f.target_fumi_toutyaku"]
		[iscript]
		f.fumi_toutyaku_oaite.push('藤枝　肇様');
		[endscript]
		[eval exp="f.fumi_toutyaku=f.fumi_toutyaku+1"]
		[eval exp="f.hujieda_fumi_toutyakumachi_week=0"]
		[eval exp="f.hujieda_nextfumi_common=f.hujieda_nextfumi_common+1"]
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
[eval exp="f.fumi_katuraginomiya_number = f.fumi_list_katuraginomiya_title.length"]
[eval exp="f.fumi_hujieda_number = f.fumi_list_hujieda_title.length"]
;◆お稽古パート(休憩終了、週更新時)に戻る
@jump storage=okeiko.ks target=*qk_end

[s]


;◆手紙到着フラグONの個別処理
;◆黒田手紙到着
*fumi_toutyaku_kuroda_2
[iscript]
//↓「文箱」クリック時に表示される一覧での手紙タイトル(差出人名が入る)
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「つばめの季節」　黒田 将貴";
//↓「情報」(攻略対象情報)クリック時に表示される一覧での手紙タイトル(差出人名無し)
f.fumi_kuroda_title_new=f.okeiko_month_kansuuji+"「つばめの季節」";
//↓配列情報(全手紙：タイトル)を追加
f.fumi_list_all_title.push(f.fumi_all_title_new);
//↓配列情報(全手紙：その手紙が記載されたファイル名)を追加
f.fumi_list_all_storage.push("fumi_kuroda.ks");
//↓配列情報(全手紙：その手紙のラベル名)を追加
f.fumi_list_all_target.push("*kuroda_fumi2");
//↓配列情報(全手紙：攻略対象固有ナンバー(0=黒田、1=財前、2=華織、3=葛城宮 晴仁、4=藤枝　肇))を追加
f.fumi_list_all_location_taishou.push(0);
//↓配列情報(全手紙：f.midoku_list_hairetsu、f.hensin_list_hairetsu配列中の位置ナンバー)を追加
f.fumi_list_all_location_fumi.push(1);
//↓配列情報(攻略対象情報手紙：に対象の手紙の位置ナンバー)を追加
f.fumi_list_kuroda_location_fumi.push(1);
//↓配列情報(攻略対象情報手紙：タイトル)を追加
f.fumi_list_kuroda_title.push(f.fumi_kuroda_title_new);
//↓配列情報(攻略対象情報手紙：その手紙のラベル名)を追加
f.fumi_list_kuroda_target.push("*kuroda_fumi2");
//↓攻略対象返事待ち手紙数に1を加算
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
//↓配列情報(攻略対象全手紙の到着未着情報管理配列の[2](←手紙それぞれに黒田では「つばめの季節」=[2]、「ヤマアジサイ」=[3]などラベルのナンバーと一致させています)を0→1に。到着=1or未着=0)
//↓この[2]などは上で出てきた手紙の位置ナンバーとは異なります。このへんがややこしく、すみません
f.fumi_toutyaku_kuroda[2]=1;
[endscript]
;↓テスト出力用。ここを通過したかどうかや色々な変数の具合を見ていました。お好きに変えてくださって大丈夫です
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
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

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
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

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
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

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
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

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
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

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
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

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
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

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
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

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
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

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
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

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
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

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
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

;◆四条手紙到着後処理は01_sijyou_fumi_toutyaku_shori_list.ksに移動済です

;◆葛城宮 晴仁手紙到着
*fumi_toutyaku_katuraginomiya_2
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「2」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「2」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_katuraginomiya.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi2");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_katuraginomiya_location_fumi.push(1);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi2");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
[endscript]
		[eval exp="f.test='手紙到着葛城宮 晴仁'+f.target_fumi_toutyaku"]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_3
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「3」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「3」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_katuraginomiya.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi3");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_katuraginomiya_location_fumi.push(2);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi3");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_4
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「4」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「4」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_katuraginomiya.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi4");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_katuraginomiya_location_fumi.push(3);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi4");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_5
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「5」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「5」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_katuraginomiya.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi5");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_katuraginomiya_location_fumi.push(4);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi5");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_6
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「6」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「6」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_katuraginomiya.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi6");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_katuraginomiya_location_fumi.push(5);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi6");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_7
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「7」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「7」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_katuraginomiya.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi7");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_katuraginomiya_location_fumi.push(6);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi7");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_8
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「8」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「8」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_katuraginomiya.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi8");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_katuraginomiya_location_fumi.push(7);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi8");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_9
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「9」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「9」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_katuraginomiya.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi9");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_katuraginomiya_location_fumi.push(8);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi9");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_10
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「10」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「10」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_katuraginomiya.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi10");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_katuraginomiya_location_fumi.push(9);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi10");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_11
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「11」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「11」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_katuraginomiya.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi11");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_katuraginomiya_location_fumi.push(10);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi11");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_12
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「12」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「12」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_katuraginomiya.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi12");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_katuraginomiya_location_fumi.push(11);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi12");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_13
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_katuraginomiya.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi13");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_katuraginomiya_location_fumi.push(12);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi13");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

;◆藤枝　肇手紙到着
*fumi_toutyaku_hujieda_2
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「2」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「2」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_hujieda.ks");
f.fumi_list_all_target.push("*hujieda_fumi2");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_hujieda_location_fumi.push(1);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi2");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
[endscript]
		[eval exp="f.test='手紙到着 藤枝　肇'+f.target_fumi_toutyaku"]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_3
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「3」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「3」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_hujieda.ks");
f.fumi_list_all_target.push("*hujieda_fumi3");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_hujieda_location_fumi.push(2);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi3");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_4
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「4」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「4」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_hujieda.ks");
f.fumi_list_all_target.push("*hujieda_fumi4");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_hujieda_location_fumi.push(3);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi4");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_5
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「5」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「5」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_hujieda.ks");
f.fumi_list_all_target.push("*hujieda_fumi5");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_hujieda_location_fumi.push(4);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi5");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_6
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「6」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「6」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_hujieda.ks");
f.fumi_list_all_target.push("*hujieda_fumi6");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_hujieda_location_fumi.push(5);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi6");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_7
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「7」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「7」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_hujieda.ks");
f.fumi_list_all_target.push("*hujieda_fumi7");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_hujieda_location_fumi.push(6);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi7");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_8
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「8」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「8」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_hujieda.ks");
f.fumi_list_all_target.push("*hujieda_fumi8");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_hujieda_location_fumi.push(7);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi8");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_9
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「9」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「9」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_hujieda.ks");
f.fumi_list_all_target.push("*hujieda_fumi9");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_hujieda_location_fumi.push(8);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi9");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_10
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「10」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「10」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_hujieda.ks");
f.fumi_list_all_target.push("*hujieda_fumi10");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_hujieda_location_fumi.push(9);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi10");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_11
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「11」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「11」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_hujieda.ks");
f.fumi_list_all_target.push("*hujieda_fumi11");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_hujieda_location_fumi.push(10);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi11");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_12
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「12」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「12」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_hujieda.ks");
f.fumi_list_all_target.push("*hujieda_fumi12");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_hujieda_location_fumi.push(11);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi12");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_13
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("fumi_hujieda.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_hujieda_location_fumi.push(12);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

