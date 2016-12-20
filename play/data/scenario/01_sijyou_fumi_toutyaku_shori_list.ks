;◆手紙到着フラグONの個別処理
;◆四条手紙到着
*fumi_toutyaku_sijyou_2
[iscript]
//↓「文箱」クリック時に表示される一覧での手紙タイトル(差出人名入り)テストしやすいように(お見合い前)など入れてみましたが、実際のタイトルからは除いた方が自然かも？
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「趣味について(お見合い前)」　四条 華織";
//↓「情報」(攻略対象情報)クリック時に表示される一覧での手紙タイトル(差出人名無し)
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「趣味について(お見合い前)」";
//↓配列情報(全手紙：タイトル)を追加
f.fumi_list_all_title.push(f.fumi_all_title_new);
//↓配列情報(全手紙：その手紙が記載されたファイル名)を追加
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
//↓配列情報(全手紙：その手紙ファイル中のラベル名)を追加
f.fumi_list_all_target.push("*sijyou_syumi_1");
//↓配列情報(全手紙：攻略対象固有ナンバー(0=黒田、1=財前、2=四条、3=葛城宮、4=藤枝))を追加。。変更の必要はありません
f.fumi_list_all_location_taishou.push(2);
//↓配列情報(全手紙：f.midoku_list_hairetsu、f.hensin_list_hairetsu配列中の位置ナンバー。この処理のラベル-1となります。変更の必要はありません)を追加
f.fumi_list_all_location_fumi.push(1);
//↓配列情報(攻略対象情報手紙：に対象の手紙の位置ナンバー)を追加
f.fumi_list_sijyou_location_fumi.push(1);
//↓配列情報(攻略対象情報手紙：タイトル)を追加
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
//↓配列情報(攻略対象情報手紙：その手紙のラベル名)を追加
f.fumi_list_sijyou_target.push("*sijyou_syumi_1");
//↓攻略対象返事待ち手紙数に1を加算
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
//↓配列情報(攻略対象全手紙の到着未着情報管理配列の[2](←手紙それぞれにラベルのナンバーと一致させています。変更の必要はありません)を0→1に。到着=1or未着=0)
//↓この[2]は上で出てきた手紙の"位置ナンバー"+1となります。このへんがややこしく、すみません。しかし変更の必要はありません
f.fumi_toutyaku_sijyou[2]=1;
[endscript]
;↓テスト出力用。ここを通過したかどうかや色々な変数の具合を見ていました。お好きに変えてくださって大丈夫です
[eval exp="f.test='手紙到着四条'+f.target_fumi_toutyaku"]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_3
[iscript]
//↓「文箱」クリック時に表示される一覧での手紙タイトル(差出人名入り)。変更してください
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「3」　四条 華織";
//↓「情報」(攻略対象情報)クリック時に表示される一覧での手紙タイトル(差出人名無し)。変更してください
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「3」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
//↓配列情報(全手紙：その手紙が記載されたファイル名)。必要があれば(sijyou_fumi_wadai.ksなど)変更してください
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
//↓配列情報(全手紙：その手紙ファイル中のラベル名)。変更してください
f.fumi_list_all_target.push("*sijyou_fumi3");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_sijyou_location_fumi.push(2);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
//↓配列情報(全手紙：その手紙ファイル中のラベル名)。変更してください
f.fumi_list_sijyou_target.push("*sijyou_fumi3");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[3]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_4
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「4」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「4」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi4");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_sijyou_location_fumi.push(3);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi4");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[4]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_5
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「5」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「5」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi5");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_sijyou_location_fumi.push(4);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi5");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[5]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_6
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「6」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「6」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi6");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_sijyou_location_fumi.push(5);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi6");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[6]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_7
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「7」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「7」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi7");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_sijyou_location_fumi.push(6);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi7");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[7]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_8
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「8」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「8」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi8");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_sijyou_location_fumi.push(7);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi8");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[8]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_9
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「9」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「9」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi9");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_sijyou_location_fumi.push(8);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi9");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[9]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_10
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「10」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「10」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi10");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_sijyou_location_fumi.push(9);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi10");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[10]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_11
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「11」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「11」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi11");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_sijyou_location_fumi.push(10);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi11");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[11]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_12
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「12」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「12」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi12");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_sijyou_location_fumi.push(11);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi12");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[12]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_13
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「13」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「13」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi13");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_sijyou_location_fumi.push(12);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi13");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[13]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_14
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「14」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「14」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi14");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(13);
f.fumi_list_sijyou_location_fumi.push(13);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi14");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[14]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_15
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「15」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「15」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi15");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(14);
f.fumi_list_sijyou_location_fumi.push(14);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi15");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[15]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_16
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「16」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「16」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi16");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(15);
f.fumi_list_sijyou_location_fumi.push(15);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi16");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[16]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_17
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「17」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「17」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi17");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(16);
f.fumi_list_sijyou_location_fumi.push(16);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi17");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[17]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_18
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「18」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「18」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi18");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(17);
f.fumi_list_sijyou_location_fumi.push(17);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi18");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[18]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_19
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「19」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「19」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi19");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(18);
f.fumi_list_sijyou_location_fumi.push(18);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi19");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[19]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_20
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「20」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「20」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi20");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(19);
f.fumi_list_sijyou_location_fumi.push(19);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi20");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[20]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_21
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「21」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「21」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi21");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(20);
f.fumi_list_sijyou_location_fumi.push(20);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi21");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[21]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_22
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「22」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「22」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi22");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(21);
f.fumi_list_sijyou_location_fumi.push(21);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi22");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[22]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_23
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「23」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「23」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi23");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(22);
f.fumi_list_sijyou_location_fumi.push(22);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi23");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[23]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya
*fumi_toutyaku_sijyou_24
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「24」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「24」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi24");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(23);
f.fumi_list_sijyou_location_fumi.push(23);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi24");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[24]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_25
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「25」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「25」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi25");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(24);
f.fumi_list_sijyou_location_fumi.push(24);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi25");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[25]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_26
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「26」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「26」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi26");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(25);
f.fumi_list_sijyou_location_fumi.push(25);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi26");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[26]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_27
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「27」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「27」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi27");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(26);
f.fumi_list_sijyou_location_fumi.push(26);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi27");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[27]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_28
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「28」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「28」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi28");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(27);
f.fumi_list_sijyou_location_fumi.push(27);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi28");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[28]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_29
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「29」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「29」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi29");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(28);
f.fumi_list_sijyou_location_fumi.push(28);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi29");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[29]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_30
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「30」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「30」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi30");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(29);
f.fumi_list_sijyou_location_fumi.push(29);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi30");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[30]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_31
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「31」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「31」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi31");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(30);
f.fumi_list_sijyou_location_fumi.push(30);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi31");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[31]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_32
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「32」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「32」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi32");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(31);
f.fumi_list_sijyou_location_fumi.push(31);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi32");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[32]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_33
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「33」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「33」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi33");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(32);
f.fumi_list_sijyou_location_fumi.push(32);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi33");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[33]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya
*fumi_toutyaku_sijyou_34
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「34」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「34」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi34");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(33);
f.fumi_list_sijyou_location_fumi.push(33);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi34");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[34]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_35
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「35」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「35」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi35");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(34);
f.fumi_list_sijyou_location_fumi.push(34);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi35");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[35]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_36
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「36」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「36」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi36");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(35);
f.fumi_list_sijyou_location_fumi.push(35);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi36");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[36]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_37
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「37」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「37」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi37");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(36);
f.fumi_list_sijyou_location_fumi.push(36);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi37");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[37]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_38
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「38」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「38」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi38");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(37);
f.fumi_list_sijyou_location_fumi.push(37);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi38");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[38]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_39
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「39」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「39」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi39");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(38);
f.fumi_list_sijyou_location_fumi.push(38);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi39");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[39]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_40
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「40」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「40」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi40");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(39);
f.fumi_list_sijyou_location_fumi.push(39);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi40");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[40]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_41
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「41」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「41」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi41");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(40);
f.fumi_list_sijyou_location_fumi.push(40);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi41");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[41]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_42
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「42」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「42」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi42");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(41);
f.fumi_list_sijyou_location_fumi.push(41);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi42");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[42]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_43
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「43」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「43」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi43");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(42);
f.fumi_list_sijyou_location_fumi.push(42);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi43");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[43]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya
*fumi_toutyaku_sijyou_44
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「44」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「44」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi44");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(43);
f.fumi_list_sijyou_location_fumi.push(43);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi44");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[44]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_45
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「45」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「45」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi45");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(44);
f.fumi_list_sijyou_location_fumi.push(44);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi45");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[45]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_46
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「46」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「46」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi46");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(45);
f.fumi_list_sijyou_location_fumi.push(45);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi46");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[46]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_47
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「47」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「47」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi47");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(46);
f.fumi_list_sijyou_location_fumi.push(46);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi47");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[47]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_48
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「48」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「48」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi48");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(47);
f.fumi_list_sijyou_location_fumi.push(47);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi48");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[48]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_49
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「49」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「49」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi49");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(48);
f.fumi_list_sijyou_location_fumi.push(48);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi49");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[49]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_50
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「50」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「50」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi50");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(49);
f.fumi_list_sijyou_location_fumi.push(49);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi50");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[50]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_51
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「51」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「51」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi51");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(50);
f.fumi_list_sijyou_location_fumi.push(50);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi51");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[51]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_52
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「52」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「52」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi52");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(51);
f.fumi_list_sijyou_location_fumi.push(51);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi52");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[52]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_53
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「53」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「53」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi53");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(52);
f.fumi_list_sijyou_location_fumi.push(52);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi53");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[53]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya
*fumi_toutyaku_sijyou_54
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「54」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「54」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi54");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(53);
f.fumi_list_sijyou_location_fumi.push(53);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi54");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[54]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_55
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「55」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「55」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi55");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(54);
f.fumi_list_sijyou_location_fumi.push(54);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi55");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[55]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_56
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「56」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「56」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi56");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(55);
f.fumi_list_sijyou_location_fumi.push(55);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi56");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[56]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_57
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「57」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「57」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi57");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(56);
f.fumi_list_sijyou_location_fumi.push(56);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi57");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[57]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_58
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「58」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「58」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi58");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(57);
f.fumi_list_sijyou_location_fumi.push(57);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi58");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[58]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_59
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「59」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「59」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi59");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(58);
f.fumi_list_sijyou_location_fumi.push(58);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi59");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[59]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_60
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「60」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「60」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi60");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(59);
f.fumi_list_sijyou_location_fumi.push(59);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi60");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[60]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_61
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「61」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「61」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi61");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(60);
f.fumi_list_sijyou_location_fumi.push(60);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi61");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[61]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_62
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「62」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「62」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi62");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(61);
f.fumi_list_sijyou_location_fumi.push(61);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi62");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[62]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_63
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「63」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「63」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi63");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(62);
f.fumi_list_sijyou_location_fumi.push(62);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi63");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[63]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_64
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「64」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「64」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi64");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(63);
f.fumi_list_sijyou_location_fumi.push(63);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi64");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[64]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_65
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「65」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「65」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi65");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(64);
f.fumi_list_sijyou_location_fumi.push(64);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi65");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[65]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_66
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「66」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「66」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi66");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(65);
f.fumi_list_sijyou_location_fumi.push(65);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi66");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[66]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_67
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「67」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「67」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi67");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(66);
f.fumi_list_sijyou_location_fumi.push(66);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi67");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[67]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_68
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「68」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「68」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi68");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(67);
f.fumi_list_sijyou_location_fumi.push(67);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi68");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[68]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_69
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「69」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「69」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi69");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(68);
f.fumi_list_sijyou_location_fumi.push(68);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi69");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[69]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_70
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「70」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「70」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi70");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(69);
f.fumi_list_sijyou_location_fumi.push(69);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi70");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[70]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_71
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「71」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「71」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi71");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(70);
f.fumi_list_sijyou_location_fumi.push(70);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi71");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[71]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_72
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「72」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「72」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi72");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(71);
f.fumi_list_sijyou_location_fumi.push(71);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi72");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[72]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_73
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「73」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「73」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi73");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(72);
f.fumi_list_sijyou_location_fumi.push(72);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi73");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[73]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_74
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「74」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「74」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi74");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(73);
f.fumi_list_sijyou_location_fumi.push(73);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi74");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[74]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_75
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「75」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「75」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi75");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(74);
f.fumi_list_sijyou_location_fumi.push(74);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi75");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[75]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_76
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「76」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「76」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi76");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(75);
f.fumi_list_sijyou_location_fumi.push(75);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi76");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[76]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_77
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「77」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「77」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi77");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(76);
f.fumi_list_sijyou_location_fumi.push(76);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi77");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[77]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_78
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「78」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「78」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi78");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(77);
f.fumi_list_sijyou_location_fumi.push(77);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi78");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[78]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_79
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「79」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「79」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi79");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(78);
f.fumi_list_sijyou_location_fumi.push(78);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi79");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[79]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_80
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「80」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「80」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi80");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(79);
f.fumi_list_sijyou_location_fumi.push(79);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi80");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[80]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_81
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「81」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「81」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi81");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(80);
f.fumi_list_sijyou_location_fumi.push(80);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi81");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[81]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_82
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「82」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「82」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi82");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(81);
f.fumi_list_sijyou_location_fumi.push(81);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi82");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[82]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_83
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「83」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「83」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi83");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(82);
f.fumi_list_sijyou_location_fumi.push(82);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi83");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[83]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_84
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「84」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「84」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi84");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(83);
f.fumi_list_sijyou_location_fumi.push(83);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi84");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[84]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_85
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「85」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「85」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi85");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(84);
f.fumi_list_sijyou_location_fumi.push(84);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi85");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[85]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_86
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「86」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「86」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi86");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(85);
f.fumi_list_sijyou_location_fumi.push(85);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi86");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[86]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_87
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「87」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「87」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi87");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(86);
f.fumi_list_sijyou_location_fumi.push(86);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi87");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[87]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_88
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「88」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「88」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi88");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(87);
f.fumi_list_sijyou_location_fumi.push(87);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi88");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[88]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_89
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「89」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「89」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi89");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(88);
f.fumi_list_sijyou_location_fumi.push(88);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi89");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[89]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_90
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「90」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「90」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi90");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(89);
f.fumi_list_sijyou_location_fumi.push(89);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi90");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[90]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_91
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「91」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「91」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi91");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(90);
f.fumi_list_sijyou_location_fumi.push(90);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi91");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[91]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_92
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「92」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「92」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi92");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(91);
f.fumi_list_sijyou_location_fumi.push(91);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi92");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[92]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_93
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「93」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「93」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi93");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(92);
f.fumi_list_sijyou_location_fumi.push(92);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi93");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[93]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya
*fumi_toutyaku_sijyou_94
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「94」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「94」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi94");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(93);
f.fumi_list_sijyou_location_fumi.push(93);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi94");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[94]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_95
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「95」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「95」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi95");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(94);
f.fumi_list_sijyou_location_fumi.push(94);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi95");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[95]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_96
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「96」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「96」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi96");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(95);
f.fumi_list_sijyou_location_fumi.push(95);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi96");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[96]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_97
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「97」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「97」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi97");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(96);
f.fumi_list_sijyou_location_fumi.push(96);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi97");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[97]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_98
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「98」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「98」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi98");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(97);
f.fumi_list_sijyou_location_fumi.push(97);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi98");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[98]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_99
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「99」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「99」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi99");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(98);
f.fumi_list_sijyou_location_fumi.push(98);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi99");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[99]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_100
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「100」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「100」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi100");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(90);
f.fumi_list_sijyou_location_fumi.push(90);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi100");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[100]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_101
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「101」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「101」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi101");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(100);
f.fumi_list_sijyou_location_fumi.push(100);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi101");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[101]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_102
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「102」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「102」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi102");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(101);
f.fumi_list_sijyou_location_fumi.push(101);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi102");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[102]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_103
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「103」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「103」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi103");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(102);
f.fumi_list_sijyou_location_fumi.push(102);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi103");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[103]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_104
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「104」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「104」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi104");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(103);
f.fumi_list_sijyou_location_fumi.push(103);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi104");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[104]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_105
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「105」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「105」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi105");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(104);
f.fumi_list_sijyou_location_fumi.push(104);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi105");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[105]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_106
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「106」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「106」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi106");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(105);
f.fumi_list_sijyou_location_fumi.push(105);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi106");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[106]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_107
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「107」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「107」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi107");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(106);
f.fumi_list_sijyou_location_fumi.push(106);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi107");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[107]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_108
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「108」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「108」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi108");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(107);
f.fumi_list_sijyou_location_fumi.push(107);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi108");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[108]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_109
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「109」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「109」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi109");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(108);
f.fumi_list_sijyou_location_fumi.push(108);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi109");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[109]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_110
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「110」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「110」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi110");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(90);
f.fumi_list_sijyou_location_fumi.push(90);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi110");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[110]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_111
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「111」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「111」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi111");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(110);
f.fumi_list_sijyou_location_fumi.push(110);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi111");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[111]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_112
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「112」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「112」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi112");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(111);
f.fumi_list_sijyou_location_fumi.push(111);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi112");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[112]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_113
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「113」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「113」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi113");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(112);
f.fumi_list_sijyou_location_fumi.push(112);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi113");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[113]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_114
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「114」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「114」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi114");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(113);
f.fumi_list_sijyou_location_fumi.push(113);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi114");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[114]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_115
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「115」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「115」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi115");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(114);
f.fumi_list_sijyou_location_fumi.push(114);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi115");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[115]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_116
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「116」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「116」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi116");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(115);
f.fumi_list_sijyou_location_fumi.push(115);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi116");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[116]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_117
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「117」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「117」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi117");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(116);
f.fumi_list_sijyou_location_fumi.push(116);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi117");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[117]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_118
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「118」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「118」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi118");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(117);
f.fumi_list_sijyou_location_fumi.push(117);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi118");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[118]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_119
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「119」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「119」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi119");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(118);
f.fumi_list_sijyou_location_fumi.push(118);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi119");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[119]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_120
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「120」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「120」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi120");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(90);
f.fumi_list_sijyou_location_fumi.push(90);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi120");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[120]=1;
[endscript]
@jump target=*fumi_toutyaku_hantei_katuraginomiya
