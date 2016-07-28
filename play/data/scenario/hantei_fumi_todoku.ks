;◆手紙到着判定処理
*fumi_toutyaku_hantei_all
*fumi_toutyaku_hantei_kuroda
;◇黒田手紙到着判定_条件無し分
[iscript]
//f.kuroda_fumi_toutyakumachi_week=1;
//[sf.kuroda['fumi_henjimachi_ok_number']]
//[sf.kuroda['fumi_hindo_week']]
//[sf.kuroda['koukando_a']]
;

f.test="手紙到着可能性あり";
	if(){
		TG.kag.ftag.startTag("jump",{target:"*fumi_todoku_kuroda_2"}); 
f.test="手紙到着";
	}
}
[endscript]

[eval exp="f.test='手紙到着可能性なし'"]
[if exp="f.kuroda_fumi_henjimachi < [sf.kuroda['fumi_henjimachi_ok_number']]"]
[eval exp="f.test='手紙到着可能性あり'"]
	[if exp="f.kuroda_fumi_toutyakumachi_week>=[sf.kuroda['fumi_hindo_week']]"]
		[eval exp="f.target_fumi_toutyaku='*fumi_todoku_kuroda_'+f.kuroda_nextfumi_common"]
		@jump storage=okeiko.ks target=&f.target_fumi_toutyaku
		[eval exp="f.test='手紙到着'"]
	[endif]
[endif]



*hantei_fumi_toutyaku_end
;◆お稽古パート(休憩終了、週更新時)に戻る
@jump storage=okeiko.ks target=*qk_end

[s]

*fumi_all_number
;◆手紙（全員）総数計算
[eval exp="f.fumi_all_number = f.fumi_list_all_title.length"]
[return]

;◆手紙到着フラグONの個別処理
;◆黒田手紙到着
*fumi_todoku_kuroda_2
[iscript]	
f.fumi_list_all_title.push("三月　「2」　黒田 将貴");
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi2");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_kuroda_location_fumi.push(1);
f.fumi_list_kuroda_title.push("三月　「2」");
f.fumi_list_kuroda_target.push("*kuroda_fumi2");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_kuroda_3
[iscript]	
f.fumi_list_all_title.push("三月　「3」　黒田 将貴");
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi3");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_kuroda_location_fumi.push(2);
f.fumi_list_kuroda_title.push("三月　「3」");
f.fumi_list_kuroda_target.push("*kuroda_fumi3");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_kuroda_4
[iscript]	
f.fumi_list_all_title.push("三月　「4」　黒田 将貴");
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi4");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_kuroda_location_fumi.push(3);
f.fumi_list_kuroda_title.push("三月　「4」");
f.fumi_list_kuroda_target.push("*kuroda_fumi4");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_kuroda_5
[iscript]	
f.fumi_list_all_title.push("三月　「5」　黒田 将貴");
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi5");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_kuroda_location_fumi.push(4);
f.fumi_list_kuroda_title.push("三月　「5」");
f.fumi_list_kuroda_target.push("*kuroda_fumi5");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_kuroda_6
[iscript]	
f.fumi_list_all_title.push("三月　「6」　黒田 将貴");
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi6");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_kuroda_location_fumi.push(5);
f.fumi_list_kuroda_title.push("三月　「6」");
f.fumi_list_kuroda_target.push("*kuroda_fumi6");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_kuroda_7
[iscript]	
f.fumi_list_all_title.push("三月　「7」　黒田 将貴");
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi7");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_kuroda_location_fumi.push(6);
f.fumi_list_kuroda_title.push("三月　「7」");
f.fumi_list_kuroda_target.push("*kuroda_fumi7");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_kuroda_8
[iscript]	
f.fumi_list_all_title.push("三月　「8」　黒田 将貴");
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi8");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_kuroda_location_fumi.push(7);
f.fumi_list_kuroda_title.push("三月　「8」");
f.fumi_list_kuroda_target.push("*kuroda_fumi8");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_kuroda_9
[iscript]	
f.fumi_list_all_title.push("三月　「9」　黒田 将貴");
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi9");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_kuroda_location_fumi.push(8);
f.fumi_list_kuroda_title.push("三月　「9」");
f.fumi_list_kuroda_target.push("*kuroda_fumi9");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_kuroda_10
[iscript]	
f.fumi_list_all_title.push("三月　「10」　黒田 将貴");
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi10");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_kuroda_location_fumi.push(9);
f.fumi_list_kuroda_title.push("三月　「10」");
f.fumi_list_kuroda_target.push("*kuroda_fumi10");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_kuroda_11
[iscript]	
f.fumi_list_all_title.push("三月　「11」　黒田 将貴");
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi11");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_kuroda_location_fumi.push(10);
f.fumi_list_kuroda_title.push("三月　「11」");
f.fumi_list_kuroda_target.push("*kuroda_fumi11");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_kuroda_12
[iscript]	
f.fumi_list_all_title.push("三月　「12」　黒田 将貴");
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi12");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_kuroda_location_fumi.push(11);
f.fumi_list_kuroda_title.push("三月　「12」");
f.fumi_list_kuroda_target.push("*kuroda_fumi12");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_kuroda_13
[iscript]	
f.fumi_list_all_title.push("三月　「13」　黒田 将貴");
f.fumi_list_all_storage.push("fumi_kuroda.ks");
f.fumi_list_all_target.push("*kuroda_fumi13");
f.fumi_list_all_location_taishou.push(0);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_kuroda_location_fumi.push(12);
f.fumi_list_kuroda_title.push("三月　「13」");
f.fumi_list_kuroda_target.push("*kuroda_fumi13");
f.kuroda_fumi_henjimachi=f.kuroda_fumi_henjimachi+1;
[endscript]
[return]

;◆財前手紙到着
*fumi_todoku_zaizen_2
[iscript]	
f.fumi_list_all_title.push("三月　「2」　財前 美彬");
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi2");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_zaizen_location_fumi.push(1);
f.fumi_list_zaizen_title.push("三月　「2」");
f.fumi_list_zaizen_target.push("*zaizen_fumi2");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_zaizen_3
[iscript]	
f.fumi_list_all_title.push("三月　「3」　財前 美彬");
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi3");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_zaizen_location_fumi.push(2);
f.fumi_list_zaizen_title.push("三月　「3」");
f.fumi_list_zaizen_target.push("*zaizen_fumi3");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_zaizen_4
[iscript]	
f.fumi_list_all_title.push("三月　「4」　財前 美彬");
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi4");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_zaizen_location_fumi.push(3);
f.fumi_list_zaizen_title.push("三月　「4」");
f.fumi_list_zaizen_target.push("*zaizen_fumi4");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_zaizen_5
[iscript]	
f.fumi_list_all_title.push("三月　「5」　財前 美彬");
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi5");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_zaizen_location_fumi.push(4);
f.fumi_list_zaizen_title.push("三月　「5」");
f.fumi_list_zaizen_target.push("*zaizen_fumi5");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_zaizen_6
[iscript]	
f.fumi_list_all_title.push("三月　「6」　財前 美彬");
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi6");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_zaizen_location_fumi.push(5);
f.fumi_list_zaizen_title.push("三月　「6」");
f.fumi_list_zaizen_target.push("*zaizen_fumi6");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_zaizen_7
[iscript]	
f.fumi_list_all_title.push("三月　「7」　財前 美彬");
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi7");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_zaizen_location_fumi.push(6);
f.fumi_list_zaizen_title.push("三月　「7」");
f.fumi_list_zaizen_target.push("*zaizen_fumi7");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_zaizen_8
[iscript]	
f.fumi_list_all_title.push("三月　「8」　財前 美彬");
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi8");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_zaizen_location_fumi.push(7);
f.fumi_list_zaizen_title.push("三月　「8」");
f.fumi_list_zaizen_target.push("*zaizen_fumi8");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_zaizen_9
[iscript]	
f.fumi_list_all_title.push("三月　「9」　財前 美彬");
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi9");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_zaizen_location_fumi.push(8);
f.fumi_list_zaizen_title.push("三月　「9」");
f.fumi_list_zaizen_target.push("*zaizen_fumi9");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_zaizen_10
[iscript]	
f.fumi_list_all_title.push("三月　「10」　財前 美彬");
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi10");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_zaizen_location_fumi.push(9);
f.fumi_list_zaizen_title.push("三月　「10」");
f.fumi_list_zaizen_target.push("*zaizen_fumi10");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_zaizen_11
[iscript]	
f.fumi_list_all_title.push("三月　「11」　財前 美彬");
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi11");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_zaizen_location_fumi.push(10);
f.fumi_list_zaizen_title.push("三月　「11」");
f.fumi_list_zaizen_target.push("*zaizen_fumi11");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_zaizen_12
[iscript]	
f.fumi_list_all_title.push("三月　「12」　財前 美彬");
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi12");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_zaizen_location_fumi.push(11);
f.fumi_list_zaizen_title.push("三月　「12」");
f.fumi_list_zaizen_target.push("*zaizen_fumi12");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_zaizen_13
[iscript]	
f.fumi_list_all_title.push("三月　「13」　財前 美彬");
f.fumi_list_all_storage.push("fumi_zaizen.ks");
f.fumi_list_all_target.push("*zaizen_fumi13");
f.fumi_list_all_location_taishou.push(1);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_zaizen_location_fumi.push(12);
f.fumi_list_zaizen_title.push("三月　「13」");
f.fumi_list_zaizen_target.push("*zaizen_fumi13");
f.zaizen_fumi_henjimachi=f.zaizen_fumi_henjimachi+1;
[endscript]
[return]

;◆華織手紙到着
*fumi_todoku_sijyou_2
[iscript]	
f.fumi_list_all_title.push("三月　「2」　四条 華織");
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi2");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_sijyou_location_fumi.push(1);
f.fumi_list_sijyou_title.push("三月　「2」");
f.fumi_list_sijyou_target.push("*sijyou_fumi2");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_sijyou_3
[iscript]	
f.fumi_list_all_title.push("三月　「3」　四条 華織");
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi3");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_sijyou_location_fumi.push(2);
f.fumi_list_sijyou_title.push("三月　「3」");
f.fumi_list_sijyou_target.push("*sijyou_fumi3");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_sijyou_4
[iscript]	
f.fumi_list_all_title.push("三月　「4」　四条 華織");
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi4");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_sijyou_location_fumi.push(3);
f.fumi_list_sijyou_title.push("三月　「4」");
f.fumi_list_sijyou_target.push("*sijyou_fumi4");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_sijyou_5
[iscript]	
f.fumi_list_all_title.push("三月　「5」　四条 華織");
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi5");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_sijyou_location_fumi.push(4);
f.fumi_list_sijyou_title.push("三月　「5」");
f.fumi_list_sijyou_target.push("*sijyou_fumi5");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_sijyou_6
[iscript]	
f.fumi_list_all_title.push("三月　「6」　四条 華織");
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi6");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_sijyou_location_fumi.push(5);
f.fumi_list_sijyou_title.push("三月　「6」");
f.fumi_list_sijyou_target.push("*sijyou_fumi6");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_sijyou_7
[iscript]	
f.fumi_list_all_title.push("三月　「7」　四条 華織");
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi7");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_sijyou_location_fumi.push(6);
f.fumi_list_sijyou_title.push("三月　「7」");
f.fumi_list_sijyou_target.push("*sijyou_fumi7");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_sijyou_8
[iscript]	
f.fumi_list_all_title.push("三月　「8」　四条 華織");
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi8");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_sijyou_location_fumi.push(7);
f.fumi_list_sijyou_title.push("三月　「8」");
f.fumi_list_sijyou_target.push("*sijyou_fumi8");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_sijyou_9
[iscript]	
f.fumi_list_all_title.push("三月　「9」　四条 華織");
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi9");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_sijyou_location_fumi.push(8);
f.fumi_list_sijyou_title.push("三月　「9」");
f.fumi_list_sijyou_target.push("*sijyou_fumi9");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_sijyou_10
[iscript]	
f.fumi_list_all_title.push("三月　「10」　四条 華織");
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi10");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_sijyou_location_fumi.push(9);
f.fumi_list_sijyou_title.push("三月　「10」");
f.fumi_list_sijyou_target.push("*sijyou_fumi10");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_sijyou_11
[iscript]	
f.fumi_list_all_title.push("三月　「11」　四条 華織");
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi11");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_sijyou_location_fumi.push(10);
f.fumi_list_sijyou_title.push("三月　「11」");
f.fumi_list_sijyou_target.push("*sijyou_fumi11");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_sijyou_12
[iscript]	
f.fumi_list_all_title.push("三月　「12」　四条 華織");
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi12");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_sijyou_location_fumi.push(11);
f.fumi_list_sijyou_title.push("三月　「12」");
f.fumi_list_sijyou_target.push("*sijyou_fumi12");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_sijyou_13
[iscript]	
f.fumi_list_all_title.push("三月　「13」　四条 華織");
f.fumi_list_all_storage.push("fumi_sijyou.ks");
f.fumi_list_all_target.push("*sijyou_fumi13");
f.fumi_list_all_location_taishou.push(2);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_sijyou_location_fumi.push(12);
f.fumi_list_sijyou_title.push("三月　「13」");
f.fumi_list_sijyou_target.push("*sijyou_fumi13");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
[return]

;◆自由枠1手紙到着
*fumi_todoku_jiyuuwaku1_2
[iscript]	
f.fumi_list_all_title.push("三月　「2」　自由枠1");
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi2");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_jiyuuwaku1_location_fumi.push(1);
f.fumi_list_jiyuuwaku1_title.push("三月　「2」");
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi2");
f.sijyou_fumi_henjimachi=f.sijyou_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku1_3
[iscript]	
f.fumi_list_all_title.push("三月　「3」　自由枠1");
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi3");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_jiyuuwaku1_location_fumi.push(2);
f.fumi_list_jiyuuwaku1_title.push("三月　「3」");
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi3");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku1_4
[iscript]	
f.fumi_list_all_title.push("三月　「4」　自由枠1");
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi4");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_jiyuuwaku1_location_fumi.push(3);
f.fumi_list_jiyuuwaku1_title.push("三月　「4」");
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi4");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku1_5
[iscript]	
f.fumi_list_all_title.push("三月　「5」　自由枠1");
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi5");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_jiyuuwaku1_location_fumi.push(4);
f.fumi_list_jiyuuwaku1_title.push("三月　「5」");
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi5");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku1_6
[iscript]	
f.fumi_list_all_title.push("三月　「6」　自由枠1");
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi6");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_jiyuuwaku1_location_fumi.push(5);
f.fumi_list_jiyuuwaku1_title.push("三月　「6」");
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi6");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku1_7
[iscript]	
f.fumi_list_all_title.push("三月　「7」　自由枠1");
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi7");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_jiyuuwaku1_location_fumi.push(6);
f.fumi_list_jiyuuwaku1_title.push("三月　「7」");
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi7");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku1_8
[iscript]	
f.fumi_list_all_title.push("三月　「8」　自由枠1");
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi8");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_jiyuuwaku1_location_fumi.push(7);
f.fumi_list_jiyuuwaku1_title.push("三月　「8」");
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi8");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku1_9
[iscript]	
f.fumi_list_all_title.push("三月　「9」　自由枠1");
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi9");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_jiyuuwaku1_location_fumi.push(8);
f.fumi_list_jiyuuwaku1_title.push("三月　「9」");
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi9");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku1_10
[iscript]	
f.fumi_list_all_title.push("三月　「10」　自由枠1");
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi10");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_jiyuuwaku1_location_fumi.push(9);
f.fumi_list_jiyuuwaku1_title.push("三月　「10」");
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi10");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku1_11
[iscript]	
f.fumi_list_all_title.push("三月　「11」　自由枠1");
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi11");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_jiyuuwaku1_location_fumi.push(10);
f.fumi_list_jiyuuwaku1_title.push("三月　「11」");
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi11");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku1_12
[iscript]	
f.fumi_list_all_title.push("三月　「12」　自由枠1");
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi12");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_jiyuuwaku1_location_fumi.push(11);
f.fumi_list_jiyuuwaku1_title.push("三月　「12」");
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi12");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku1_13
[iscript]	
f.fumi_list_all_title.push("三月　「13」　自由枠1");
f.fumi_list_all_storage.push("fumi_jiyuuwaku1.ks");
f.fumi_list_all_target.push("*jiyuuwaku1_fumi13");
f.fumi_list_all_location_taishou.push(3);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_jiyuuwaku1_location_fumi.push(12);
f.fumi_list_jiyuuwaku1_title.push("三月　「13」");
f.fumi_list_jiyuuwaku1_target.push("*jiyuuwaku1_fumi13");
f.jiyuuwaku1_fumi_henjimachi=f.jiyuuwaku1_fumi_henjimachi+1;
[endscript]
[return]

;◆自由枠2手紙到着
*fumi_todoku_jiyuuwaku2_2
[iscript]	
f.fumi_list_all_title.push("三月　「2」　自由枠2");
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi2");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(1);
f.fumi_list_jiyuuwaku2_location_fumi.push(1);
f.fumi_list_jiyuuwaku2_title.push("三月　「2」");
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi2");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku2_3
[iscript]	
f.fumi_list_all_title.push("三月　「3」　自由枠2");
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi3");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(2);
f.fumi_list_jiyuuwaku2_location_fumi.push(2);
f.fumi_list_jiyuuwaku2_title.push("三月　「3」");
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi3");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku2_4
[iscript]	
f.fumi_list_all_title.push("三月　「4」　自由枠2");
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi4");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(3);
f.fumi_list_jiyuuwaku2_location_fumi.push(3);
f.fumi_list_jiyuuwaku2_title.push("三月　「4」");
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi4");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku2_5
[iscript]	
f.fumi_list_all_title.push("三月　「5」　自由枠2");
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi5");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(4);
f.fumi_list_jiyuuwaku2_location_fumi.push(4);
f.fumi_list_jiyuuwaku2_title.push("三月　「5」");
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi5");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku2_6
[iscript]	
f.fumi_list_all_title.push("三月　「6」　自由枠2");
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi6");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(5);
f.fumi_list_jiyuuwaku2_location_fumi.push(5);
f.fumi_list_jiyuuwaku2_title.push("三月　「6」");
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi6");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku2_7
[iscript]	
f.fumi_list_all_title.push("三月　「7」　自由枠2");
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi7");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(6);
f.fumi_list_jiyuuwaku2_location_fumi.push(6);
f.fumi_list_jiyuuwaku2_title.push("三月　「7」");
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi7");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku2_8
[iscript]	
f.fumi_list_all_title.push("三月　「8」　自由枠2");
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi8");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(7);
f.fumi_list_jiyuuwaku2_location_fumi.push(7);
f.fumi_list_jiyuuwaku2_title.push("三月　「8」");
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi8");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku2_9
[iscript]	
f.fumi_list_all_title.push("三月　「9」　自由枠2");
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi9");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(8);
f.fumi_list_jiyuuwaku2_location_fumi.push(8);
f.fumi_list_jiyuuwaku2_title.push("三月　「9」");
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi9");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku2_10
[iscript]	
f.fumi_list_all_title.push("三月　「10」　自由枠2");
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi10");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(9);
f.fumi_list_jiyuuwaku2_location_fumi.push(9);
f.fumi_list_jiyuuwaku2_title.push("三月　「10」");
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi10");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku2_11
[iscript]	
f.fumi_list_all_title.push("三月　「11」　自由枠2");
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi11");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(10);
f.fumi_list_jiyuuwaku2_location_fumi.push(10);
f.fumi_list_jiyuuwaku2_title.push("三月　「11」");
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi11");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku2_12
[iscript]	
f.fumi_list_all_title.push("三月　「12」　自由枠2");
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi12");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(11);
f.fumi_list_jiyuuwaku2_location_fumi.push(11);
f.fumi_list_jiyuuwaku2_title.push("三月　「12」");
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi12");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
[return]

*fumi_todoku_jiyuuwaku2_13
[iscript]	
f.fumi_list_all_title.push("三月　「13」　自由枠2");
f.fumi_list_all_storage.push("fumi_jiyuuwaku2.ks");
f.fumi_list_all_target.push("*jiyuuwaku2_fumi13");
f.fumi_list_all_location_taishou.push(4);
f.fumi_list_all_location_fumi.push(12);
f.fumi_list_jiyuuwaku2_location_fumi.push(12);
f.fumi_list_jiyuuwaku2_title.push("三月　「13」");
f.fumi_list_jiyuuwaku2_target.push("*jiyuuwaku2_fumi13");
f.jiyuuwaku2_fumi_henjimachi=f.jiyuuwaku2_fumi_henjimachi+1;
[endscript]
[return]


