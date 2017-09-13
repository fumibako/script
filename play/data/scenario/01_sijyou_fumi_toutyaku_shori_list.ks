﻿﻿﻿﻿﻿﻿;◆手紙到着フラグONの個別処理
;◆四条手紙到着
*fumi_toutyaku_sijyou_2
[iscript]
//↓「文箱」クリック時に表示される一覧での手紙タイトル(差出人名入り)テストしやすいように(お見合い前)など入れてみましたが、実際のタイトルからは除いた方が自然かも？
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「趣味について」　四条 華織";
//↓「情報」(攻略対象情報)クリック時に表示される一覧での手紙タイトル(差出人名無し)
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「趣味について」";
//↓配列情報(全手紙：タイトル)を追加
f.fumi_list_all_title.push(f.fumi_all_title_new);
//↓配列情報(全手紙：その手紙が記載されたファイル名)を追加
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
//↓配列情報(「情報」四条ページから手紙を見る目的：その手紙が記載されたファイル名)を追加
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
//↓配列情報(全手紙：その手紙ファイル中のラベル名)を追加
f.fumi_list_all_target.push("*sijyou_syumi_1");
//↓配列情報(全手紙：攻略対象固有ナンバー(0=黒田、1=財前、2=四条、3=葛城宮、4=藤枝)を追加。変更の必要はありません
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
//↓趣味についての返事待ち週数リセット
f.sijyou_fumi_toutyakumachi_shumi=-1;
[endscript]
;↓テスト出力用。ここを通過したかどうかや色々な変数の具合を見ていました。お好きに変えてくださって大丈夫です
[eval exp="f.test='手紙到着四条'+f.target_fumi_toutyaku"]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_3
;趣味について(お見合い後)3 sijyou_syumi_2
[iscript]
//↓「文箱」クリック時に表示される一覧での手紙タイトル(差出人名入り)。変更してください
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「趣味について」　四条 華織";
//↓「情報」(攻略対象情報)クリック時に表示される一覧での手紙タイトル(差出人名無し)。変更してください
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「趣味について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
//↓配列情報(全手紙：その手紙が記載されたファイル名)。必要があれば(sijyou_fumi_wadai.ksなど)変更してください
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
//↓配列情報(全手紙：その手紙ファイル中のラベル名)。変更してください
f.fumi_list_all_target.push("*sijyou_syumi_2");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_sijyou_location_fumi.push(2);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
//↓配列情報(全手紙：その手紙ファイル中のラベル名)。変更してください
f.fumi_list_sijyou_target.push("*sijyou_syumi_2");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[3]=1;
//↓趣味についての返事待ち週数リセット
f.sijyou_fumi_toutyakumachi_shumi=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_4
;家族について(お見合い前)4 sijyou_kazoku_1
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「家族について」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「家族について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_kazoku_1");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_sijyou_location_fumi.push(3);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_kazoku_1");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[4]=1;
f.sijyou_fumi_toutyakumachi_kazoku=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_5
;家族(お見合い後)5 sijyou_kazoku_2
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「家族について」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「家族について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_kazoku_2");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_sijyou_location_fumi.push(4);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_kazoku_2");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[5]=1;
f.sijyou_fumi_toutyakumachi_kazoku=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_6
;家族・祖父母両親(お見合い後・事件解決後)6 sijyou_kazoku_2_1
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「家族について・祖父母両親」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「家族について・祖父母両親」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_kazoku_2_1");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_sijyou_location_fumi.push(5);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_kazoku_2_1");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[6]=1;
f.sijyou_fumi_toutyakumachi_kazoku=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_7
;『家族について 兄弟』 (お見合い後・事件解決後2)7 sijyou_kazoku_2_2
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「家族について 兄弟」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「家族について 兄弟」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_kazoku_2_2");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_sijyou_location_fumi.push(6);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_kazoku_2_2");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[7]=1;
f.sijyou_fumi_toutyakumachi_kazoku=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_8
;『家族について 弟と妹』 (お見合い後・事件解決後2)8 sijyou_kazoku_2_3
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「家族について 弟と妹」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「家族について 弟と妹」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_kazoku_2_3");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_sijyou_location_fumi.push(7);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_kazoku_2_3");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[8]=1;
f.sijyou_fumi_toutyakumachi_kazoku=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_9
;『家族・あなたと』(イベント6後) sijyou_kazoku_3
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「家族・あなたと」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「家族・あなたと」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_kazoku_3");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_sijyou_location_fumi.push(8);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_kazoku_3");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[9]=1;
f.sijyou_fumi_toutyakumachi_kazoku=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_10
;『将来について』(お見合い前)10 sijyou_syourai1
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「将来について」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「将来について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_syourai1");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_sijyou_location_fumi.push(9);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_syourai1");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[10]=1;
f.sijyou_fumi_toutyakumachi_shourai=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_11
;『将来について』(お見合い前2)11 sijyou_syourai1_2
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「将来について２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「将来について２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_syourai1_2");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_sijyou_location_fumi.push(10);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_syourai1_2");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[11]=1;
f.sijyou_fumi_toutyakumachi_shourai=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_12
;『将来について』(お見合い後)12 sijyou_syourai2　見合い２前後別内容
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「将来について３」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「将来について３」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_syourai2");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_sijyou_location_fumi.push(11);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_syourai2");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[12]=1;
f.sijyou_fumi_toutyakumachi_shourai=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_13
;『将来について』(お見合い後, 事件解決後 )13 sijyou_syourai2_1
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「将来について」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「将来について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_syourai2_1");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_sijyou_location_fumi.push(12);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_syourai2_1");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[13]=1;
f.sijyou_fumi_toutyakumachi_shourai=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_14
;『仕事について』(お見合い前)14 sijyou_sigoto1
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「仕事について」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「仕事について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_sigoto1");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(13);
f.fumi_list_sijyou_location_fumi.push(13);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_sigoto1");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[14]=1;
f.sijyou_fumi_toutyakumachi_sigoto=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_15
;『仕事について』(お見合い後)15 sijyou_sigoto2
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「仕事について」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「仕事について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_sigoto2");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(14);
f.fumi_list_sijyou_location_fumi.push(14);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_sigoto2");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[15]=1;
f.sijyou_fumi_toutyakumachi_sigoto=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_16
;『仕事について』(お見合い後2)16 sijyou_sigoto2_1
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「仕事について」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「仕事について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_sigoto2_1");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(15);
f.fumi_list_sijyou_location_fumi.push(15);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_sigoto2_1");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[16]=1;
f.sijyou_fumi_toutyakumachi_sigoto=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_17
;『仕事について』(お見合い後3)17　 事件解決後 sijyou_sigoto3
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「仕事について」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「仕事について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_sigoto3");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(16);
f.fumi_list_sijyou_location_fumi.push(16);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_sigoto3");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[17]=1;
f.sijyou_fumi_toutyakumachi_sigoto=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_18
;『仕事について』(お見合い後4)18　 事件解決後二月二日以降 sijyou_sigoto4
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「仕事について」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「仕事について」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_sigoto4");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(17);
f.fumi_list_sijyou_location_fumi.push(17);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_sigoto4");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[18]=1;
f.sijyou_fumi_toutyakumachi_sigoto=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_19
;友人(お見合い前)19　sijyou_yujin_1
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「友人」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「友人」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_yujin_1");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(18);
f.fumi_list_sijyou_location_fumi.push(18);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_yujin_1");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[19]=1;
f.sijyou_fumi_toutyakumachi_yuujin=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_20
;友人(お見合い後)20 sijyou_yujin_2
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「友人」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「友人」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_yujin_2");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(19);
f.fumi_list_sijyou_location_fumi.push(19);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_yujin_2");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[20]=1;
f.sijyou_fumi_toutyakumachi_yuujin=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya
;========================================================================
;季節の話題
;========================================================================
*fumi_toutyaku_sijyou_21
;春『ヒヨドリ』1 sijyou_fumi21
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「ヒヨドリ」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「ヒヨドリ」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi21");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(20);
f.fumi_list_sijyou_location_fumi.push(20);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi21");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[21]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_22
;sijyou_fumi22『アンズ』
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「アンズ」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「アンズ」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi22");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(21);
f.fumi_list_sijyou_location_fumi.push(21);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi22");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[22]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_23　
;春sijyou_fumi23『トキワナズナ』
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「トキワナズナ」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「トキワナズナ」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi23");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(22);
f.fumi_list_sijyou_location_fumi.push(22);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi23");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[23]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya
*fumi_toutyaku_sijyou_24
;春『チューリップ』sijyou_fumi24
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「チューリップ」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「チューリップ」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi24");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(23);
f.fumi_list_sijyou_location_fumi.push(23);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi24");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[24]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_25
;春 『筍』4 sijyou_fumi25
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「筍」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「筍」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi25");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(24);
f.fumi_list_sijyou_location_fumi.push(24);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi25");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[25]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_26
;夏『すだれ』5    sijyou_fumi26
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「すだれ」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「すだれ」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi26");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(25);
f.fumi_list_sijyou_location_fumi.push(25);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi26");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[26]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_27
;夏『すだれ2』5_1  sijyou_fumi27
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「すだれ２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「すだれ２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi27");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(26);
f.fumi_list_sijyou_location_fumi.push(26);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi27");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[27]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_28
;夏『ハマナス』5_2  sijyou_fumi28
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「ハマナス」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「ハマナス」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi28");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(27);
f.fumi_list_sijyou_location_fumi.push(27);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi28");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[28]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_29
;夏『かき氷』6  sijyou_fumi29
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「かき氷」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「かき氷」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi29");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(28);
f.fumi_list_sijyou_location_fumi.push(28);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi29");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[29]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_30
;夏 『蛙』7   sijyou_fumi30
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「蛙」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「蛙」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi30");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(29);
f.fumi_list_sijyou_location_fumi.push(29);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi30");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[30]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_31
;夏『夏の夜明け』8_1 sijyou_fumi31
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「夏の夜明け」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「夏の夜明け」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi31");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(30);
f.fumi_list_sijyou_location_fumi.push(30);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi31");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[31]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_32
;夏『昨晩の星』8_2 仲がいいこと *sijyou_fumi32
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「昨晩の星」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「昨晩の星」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi32");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(31);
f.fumi_list_sijyou_location_fumi.push(31);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi32");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[32]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_33
;夏『ネリネ』8_3 *sijyou_fumi33
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「ネリネ」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「ネリネ」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi33");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(32);
f.fumi_list_sijyou_location_fumi.push(32);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi33");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[33]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya
*fumi_toutyaku_sijyou_34
;秋『秋の夕暮れ』9 *sijyou_fumi34
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「秋の夕暮れ」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「秋の夕暮れ」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi34");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(33);
f.fumi_list_sijyou_location_fumi.push(33);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi34");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[34]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_35
;秋『秋の空』10 *sijyou_fumi35
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「秋の空」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「秋の空」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi35");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(34);
f.fumi_list_sijyou_location_fumi.push(34);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi35");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[35]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_36
;秋『読書』11 sijyou_fumi36
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「読書」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「読書」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi36");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(35);
f.fumi_list_sijyou_location_fumi.push(35);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi36");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[36]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_37
;冬『冬の夜ふけに』12 sijyou_fumi37
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「冬の夜ふけに」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「冬の夜ふけに」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi37");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(36);
f.fumi_list_sijyou_location_fumi.push(36);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi37");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[37]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_38
;冬『別荘にて』13 sijyou_fumi38
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「別荘にて」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「別荘にて」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi38");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(37);
f.fumi_list_sijyou_location_fumi.push(37);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi38");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[38]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_39
;冬『新年の準備』14 sijyou_fumi39
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「新年の準備」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「新年の準備」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi39");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(38);
f.fumi_list_sijyou_location_fumi.push(38);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi39");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[39]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_40
;冬『白霜』15 sijyou_fumi40
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「白霜」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「白霜」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi40");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(39);
f.fumi_list_sijyou_location_fumi.push(39);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi40");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[40]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_41
;冬『結納』(1月～３月３週｜家族　その他話題にて)  sijyou_fumi41
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「結納」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「結納」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi41");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(40);
f.fumi_list_sijyou_location_fumi.push(40);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi41");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[41]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_42
;春 『お茶の中に』2   sijyou_fumi42
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お茶の中に」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「お茶の中に」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi42");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(41);
f.fumi_list_sijyou_location_fumi.push(41);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi42");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[42]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_43
;春『未来へ』 (1月2週～1月末まで)  sijyou_fumi43
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「未来へ」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「未来へ」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi43");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(42);
f.fumi_list_sijyou_location_fumi.push(42);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi43");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[43]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya
*fumi_toutyaku_sijyou_44
;春『全力』 (『未来へ』をみている)  sijyou_fumi44
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「全力」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「全力」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi44");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(43);
f.fumi_list_sijyou_location_fumi.push(43);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi44");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[44]=1;
f.sijyou_fumi_toutyakumachi_kisetsu=-1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_45
;『あぶりだしの便せん』あぶりだしを選択（事件解決前)avuridasi
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「あぶりだしの便せん」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「あぶりだしの便せん」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*avuridasi");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(44);
f.fumi_list_sijyou_location_fumi.push(44);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi45");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_aburidasi=-1;
f.fumi_toutyaku_sijyou[45]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_46
;『あぶりだしの便せん』 （事件解決後）avuridasi_2
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「あぶりだしの便せん」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「あぶりだしの便せん」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*avuridasi_2");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(45);
f.fumi_list_sijyou_location_fumi.push(45);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*avuridasi_2");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_aburidasi=-1;
f.fumi_toutyaku_sijyou[46]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya
;=============================================================================================
*fumi_toutyaku_sijyou_47
;「新茶の話題」（事件前)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「新茶の話題１」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「新茶の話題１」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi47");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(46);
f.fumi_list_sijyou_location_fumi.push(46);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi47");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_sintya=-1;
f.fumi_toutyaku_sijyou[47]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_48
;新茶の話題（事件後） sijyou_fumi48
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「新茶の話題２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「新茶の話題２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi48");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(47);
f.fumi_list_sijyou_location_fumi.push(47);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi48");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[48]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_49
;新茶の話題（事件後）sijyou_fumi49
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「新茶の話題３」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「新茶の話題３」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi49");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(48);
f.fumi_list_sijyou_location_fumi.push(48);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi49");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_sintya=-1;
f.fumi_toutyaku_sijyou[49]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_50
;新茶の話題_続（事件後）sijyou_fumi50
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「新茶の話題４」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「新茶の話題４」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi50");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(49);
f.fumi_list_sijyou_location_fumi.push(49);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi50");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_sintya=-1;
f.fumi_toutyaku_sijyou[50]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_51
;新茶の話題＿凡庸（事件前） sijyou_fumi48
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「新茶の話題　失敗」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「新茶の話題　失敗」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi51");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(50);
f.fumi_list_sijyou_location_fumi.push(50);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi51");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_sintya=-1;
f.fumi_toutyaku_sijyou[51]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_52
;新茶の話題＿凡庸（事件前） sijyou_fumi52
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「新茶の話題　成功」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「新茶の話題　成功」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi52");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(51);
f.fumi_list_sijyou_location_fumi.push(51);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi52");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_sintya=-1;
f.fumi_toutyaku_sijyou[52]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_53
;聞き上手と話し上手２＿２　番号抜け
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi53");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(52);
f.fumi_list_sijyou_location_fumi.push(52);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi53");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_kiki=-1;
f.fumi_toutyaku_sijyou[53]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_54
;なし
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「54」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「54」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi54");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(53);
f.fumi_list_sijyou_location_fumi.push(53);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi54");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[54]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_55
;新茶の話題　凡庸A（事件後）
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「新茶の話題　失敗」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「新茶の話題　失敗」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi55");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(54);
f.fumi_list_sijyou_location_fumi.push(54);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi55");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_sintya=-1;
f.fumi_toutyaku_sijyou[55]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_56
;新茶の話題　凡庸B（事件後）
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「新茶の話題　成功」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「新茶の話題　成功」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi56");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(55);
f.fumi_list_sijyou_location_fumi.push(55);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi56");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_sintya=-1;
f.fumi_toutyaku_sijyou[56]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_57
;さつき(見合い前)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「さつき」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「さつき」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi57");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(56);
f.fumi_list_sijyou_location_fumi.push(56);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi57");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_satuki=-1;
f.fumi_toutyaku_sijyou[57]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_58
;さつき(見合い後)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「さつき」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「さつき」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi58");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(57);
f.fumi_list_sijyou_location_fumi.push(57);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi58");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_satuki=-1;
f.fumi_toutyaku_sijyou[58]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_59
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「詩集」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「詩集」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi59");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(58);
f.fumi_list_sijyou_location_fumi.push(58);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi59");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_dokusho=-1;
f.fumi_toutyaku_sijyou[59]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_60
;聞き上手と話し上手１(事件解決前)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手１」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手１」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi60");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(59);
f.fumi_list_sijyou_location_fumi.push(59);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi60");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_kiki=-1;
f.fumi_toutyaku_sijyou[60]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_61
;聞き上手と話し上手１(事件解決後)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手１」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手１」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi61");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(60);
f.fumi_list_sijyou_location_fumi.push(60);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi61");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_kiki=-1;
f.fumi_toutyaku_sijyou[61]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_62
;聞き上手と話し上手２　凡庸(事件前)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi62");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(61);
f.fumi_list_sijyou_location_fumi.push(61);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi62");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_kiki=-1;
f.fumi_toutyaku_sijyou[62]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_63
;聞き上手と話し上手２　凡庸(事件後)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi63");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(62);
f.fumi_list_sijyou_location_fumi.push(62);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi63");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_kiki=-1;
f.fumi_toutyaku_sijyou[63]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_64
;聞き上手と話し上手３(事件解決後)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手３」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「聞き上手と話し上手３」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi64");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(63);
f.fumi_list_sijyou_location_fumi.push(63);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi64");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_kiki=-1;
f.fumi_toutyaku_sijyou[64]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_65
;食事
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「食事」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「食事」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi65");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(64);
f.fumi_list_sijyou_location_fumi.push(64);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi65");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_shokuji=-1;
f.fumi_toutyaku_sijyou[65]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_66
;食事 凡庸(お見合い後・事件前)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「食事２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「食事２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi66");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(65);
f.fumi_list_sijyou_location_fumi.push(65);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi66");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_shokuji=-1;
f.fumi_toutyaku_sijyou[66]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_67
;食事 凡庸(事件後)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「食事３」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「食事３」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi67");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(66);
f.fumi_list_sijyou_location_fumi.push(66);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi67");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_shokuji=-1;
f.fumi_toutyaku_sijyou[67]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_68
;緑の石１
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「緑の石１」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「緑の石１」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi68");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(67);
f.fumi_list_sijyou_location_fumi.push(67);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi68");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_midori=-1;
f.fumi_toutyaku_sijyou[68]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_69
;緑の石２　(事件解決前)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「緑の石２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「緑の石２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi69");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(68);
f.fumi_list_sijyou_location_fumi.push(68);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi69");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_midori=-1;
f.fumi_toutyaku_sijyou[69]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_70
;緑の石２ (事件解決後)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「緑の石２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「緑の石２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi70");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(69);
f.fumi_list_sijyou_location_fumi.push(69);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi70");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_midori=-1;
f.fumi_toutyaku_sijyou[70]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_71
;緑の石３(事件解決後のみ)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「緑の石３」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「緑の石３」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi71");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(70);
f.fumi_list_sijyou_location_fumi.push(70);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi71");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_midori=-1;
f.fumi_toutyaku_sijyou[71]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_72
;緑の石４(事件解決後のみ)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「緑の石４」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「緑の石４」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi72");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(71);
f.fumi_list_sijyou_location_fumi.push(71);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi72");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_midori=-1;
f.fumi_toutyaku_sijyou[72]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_73
;一日のはじまり
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「一日のはじまり」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「一日のはじまり」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi73");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(72);
f.fumi_list_sijyou_location_fumi.push(72);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi73");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_hajimari=-1;
f.fumi_toutyaku_sijyou[73]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_74
;一日のはじまり２(事件解決前)
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「一日のはじまり２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「一日のはじまり２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi74");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(73);
f.fumi_list_sijyou_location_fumi.push(73);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi74");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_hajimari=-1;
f.fumi_toutyaku_sijyou[74]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_75
;一日のはじまり２(事件解決後)
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「一日のはじまり２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「一日のはじまり２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi75");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(74);
f.fumi_list_sijyou_location_fumi.push(74);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi75");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_hajimari=-1;
f.fumi_toutyaku_sijyou[75]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_76
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「猫１」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「猫１」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi76");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(75);
f.fumi_list_sijyou_location_fumi.push(75);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi76");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_neko=-1;
f.fumi_toutyaku_sijyou[76]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_77
;『猫 見合い後』呼称手紙側で判別
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「猫２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「猫２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi77");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(76);
f.fumi_list_sijyou_location_fumi.push(76);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi77");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_neko=-1;
f.fumi_toutyaku_sijyou[77]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_78
;『猫 凡庸2』
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「猫３」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「猫３」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi78");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(77);
f.fumi_list_sijyou_location_fumi.push(77);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi78");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_neko=-1;
f.fumi_toutyaku_sijyou[78]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_79
;『猫　事件解決後（猫をひろう）』
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「猫（猫をひろう）」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「猫（猫をひろう）」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi79");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(78);
f.fumi_list_sijyou_location_fumi.push(78);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi79");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_neko=-1;
f.fumi_toutyaku_sijyou[79]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_80
;『猫　事件解決後（猫育つ）』
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「猫（猫の経過１）」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「猫（猫の経過１）」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi80");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(79);
f.fumi_list_sijyou_location_fumi.push(79);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi80");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_neko=-1;
f.fumi_toutyaku_sijyou[80]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_81
;『猫５　事件解決後（猫引き取り手発見）』
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「猫（猫の経過２）」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「猫（猫の経過２）」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi81");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(80);
f.fumi_list_sijyou_location_fumi.push(80);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi81");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_neko=-1;
f.fumi_toutyaku_sijyou[81]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_82
;『猫５　事件解決後（猫引き取り手へ）』
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「猫（猫の経過３）」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「猫（猫の経過３）」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi82");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(81);
f.fumi_list_sijyou_location_fumi.push(81);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi82");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_neko=-1;
f.fumi_toutyaku_sijyou[82]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_83
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「道１」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「道１」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi83");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(82);
f.fumi_list_sijyou_location_fumi.push(82);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi83");
f.sijyou_fumi_toutyakumachi_michi=-1;
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_michi=-1;
f.fumi_toutyaku_sijyou[83]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_84
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「道２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「道２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi84");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(83);
f.fumi_list_sijyou_location_fumi.push(83);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi84");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_michi=-1;
f.fumi_toutyaku_sijyou[84]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_85
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi85");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(84);
f.fumi_list_sijyou_location_fumi.push(84);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi85");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_music=-1;
f.fumi_toutyaku_sijyou[85]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_86
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「お気に入りの曲２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi86");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(85);
f.fumi_list_sijyou_location_fumi.push(85);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi86");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_music=-1;
f.fumi_toutyaku_sijyou[86]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_87
;変化と永遠 見合い後　事件前
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「変化と永遠２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「変化と永遠２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi87");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(86);
f.fumi_list_sijyou_location_fumi.push(86);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi87");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_henka=-1;
f.fumi_toutyaku_sijyou[87]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_88
;変化と永遠 見合い前　事件前
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「変化と永遠１」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「変化と永遠１」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/ssijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi88");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(87);
f.fumi_list_sijyou_location_fumi.push(87);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi88");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_henka=-1;
f.fumi_toutyaku_sijyou[88]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_89
;変化と永遠 見合い後　事件解決後
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「変化と永遠３」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「変化と永遠３」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi89");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(88);
f.fumi_list_sijyou_location_fumi.push(88);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi89");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_henka=-1;
f.fumi_toutyaku_sijyou[89]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_90
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「スポーツ１」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「スポーツ１」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi90");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(89);
f.fumi_list_sijyou_location_fumi.push(89);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi90");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_sports=-1;
f.fumi_toutyaku_sijyou[90]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_91
;『スポーツ 事件解決後』
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「スポーツ１」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「スポーツ１」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi91");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(90);
f.fumi_list_sijyou_location_fumi.push(90);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi91");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_sports=-1;
f.fumi_toutyaku_sijyou[91]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_92
;『 スポーツ2 （お見合い前　事件前）』
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「スポーツ２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「スポーツ２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi92");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(91);
f.fumi_list_sijyou_location_fumi.push(91);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi92");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_sports=-1;
f.fumi_toutyaku_sijyou[92]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_93
;『 スポーツ2 （お見合い後　事件判定なし）』
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「スポーツ２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「スポーツ２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi93");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(92);
f.fumi_list_sijyou_location_fumi.push(92);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi93");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_sports=-1;
f.fumi_toutyaku_sijyou[93]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya
*fumi_toutyaku_sijyou_94
;観劇の話題_事件前＿誘う内容なので見合い後のみ
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「観劇」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「観劇」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi94");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(93);
f.fumi_list_sijyou_location_fumi.push(93);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi94");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_kangeki=-1;
f.fumi_toutyaku_sijyou[94]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_95
;事件後
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「観劇」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「観劇」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi95");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(94);
f.fumi_list_sijyou_location_fumi.push(94);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi95");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_kangeki=-1;
f.fumi_toutyaku_sijyou[95]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_96
;写真sijyou_fumi96
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「写真１」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「写真１」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi96");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(95);
f.fumi_list_sijyou_location_fumi.push(95);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi96");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_photo=-1;
f.fumi_toutyaku_sijyou[96]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_97
;写真（事件後）
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「写真２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「写真２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi97");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(96);
f.fumi_list_sijyou_location_fumi.push(96);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi97");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_photo=-1;
f.fumi_toutyaku_sijyou[97]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_98
;お見合い後、事件解決前
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「友人２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「友人２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi98");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(97);
f.fumi_list_sijyou_location_fumi.push(97);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi98");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.sijyou_fumi_toutyakumachi_yuujin=-1;
f.fumi_toutyaku_sijyou[98]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_99
;お見合い後、事件解決後
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「友人２」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「友人２」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi99");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(98);
f.fumi_list_sijyou_location_fumi.push(98);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi99");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[99]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

;=============================================
;◆イベント中に届く手紙◆ イベントスクリプト中に移動しています
;=============================================
;『久しぶりに会って』*fumi_toutyaku_sijyou_100→sijyou_9_3.ks 63行目～へ移動しました
;=============================================
;『お正月』*fumi_toutyaku_sijyou_101→sijyou_1_1.ks 38行目～へ移動しました
;=============================================
;『四条華道展のお誘い』*fumi_toutyaku_sijyou_102→sijyou_3_1.ks 353行目～へ移動しました
;=============================================

*fumi_toutyaku_sijyou_103
;お見合い後、文矢(5)から
;"f.fumi_all_"は「文箱」一覧に表示される手紙の配列、"f.fumi_list_sijyou"は「情報：四条」に表示される手紙の配列となります。そのため文矢からの手紙はf.fumi_list_sijyouにpushされないようにコメントアウトしました。taishouを(5)にしてくださりありがとうございます
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「妹へ」　文矢";
//f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「妹へ」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
;f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi103");
f.fumi_list_all_location_taishou.push(5);
f.fumi_list_all_location_fumi.push(102);
//f.fumi_list_sijyou_location_fumi.push(102);
//f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
//f.fumi_list_sijyou_target.push("*sijyou_fumi103");
//f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[103]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_104
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「怪談」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「怪談」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi104");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(103);
f.fumi_list_sijyou_location_fumi.push(103);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi104");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[104]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_105
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「怪談」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「怪談」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi105");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(104);
f.fumi_list_sijyou_location_fumi.push(104);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi105");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[105]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_106
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「怪談」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「怪談」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi_wadai.ks");
f.fumi_list_all_target.push("*sijyou_fumi106");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(105);
f.fumi_list_sijyou_location_fumi.push(105);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi106");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[106]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_107
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「107」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「107」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi107");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(106);
f.fumi_list_sijyou_location_fumi.push(106);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi107");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[107]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_108
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「108」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「108」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi108");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(107);
f.fumi_list_sijyou_location_fumi.push(107);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi108");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[108]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_109
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「109」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「109」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi109");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(108);
f.fumi_list_sijyou_location_fumi.push(108);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi109");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[109]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_110
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「110」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「110」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi110");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(90);
f.fumi_list_sijyou_location_fumi.push(90);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi110");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[110]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_111
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「111」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「111」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi111");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(110);
f.fumi_list_sijyou_location_fumi.push(110);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi111");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[111]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_112
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「112」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「112」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi112");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(111);
f.fumi_list_sijyou_location_fumi.push(111);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi112");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[112]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_113
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「113」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「113」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi113");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(112);
f.fumi_list_sijyou_location_fumi.push(112);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi113");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[113]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_114
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「114」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「114」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi114");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(113);
f.fumi_list_sijyou_location_fumi.push(113);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi114");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[114]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_115
[iscript]
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「115」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「115」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi115");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(114);
f.fumi_list_sijyou_location_fumi.push(114);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi115");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[115]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_116
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「116」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「116」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi116");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(115);
f.fumi_list_sijyou_location_fumi.push(115);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi116");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[116]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_117
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「117」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「117」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi117");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(116);
f.fumi_list_sijyou_location_fumi.push(116);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi117");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[117]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_118
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「118」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「118」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi118");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(117);
f.fumi_list_sijyou_location_fumi.push(117);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi118");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[118]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_119
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「119」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「119」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi119");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(118);
f.fumi_list_sijyou_location_fumi.push(118);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi119");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[119]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya

*fumi_toutyaku_sijyou_120
[iscript]	
f.fumi_all_title_new=f.okeiko_month_kansuuji+"「120」　四条 華織";
f.fumi_sijyou_title_new=f.okeiko_month_kansuuji+"「120」";
f.fumi_list_all_title.push(f.fumi_all_title_new);
f.fumi_list_all_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_sijyou_storage.push("sijyou/sijyou_fumi.ks");
f.fumi_list_all_target.push("*sijyou_fumi120");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(90);
f.fumi_list_sijyou_location_fumi.push(90);
f.fumi_list_sijyou_title.push(f.fumi_sijyou_title_new);
f.fumi_list_sijyou_target.push("*sijyou_fumi120");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
f.fumi_toutyaku_sijyou[120]=1;
[endscript]
@jump storage=hantei_fumi_toutyaku.ks target=*fumi_toutyaku_hantei_katuraginomiya
