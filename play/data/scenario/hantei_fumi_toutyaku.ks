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

;=============================================
;◆◆財前手紙到着◆◆
;=============================================
;◆話題のお返事◆
;=============================================
*fumi_toutyaku_zaizen_2
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「趣味について」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「趣味について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi01");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_zaizen_location_fumi.push(1);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi01");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[2]=1;
f.zaizen_fumi_toutyakumachi_shumi=-1;
[endscript]
		[eval exp="f.test='手紙到着財前'+f.target_fumi_toutyaku"]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_3
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「仕事について」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「仕事について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi02");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_zaizen_location_fumi.push(2);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi02");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[3]=1;
f.zaizen_fumi_toutyakumachi_sigoto=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_4
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「友人について」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「友人について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi03");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_zaizen_location_fumi.push(3);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi03");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[4]=1;
f.zaizen_fumi_toutyakumachi_yuujin=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_5
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「家族について」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「家族について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi04");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_zaizen_location_fumi.push(4);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi04");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[5]=1;
f.zaizen_fumi_toutyakumachi_kazoku=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_6
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「将来について」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「将来について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi05");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_zaizen_location_fumi.push(5);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi05");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[6]=1;
f.zaizen_fumi_toutyakumachi_shourai=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_7
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「新茶の話題」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「新茶の話題」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*4_3_5_2");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_zaizen_location_fumi.push(6);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*4_3_5_2");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[7]=1;
f.zaizen_fumi_toutyakumachi_sintya=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_8
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「さつきの話題」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「さつきの話題」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*5_3_6_2");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_zaizen_location_fumi.push(7);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*5_3_6_2");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[8]=1;
f.zaizen_fumi_toutyakumachi_satuki=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_9
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「読書について」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「読書について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi08");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_zaizen_location_fumi.push(8);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi08");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[9]=1;
f.zaizen_fumi_toutyakumachi_dokusho=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_10
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「スポーツについて」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「スポーツについて」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi09");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_zaizen_location_fumi.push(9);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi09");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[10]=1;
f.zaizen_fumi_toutyakumachi_sports=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_11
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「食事について」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「食事について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi10");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_zaizen_location_fumi.push(10);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi10");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[11]=1;
f.zaizen_fumi_toutyakumachi_shokuji=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_12
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「観劇について」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「観劇について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi11");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_zaizen_location_fumi.push(11);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi12");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[12]=1;
f.zaizen_fumi_toutyakumachi_kangeki=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_13
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「猫について」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「猫について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi12");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_zaizen_location_fumi.push(12);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi12");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[13]=1;
f.zaizen_fumi_toutyakumachi_neko=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_14
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手について」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi13");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(13);
f.fumi_list_zaizen_location_fumi.push(13);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi13");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[14]=1;
f.zaizen_fumi_toutyakumachi_kiki=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_15
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「緑の石について」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「緑の石について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi14");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(14);
f.fumi_list_zaizen_location_fumi.push(14);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi14");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[15]=1;
f.zaizen_fumi_toutyakumachi_midori=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_16
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「緑の石ついて2」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「緑の石ついて2」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi15");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(15);
f.fumi_list_zaizen_location_fumi.push(15);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi15");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[16]=1;
f.zaizen_fumi_toutyakumachi_midori=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_17
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「写真について」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「写真について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi16");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(16);
f.fumi_list_zaizen_location_fumi.push(16);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi16");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[17]=1;
f.zaizen_fumi_toutyakumachi_photo=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_18
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「一日のはじまりについて」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「一日のはじまりについて」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi17");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(17);
f.fumi_list_zaizen_location_fumi.push(17);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi17");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[18]=1;
f.zaizen_fumi_toutyakumachi_hajimari=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_19
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲について」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi18");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(18);
f.fumi_list_zaizen_location_fumi.push(18);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi18");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[19]=1;
f.zaizen_fumi_toutyakumachi_music=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_20
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲について 2」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲について 2」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi19");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(19);
f.fumi_list_zaizen_location_fumi.push(19);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi19");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[20]=1;
f.zaizen_fumi_toutyakumachi_music=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_21
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「 道 」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「 道 」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi20");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(20);
f.fumi_list_zaizen_location_fumi.push(20);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi20");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[21]=1;
f.zaizen_fumi_toutyakumachi_michi=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_22
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「 道２ 」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「 道２ 」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi21");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(21);
f.fumi_list_zaizen_location_fumi.push(21);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi21");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[22]=1;
f.zaizen_fumi_toutyakumachi_michi=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_23
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「 変化と永遠 」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「 変化と永遠 」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi22");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(22);
f.fumi_list_zaizen_location_fumi.push(22);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi22");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[23]=1;
f.zaizen_fumi_toutyakumachi_henka=-1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

;=============================================
;◆季節の便り◆
;=============================================
*fumi_toutyaku_zaizen_24
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「柏餅」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「柏餅」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*5_2");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(23);
f.fumi_list_zaizen_location_fumi.push(23);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*5_2");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[24]=1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_25
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「梅雨」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「梅雨」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*6");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(24);
f.fumi_list_zaizen_location_fumi.push(24);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*6");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[25]=1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_26
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「七夕」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「七夕」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*7");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(25);
f.fumi_list_zaizen_location_fumi.push(25);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*7");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[26]=1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_27
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お墓参り」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「お墓参り」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*8");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(26);
f.fumi_list_zaizen_location_fumi.push(26);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*8");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[27]=1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_28
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「彼岸花」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「彼岸花」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*9");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(27);
f.fumi_list_zaizen_location_fumi.push(27);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*9");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[28]=1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

*fumi_toutyaku_zaizen_29
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「菊花展」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「菊花展」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*10");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(28);
f.fumi_list_zaizen_location_fumi.push(28);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*10");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[29]=1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

;=============================================
;◆イベント中に届く手紙◆ イベントスクリプト中に貼り付け予定分です
;=============================================
;10月3週『薔薇園散策のお誘い』←仮タイトルです
;=============================================
*fumi_toutyaku_zaizen_30
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「薔薇園散策のお誘い」　財前 美彬";//←仮タイトルです(お好みで変更してください)
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「薔薇園散策のお誘い」";//←仮タイトルです(お好みで変更してください)
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi29");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(29);
f.fumi_list_zaizen_location_fumi.push(29);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi29");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[30]=1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou
;=============================================
;11月3週『先日のパーティについて』←仮タイトルです
;=============================================
*fumi_toutyaku_zaizen_31
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「先日のパーティについて」　財前 美彬";//←仮タイトルです(お好みで変更してください)
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「先日のパーティについて」";//←仮タイトルです(お好みで変更してください)
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi30");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(30);
f.fumi_list_zaizen_location_fumi.push(30);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi30");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[31]=1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou
;=============================================
;3月4週『母の誕生日パーティご招待』←仮タイトルです
;=============================================
*fumi_toutyaku_zaizen_32
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「先日のパーティについて」　財前 美彬";//←仮タイトルです(お好みで変更してください)
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「先日のパーティについて」";//←仮タイトルです(お好みで変更してください)
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi31");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(31);
f.fumi_list_zaizen_location_fumi.push(31);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi31");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[32]=1;
[endscript]
@jump storage="01_sijyou_fumi_toutyaku_hantei.ks" target=*fumi_toutyaku_hantei_sijyou

;◆四条手紙到着後処理は01_sijyou_fumi_toutyaku_shori_list.ksに移動済です

;◆葛城宮 晴仁手紙到着
;=============================================
;◆イベント中に届く手紙◆ イベントスクリプト中に貼り付け予定分です
;=============================================
;『最初の手紙』←仮タイトルです
;=============================================
*fumi_toutyaku_katuraginomiya_2
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「最初の手紙」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「最初の手紙」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi00");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_katuraginomiya_location_fumi.push(1);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi00");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[2]=1;
[endscript]
		[eval exp="f.test='手紙到着葛城宮 晴仁'+f.target_fumi_toutyaku"]
@jump target=*fumi_toutyaku_hantei_hujieda

;=============================================
;◆話題への返事◆
;=============================================
*fumi_toutyaku_katuraginomiya_3
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「趣味について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「趣味について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi01");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_katuraginomiya_location_fumi.push(2);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi01");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[3]=1;
f.katuraginomiya_fumi_toutyakumachi_shumi=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_4
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「仕事について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「仕事について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi02");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_katuraginomiya_location_fumi.push(3);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi02");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[4]=1;
f.katuraginomiya_fumi_toutyakumachi_sigoto=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_5
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「友人について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「友人について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi03");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_katuraginomiya_location_fumi.push(4);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi03");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[5]=1;
f.katuraginomiya_fumi_toutyakumachi_yuujin=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_6
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「家族について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「家族について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi04");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_katuraginomiya_location_fumi.push(5);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi04");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[6]=1;
f.katuraginomiya_fumi_toutyakumachi_kazoku=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_7
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「将来について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「将来について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi05");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_katuraginomiya_location_fumi.push(6);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi05");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[7]=1;
f.katuraginomiya_fumi_toutyakumachi_shourai=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_8
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「読書について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「読書について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi06");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_katuraginomiya_location_fumi.push(7);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi06");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[8]=1;
f.katuraginomiya_fumi_toutyakumachi_dokusho=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_9
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「スポーツについて」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「スポーツについて」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi07");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_katuraginomiya_location_fumi.push(8);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi07");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[9]=1;
f.katuraginomiya_fumi_toutyakumachi_sports=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_10
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「食事について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「食事について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi080");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_katuraginomiya_location_fumi.push(9);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi08");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[10]=1;
f.katuraginomiya_fumi_toutyakumachi_shokuji=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_11
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「観劇について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「観劇について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi09");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_katuraginomiya_location_fumi.push(10);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi09");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[11]=1;
f.katuraginomiya_fumi_toutyakumachi_kangeki=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_12
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「猫について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「猫について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi10");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_katuraginomiya_location_fumi.push(11);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi10");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[12]=1;
f.katuraginomiya_fumi_toutyakumachi_neko=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_13
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi11");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_katuraginomiya_location_fumi.push(12);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi11");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[13]=1;
f.katuraginomiya_fumi_toutyakumachi_kiki=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_14
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手について2」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手について2」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi12");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(13);
f.fumi_list_katuraginomiya_location_fumi.push(13);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi12");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[14]=1;
f.katuraginomiya_fumi_toutyakumachi_kiki=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda


*fumi_toutyaku_katuraginomiya_15
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「緑の石について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「緑の石について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi13");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(14);
f.fumi_list_katuraginomiya_location_fumi.push(14);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi13");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[15]=1;
f.katuraginomiya_fumi_toutyakumachi_midori=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda


*fumi_toutyaku_katuraginomiya_16
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「写真について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「写真について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi14");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(15);
f.fumi_list_katuraginomiya_location_fumi.push(15);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi14");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[16]=1;
f.katuraginomiya_fumi_toutyakumachi_photo=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda


*fumi_toutyaku_katuraginomiya_17
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「一日のはじまりについて」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「一日のはじまりについて」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi15");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(16);
f.fumi_list_katuraginomiya_location_fumi.push(16);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi15");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[17]=1;
f.katuraginomiya_fumi_toutyakumachi_hajimari=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda


*fumi_toutyaku_katuraginomiya_18
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi16");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(17);
f.fumi_list_katuraginomiya_location_fumi.push(17);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi16");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[18]=1;
f.katuraginomiya_fumi_toutyakumachi_music=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda


*fumi_toutyaku_katuraginomiya_19
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「道」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「道」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi17");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(18);
f.fumi_list_katuraginomiya_location_fumi.push(18);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi17");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[19]=1;
f.katuraginomiya_fumi_toutyakumachi_michi=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda


*fumi_toutyaku_katuraginomiya_20
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「道2」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「道2」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi18");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(19);
f.fumi_list_katuraginomiya_location_fumi.push(19);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi18");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[20]=1;
f.katuraginomiya_fumi_toutyakumachi_michi=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda


*fumi_toutyaku_katuraginomiya_21
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「変化と永遠」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「変化と永遠」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi19");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(20);
f.fumi_list_katuraginomiya_location_fumi.push(20);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi19");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[21]=1;
f.katuraginomiya_fumi_toutyakumachi_henka=-1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

;=============================================
;◆季節の便り◆
;=============================================
*fumi_toutyaku_katuraginomiya_22
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「虫干し」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「虫干し」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi20");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(21);
f.fumi_list_katuraginomiya_location_fumi.push(21);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi20");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[22]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda


*fumi_toutyaku_katuraginomiya_23
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「スイカ」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「スイカ」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi21");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(22);
f.fumi_list_katuraginomiya_location_fumi.push(22);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi21");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[23]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda


*fumi_toutyaku_katuraginomiya_24
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「夏は夜」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「夏は夜」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi22");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(23);
f.fumi_list_katuraginomiya_location_fumi.push(23);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi22");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[24]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda


*fumi_toutyaku_katuraginomiya_25
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「季節は巡る」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「季節は巡る」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi23");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(24);
f.fumi_list_katuraginomiya_location_fumi.push(24);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi23");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[25]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda

;=============================================
;◆イベント中に届く手紙◆ イベントスクリプト中に貼り付け予定分です
;=============================================
;◆葛城宮ルート時子さんの散策イベントを見ている場合に自動的に2週間後に手紙
;=============================================
;『 伊能殿について 』
;=============================================
*fumi_toutyaku_katuraginomiya_26
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「伊能殿について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「伊能殿について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi24");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(25);
f.fumi_list_katuraginomiya_location_fumi.push(25);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi24");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[26]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda
;=============================================
;葛城宮ルート１０月１周に届く
;=============================================
;『 従妹宮の件について 』
;=============================================
*fumi_toutyaku_katuraginomiya_27
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「従妹宮の件について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「従妹宮の件について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi25");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(26);
f.fumi_list_katuraginomiya_location_fumi.push(26);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi25");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[27]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_hujieda


;=============================================
;◆◆藤枝　肇手紙到着◆◆
;=============================================
;◆イベント中に届く手紙◆ イベントスクリプト中に貼り付け予定分です
;=============================================
*fumi_toutyaku_hujieda_2
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「鳩の届けた手紙 一」　藤枝　肇";//←仮タイトルです。お好みに変更してください
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「鳩の届けた手紙 一」";//←仮タイトルです。お好みに変更してください
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi01");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_hujieda_location_fumi.push(1);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi01");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[1]=1;
[endscript]
		[eval exp="f.test='手紙到着 藤枝　肇'+f.target_fumi_toutyaku"]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_3
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「鳩の届けた手紙 二」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「鳩の届けた手紙 二」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi02");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_hujieda_location_fumi.push(2);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi02");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[2]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_4
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「4」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「4」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi4");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_hujieda_location_fumi.push(3);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi4");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[3]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_5
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「5」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「5」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi5");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_hujieda_location_fumi.push(4);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi5");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[4]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_6
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「6」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「6」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi6");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_hujieda_location_fumi.push(5);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi6");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[5]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_7
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「7」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「7」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi7");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_hujieda_location_fumi.push(6);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi7");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[6]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_8
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「8」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「8」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi8");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_hujieda_location_fumi.push(7);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi8");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[7]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_9
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「9」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「9」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi9");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_hujieda_location_fumi.push(8);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi9");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[8]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_10
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「10」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「10」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi10");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_hujieda_location_fumi.push(9);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi10");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[9]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_11
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「11」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「11」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi11");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_hujieda_location_fumi.push(10);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi11");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[10]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_12
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「12」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「12」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi12");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_hujieda_location_fumi.push(11);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi12");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[11]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_13
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_hujieda_location_fumi.push(12);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[12]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_14
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(13);
f.fumi_list_hujieda_location_fumi.push(13);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[14]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_15
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(14);
f.fumi_list_hujieda_location_fumi.push(14);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[15]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_16
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(15);
f.fumi_list_hujieda_location_fumi.push(15);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[16]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_17
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(16);
f.fumi_list_hujieda_location_fumi.push(16);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[17]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_18
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(17);
f.fumi_list_hujieda_location_fumi.push(17);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[18]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_19
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(18);
f.fumi_list_hujieda_location_fumi.push(18);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[19]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_20
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(19);
f.fumi_list_hujieda_location_fumi.push(19);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[20]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_21
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(20);
f.fumi_list_hujieda_location_fumi.push(20);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[21]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_22
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(21);
f.fumi_list_hujieda_location_fumi.push(21);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[22]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_23
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(22);
f.fumi_list_hujieda_location_fumi.push(22);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[23]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_24
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(23);
f.fumi_list_hujieda_location_fumi.push(23);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[24]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_25
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(24);
f.fumi_list_hujieda_location_fumi.push(24);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[25]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_26
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(25);
f.fumi_list_hujieda_location_fumi.push(25);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[26]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_27
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(26);
f.fumi_list_hujieda_location_fumi.push(26);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[27]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end

*fumi_toutyaku_hujieda_28
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(27);
f.fumi_list_hujieda_location_fumi.push(27);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi13");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[28]=1;
[endscript]
@jump target=*hantei_fumi_toutyaku_end
