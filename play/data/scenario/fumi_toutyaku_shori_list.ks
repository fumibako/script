;◆手紙到着フラグONの個別処理
;=============================================
;◆◆黒田手紙到着◆◆
;=============================================
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen

*fumi_toutyaku_kuroda_5
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「夏山に来ています」黒田 将貴";
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

*fumi_toutyaku_zaizen_10
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「スポーツについて」財前 美彬";
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
f.fumi_list_zaizen_target.push("*zaizen_fumi11");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[12]=1;
f.zaizen_fumi_toutyakumachi_kangeki=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

*fumi_toutyaku_zaizen_14
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手について」財前 美彬";
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

*fumi_toutyaku_zaizen_16
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「緑の石について 二」財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「緑の石について 二」";
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

*fumi_toutyaku_zaizen_18
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「一日のはじまりについて」財前 美彬";
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

*fumi_toutyaku_zaizen_19
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲について」財前 美彬";
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

*fumi_toutyaku_zaizen_20
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲について 二」財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲について 二」";
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

*fumi_toutyaku_zaizen_22
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「 道２ 」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「 道２  」";
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari
;=============================================
;『怪談』
;=============================================
*fumi_toutyaku_zaizen_30
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「怪談」　財前 美彬";
f.fumi_zaizen_title_new=f.okeiko_month_kansuuji+"「怪談」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("zaizen/zaizen_fumi.ks");
f.fumi_list_all_target.push("*zaizen_fumi_kaidan");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(32);
f.fumi_list_zaizen_location_fumi.push(32);
f.fumi_list_zaizen_title.push(f.fumi_zaizen_title_new);
f.fumi_list_zaizen_target.push("*zaizen_fumi_kaidan");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
f.fumi_toutyaku_zaizen[31]=1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_zaizen_owari
;=============================================
;◆イベント中に届く手紙◆ イベントスクリプト中に貼り付け予定分です
;=============================================
;10月3週『薔薇園散策のお誘い』(←仮タイトル)→zaizen_10_3.ks 37行目～へ移動しました
;=============================================
;11月3週『先日のパーティについて』(←仮タイトル)→zaizen_11_3.ks 40行目～へ移動しました
;=============================================
;3月4週『母の誕生日パーティご招待』(←仮タイトル)→zaizen_3_4_normal.ks 39行目～へ移動しました
;=============================================

;◆四条手紙到着後処理は01_sijyou_fumi_toutyaku_shori_list.ksに移動済です

;◆葛城宮 晴仁手紙到着
;=============================================
;◆イベント中に届く手紙◆ イベントスクリプト中に貼り付け予定分です
;=============================================
;『最初の手紙』(←仮タイトル)→katuraginomiya_event_1.ks 399行目～へ移動しました
;=============================================
;8月『 お茶事について 』(←仮タイトル)→katuraginomiya_event_3.ks 37行目～へ移動しました
;=============================================
;9月『 婚約について 』(←仮タイトル)→katuraginomiya_9_1.ks 88行目～
;=============================================
;10月『 話がしたい 』(←仮タイトル)→katuraginomiya_10_3.ks 50行目～
;=============================================
;2月『 感謝 』(←仮タイトル)→katuraginomiya_2_2.ks 45行目～
;=============================================
;2～3月『 バザーへのお誘い 』(←仮タイトル)→katuraginomiya_bazaar.ks 31行目～
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_9
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「スポーツについて」葛城宮 晴仁";
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_13
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手について」葛城宮 晴仁";
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
f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando - 1; //「聞き上手と話し上手について」1回目好感度-1
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_14
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手について 二」葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手について 二」";
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
f.para_katuraginomiya_koukando = f.para_katuraginomiya_koukando + 2; //「聞き上手と話し上手について」1回目好感度+2
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda


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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda


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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda


*fumi_toutyaku_katuraginomiya_17
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「一日のはじまりについて」葛城宮 晴仁";
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda


*fumi_toutyaku_katuraginomiya_18
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲について」葛城宮 晴仁";
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda


*fumi_toutyaku_katuraginomiya_19
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「 道 」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「 道 」";
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda


*fumi_toutyaku_katuraginomiya_20
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「 道２ 」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「 道２ 」";
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda


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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_28
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「新茶について」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「新茶について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*fumi_sintya");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(27);
f.fumi_list_katuraginomiya_location_fumi.push(27);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*fumi_sintya");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[28]=1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda

*fumi_toutyaku_katuraginomiya_29
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「さつきについて」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「さつきについて」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*fumi_satuki");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(28);
f.fumi_list_katuraginomiya_location_fumi.push(28);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*fumi_satuki");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[29]=1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda
;=============================================
;『怪談』
;=============================================
*fumi_toutyaku_katuraginomiya_30
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「怪談」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「怪談」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi_kaidan");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(32);
f.fumi_list_katuraginomiya_location_fumi.push(32);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi_kaidan");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[33]=1;
//返信ボタンを非表示に
f.katuraginomiya_fumi_start=0;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda
;=============================================
;◆イベントに関係して届く手紙◆ イベント中に届くのではないため、こちらに置きます
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
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda
;=============================================
;葛城宮ルート１０月１周に届く
;=============================================
;『 従妹宮の件について 』
;=============================================
*fumi_toutyaku_katuraginomiya_27
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「従妹宮の件について」葛城宮 晴仁";
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
f.hensin_list_hairetsu[3][26] = -1; //←返信ボタンを非表示に
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda
;=============================================
;『 最後の手紙』
;=============================================
*katuraginomiya_fumi_last
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「最後の手紙」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「最後の手紙」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi_last");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(29);
f.fumi_list_katuraginomiya_location_fumi.push(29);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi_last");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[30]=1;
f.hensin_list_hairetsu[3][29] = -1; 
//返信ボタンを非表示に
f.katuraginomiya_fumi_start=0;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda
;=============================================
;『 最後の手紙２』2_1
;=============================================
*katuraginomiya_fumi_last_2_1
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「最後の手紙」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「最後の手紙」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi_last_2_1");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(30);
f.fumi_list_katuraginomiya_location_fumi.push(30);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi_last_2_1");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[31]=1;
f.hensin_list_hairetsu[3][30] = -1; 
//返信ボタンを非表示に
f.katuraginomiya_fumi_start=0;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda
;=============================================
;『 最後の手紙２』2_2
;=============================================
*katuraginomiya_fumi_last_2_2
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「最後の手紙」　葛城宮 晴仁";
f.fumi_katuraginomiya_title_new=f.okeiko_month_kansuuji+"「最後の手紙」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*katuraginomiya_fumi_last_2_2");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(31);
f.fumi_list_katuraginomiya_location_fumi.push(31);
f.fumi_list_katuraginomiya_title.push(f.fumi_katuraginomiya_title_new);
f.fumi_list_katuraginomiya_target.push("*katuraginomiya_fumi_last_2_2");
f.katuraginomiya_fumi_henjimachi=f.katuraginomiya_fumi_henjimachi+1;
f.fumi_toutyaku_katuraginomiya[32]=1;
f.hensin_list_hairetsu[3][31] = -1; 
//返信ボタンを非表示に
f.katuraginomiya_fumi_start=0;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_hujieda
;=============================================
;◆◆藤枝　肇手紙到着◆◆
;=============================================
;◆イベント中に届く手紙◆ イベントスクリプト中に貼り付け予定分です
;=============================================
;『鳩の届けた手紙　一』(←仮タイトル)→hujieda_4_4.ks 89行目～へ移動しました
;=============================================
;『鳩の届けた手紙　二』(←仮タイトル)→hujieda_5_4.ks 75行目～へ移動しました
;=============================================
;『鳩の届けた手紙　三』(←仮タイトル)→hujieda_6_4.ks 139行目～へ移動しました
;=============================================
;『鳩の届けた手紙　四』(←仮タイトル)→hujieda_7_4.ks 139行目～へ移動しました
;=============================================
;『鳩の届けた手紙　五』(←仮タイトル)→hujieda_8_4.ks 86行目～へ移動しました
;=============================================
;『鳩の届けた手紙　六』(←仮タイトル)→hujieda_9_2.ks 71行目～へ移動しました
;=============================================
;◆話題への返事◆
;=============================================
*fumi_toutyaku_hujieda_8
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「趣味について」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「趣味について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi07");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_hujieda_location_fumi.push(7);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi07");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[8]=1;
f.hujieda_fumi_toutyakumachi_shumi=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_9
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「仕事について」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「仕事について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi08");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_hujieda_location_fumi.push(8);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi08");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[9]=1;
f.hujieda_fumi_toutyakumachi_sigoto=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_10
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「友人について」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「友人について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi09");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_hujieda_location_fumi.push(9);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi09");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[10]=1;
f.hujieda_fumi_toutyakumachi_yuujin=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_11
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「家族について」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「家族について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi10");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_hujieda_location_fumi.push(10);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi10");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[11]=1;
f.hujieda_fumi_toutyakumachi_kazoku=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_12
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「将来について」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「将来について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi11");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_hujieda_location_fumi.push(11);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi11");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[12]=1;
f.hujieda_fumi_toutyakumachi_shourai=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_13
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「読書について」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「読書について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi12");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_hujieda_location_fumi.push(12);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi12");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[13]=1;
f.hujieda_fumi_toutyakumachi_dokusho=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_14
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「スポーツについて」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「スポーツについて」";
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
f.hujieda_fumi_toutyakumachi_sports=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_15
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「食事について」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「食事について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi14");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(14);
f.fumi_list_hujieda_location_fumi.push(14);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi14");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[15]=1;
f.hujieda_fumi_toutyakumachi_shokuji=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_16
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「観劇について」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「観劇について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi15");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(15);
f.fumi_list_hujieda_location_fumi.push(15);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi15");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[16]=1;
f.hujieda_fumi_toutyakumachi_kangeki=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_17
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「猫について」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「猫について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi16");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(16);
f.fumi_list_hujieda_location_fumi.push(16);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi16");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[17]=1;
f.hujieda_fumi_toutyakumachi_neko=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_18
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手について」藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi17");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(17);
f.fumi_list_hujieda_location_fumi.push(17);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi17");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[18]=1;
f.hujieda_fumi_toutyakumachi_kiki=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_19
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「緑の石について」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「緑の石について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi18");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(18);
f.fumi_list_hujieda_location_fumi.push(18);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi18");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[19]=1;
f.hujieda_fumi_toutyakumachi_midori=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_20
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「写真について」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「写真について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi19");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(19);
f.fumi_list_hujieda_location_fumi.push(19);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi19");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[20]=1;
f.hujieda_fumi_toutyakumachi_photo=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_21
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「一日のはじまりについて」藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「一日のはじまりについて」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi20");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(20);
f.fumi_list_hujieda_location_fumi.push(20);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi20");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[21]=1;
f.hujieda_fumi_toutyakumachi_hajimari=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_22
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲について」藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi21");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(21);
f.fumi_list_hujieda_location_fumi.push(21);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi21");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[22]=1;
f.hujieda_fumi_toutyakumachi_music=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_23
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「 道 」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「 道 」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi22");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(22);
f.fumi_list_hujieda_location_fumi.push(22);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi22");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[23]=1;
f.hujieda_fumi_toutyakumachi_michi=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_24
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「 変化と永遠 」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「 変化と永遠 」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi23");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(23);
f.fumi_list_hujieda_location_fumi.push(23);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi23");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[24]=1;
f.hujieda_fumi_toutyakumachi_henka=-1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

;=============================================
;◆季節の便り◆
;=============================================
*fumi_toutyaku_hujieda_25
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「巡る季節」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「巡る季節」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi24");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(24);
f.fumi_list_hujieda_location_fumi.push(24);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi24");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[25]=1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_26
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「実りの秋」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「実りの秋」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi25");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(25);
f.fumi_list_hujieda_location_fumi.push(25);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi25");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[26]=1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_27
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「新茶について」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「新茶について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*fumi_sintya");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(26);
f.fumi_list_hujieda_location_fumi.push(26);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*fumi_sintya");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[27]=1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_28
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「さつきについて」　藤枝　肇";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「さつきについて」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*fumi_satuki");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(27);
f.fumi_list_hujieda_location_fumi.push(27);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*fumi_satuki");
f.hujieda_fumi_henjimachi=f.hujieda_fumi_henjimachi+1;
f.fumi_toutyaku_hujieda[28]=1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*hujieda_fumi_last
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「最後の手紙」　Ｈ ";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「最後の手紙」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi_last");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(28);
f.fumi_list_hujieda_location_fumi.push(28);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi_last");
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_toutyaku_hujieda[29]=1;
f.hensin_list_hairetsu[4][28] = -1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_30
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「心の音色」　藤枝　肇 ";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「心の音色」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi_koto");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(29);
f.fumi_list_hujieda_location_fumi.push(29);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi_koto");
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_toutyaku_hujieda[30]=1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

*fumi_toutyaku_hujieda_31
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「怪談」　藤枝　肇 ";
f.fumi_hujieda_title_new=f.okeiko_month_kansuuji+"「怪談」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*hujieda_fumi_kaidan");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(30);
f.fumi_list_hujieda_location_fumi.push(30);
f.fumi_list_hujieda_title.push(f.fumi_hujieda_title_new);
f.fumi_list_hujieda_target.push("*hujieda_fumi_kaidan");
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_toutyaku_hujieda[31]=1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_tokiko

;=============================================
;◆兄や友人、その他のキャラクターからの手紙
;=============================================
;◆時子さんからの手紙：葛城宮の伊能殿についての手紙から１週間後
;=============================================
*fumi_toutyaku_tokiko_katuraginomiya
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「未来へ向けて」　三宮 時子";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("katuraginomiya/katuraginomiya_fumi.ks");
f.fumi_list_all_target.push("*tokiko_fumi_katuraginomiya");
f.fumi_list_all_location_taishou.push(6);
f.fumi_list_all_location_fumi.push(1);
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_toutyaku_tokiko[0] = 1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_asuka
;=============================================
;◆時子さんからの手紙：藤枝ルート１２月１週
;=============================================
*fumi_toutyaku_tokiko_hujieda
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「恋は、泡沫の夢、されど」　三宮 時子";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*fumi_tokiko_hujieda_12_1");
f.fumi_list_all_location_taishou.push(6);
f.fumi_list_all_location_fumi.push(2);
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_toutyaku_tokiko[1] = 1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_asuka

;=============================================
;◆飛鳥紗代子さんからの手紙：
;=============================================
*fumi_toutyaku_asuka_0
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「はじめてのお手紙」飛鳥 紗代子"; //←仮タイトルです。ご自由に変更してください(スクリプト担
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/asuka_fumi.ks");
f.fumi_list_all_target.push("*0");
f.fumi_list_all_location_taishou.push(7);
f.fumi_list_all_location_fumi.push(0);
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_toutyaku_asuka[0] = 1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_asuka_owari

*fumi_toutyaku_asuka_1
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「秋の気配」 飛鳥 紗代子"; //←仮タイトルです。ご自由に変更してください(スクリプト担
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/asuka_fumi.ks");
f.fumi_list_all_target.push("*1");
f.fumi_list_all_location_taishou.push(7);
f.fumi_list_all_location_fumi.push(1);
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_toutyaku_asuka[1] = 1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_asuka_owari

*fumi_toutyaku_asuka_2
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「探偵さま」飛鳥 紗代子"; //←仮タイトルです。ご自由に変更してください(スクリプト担
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/asuka_fumi.ks");
f.fumi_list_all_target.push("*1_sijyo");
f.fumi_list_all_location_taishou.push(7);
f.fumi_list_all_location_fumi.push(2);
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_toutyaku_asuka[2] = 1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_asuka_owari

*fumi_toutyaku_asuka_3
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「いつか晴れ」飛鳥 紗代子"; //←仮タイトルです。ご自由に変更してください(スクリプト担
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/asuka_fumi.ks");
f.fumi_list_all_target.push("*2");
f.fumi_list_all_location_taishou.push(7);
f.fumi_list_all_location_fumi.push(3);
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_toutyaku_asuka[3] = 1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_asuka_owari

*fumi_toutyaku_asuka_4
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「未来へ」飛鳥 紗代子"; //←仮タイトルです。ご自由に変更してください(スクリプト担
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/asuka_fumi.ks");
f.fumi_list_all_target.push("*3");
f.fumi_list_all_location_taishou.push(7);
f.fumi_list_all_location_fumi.push(4);
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_toutyaku_asuka[4] = 1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_asuka_owari

*fumi_toutyaku_asuka_5
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「未来へ」飛鳥 紗代子"; //←仮タイトルです。ご自由に変更してください(スクリプト担
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/asuka_fumi.ks");
f.fumi_list_all_target.push("*fuji");
f.fumi_list_all_location_taishou.push(7);
f.fumi_list_all_location_fumi.push(5);
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_toutyaku_asuka[5] = 1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_asuka_owari

*fumi_toutyaku_asuka_6
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お箏は誰かの心を動かす扉」飛鳥 紗代子"; //←仮タイトルです。ご自由に変更してください(スクリプト担
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*fumi_asuka_hujieda_1");
f.fumi_list_all_location_taishou.push(7);
f.fumi_list_all_location_fumi.push(6);
f.fumi_all_number=f.fumi_all_number + 1;
f.fumi_toutyaku_asuka[6] = 1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_asuka_owari

;=============================================
;◆兄（文矢）からの手紙：
;=============================================
*fumi_toutyaku_fumiya_1
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「答えを出してごらん」 文矢";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("hujieda/hujieda_fumi.ks");
f.fumi_list_all_target.push("*fumi_fumiya_hujieda_11_4");
f.fumi_list_all_location_taishou.push(5);
f.fumi_list_all_location_fumi.push(0);
f.fumi_all_number=f.fumi_all_number + 1;
;↓到着判定にはhensuu.ksで定義済の配列が必要かつ文矢の配列は無いため時子さんの配列を借りています(今からhensuu.ksに追加するとロードエラーになってしまうので避けます)
f.fumi_toutyaku_tokiko[5] = 1;
[endscript]
@jump storage="hantei_fumi_toutyaku.ks" target=*fumi_toutyaku_hantei_fumiya_owari


;=============================================
;5文矢、6時子、7飛鳥紗代子、8侍従、9葛城宮妃殿下、10皇后さま、11従妹宮f.fumi_list_all_location_taishou.push();
;=============================================

;「先日のお茶事について」(←仮タイトル)　桂伯爵夫人 katuraginomiya_event_3.ks 509行目～

;「親王様との婚約について」(←仮タイトル)　文矢 katuraginomiya_9_1.ks 42行目～

;「ご挨拶」(←仮タイトル)　葛城宮妃　咲子 katuraginomiya_9_3.ks 35行目～

;「忠告」(←仮タイトル)　久佐賀宮　志津子 katuraginomiya_9_4.ks 62行目～

;「星も凍るような夜」(←仮タイトル)　三宮　時子 hujieda_1_3.ks 78行目～

;「華織について」　文矢 sijyou_10_3.ks 120行目～
