;======================================================================================
;◆◆情報：藤枝◆◆
;======================================================================================
*jump_clearlist
;[image layer=26 x=0 y=0 storage="bg/bg_clearlist.jpg"]
;[wait time=10]
[freeimage layer = 28]
[cm]
[clearfix]
[if exp="f.event_replay == 'sijyou'"]
 @jump storage="sijyou/sijyou_event_clearlist.ks" target=*start
[endif]
[if exp="f.event_replay == 'zaizen'"]
 @jump storage="zaizen/zaizen_event_clearlist.ks" target=*start
[endif]
[if exp="f.event_replay == 'kuroda'"]
 @jump storage="kuroda_event_clearlist.ks" target=*start
[endif]
[if exp="f.event_replay == 'katuraginomiya'"]
 @jump storage="katuraginomiya/katuraginomiya_event_clearlist.ks" target=*start
[endif]
[if exp="f.event_replay == 'hujieda'"]
 @jump storage="hujieda/hujieda_event_clearlist.ks" target=*start
[endif]
[s]
*start
*info_hujieda
[if exp="f.event_replay == 'sijyou' || f.event_replay == 'zaizen' || f.event_replay == 'kuroda' || f.event_replay == 'katuraginomiya' ||f.event_replay == 'hujieda' || f.event_replay == 'none'"]
;クリアリストのfixボタンの削除
[iscript]
$(".tips_btn").remove();
[endscript]
[endif]
[freeimage layer = 27]
[freeimage layer = 28]
[eval exp="f.viewing_storage = 'info_hujieda.ks'"]
[eval exp="f.oaite_viewing_storage = 'info_hujieda.ks'"]
[eval exp="f.viewing_target = '*info_hujieda'"]
[eval exp="f.oaite_viewing_target = '*info_hujieda'"]
[call target=*info_hujieda_hyouji]

;◆手紙一覧
;[eval exp="f.fumi_hujieda_number=13"]
[if exp="f.fumi_hujieda_number > 5"]
			[glink name="list" storage="info_hujieda.ks" target=*fumi_hujieda_page2 text="→" size=20 width="20" x=855 y=480 graphic="select_waku_x150.png" font_color=black]
[endif]
[eval exp="f.list_count = f.fumi_hujieda_number"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
*loop_fumi_hujieda
[if exp="f.list_count == 0"]																							[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
[iscript]
	f.fumi_hujieda_midoku_y = 0;
	f.fumi_hujieda_midoku_y = ( 20 + 80 * f.fumi_hujieda_number ) - 80 * f.list_count;
	f.fumi_hujieda_y = 0;
	f.fumi_hujieda_y = ( 10 + 80 * f.fumi_hujieda_number ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 4;
	f.fumi_hairetsu2 = f.fumi_list_hujieda_location_fumi[f.list_count];
[endscript]
;◆手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_hujieda_page1'"]
@jump storage="info_fumi_hyouji_hujieda.ks"
*fumi_hyouji_owari_hujieda_page1

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_hujieda
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_hujieda_page2
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_hujieda_page2'"]
[eval exp="f.oaite_viewing_target = '*fumi_hujieda_page2'"]
[call target=*info_hujieda_hyouji]

;1f.fumi_hujieda_number=[emb exp ="f.fumi_hujieda_number"][r]
[glink name="list" storage="info_hujieda.ks" target=*info_hujieda text="←" size=20 width="20" x=510 y=480 graphic="select_waku_x150.png" font_color=black]
[if exp="f.fumi_hujieda_number>10"]
[glink name="list" storage="info_hujieda.ks" target=*fumi_hujieda_page3 text="→" size=20 width="20" x=855 y=480 graphic="select_waku_x150.png" font_color=black]
[endif]
[eval exp="f.list_count = f.fumi_hujieda_number - 5"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_hujieda2
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_hujieda_number=[emb exp ="f.fumi_hujieda_number"][r]
[iscript]
	f.fumi_hujieda_midoku_y =  20 + 80 * ( f.fumi_hujieda_number - 5 ) - 80 * f.list_count;
	f.fumi_hujieda_y =  10 + 80 * ( f.fumi_hujieda_number - 5 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 4;
	f.fumi_hairetsu2 = f.fumi_list_hujieda_location_fumi[f.list_count];
[endscript]
;◆手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_hujieda_page2'"]
@jump storage="info_fumi_hyouji_hujieda.ks"
*fumi_hyouji_owari_hujieda_page2

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_hujieda2
[endif]
@jump storage="info_fumibako_hyouji_end.ks"

*fumi_hujieda_page3
[cm]
[freeimage layer = 28]
[eval exp="f.viewing_target = '*fumi_hujieda_page3'"]
[eval exp="f.oaite_viewing_target = '*fumi_hujieda_page3'"]
[call target=*info_hujieda_hyouji]

;1f.fumi_hujieda_number=[emb exp ="f.fumi_hujieda_number"][r]
[glink name="list" storage="info_hujieda.ks" target=*fumi_hujieda_page2 text="←" size=20 width="20" x=510 y=480 graphic="select_waku_x150.png" font_color=black]

[eval exp="f.list_count = f.fumi_hujieda_number - 10"]
[eval exp="f.loop_count = f.list_count"]
[if exp="f.loop_count > 5"]
[eval exp="f.loop_count = 5"]
[endif]
;2f.list_count=[emb exp ="f.list_count"][r]
*loop_fumi_hujieda3
[if exp="f.list_count == 0"]
[else]
	[eval exp="f.list_count = f.list_count - 1"]
[endif]
[if exp="f.loop_count == 0"]
[else]
	[eval exp="f.loop_count = f.loop_count - 1"]
[endif]
;3f.list_count=[emb exp ="f.list_count"][r]
;4f.loop_count=[emb exp ="f.loop_count"][r]
;5f.fumi_hujieda_number=[emb exp ="f.fumi_hujieda_number"][r]
[iscript]
	f.fumi_hujieda_midoku_y = 0;
	f.fumi_hujieda_midoku_y =  20 + 80 * ( f.fumi_hujieda_number - 10 ) - 80 * f.list_count;
	f.fumi_hujieda_y =  0;
	f.fumi_hujieda_y =  10 + 80 * ( f.fumi_hujieda_number - 10 ) - 80 * f.list_count;
	f.fumi_hairetsu1 = 4;
	f.fumi_hairetsu2 = f.fumi_list_hujieda_location_fumi[f.list_count];
[endscript]
;◆手紙表示部共通処理へjumpして戻ってくる
[eval exp="tf.fumi_hyouji_owari_target = 'fumi_hyouji_owari_hujieda_page3'"]
@jump storage="info_fumi_hyouji_hujieda.ks"
*fumi_hyouji_owari_hujieda_page3

[if exp="f.loop_count > 0"]
	@jump target=*loop_fumi_hujieda3
[endif]
@jump storage="info_fumibako_hyouji_end.ks"
;======================================================================================
*info_hujieda_hyouji
[一斉表示準備]
@layopt layer=29 visible = true
[image name="loding_pic1" layer=29 folder="image" storage="junbi_cyu.gif" left=740 top=480] 
[freeimage layer = 26]
[image layer=26 x=0 y=0 storage="bg/I9IhvvVdPo/bg_info_hujieda.jpg"]
[wait time=10]
[cm]
;◆ 藤枝フェイス
[eval exp="tf.x_info = 0"]
[eval exp="tf.y_info = 0"]
[if exp="f.hujieda_au == 1 && f.para_hujieda_koukando >= 80 && f.para_shujinkou_j_koto >= 80 && f.para_shujinkou_shukujodo >= 70 && (f.okeiko_month == 9 && (f.okeiko_week == 2 || f.okeiko_week == 3))"]
	;face_hujieda_smile.png：(goodED条件のパラメータやフラグを満たす場合)  f.hujieda_au == 1 && f.para_hujieda_koukando >= 80 &&  f.para_shujinkou_j_koto >= 80 && f.para_shujinkou_shukujodo >= 70※これはコメント
	[image name=info_face layer=26 x="&tf.x_info" y="&tf.y_info" folder="image" storage="face_hujieda_smile_yuubin.png" zindex=2]	
	[wait time=10]
	@jump target=*info_face_hujieda_owari	
[endif]
[if exp="f.hujieda_au == 1 && f.para_hujieda_koukando >= 80 && f.para_shujinkou_j_koto >= 80 && f.para_shujinkou_shukujodo >= 70 && ((f.okeiko_month == 9 && f.okeiko_week == 4) || f.okeiko_month >= 10 || f.okeiko_month <= 3)"]
	;face_hujieda_smile.png：(goodED条件のパラメータやフラグを満たす場合)  f.hujieda_au == 1 && f.para_hujieda_koukando >= 80 &&  f.para_shujinkou_j_koto >= 80 && f.para_shujinkou_shukujodo >= 70※これはコメント
	[image name=info_face layer=26 x="&tf.x_info" y="&tf.y_info" folder="image" storage="face_hujieda_smile_sifuku.png" zindex=2]	
	[wait time=10]
	@jump target=*info_face_hujieda_owari	
[endif]
[if exp="f.hujieda_au == 1 && f.para_hujieda_koukando >= 40 && (f.okeiko_month == 9 && (f.okeiko_week == 2 || f.okeiko_week == 3))"]
	;face_hujieda_color.png：(normalED条件のパラメータやフラグを満たす場合) f.hujieda_au == 1 && f.para_hujieda_koukando >= 40
	[image name=info_face layer=26 x="&tf.x_info" y="&tf.y_info" folder="image" storage="face_hujieda_color_yuubin.png" zindex=2]
	[wait time=10]
	@jump target=*info_face_hujieda_owari	
[endif]
[if exp="f.hujieda_au == 1 && f.para_hujieda_koukando >= 40 && ((f.okeiko_month == 9 && f.okeiko_week == 4) || f.okeiko_month >= 10 || f.okeiko_month <= 3)"]
	;face_hujieda_color.png：(normalED条件のパラメータやフラグを満たす場合) f.hujieda_au == 1 && f.para_hujieda_koukando >= 40
	[image name=info_face layer=26 x="&tf.x_info" y="&tf.y_info" folder="image" storage="face_hujieda_color_sifuku.png" zindex=2]
	[wait time=10]
	@jump target=*info_face_hujieda_owari	
[endif]
[if exp="f.hujieda_au == 1 && (f.okeiko_month == 9 && (f.okeiko_week == 2 || f.okeiko_week == 3))"]
	;face_hujieda_sepia.png：(normalED条件未満) f.hujieda_au == 1 && ((f.okeiko_month == 9 && f.okeiko_week != 1) || f.okeiko_month >= 10 || f.okeiko_month <= 3)※これはコメント
	[image name=info_face layer=26 x="&tf.x_info" y="&tf.y_info" folder="image" storage="face_hujieda_sepia_yuubin.png" zindex=2]
	[wait time=10]
	@jump target=*info_face_hujieda_owari	
[endif]
[if exp="f.hujieda_au == 1 && ((f.okeiko_month == 9 && f.okeiko_week == 4) || f.okeiko_month >= 10 || f.okeiko_month <= 3)"]
	;face_hujieda_sepia.png：(normalED条件未満) f.hujieda_au == 1 && ((f.okeiko_month == 9 && f.okeiko_week != 1) || f.okeiko_month >= 10 || f.okeiko_month <= 3)※これはコメント
	[image name=info_face layer=26 x="&tf.x_info" y="&tf.y_info" folder="image" storage="face_hujieda_sepia_sifuku.png" zindex=2]
	[wait time=10]
[endif]
*info_face_hujieda_owari
;======================================================================================
	[glink name="list" storage="info_kuroda.ks" target="*info_kuroda" text="黒田 将貴" size=16 width="120" x=30 y=580 graphic="select_waku_x300.png" font_color=black]
	[glink name="list" storage="info_zaizen.ks" target="*info_zaizen" text="財前 美彬" size=16 width="120" x=230 y=580 graphic="select_waku_x300.png" font_color=black]
	[glink name="list" storage="info_sijyou.ks" target="*info_sijyou" text="四条 華織" size=16 width="120" x=430 y=580 graphic="select_waku_x300.png" font_color=black]
;葛城宮に手紙を出せるようになっていたらボタン表示
[if exp="f.katuraginomiya_fumi_start == 1"]
	[glink name="list" storage="info_katuraginomiya.ks" target="*info_katuraginomiya" text="葛城宮 晴仁" size=16 width="120" x=630 y=580 graphic="select_waku_x300.png" font_color=black]
[endif]
[if exp="f.para_hujieda_koukando<0"]
[eval exp="f.para_koukando_x = 270"]
[elsif exp="f.para_hujieda_koukando<10"]
[eval exp="f.para_koukando_x = 281"]
[elsif exp="f.para_hujieda_koukando<100"]
[eval exp="f.para_koukando_x = 270"]
[else]
[eval exp="f.para_koukando_x = 255"]
[endif]
[if exp="f.para_hujieda_koukando<0"]
[eval exp="f.para_color = 'crimson'"]
[else]
[eval exp="f.para_color = 'black'"]
[endif]
[ptext name="list" text=&f.para_hujieda_koukando layer=28 size=25 x=&f.para_koukando_x y=323 color=&f.para_color bold=bold]
[ptext name="list" text=&f.para_hujieda_sintyou layer=28 size=25 x=270 y=364 color=black bold=bold]
[ptext name="list" text=&f.para_hujieda_taijuu layer=28 size=25 x=270 y=406 color=black bold=bold]
[if exp="f.midoku_list_hairetsu[4][7] == 0"]
	[ptext name="list" text=&f.para_hujieda_shumi layer=28 size=20 x=268 y=448 color=black bold=bold]
[else]
	[ptext name="list" text="―" layer=28 size=25 x=270 y=448 color=black bold=bold]
[endif]
;◆クリアリストリンク
[call storage="eventpercent_hujieda.ks" target=*start]
[wait time=10]
[eval exp="f.clearlist_out_storage='info_hujieda.ks'"]
[glink storage="info_hujieda.ks" target=*jump_clearlist exp="f.event_replay = 'hujieda'" text=&f.hujieda_event_percent fontcolor=gray size=16 width=170 x=130 y=480 graphic="select_waku_x300.png" font_color=black]
[wait time=10]
[return]
[s]
